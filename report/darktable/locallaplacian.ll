Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/locallaplacian?download=true
inline.NumInlined: 42
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 58
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
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
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [30 x ptr], align 16              ; 15 uses
  %i.f = alloca [30 x ptr], align 16              ; 13 uses
  %i.g = alloca [6 x float], align 16             ; 7 uses
  %i.h = alloca [6 x [30 x ptr]], align 16        ; 19 uses
  %i.i = icmp slt i32 %2, 2
  %i.j = icmp slt i32 %3, 2
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.aw, label %bb.b

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
  %.pre1074.pre = load i32, ptr %i.d, align 4
  br label %ll_pad_input.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.e, i8 0, i64 240, i1 false)
  %i.u = lshr exact i32 1073741824, %i.l          ; 7 uses
  %i.v = shl nuw nsw i32 %i.u, 1                  ; 3 uses
  %i.w = add nuw nsw i32 %i.v, %2                 ; 18 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !19
  %i.x = add nuw nsw i32 %i.v, %3                 ; 5 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !19
  %i.y = zext nneg i32 %i.w to i64                ; 6 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = mul nuw i64 %i.aa, %i.y
  %i.ac = tail call ptr @dt_alloc_aligned(i64 noundef %i.ab) #14 ; 29 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = shl i32 %2, 2                           ; 5 uses
  %i.ae = add nuw i32 %i.u, %2                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.w
  %i.ag = sext i32 %i.ae to i64                   ; 8 uses
  %i.ah = sext i32 %i.ad to i64                   ; 2 uses
  %i.ai = zext nneg i32 %i.u to i64               ; 10 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 15 uses
  %wide.trip.count542.i = zext nneg i32 %3 to i64 ; 4 uses
  %i.ak = sub nsw i32 30, %i.l
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 %i.y, %i.al
  %i.an = add i64 %i.am, %i.ag
  %i.ao = shl i64 %i.an, 2
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ao
  %i.ap = shl nuw nsw i64 %i.ai, 3
  %i.aq = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.ar = add nuw nsw i64 %i.ap, %i.aq            ; 2 uses
  %i.as = add nsw i64 %wide.trip.count542.i, -1
  %i.at = mul i64 %i.ar, %i.as
  %i.au = add nuw nsw i64 %i.ar, 8
  %i.av = sub nsw i32 30, %i.l
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.au, %i.aw
  %i.ay = getelementptr i8, ptr %i.ac, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %scevgep1180.a = getelementptr i8, ptr %i.az, i64 %i.aq
  %scevgep1181.a = getelementptr i8, ptr %0, i64 4
  %i.ba = add i32 %i.ad, -4
  %i.bb = shl nuw nsw i64 %i.ai, 1                ; 3 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.aj
  %i.bd = sub nsw i64 %i.bc, %i.ag                ; 7 uses
  %i.be = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.bf = mul nuw nsw i64 %wide.trip.count542.i, %i.aj
  %i.bg = shl i64 %i.bf, 4
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep1192.a = getelementptr i8, ptr %i.bh, i64 -12
  %i.bi = add nuw i32 %2, %i.v
  %i.bj = add i32 %i.bi, 1
  %i.bk = sub nsw i32 30, %i.l
  %i.bl = shl i32 %i.bj, %i.bk
  %i.bm = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %scevgep1194.a = getelementptr i8, ptr %i.ac, i64 %i.bm
  %i.bn = sub nsw i32 30, %i.l
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl i64 %i.y, %i.bo
  %i.bq = shl i64 %i.bp, 2
  %scevgep1228.a = getelementptr i8, ptr %i.ac, i64 %i.bq
  %i.br = shl nuw nsw i64 %i.ai, 3
  %i.bs = add nuw nsw i64 %i.br, %i.bm            ; 2 uses
  %i.bt = add nsw i64 %wide.trip.count542.i, -1   ; 2 uses
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = add nuw nsw i64 %i.bs, 4
  %i.bw = sub nsw i32 30, %i.l
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl i64 %i.bv, %i.bx
  %i.bz = getelementptr i8, ptr %i.ac, i64 %i.bu
  %scevgep1229.a = getelementptr i8, ptr %i.bz, i64 %i.by
  %i.ca = mul nsw i64 %i.bt, %i.ah
  %i.cb = shl i64 %i.ca, 2
  %i.cc = getelementptr i8, ptr %0, i64 %i.cb
  %scevgep1230 = getelementptr i8, ptr %i.cc, i64 4
  %i.cd = add nuw nsw i64 %i.bb, %i.aj
  %i.ce = add nuw nsw i64 %i.bb, %i.aj
  %min.iters.check1234 = icmp ult i32 %i.k, 8
  %bound01231 = icmp ult ptr %scevgep1228.a, %scevgep1230
  %bound11232 = icmp ult ptr %0, %scevgep1229.a
  %found.conflict1233 = and i1 %bound01231, %bound11232
  %stride.check = icmp slt i32 %i.ad, 0
  %i.cf = or i1 %found.conflict1233, %stride.check
  %min.iters.check1236 = icmp ult i32 %i.k, 64
  %n.vec1238 = and i64 %i.ai, 1073741792
  %n.vec1252 = and i64 %i.ai, 1073741820
  %xtraiter = and i64 %i.ai, 7                    ; 3 uses
  %i.cg = icmp ult i32 %i.k, 16
  %unroll_iter = and i64 %i.ai, 1073741816
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1421 = icmp ne i64 %xtraiter, 0
  %min.iters.check1199 = icmp ult i32 %2, 5
  %i.ch = trunc nsw i64 %i.be to i32
  %i.ci = icmp ugt i64 %i.be, 4294967295
  %min.iters.check1201 = icmp ult i32 %2, 33
  %i.cj = and i64 %i.aj, 31                       ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = select i1 %i.ck, i64 32, i64 %i.cj      ; 2 uses
  %n.vec1203 = sub nsw i64 %i.aj, %i.cl           ; 3 uses
  %min.epilog.iters.check1218 = icmp samesign ult i64 %i.cl, 5
  %i.cm = and i64 %i.aj, 3                        ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = select i1 %i.cn, i64 4, i64 %i.cm
  %n.vec1220 = sub nsw i64 %i.aj, %i.co           ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 4
  %min.iters.check1183 = icmp ult i64 %i.bd, 32
  %i.cp = and i64 %i.bd, 28
  %n.vec = and i64 %i.bd, -32                     ; 4 uses
  %i.cq = add nsw i64 %n.vec, %i.ag
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  %n.vec1184 = and i64 %i.bd, -4                  ; 3 uses
  %i.cr = add nsw i64 %n.vec1184, %i.ag
  %cmp.n1189 = icmp eq i64 %i.bd, %n.vec1184
  br label %iter.check1247

iter.check1247:                                   ; preds = %._crit_edge479.i, %bb.e
  %indvars.iv539.i = phi i64 [ 0, %bb.e ], [ %i.iq, %._crit_edge479.i ] ; 6 uses
  %i.cs = trunc i64 %indvars.iv539.i to i32
  %i.ct = mul i32 %i.w, %i.cs
  %i.cu = add i32 %i.ct, %i.bl
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2                    ; 2 uses
  %scevgep1193 = getelementptr i8, ptr %i.ac, i64 %i.cw
  %scevgep1195 = getelementptr i8, ptr %scevgep1194.a, i64 %i.cw
  %i.cx = trunc i64 %indvars.iv539.i to i32
  %i.cy = mul i32 %i.ad, %i.cx
  %i.cz = add i32 %i.cy, %i.ba
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nsw i64 %i.da, 2
  %scevgep1182 = getelementptr i8, ptr %scevgep1181.a, i64 %i.db
  %i.dc = mul nuw nsw i64 %indvars.iv539.i, %i.ah
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dc ; 10 uses
  %i.de = add nuw nsw i64 %indvars.iv539.i, %i.ai
  %i.df = mul nuw nsw i64 %i.de, %i.y             ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.ac, i64 %i.df ; 22 uses
  %brmerge = select i1 %min.iters.check1234, i1 true, i1 %i.cf
  br i1 %brmerge, label %vec.epilog.scalar.ph1248.preheader, label %vector.main.loop.iter.check1235

vec.epilog.scalar.ph1248.preheader:               ; preds = %iter.check1247
  br i1 %i.cg, label %vec.epilog.scalar.ph1248.epil.preheader, label %vec.epilog.scalar.ph1248

vector.main.loop.iter.check1235:                  ; preds = %iter.check1247
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !21, !alias.scope !105
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, f0x3C23D70A ; 2 uses
  br i1 %min.iters.check1236, label %vec.epilog.ph1251, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.main.loop.iter.check1235
  %broadcast.splatinsert1241 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat1242 = shufflevector <8 x float> %broadcast.splatinsert1241, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.ph1237, %vector.body1239
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1243, %vector.body1239 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.dg, i64 %index1240 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  store <8 x float> %broadcast.splat1242, ptr %i.dj, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1242, ptr %i.dk, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1242, ptr %i.dl, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1242, ptr %i.dm, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  %index.next1243 = add nuw i64 %index1240, 32    ; 2 uses
  %i.dn = icmp eq i64 %index.next1243, %n.vec1238
  br i1 %i.dn, label %iter.check1215, label %vector.body1239, !llvm.loop !35
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
  %i.nz = icmp eq i64 %index.next1364, %n.vec1357
  br i1 %i.nz, label %middle.block1365, label %vector.body1358, !llvm.loop !58

middle.block1365:                                 ; preds = %vector.body1358
  %cmp.n1366 = icmp eq i64 %i.no, %n.vec1357
  br i1 %cmp.n1366, label %.loopexit, label %vec.epilog.iter.check1370

vec.epilog.iter.check1370:                        ; preds = %middle.block1365
  %min.epilog.iters.check1371 = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check1371, label %.lr.ph918.preheader, label %vec.epilog.vector.body1374.preheader, !prof !25

vec.epilog.vector.body1374.preheader:             ; preds = %vector.main.loop.iter.check1354, %vec.epilog.iter.check1370
  %index1375.ph = phi i64 [ 0, %vector.main.loop.iter.check1354 ], [ %n.vec1357, %vec.epilog.iter.check1370 ]
  br label %vec.epilog.vector.body1374

.lr.ph918.preheader:                              ; preds = %iter.check1368, %vec.epilog.iter.check1370
  %.0542917.ph = phi i64 [ %n.vec1357, %vec.epilog.iter.check1370 ], [ 0, %iter.check1368 ] ; 3 uses
  %xtraiter1701 = and i64 %i.no, 4                ; 2 uses
  %lcmp.mod1702.not = icmp eq i64 %xtraiter1701, 0
  br i1 %lcmp.mod1702.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol

.lr.ph918.prol:                                   ; preds = %.lr.ph918.preheader, %.lr.ph918.prol
  %.0542917.prol = phi i64 [ %i.od, %.lr.ph918.prol ], [ %.0542917.ph, %.lr.ph918.preheader ] ; 3 uses
  %prol.iter1703 = phi i64 [ %prol.iter1703.next, %.lr.ph918.prol ], [ 0, %.lr.ph918.preheader ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917.prol
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !21
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917.prol
  store float %i.ob, ptr %i.oc, align 4, !tbaa !21
  %i.od = add nuw i64 %.0542917.prol, 1           ; 2 uses
  %prol.iter1703.next = add i64 %prol.iter1703, 1 ; 2 uses
  %prol.iter1703.cmp.not = icmp eq i64 %prol.iter1703.next, %xtraiter1701
  br i1 %prol.iter1703.cmp.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol, !llvm.loop !59

.lr.ph918.prol.loopexit:                          ; preds = %.lr.ph918.prol, %.lr.ph918.preheader
  %.0542917.unr = phi i64 [ %.0542917.ph, %.lr.ph918.preheader ], [ %i.od, %.lr.ph918.prol ]
  %i.oe = sub i64 %.0542917.ph, %i.no
  %i.of = icmp ugt i64 %i.oe, -8
  br i1 %i.of, label %.loopexit, label %.lr.ph918

vec.epilog.vector.body1374:                       ; preds = %vec.epilog.vector.body1374.preheader, %vec.epilog.vector.body1374
  %index1375 = phi i64 [ %index.next1377, %vec.epilog.vector.body1374 ], [ %index1375.ph, %vec.epilog.vector.body1374.preheader ] ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1375
  %wide.load1376 = load <4 x float>, ptr %i.og, align 4, !tbaa !21
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1375
  store <4 x float> %wide.load1376, ptr %i.oh, align 4, !tbaa !21
  %index.next1377 = add nuw i64 %index1375, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1377, %i.no
  br i1 %i.oi, label %.loopexit, label %vec.epilog.vector.body1374, !llvm.loop !60

.critedge638:                                     ; preds = %.critedge638.preheader, %.critedge638
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.critedge638 ], [ 0, %.critedge638.preheader ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1068
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.ok) #14
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1068
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.om) #14
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %exitcond1072.not = icmp eq i64 %indvars.iv.next1069, %wide.trip.count947.pre-phi
  br i1 %exitcond1072.not, label %iter.check1368, label %.critedge638

.lr.ph918:                                        ; preds = %.lr.ph918.prol.loopexit, %.lr.ph918
  %.0542917 = phi i64 [ %i.ps, %.lr.ph918 ], [ %.0542917.unr, %.lr.ph918.prol.loopexit ] ; 10 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917
  %i.oo = load float, ptr %i.on, align 4, !tbaa !21
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917
  store float %i.oo, ptr %i.op, align 4, !tbaa !21
  %i.oq = add nuw i64 %.0542917, 1                ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !21
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq
  store float %i.os, ptr %i.ot, align 4, !tbaa !21
  %i.ou = add nuw i64 %.0542917, 2                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ou
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !21
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ou
  store float %i.ow, ptr %i.ox, align 4, !tbaa !21
  %i.oy = add nuw i64 %.0542917, 3                ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oy
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !21
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oy
  store float %i.pa, ptr %i.pb, align 4, !tbaa !21
  %i.pc = add nuw i64 %.0542917, 4                ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !21
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pc
  store float %i.pe, ptr %i.pf, align 4, !tbaa !21
  %i.pg = add nuw i64 %.0542917, 5                ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !21
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pg
  store float %i.pi, ptr %i.pj, align 4, !tbaa !21
  %i.pk = add nuw i64 %.0542917, 6                ; 2 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pk
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !21
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pk
  store float %i.pm, ptr %i.pn, align 4, !tbaa !21
  %i.po = add nuw i64 %.0542917, 7                ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !21
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.po
  store float %i.pq, ptr %i.pr, align 4, !tbaa !21
  %i.ps = add nuw i64 %.0542917, 8                ; 2 uses
  %exitcond1073.not.7 = icmp eq i64 %i.ps, %i.no
  br i1 %exitcond1073.not.7, label %.loopexit, label %.lr.ph918, !llvm.loop !61

._crit_edge877:                                   ; preds = %dl.exit694
  %i.pt = add nsw i32 %.0528797, -1               ; 6 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pu
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !17
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %wide.trip.count952
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !17
  %i.pz = add nsw i32 %.0528797, -2               ; 2 uses
  %xtraiter1478 = and i32 %i.pt, 7                ; 3 uses
  %i.qa = icmp ult i32 %i.pz, 7
  br i1 %i.qa, label %.lr.ph.i665.epil.preheader, label %._crit_edge877.new

._crit_edge877.new:                               ; preds = %._crit_edge877
  %unroll_iter1483 = and i32 %i.pt, -8
  br label %.lr.ph.i665

.lr.ph.i665:                                      ; preds = %.lr.ph.i665, %._crit_edge877.new
  %.056.i667 = phi i32 [ %.pre1079, %._crit_edge877.new ], [ %i.qb, %.lr.ph.i665 ]
  %niter1484 = phi i32 [ 0, %._crit_edge877.new ], [ %niter1484.next.7, %.lr.ph.i665 ]
  %i.qb = sdiv i32 %.056.i667, 256                ; 3 uses
  %niter1484.next.7 = add i32 %niter1484, 8       ; 2 uses
  %niter1484.ncmp.7 = icmp eq i32 %niter1484.next.7, %unroll_iter1483
  br i1 %niter1484.ncmp.7, label %.lr.ph.i673.preheader.unr-lcssa, label %.lr.ph.i665

.lr.ph.i673.preheader.unr-lcssa:                  ; preds = %.lr.ph.i665
  %lcmp.mod1480.not = icmp eq i32 %xtraiter1478, 0
  br i1 %lcmp.mod1480.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil.preheader

.lr.ph.i665.epil.preheader:                       ; preds = %.lr.ph.i673.preheader.unr-lcssa, %._crit_edge877
  %.056.i667.epil.init = phi i32 [ %.pre1079, %._crit_edge877 ], [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ]
  %lcmp.mod1482 = icmp ne i32 %xtraiter1478, 0
  tail call void @llvm.assume(i1 %lcmp.mod1482)
  br label %.lr.ph.i665.epil

.lr.ph.i665.epil:                                 ; preds = %.lr.ph.i665.epil, %.lr.ph.i665.epil.preheader
  %.056.i667.epil = phi i32 [ %i.qc, %.lr.ph.i665.epil ], [ %.056.i667.epil.init, %.lr.ph.i665.epil.preheader ]
  %epil.iter1479 = phi i32 [ %epil.iter1479.next, %.lr.ph.i665.epil ], [ 0, %.lr.ph.i665.epil.preheader ]
  %i.qc = sdiv i32 %.056.i667.epil, 2             ; 2 uses
  %epil.iter1479.next = add i32 %epil.iter1479, 1 ; 2 uses
  %epil.iter1479.cmp.not = icmp eq i32 %epil.iter1479.next, %xtraiter1478
  br i1 %epil.iter1479.cmp.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil, !llvm.loop !62

.lr.ph.i673.preheader:                            ; preds = %.lr.ph.i665.epil, %.lr.ph.i673.preheader.unr-lcssa
  %.lcssa1412.a = phi i32 [ %i.qb, %.lr.ph.i673.preheader.unr-lcssa ], [ %i.qc, %.lr.ph.i665.epil ]
  %xtraiter1485 = and i32 %i.pt, 7                ; 3 uses
  %i.qd = icmp ult i32 %i.pz, 7
  br i1 %i.qd, label %.lr.ph.i673.epil.preheader, label %.lr.ph.i673.preheader.new

.lr.ph.i673.preheader.new:                        ; preds = %.lr.ph.i673.preheader
  %unroll_iter1490 = and i32 %i.pt, -8
  br label %.lr.ph.i673

._crit_edge.loopexit.i677.unr-lcssa:              ; preds = %.lr.ph.i673
  %lcmp.mod1487.not = icmp eq i32 %xtraiter1485, 0
  br i1 %lcmp.mod1487.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil.preheader

.lr.ph.i673.epil.preheader:                       ; preds = %._crit_edge.loopexit.i677.unr-lcssa, %.lr.ph.i673.preheader
  %.056.i675.epil.init = phi i32 [ %.pre1081, %.lr.ph.i673.preheader ], [ %i.qh, %._crit_edge.loopexit.i677.unr-lcssa ]
  %lcmp.mod1489 = icmp ne i32 %xtraiter1485, 0
  tail call void @llvm.assume(i1 %lcmp.mod1489)
  br label %.lr.ph.i673.epil

.lr.ph.i673.epil:                                 ; preds = %.lr.ph.i673.epil, %.lr.ph.i673.epil.preheader
  %.056.i675.epil = phi i32 [ %i.qe, %.lr.ph.i673.epil ], [ %.056.i675.epil.init, %.lr.ph.i673.epil.preheader ]
  %epil.iter1486 = phi i32 [ %epil.iter1486.next, %.lr.ph.i673.epil ], [ 0, %.lr.ph.i673.epil.preheader ]
  %i.qe = sdiv i32 %.056.i675.epil, 2             ; 2 uses
  %epil.iter1486.next = add i32 %epil.iter1486, 1 ; 2 uses
  %epil.iter1486.cmp.not = icmp eq i32 %epil.iter1486.next, %xtraiter1485
  br i1 %epil.iter1486.cmp.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil, !llvm.loop !63

._crit_edge.loopexit.i677:                        ; preds = %.lr.ph.i673.epil, %._crit_edge.loopexit.i677.unr-lcssa
  %.lcssa1411 = phi i32 [ %i.qh, %._crit_edge.loopexit.i677.unr-lcssa ], [ %i.qe, %.lr.ph.i673.epil ]
  %i.qf = add nsw i32 %.lcssa1412.a, 1
  %i.qg = add nsw i32 %.lcssa1411, 1
  br label %dl.exit678

.lr.ph.i673:                                      ; preds = %.lr.ph.i673, %.lr.ph.i673.preheader.new
  %.056.i675 = phi i32 [ %.pre1081, %.lr.ph.i673.preheader.new ], [ %i.qh, %.lr.ph.i673 ]
  %niter1491 = phi i32 [ 0, %.lr.ph.i673.preheader.new ], [ %niter1491.next.7, %.lr.ph.i673 ]
  %i.qh = sdiv i32 %.056.i675, 256                ; 3 uses
  %niter1491.next.7 = add i32 %niter1491, 8       ; 2 uses
  %niter1491.ncmp.7 = icmp eq i32 %niter1491.next.7, %unroll_iter1490
  br i1 %niter1491.ncmp.7, label %._crit_edge.loopexit.i677.unr-lcssa, label %.lr.ph.i673

dl.exit678:                                       ; preds = %._crit_edge877.thread, %._crit_edge.loopexit.i677
  %i.qi = phi ptr [ %i.py, %._crit_edge.loopexit.i677 ], [ %i.nk, %._crit_edge877.thread ] ; 4 uses
  %i.qj = phi ptr [ %i.pw, %._crit_edge.loopexit.i677 ], [ %i.ni, %._crit_edge877.thread ]
  %i.qk = phi i32 [ %i.pt, %._crit_edge.loopexit.i677 ], [ %i.nf, %._crit_edge877.thread ]
  %.in829 = phi i32 [ %i.qf, %._crit_edge.loopexit.i677 ], [ %.pre, %._crit_edge877.thread ]
  %.05.lcssa.i671 = phi i32 [ %i.qg, %._crit_edge.loopexit.i677 ], [ %.pre1074, %._crit_edge877.thread ]
  %i.ql = sext i32 %.in829 to i64
  %i.qm = sext i32 %.05.lcssa.i671 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.qj, ptr noundef %i.qi, i64 noundef %i.ql, i64 noundef %i.qm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store <4 x float> <float f0x3DAAAAAB, float 2.500000e-01, float f0x3ED55556, float f0x3F155555>, ptr %i.g, align 16, !tbaa !21
  %i.qn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <2 x float> <float 7.500000e-01, float f0x3F6AAAAB>, ptr %i.qn, align 16, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.h, i8 0, i64 1440, i1 false)
  br label %bb.o

.lr.ph876:                                        ; preds = %.preheader851, %dl.exit694
  %indvar1462 = phi i64 [ %indvar.next1463, %dl.exit694 ], [ 0, %.preheader851 ] ; 4 uses
  %i.qo = phi ptr [ %i.qs, %dl.exit694 ], [ %storemerge, %.preheader851 ]
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %dl.exit694 ], [ 1, %.preheader851 ] ; 4 uses
  %i.qp = add i64 %indvar1462, -1                 ; 2 uses
  %i.qq = add nsw i64 %indvars.iv949, -1          ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv949
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !17 ; 2 uses
  %i.qt = icmp samesign ugt i64 %indvars.iv949, 1
  br i1 %i.qt, label %.lr.ph.i681.preheader, label %dl.exit694

.lr.ph.i681.preheader:                            ; preds = %.lr.ph876
  %xtraiter1464 = and i64 %i.qq, 7                ; 3 uses
  %i.qu = icmp ult i64 %i.qp, 7
  br i1 %i.qu, label %.lr.ph.i681.epil.preheader, label %.lr.ph.i681.preheader.new

.lr.ph.i681.preheader.new:                        ; preds = %.lr.ph.i681.preheader
  %unroll_iter1469 = and i64 %i.qq, -8
  br label %.lr.ph.i681

.lr.ph.i681:                                      ; preds = %.lr.ph.i681, %.lr.ph.i681.preheader.new
  %.056.i683 = phi i32 [ %.pre1079, %.lr.ph.i681.preheader.new ], [ %i.qv, %.lr.ph.i681 ]
  %niter1470 = phi i64 [ 0, %.lr.ph.i681.preheader.new ], [ %niter1470.next.7, %.lr.ph.i681 ]
  %i.qv = sdiv i32 %.056.i683, 256                ; 3 uses
  %niter1470.next.7 = add i64 %niter1470, 8       ; 2 uses
  %niter1470.ncmp.7 = icmp eq i64 %niter1470.next.7, %unroll_iter1469
  br i1 %niter1470.ncmp.7, label %.lr.ph.i689.preheader.unr-lcssa, label %.lr.ph.i681

.lr.ph.i689.preheader.unr-lcssa:                  ; preds = %.lr.ph.i681
  %lcmp.mod1466.not = icmp eq i64 %xtraiter1464, 0
  br i1 %lcmp.mod1466.not, label %.lr.ph.i689.preheader, label %.lr.ph.i681.epil.preheader

.lr.ph.i681.epil.preheader:                       ; preds = %.lr.ph.i689.preheader.unr-lcssa, %.lr.ph.i681.preheader
  %.056.i683.epil.init = phi i32 [ %.pre1079, %.lr.ph.i681.preheader ], [ %i.qv, %.lr.ph.i689.preheader.unr-lcssa ]
  %lcmp.mod1468 = icmp ne i64 %xtraiter1464, 0
  tail call void @llvm.assume(i1 %lcmp.mod1468)
  br label %.lr.ph.i681.epil

.lr.ph.i681.epil:                                 ; preds = %.lr.ph.i681.epil, %.lr.ph.i681.epil.preheader
  %.056.i683.epil = phi i32 [ %i.qw, %.lr.ph.i681.epil ], [ %.056.i683.epil.init, %.lr.ph.i681.epil.preheader ]
  %epil.iter1465 = phi i64 [ %epil.iter1465.next, %.lr.ph.i681.epil ], [ 0, %.lr.ph.i681.epil.preheader ]
  %i.qw = sdiv i32 %.056.i683.epil, 2             ; 2 uses
  %epil.iter1465.next = add i64 %epil.iter1465, 1 ; 2 uses
  %epil.iter1465.cmp.not = icmp eq i64 %epil.iter1465.next, %xtraiter1464
  br i1 %epil.iter1465.cmp.not, label %.lr.ph.i689.preheader, label %.lr.ph.i681.epil, !llvm.loop !64

.lr.ph.i689.preheader:                            ; preds = %.lr.ph.i681.epil, %.lr.ph.i689.preheader.unr-lcssa
  %.lcssa1413.a = phi i32 [ %i.qv, %.lr.ph.i689.preheader.unr-lcssa ], [ %i.qw, %.lr.ph.i681.epil ]
  %xtraiter1471 = and i64 %indvar1462, 7          ; 3 uses
  %i.qx = icmp ult i64 %i.qp, 7
  br i1 %i.qx, label %.lr.ph.i689.epil.preheader, label %.lr.ph.i689.preheader.new

.lr.ph.i689.preheader.new:                        ; preds = %.lr.ph.i689.preheader
  %unroll_iter1476 = and i64 %indvar1462, -8
  br label %.lr.ph.i689

._crit_edge.loopexit.i693.unr-lcssa:              ; preds = %.lr.ph.i689
  %lcmp.mod1473.not = icmp eq i64 %xtraiter1471, 0
  br i1 %lcmp.mod1473.not, label %._crit_edge.loopexit.i693, label %.lr.ph.i689.epil.preheader

.lr.ph.i689.epil.preheader:                       ; preds = %._crit_edge.loopexit.i693.unr-lcssa, %.lr.ph.i689.preheader
  %.056.i691.epil.init = phi i32 [ %.pre1081, %.lr.ph.i689.preheader ], [ %i.rb, %._crit_edge.loopexit.i693.unr-lcssa ]
  %lcmp.mod1475 = icmp ne i64 %xtraiter1471, 0
  tail call void @llvm.assume(i1 %lcmp.mod1475)
  br label %.lr.ph.i689.epil

.lr.ph.i689.epil:                                 ; preds = %.lr.ph.i689.epil, %.lr.ph.i689.epil.preheader
  %.056.i691.epil = phi i32 [ %i.qy, %.lr.ph.i689.epil ], [ %.056.i691.epil.init, %.lr.ph.i689.epil.preheader ]
  %epil.iter1472 = phi i64 [ %epil.iter1472.next, %.lr.ph.i689.epil ], [ 0, %.lr.ph.i689.epil.preheader ]
  %i.qy = sdiv i32 %.056.i691.epil, 2             ; 2 uses
  %epil.iter1472.next = add i64 %epil.iter1472, 1 ; 2 uses
  %epil.iter1472.cmp.not = icmp eq i64 %epil.iter1472.next, %xtraiter1471
  br i1 %epil.iter1472.cmp.not, label %._crit_edge.loopexit.i693, label %.lr.ph.i689.epil, !llvm.loop !65

._crit_edge.loopexit.i693:                        ; preds = %.lr.ph.i689.epil, %._crit_edge.loopexit.i693.unr-lcssa
  %.lcssa1414 = phi i32 [ %i.rb, %._crit_edge.loopexit.i693.unr-lcssa ], [ %i.qy, %.lr.ph.i689.epil ]
  %i.qz = add nsw i32 %.lcssa1413.a, 1
  %i.ra = add nsw i32 %.lcssa1414, 1
  br label %dl.exit694

.lr.ph.i689:                                      ; preds = %.lr.ph.i689, %.lr.ph.i689.preheader.new
  %.056.i691 = phi i32 [ %.pre1081, %.lr.ph.i689.preheader.new ], [ %i.rb, %.lr.ph.i689 ]
  %niter1477 = phi i64 [ 0, %.lr.ph.i689.preheader.new ], [ %niter1477.next.7, %.lr.ph.i689 ]
  %i.rb = sdiv i32 %.056.i691, 256                ; 3 uses
  %niter1477.next.7 = add i64 %niter1477, 8       ; 2 uses
  %niter1477.ncmp.7 = icmp eq i64 %niter1477.next.7, %unroll_iter1476
  br i1 %niter1477.ncmp.7, label %._crit_edge.loopexit.i693.unr-lcssa, label %.lr.ph.i689

dl.exit694:                                       ; preds = %.lr.ph876, %._crit_edge.loopexit.i693
  %.in834 = phi i32 [ %i.qz, %._crit_edge.loopexit.i693 ], [ %.pre, %.lr.ph876 ]
  %.05.lcssa.i687 = phi i32 [ %i.ra, %._crit_edge.loopexit.i693 ], [ %.pre1074, %.lr.ph876 ]
  %i.rc = sext i32 %.in834 to i64
  %i.rd = sext i32 %.05.lcssa.i687 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.qo, ptr noundef %i.qs, i64 noundef %i.rc, i64 noundef %i.rd)
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %exitcond953.not = icmp eq i64 %indvars.iv.next950, %wide.trip.count952
  %indvar.next1463 = add i64 %indvar1462, 1
  br i1 %exitcond953.not, label %._crit_edge877, label %.lr.ph876

bb.n:                                             ; preds = %dl.exit710
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1 ; 2 uses
  %exitcond962.not = icmp eq i64 %indvars.iv.next959, %wide.trip.count947.pre-phi
  br i1 %exitcond962.not, label %.thread807, label %bb.o

bb.o:                                             ; preds = %dl.exit678, %bb.n
  %indvars.iv958 = phi i64 [ 0, %dl.exit678 ], [ %indvars.iv.next959, %bb.n ] ; 9 uses
  %.not832 = icmp eq i64 %indvars.iv958, 0
  br i1 %.not832, label %dl.exit710, label %.lr.ph.i697.preheader

.lr.ph.i697.preheader:                            ; preds = %bb.o
  %xtraiter1492 = and i64 %indvars.iv958, 7       ; 3 uses
  %i.re = icmp samesign ult i64 %indvars.iv958, 8
  br i1 %i.re, label %.lr.ph.i697.epil.preheader, label %.lr.ph.i697.preheader.new

.lr.ph.i697.preheader.new:                        ; preds = %.lr.ph.i697.preheader
  %unroll_iter1497 = and i64 %indvars.iv958, 9223372036854775800
  br label %.lr.ph.i697

.lr.ph.i697:                                      ; preds = %.lr.ph.i697, %.lr.ph.i697.preheader.new
  %.056.i699 = phi i32 [ %.pre1079, %.lr.ph.i697.preheader.new ], [ %i.rf, %.lr.ph.i697 ]
  %niter1498 = phi i64 [ 0, %.lr.ph.i697.preheader.new ], [ %niter1498.next.7, %.lr.ph.i697 ]
  %i.rf = sdiv i32 %.056.i699, 256                ; 3 uses
  %niter1498.next.7 = add i64 %niter1498, 8       ; 2 uses
  %niter1498.ncmp.7 = icmp eq i64 %niter1498.next.7, %unroll_iter1497
  br i1 %niter1498.ncmp.7, label %.lr.ph.i705.preheader.unr-lcssa, label %.lr.ph.i697

.lr.ph.i705.preheader.unr-lcssa:                  ; preds = %.lr.ph.i697
  %lcmp.mod1494.not = icmp eq i64 %xtraiter1492, 0
  br i1 %lcmp.mod1494.not, label %.lr.ph.i705.preheader, label %.lr.ph.i697.epil.preheader

.lr.ph.i697.epil.preheader:                       ; preds = %.lr.ph.i705.preheader.unr-lcssa, %.lr.ph.i697.preheader
  %.056.i699.epil.init = phi i32 [ %.pre1079, %.lr.ph.i697.preheader ], [ %i.rf, %.lr.ph.i705.preheader.unr-lcssa ]
  %lcmp.mod1496 = icmp ne i64 %xtraiter1492, 0
  tail call void @llvm.assume(i1 %lcmp.mod1496)
  br label %.lr.ph.i697.epil

.lr.ph.i697.epil:                                 ; preds = %.lr.ph.i697.epil, %.lr.ph.i697.epil.preheader
  %.056.i699.epil = phi i32 [ %i.rg, %.lr.ph.i697.epil ], [ %.056.i699.epil.init, %.lr.ph.i697.epil.preheader ]
  %epil.iter1493 = phi i64 [ %epil.iter1493.next, %.lr.ph.i697.epil ], [ 0, %.lr.ph.i697.epil.preheader ]
  %i.rg = sdiv i32 %.056.i699.epil, 2             ; 2 uses
  %epil.iter1493.next = add i64 %epil.iter1493, 1 ; 2 uses
  %epil.iter1493.cmp.not = icmp eq i64 %epil.iter1493.next, %xtraiter1492
  br i1 %epil.iter1493.cmp.not, label %.lr.ph.i705.preheader, label %.lr.ph.i697.epil, !llvm.loop !66

.lr.ph.i705.preheader:                            ; preds = %.lr.ph.i697.epil, %.lr.ph.i705.preheader.unr-lcssa
  %.lcssa1409.a = phi i32 [ %i.rf, %.lr.ph.i705.preheader.unr-lcssa ], [ %i.rg, %.lr.ph.i697.epil ]
  %xtraiter1514 = and i64 %indvars.iv958, 7       ; 3 uses
  %i.rh = icmp samesign ult i64 %indvars.iv958, 8
  br i1 %i.rh, label %.lr.ph.i705.epil.preheader, label %.lr.ph.i705.preheader.new

.lr.ph.i705.preheader.new:                        ; preds = %.lr.ph.i705.preheader
  %unroll_iter1519 = and i64 %indvars.iv958, 9223372036854775800
  br label %.lr.ph.i705

._crit_edge.loopexit.i709.unr-lcssa:              ; preds = %.lr.ph.i705
  %lcmp.mod1516.not = icmp eq i64 %xtraiter1514, 0
  br i1 %lcmp.mod1516.not, label %._crit_edge.loopexit.i709, label %.lr.ph.i705.epil.preheader

.lr.ph.i705.epil.preheader:                       ; preds = %._crit_edge.loopexit.i709.unr-lcssa, %.lr.ph.i705.preheader
  %.056.i707.epil.init = phi i32 [ %.pre1081, %.lr.ph.i705.preheader ], [ %i.rl, %._crit_edge.loopexit.i709.unr-lcssa ]
  %lcmp.mod1518 = icmp ne i64 %xtraiter1514, 0
  tail call void @llvm.assume(i1 %lcmp.mod1518)
  br label %.lr.ph.i705.epil

.lr.ph.i705.epil:                                 ; preds = %.lr.ph.i705.epil, %.lr.ph.i705.epil.preheader
  %.056.i707.epil = phi i32 [ %i.ri, %.lr.ph.i705.epil ], [ %.056.i707.epil.init, %.lr.ph.i705.epil.preheader ]
  %epil.iter1515 = phi i64 [ %epil.iter1515.next, %.lr.ph.i705.epil ], [ 0, %.lr.ph.i705.epil.preheader ]
  %i.ri = sdiv i32 %.056.i707.epil, 2             ; 2 uses
  %epil.iter1515.next = add i64 %epil.iter1515, 1 ; 2 uses
  %epil.iter1515.cmp.not = icmp eq i64 %epil.iter1515.next, %xtraiter1514
  br i1 %epil.iter1515.cmp.not, label %._crit_edge.loopexit.i709, label %.lr.ph.i705.epil, !llvm.loop !67

._crit_edge.loopexit.i709:                        ; preds = %.lr.ph.i705.epil, %._crit_edge.loopexit.i709.unr-lcssa
  %.lcssa1410 = phi i32 [ %i.rl, %._crit_edge.loopexit.i709.unr-lcssa ], [ %i.ri, %.lr.ph.i705.epil ]
  %i.rj = add nsw i32 %.lcssa1409.a, 1
  %i.rk = add nsw i32 %.lcssa1410, 1
  br label %dl.exit710

.lr.ph.i705:                                      ; preds = %.lr.ph.i705, %.lr.ph.i705.preheader.new
  %.056.i707 = phi i32 [ %.pre1081, %.lr.ph.i705.preheader.new ], [ %i.rl, %.lr.ph.i705 ]
  %niter1520 = phi i64 [ 0, %.lr.ph.i705.preheader.new ], [ %niter1520.next.7, %.lr.ph.i705 ]
  %i.rl = sdiv i32 %.056.i707, 256                ; 3 uses
  %niter1520.next.7 = add i64 %niter1520, 8       ; 2 uses
  %niter1520.ncmp.7 = icmp eq i64 %niter1520.next.7, %unroll_iter1519
  br i1 %niter1520.ncmp.7, label %._crit_edge.loopexit.i709.unr-lcssa, label %.lr.ph.i705

dl.exit710:                                       ; preds = %bb.o, %._crit_edge.loopexit.i709
  %.in833 = phi i32 [ %i.rj, %._crit_edge.loopexit.i709 ], [ %.pre, %bb.o ]
  %.05.lcssa.i703 = phi i32 [ %i.rk, %._crit_edge.loopexit.i709 ], [ %.pre1074, %bb.o ]
  %i.rm = sext i32 %.in833 to i64
  %i.rn = sext i32 %.05.lcssa.i703 to i64
  %i.ro = shl nsw i64 %i.rm, 2
  %i.rp = mul i64 %i.ro, %i.rn
  %i.rq = tail call ptr @dt_alloc_aligned(i64 noundef %i.rp) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rq, i64 64) ]
end_hunk_1
begin_hunk_2_@local_laplacian_internal:bb.a
  %i.abt = load i32, ptr %i.zn, align 8, !tbaa !112
  %i.abu = load i32, ptr %i.aaf, align 4, !tbaa !113
  %i.abv = load <2 x i32>, ptr %i.abs, align 4, !tbaa !19
  %i.abw = load <2 x i32>, ptr %i.ya, align 8, !tbaa !19 ; 3 uses
  %i.abx = extractelement <2 x i32> %i.abw, i64 0
  %i.aby = sitofp reassoc nsz arcp contract afn i32 %i.abx to float
  %i.abz = insertelement <2 x i32> poison, i32 %i.abt, i64 0
  %i.aca = insertelement <2 x i32> %i.abz, i32 %i.abu, i64 1 ; 2 uses
  %i.acb = sub nsw <2 x i32> %i.aca, %i.abw
  %i.acc = sitofp <2 x i32> %i.acb to <2 x float>
  %i.acd = sitofp <2 x i32> %i.abv to <2 x float>
  %i.ace = extractelement <2 x i32> %i.abw, i64 1
  %i.acf = sitofp reassoc nsz arcp contract afn i32 %i.ace to float
  %i.acg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.acc, splat (float 5.000000e-01)
  %i.ach = sitofp <2 x i32> %i.aca to <2 x float> ; 2 uses
  %i.aci = load ptr, ptr %i.abj, align 8, !tbaa !17 ; 4 uses
  %i.acj = load ptr, ptr %i.abh, align 8, !tbaa !17 ; 4 uses
  %i.ack = zext nneg i32 %.05.lcssa.i727813 to i64 ; 2 uses
  %wide.trip.count1025 = zext nneg i32 %.05.lcssa.i735 to i64
  %i.acl = extractelement <4 x i32> %i.abd, i64 0 ; 3 uses
  %i.acm = extractelement <4 x i32> %i.abd, i64 1 ; 3 uses
  %i.acn = extractelement <4 x i32> %i.abd, i64 2 ; 3 uses
  %i.aco = extractelement <4 x i32> %i.abd, i64 3 ; 3 uses
  br label %.preheader848

.preheader848:                                    ; preds = %.preheader848.lr.ph.split, %._crit_edge889
  %indvars.iv1022 = phi i64 [ 0, %.preheader848.lr.ph.split ], [ %indvars.iv.next1023, %._crit_edge889 ] ; 3 uses
  %i.acp = trunc nuw nsw i64 %indvars.iv1022 to i32
  %i.acq = uitofp nsz nneg i32 %i.acp to float
  %i.acr = fmul reassoc nsz arcp contract afn float %exp2, %i.acq
  %.reass893 = fadd reassoc nsz arcp contract afn float %i.acr, %invariant.op892
  %i.acs = fmul reassoc nsz arcp contract afn float %.reass893, %i.acf
  %i.act = mul nuw nsw i64 %indvars.iv1022, %i.ack
  %invariant.gep1140.a = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.act
  %i.acu = insertelement <2 x float> poison, float %i.acs, i64 1
  br label %bb.ae

._crit_edge891.split:                             ; preds = %._crit_edge889, %.preheader848.lr.ph, %bb.ad
  %i.acv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !159
  %.not626 = icmp eq ptr %i.acv, null
  br i1 %.not626, label %bb.ag, label %bb.af

._crit_edge889:                                   ; preds = %bb.ae
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %._crit_edge891.split, label %.preheader848

bb.ae:                                            ; preds = %.preheader848, %bb.ae
  %indvars.iv1017 = phi i64 [ 0, %.preheader848 ], [ %indvars.iv.next1018, %bb.ae ] ; 3 uses
  %i.acw = trunc nuw nsw i64 %indvars.iv1017 to i32
  %i.acx = uitofp nsz nneg i32 %i.acw to float
  %i.acy = fmul reassoc nsz arcp contract afn float %exp2, %i.acx
  %.reass = fadd reassoc nsz arcp contract afn float %i.acy, %invariant.op
  %i.acz = load float, ptr %i.abm, align 4, !tbaa !28
  %i.ada = fmul reassoc nsz arcp contract afn float %.reass, %i.aby
  %i.adb = insertelement <2 x float> poison, float %i.acz, i64 0
  %i.adc = shufflevector <2 x float> %i.adb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.add = fmul reassoc nsz arcp contract afn <2 x float> %i.adc, %i.acd
  %i.ade = insertelement <2 x float> %i.acu, float %i.ada, i64 0
  %i.adf = fdiv reassoc nsz arcp contract afn <2 x float> %i.ade, %i.add
  %i.adg = fadd reassoc nsz arcp contract afn <2 x float> %i.acg, %i.adf ; 3 uses
  %i.adh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adg, %i.ach
  %i.adi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.adg, zeroinitializer
  %i.adj = select <2 x i1> %i.adi, <2 x float> zeroinitializer, <2 x float> %i.adg
  %i.adk = select <2 x i1> %i.adh, <2 x float> %i.ach, <2 x float> %i.adj
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.adm = fmul reassoc nsz arcp contract afn <4 x float> %i.adl, %i.zd ; 4 uses
  %i.adn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.adm, %i.abe
  %i.ado = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adm, zeroinitializer
  %i.adp = select <4 x i1> %i.ado, <4 x float> zeroinitializer, <4 x float> %i.adm
  %i.adq = select <4 x i1> %i.adn, <4 x float> %i.abe, <4 x float> %i.adp
  %i.adr = fptosi <4 x float> %i.adq to <4 x i32> ; 5 uses
  %i.ads = sitofp <4 x i32> %i.adr to <4 x float>
  %i.adt = fsub reassoc nsz arcp contract afn <4 x float> %i.adm, %i.ads ; 6 uses
  %i.adu = extractelement <4 x float> %i.adt, i64 3
  %i.adv = fcmp reassoc nsz arcp contract afn ogt float %i.adu, 1.000000e+00
  %i.adw = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.adt, zeroinitializer
  %i.adx = extractelement <4 x float> %i.adt, i64 2
  %i.ady = fcmp reassoc nsz arcp contract afn ogt float %i.adx, 1.000000e+00
  %i.adz = extractelement <4 x float> %i.adt, i64 1
  %i.aea = fcmp reassoc nsz arcp contract afn ogt float %i.adz, 1.000000e+00
  %i.aeb = extractelement <4 x float> %i.adt, i64 0
  %i.aec = fcmp reassoc nsz arcp contract afn ogt float %i.aeb, 1.000000e+00
  %i.aed = select <4 x i1> %i.adw, <4 x float> zeroinitializer, <4 x float> %i.adt ; 4 uses
  %i.aee = extractelement <4 x float> %i.aed, i64 3
  %i.aef = select reassoc nsz arcp contract afn i1 %i.adv, float 1.000000e+00, float %i.aee ; 3 uses
  %i.aeg = extractelement <4 x float> %i.aed, i64 2
  %i.aeh = select reassoc nsz arcp contract afn i1 %i.ady, float 1.000000e+00, float %i.aeg
  %i.aei = extractelement <4 x float> %i.aed, i64 1
  %i.aej = select reassoc nsz arcp contract afn i1 %i.aea, float 1.000000e+00, float %i.aei ; 3 uses
  %i.aek = extractelement <4 x float> %i.aed, i64 0
  %i.ael = select reassoc nsz arcp contract afn i1 %i.aec, float 1.000000e+00, float %i.aek ; 2 uses
  %i.aem = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aef ; 2 uses
  %i.aen = extractelement <4 x i32> %i.adr, i64 2 ; 4 uses
  %.not628 = icmp sgt i32 %.05.lcssa.i751, %i.aen
  %i.aeo = tail call i32 @llvm.smax.i32(i32 %i.aen, i32 0)
  %i.aep = select i1 %.not628, i32 %i.aeo, i32 %i.acn
  %i.aeq = mul nsw i32 %i.aep, %.05.lcssa.i743816 ; 2 uses
  %i.aer = extractelement <4 x i32> %i.adr, i64 3 ; 4 uses
  %.not629 = icmp sgt i32 %.05.lcssa.i743816, %i.aer
  %i.aes = tail call i32 @llvm.smax.i32(i32 %i.aer, i32 0)
  %i.aet = select i1 %.not629, i32 %i.aes, i32 %i.aco ; 2 uses
  %i.aeu = add nsw i32 %i.aeq, %i.aet
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.aev
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !21
  %i.aey = fmul reassoc nsz arcp contract afn float %i.aem, %i.aex
  %.not630 = icmp sgt i32 %i.aco, %i.aer
  %i.aez = tail call i32 @llvm.smax.i32(i32 %i.aer, i32 -1)
  %i.afa = add nsw i32 %i.aez, 1
  %i.afb = select i1 %.not630, i32 %i.afa, i32 %i.aco ; 2 uses
  %i.afc = add nsw i32 %i.aeq, %i.afb
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.afd
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !21
  %i.afg = fmul reassoc nsz arcp contract afn float %i.aef, %i.aff
  %.not631 = icmp sgt i32 %i.acn, %i.aen
  %i.afh = tail call i32 @llvm.smax.i32(i32 %i.aen, i32 -1)
  %i.afi = add nsw i32 %i.afh, 1
  %i.afj = select i1 %.not631, i32 %i.afi, i32 %i.acn
  %i.afk = mul nsw i32 %i.afj, %.05.lcssa.i743816 ; 2 uses
  %i.afl = add nsw i32 %i.afk, %i.aet
  %i.afm = sext i32 %i.afl to i64
  %i.afn = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.afm
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !21
  %i.afp = fmul reassoc nsz arcp contract afn float %i.aem, %i.afo
  %i.afq = add nsw i32 %i.afk, %i.afb
  %i.afr = sext i32 %i.afq to i64
  %i.afs = getelementptr inbounds [4 x i8], ptr %i.aci, i64 %i.afr
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !21
  %i.afu = fmul reassoc nsz arcp contract afn float %i.aef, %i.aft
  %reass.add = fadd reassoc nsz arcp contract afn float %i.aey, %i.afg ; 2 uses
  %reass.add835 = fadd reassoc nsz arcp contract afn float %i.afu, %i.afp
  %i.afv = fsub reassoc nsz arcp contract afn float %reass.add835, %reass.add
  %i.afw = fmul reassoc nsz arcp contract afn float %i.aeh, %i.afv
  %i.afx = fadd reassoc nsz arcp contract afn float %reass.add, %i.afw ; 2 uses
  %i.afy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aej ; 2 uses
  %i.afz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ael
  %i.aga = extractelement <4 x i32> %i.adr, i64 0 ; 4 uses
  %.not632 = icmp sgt i32 %.05.lcssa.i767, %i.aga
  %i.agb = tail call i32 @llvm.smax.i32(i32 %i.aga, i32 0)
  %i.agc = select i1 %.not632, i32 %i.agb, i32 %i.acl
  %i.agd = mul nsw i32 %i.agc, %.05.lcssa.i759819 ; 2 uses
  %i.age = extractelement <4 x i32> %i.adr, i64 1 ; 4 uses
  %.not633 = icmp sgt i32 %.05.lcssa.i759819, %i.age
  %i.agf = tail call i32 @llvm.smax.i32(i32 %i.age, i32 0)
  %i.agg = select i1 %.not633, i32 %i.agf, i32 %i.acm ; 2 uses
  %i.agh = add nsw i32 %i.agd, %i.agg
  %i.agi = sext i32 %i.agh to i64
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.agi
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !21
  %i.agl = fmul reassoc nsz arcp contract afn float %i.afy, %i.agk
  %.not634 = icmp sgt i32 %i.acm, %i.age
  %i.agm = tail call i32 @llvm.smax.i32(i32 %i.age, i32 -1)
  %i.agn = add nsw i32 %i.agm, 1
  %i.ago = select i1 %.not634, i32 %i.agn, i32 %i.acm ; 2 uses
  %i.agp = add nsw i32 %i.agd, %i.ago
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.agq
  %i.ags = load float, ptr %i.agr, align 4, !tbaa !21
  %i.agt = fmul reassoc nsz arcp contract afn float %i.aej, %i.ags
  %.not635 = icmp sgt i32 %i.acl, %i.aga
  %i.agu = tail call i32 @llvm.smax.i32(i32 %i.aga, i32 -1)
  %i.agv = add nsw i32 %i.agu, 1
  %i.agw = select i1 %.not635, i32 %i.agv, i32 %i.acl
  %i.agx = mul nsw i32 %i.agw, %.05.lcssa.i759819 ; 2 uses
  %i.agy = add nsw i32 %i.agx, %i.agg
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.agz
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !21
  %i.ahc = fmul reassoc nsz arcp contract afn float %i.afy, %i.ahb
  %i.ahd = add nsw i32 %i.agx, %i.ago
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.acj, i64 %i.ahe
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !21
  %i.ahh = fmul reassoc nsz arcp contract afn float %i.aej, %i.ahg
  %reass.add838 = fadd reassoc nsz arcp contract afn float %i.agl, %i.agt
  %reass.mul839 = fmul reassoc nsz arcp contract afn float %reass.add838, %i.afz
  %reass.add840 = fadd reassoc nsz arcp contract afn float %i.ahh, %i.ahc
  %reass.mul841 = fmul reassoc nsz arcp contract afn float %reass.add840, %i.ael
  %i.ahi = fsub reassoc nsz arcp contract afn float %reass.mul839, %i.afx
  %i.ahj = fadd reassoc nsz arcp contract afn float %i.ahi, %reass.mul841
  %i.ahk = fmul reassoc nsz arcp contract afn float %i.ahj, %i.za
  %i.ahl = fadd reassoc nsz arcp contract afn float %i.ahk, %i.afx
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1140.a, i64 %indvars.iv1017
  store float %i.ahl, ptr %gep, align 4, !tbaa !21
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 1 ; 2 uses
  %exitcond1021.not = icmp eq i64 %indvars.iv.next1018, %i.ack
  br i1 %exitcond1021.not, label %._crit_edge889, label %bb.ae

bb.af:                                            ; preds = %._crit_edge891.split
  tail call void @dt_dump_pfm(ptr noundef nonnull @.str.3, ptr noundef %i.qi, i32 noundef %.05.lcssa.i727813, i32 noundef %.05.lcssa.i735, i32 noundef 16, ptr noundef nonnull @.str.1) #14
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge891.split, %bb.af, %bb.aa, %bb.z
  %i.ahm = icmp sgt i32 %.0528797, 0
  br i1 %i.ahm, label %.lr.ph902, label %.preheader844.preheader

.lr.ph902:                                        ; preds = %bb.ag
  %i.ahn = zext i32 %i.qk to i64                  ; 2 uses
  br label %bb.ah

.preheader844.preheader:                          ; preds = %._crit_edge899.split, %bb.ag
  %i.aho = load ptr, ptr %i.f, align 16           ; 3 uses
  %i.ahp = zext nneg i32 %i.ma to i64             ; 3 uses
  %i.ahq = sext i32 %.pre to i64                  ; 3 uses
  %i.ahr = zext nneg i32 %2 to i64
  %wide.trip.count1052 = zext nneg i32 %3 to i64  ; 3 uses
  %wide.trip.count1047 = zext nneg i32 %2 to i64  ; 7 uses
  %invariant.gep1141 = getelementptr [4 x i8], ptr %i.aho, i64 %i.ahp
  %i.ahs = mul nuw nsw i64 %wide.trip.count1052, %wide.trip.count1047
  %i.aht = shl i64 %i.ahs, 4
  %i.ahu = add i64 %i.aht, -4                     ; 2 uses
  %scevgep1291.a = getelementptr i8, ptr %1, i64 %i.ahu ; 2 uses
  %i.ahv = shl nsw i64 %i.ahq, 2
  %i.ahw = add nsw i64 %i.ahv, 4
  %i.ahx = mul i64 %i.ahw, %i.ahp                 ; 2 uses
  %scevgep1292.a = getelementptr i8, ptr %i.aho, i64 %i.ahx
  %i.ahy = add nuw nsw i64 %wide.trip.count1052, 4611686018427387903
  %i.ahz = mul i64 %i.ahy, %i.ahq
  %i.aia = add i64 %i.ahz, %wide.trip.count1047
  %i.aib = shl i64 %i.aia, 2
  %i.aic = getelementptr i8, ptr %i.aho, i64 %i.aib
  %scevgep1293.a = getelementptr i8, ptr %i.aic, i64 %i.ahx
  %scevgep1294.a = getelementptr i8, ptr %0, i64 4
  %scevgep1295 = getelementptr i8, ptr %0, i64 %i.ahu
  %min.iters.check1303 = icmp ult i32 %2, 5
  %bound01296 = icmp ult ptr %1, %scevgep1293.a
  %bound11297 = icmp ult ptr %scevgep1292.a, %scevgep1291.a
  %found.conflict1298 = and i1 %bound01296, %bound11297
  %stride.check1299 = icmp slt i32 %.pre, 0
  %i.aid = or i1 %found.conflict1298, %stride.check1299
  %bound01300 = icmp ult ptr %1, %scevgep1295
  %bound11301 = icmp ult ptr %scevgep1294.a, %scevgep1291.a
  %found.conflict1302 = and i1 %bound01300, %bound11301
  %conflict.rdx = or i1 %i.aid, %found.conflict1302
  %i.aie = and i64 %wide.trip.count1047, 3        ; 2 uses
  %i.aif = icmp eq i64 %i.aie, 0
  %i.aig = select i1 %i.aif, i64 4, i64 %i.aie
  %n.vec1305 = sub nsw i64 %wide.trip.count1047, %i.aig ; 2 uses
  %i.aih = add nsw i64 %wide.trip.count1047, -1
  br label %.preheader844

bb.ah:                                            ; preds = %.lr.ph902, %._crit_edge899.split
  %indvar1664 = phi i64 [ 0, %.lr.ph902 ], [ %indvar.next1665, %._crit_edge899.split ] ; 2 uses
  %indvars.iv1041 = phi i64 [ %i.ahn, %.lr.ph902 ], [ %indvars.iv.next1042, %._crit_edge899.split ] ; 12 uses
  %i.aii = xor i64 %indvar1664, -1
  %i.aij = add i64 %i.aii, %i.ahn                 ; 2 uses
  %.not830 = icmp eq i64 %indvars.iv1041, 0
  br i1 %.not830, label %dl.exit790, label %.lr.ph.i777.preheader

.lr.ph.i777.preheader:                            ; preds = %bb.ah
  %xtraiter1666 = and i64 %indvars.iv1041, 7      ; 3 uses
  %i.aik = icmp ult i64 %i.aij, 7
  br i1 %i.aik, label %.lr.ph.i777.epil.preheader, label %.lr.ph.i777.preheader.new

.lr.ph.i777.preheader.new:                        ; preds = %.lr.ph.i777.preheader
  %unroll_iter1671 = and i64 %indvars.iv1041, -8
  br label %.lr.ph.i777

.lr.ph.i777:                                      ; preds = %.lr.ph.i777, %.lr.ph.i777.preheader.new
  %.056.i779 = phi i32 [ %.pre1079, %.lr.ph.i777.preheader.new ], [ %i.ail, %.lr.ph.i777 ]
  %niter1672 = phi i64 [ 0, %.lr.ph.i777.preheader.new ], [ %niter1672.next.7, %.lr.ph.i777 ]
  %i.ail = sdiv i32 %.056.i779, 256               ; 3 uses
  %niter1672.next.7 = add i64 %niter1672, 8       ; 2 uses
  %niter1672.ncmp.7 = icmp eq i64 %niter1672.next.7, %unroll_iter1671
  br i1 %niter1672.ncmp.7, label %.lr.ph.i785.preheader.unr-lcssa, label %.lr.ph.i777

.lr.ph.i785.preheader.unr-lcssa:                  ; preds = %.lr.ph.i777
  %lcmp.mod1668.not = icmp eq i64 %xtraiter1666, 0
  br i1 %lcmp.mod1668.not, label %.lr.ph.i785.preheader, label %.lr.ph.i777.epil.preheader

.lr.ph.i777.epil.preheader:                       ; preds = %.lr.ph.i785.preheader.unr-lcssa, %.lr.ph.i777.preheader
  %.056.i779.epil.init = phi i32 [ %.pre1079, %.lr.ph.i777.preheader ], [ %i.ail, %.lr.ph.i785.preheader.unr-lcssa ]
  %lcmp.mod1670 = icmp ne i64 %xtraiter1666, 0
  tail call void @llvm.assume(i1 %lcmp.mod1670)
  br label %.lr.ph.i777.epil

.lr.ph.i777.epil:                                 ; preds = %.lr.ph.i777.epil, %.lr.ph.i777.epil.preheader
  %.056.i779.epil = phi i32 [ %i.aim, %.lr.ph.i777.epil ], [ %.056.i779.epil.init, %.lr.ph.i777.epil.preheader ]
  %epil.iter1667 = phi i64 [ %epil.iter1667.next, %.lr.ph.i777.epil ], [ 0, %.lr.ph.i777.epil.preheader ]
  %i.aim = sdiv i32 %.056.i779.epil, 2            ; 2 uses
  %epil.iter1667.next = add i64 %epil.iter1667, 1 ; 2 uses
  %epil.iter1667.cmp.not = icmp eq i64 %epil.iter1667.next, %xtraiter1666
  br i1 %epil.iter1667.cmp.not, label %.lr.ph.i785.preheader, label %.lr.ph.i777.epil, !llvm.loop !90

.lr.ph.i785.preheader:                            ; preds = %.lr.ph.i777.epil, %.lr.ph.i785.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.ail, %.lr.ph.i785.preheader.unr-lcssa ], [ %i.aim, %.lr.ph.i777.epil ]
  %xtraiter1673 = and i64 %indvars.iv1041, 7      ; 3 uses
  %i.ain = icmp ult i64 %i.aij, 7
  br i1 %i.ain, label %.lr.ph.i785.epil.preheader, label %.lr.ph.i785.preheader.new

.lr.ph.i785.preheader.new:                        ; preds = %.lr.ph.i785.preheader
  %unroll_iter1678 = and i64 %indvars.iv1041, -8
  br label %.lr.ph.i785

._crit_edge.loopexit.i789.unr-lcssa:              ; preds = %.lr.ph.i785
  %lcmp.mod1675.not = icmp eq i64 %xtraiter1673, 0
  br i1 %lcmp.mod1675.not, label %._crit_edge.loopexit.i789, label %.lr.ph.i785.epil.preheader

.lr.ph.i785.epil.preheader:                       ; preds = %._crit_edge.loopexit.i789.unr-lcssa, %.lr.ph.i785.preheader
  %.056.i787.epil.init = phi i32 [ %.pre1081, %.lr.ph.i785.preheader ], [ %i.air, %._crit_edge.loopexit.i789.unr-lcssa ]
  %lcmp.mod1677 = icmp ne i64 %xtraiter1673, 0
  tail call void @llvm.assume(i1 %lcmp.mod1677)
  br label %.lr.ph.i785.epil

.lr.ph.i785.epil:                                 ; preds = %.lr.ph.i785.epil, %.lr.ph.i785.epil.preheader
  %.056.i787.epil = phi i32 [ %i.aio, %.lr.ph.i785.epil ], [ %.056.i787.epil.init, %.lr.ph.i785.epil.preheader ]
  %epil.iter1674 = phi i64 [ %epil.iter1674.next, %.lr.ph.i785.epil ], [ 0, %.lr.ph.i785.epil.preheader ]
  %i.aio = sdiv i32 %.056.i787.epil, 2            ; 2 uses
  %epil.iter1674.next = add i64 %epil.iter1674, 1 ; 2 uses
  %epil.iter1674.cmp.not = icmp eq i64 %epil.iter1674.next, %xtraiter1673
  br i1 %epil.iter1674.cmp.not, label %._crit_edge.loopexit.i789, label %.lr.ph.i785.epil, !llvm.loop !91

._crit_edge.loopexit.i789:                        ; preds = %.lr.ph.i785.epil, %._crit_edge.loopexit.i789.unr-lcssa
  %.lcssa1385 = phi i32 [ %i.air, %._crit_edge.loopexit.i789.unr-lcssa ], [ %i.aio, %.lr.ph.i785.epil ] ; 2 uses
  %i.aip = add nsw i32 %.lcssa, 1
  %i.aiq = add nsw i32 %.lcssa1385, 1
  br label %dl.exit790

.lr.ph.i785:                                      ; preds = %.lr.ph.i785, %.lr.ph.i785.preheader.new
  %.056.i787 = phi i32 [ %.pre1081, %.lr.ph.i785.preheader.new ], [ %i.air, %.lr.ph.i785 ]
  %niter1679 = phi i64 [ 0, %.lr.ph.i785.preheader.new ], [ %niter1679.next.7, %.lr.ph.i785 ]
  %i.air = sdiv i32 %.056.i787, 256               ; 3 uses
  %niter1679.next.7 = add i64 %niter1679, 8       ; 2 uses
  %niter1679.ncmp.7 = icmp eq i64 %niter1679.next.7, %unroll_iter1678
  br i1 %niter1679.ncmp.7, label %._crit_edge.loopexit.i789.unr-lcssa, label %.lr.ph.i785

dl.exit790:                                       ; preds = %bb.ah, %._crit_edge.loopexit.i789
  %.pre-phi = phi i32 [ %.pre1081, %bb.ah ], [ %.lcssa1385, %._crit_edge.loopexit.i789 ] ; 5 uses
  %.05.lcssa.i775822 = phi i32 [ %.pre, %bb.ah ], [ %i.aip, %._crit_edge.loopexit.i789 ] ; 32 uses
  %.05.lcssa.i783 = phi i32 [ %.pre1074, %bb.ah ], [ %i.aiq, %._crit_edge.loopexit.i789 ] ; 8 uses
  %i.ais = add nuw nsw i64 %indvars.iv1041, 1     ; 3 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ais
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !17 ; 12 uses
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1041
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !17 ; 37 uses
  %i.aix = and i32 %.pre-phi, -2
  %i.aiy = icmp sgt i32 %.05.lcssa.i783, 2
  br i1 %i.aiy, label %.preheader.lr.ph.i, label %._crit_edge25.split..loopexit.i_crit_edge.i

.preheader.lr.ph.i:                               ; preds = %dl.exit790
  %i.aiz = add i32 %.05.lcssa.i775822, -1         ; 2 uses
  %i.aja = icmp sgt i32 %.05.lcssa.i775822, 2
  %i.ajb = sdiv i32 %i.aiz, 2                     ; 3 uses
  %i.ajc = add nsw i32 %i.ajb, 1                  ; 7 uses
  br i1 %i.aja, label %.preheader.preheader.i, label %iter.check1277

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ajd = and i32 %i.aiz, -2
  %i.aje = zext nneg i32 %.05.lcssa.i775822 to i64
  %wide.trip.count31.i = zext i32 %i.aix to i64
  %wide.trip.count.i = zext nneg i32 %i.ajd to i64
  br label %.preheader.i794

.preheader.i794:                                  ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv28.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next29.i, %._crit_edge.i ] ; 3 uses
  %i.ajf = trunc nuw i64 %indvars.iv28.i to i32   ; 2 uses
  %i.ajg = lshr i32 %i.ajf, 1
  %i.ajh = mul nsw i32 %i.ajg, %i.ajc
  %i.aji = shl nuw i32 %i.ajf, 1
  %i.ajj = and i32 %i.aji, 2
  %i.ajk = mul nuw nsw i64 %indvars.iv28.i, %i.aje
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %i.ajk
  br label %bb.aj

._crit_edge25.split..loopexit.i_crit_edge.i:      ; preds = %dl.exit790
  %.pre.i = sext i32 %.05.lcssa.i775822 to i64
  br label %.loopexit.i.i

iter.check1277:                                   ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.ajl = sext i32 %.05.lcssa.i775822 to i64     ; 13 uses
  %wide.trip.count.i.i = zext nneg i32 %.pre-phi to i64 ; 6 uses
  %i.ajm = add nsw i64 %wide.trip.count.i.i, -1   ; 7 uses
  %min.iters.check1262 = icmp ugt i64 %i.ajm, 7
  %ident.check.not = icmp eq i32 %.05.lcssa.i775822, 1
  %or.cond1381 = select i1 %min.iters.check1262, i1 %ident.check.not, i1 false
  br i1 %or.cond1381, label %vector.main.loop.iter.check1263, label %.lr.ph.i.i.preheader

vector.main.loop.iter.check1263:                  ; preds = %iter.check1277
  %min.iters.check1264 = icmp ult i64 %i.ajm, 32
  br i1 %min.iters.check1264, label %vec.epilog.ph1281, label %vector.ph1265

vector.ph1265:                                    ; preds = %vector.main.loop.iter.check1263
  %i.ajn = and i64 %i.ajm, 24
  %n.vec1266 = and i64 %i.ajm, -32                ; 4 uses
  %i.ajo = or disjoint i64 %n.vec1266, 1
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.ph1265, %vector.body1267
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1272, %vector.body1267 ] ; 2 uses
  %i.ajp = getelementptr [4 x i8], ptr %i.aiw, i64 %index1268 ; 8 uses
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 4
  %i.ajr = getelementptr i8, ptr %i.ajp, i64 8
  %i.ajs = getelementptr i8, ptr %i.ajp, i64 40
  %i.ajt = getelementptr i8, ptr %i.ajp, i64 72
  %i.aju = getelementptr i8, ptr %i.ajp, i64 104
  %wide.load = load <8 x float>, ptr %i.ajr, align 4, !tbaa !21
  %wide.load1269.a = load <8 x float>, ptr %i.ajs, align 4, !tbaa !21
  %wide.load1270.a = load <8 x float>, ptr %i.ajt, align 4, !tbaa !21
end_hunk_2
begin_hunk_3_@local_laplacian_internal:bb.a
  %.not57.i.i = icmp eq i32 %i.asc, 0
  %i.asd = add nsw i32 %.05.lcssa.i783, -2
  %i.ase = mul nsw i32 %i.asd, %.05.lcssa.i775822
  %i.asf = sext i32 %i.ase to i64                 ; 2 uses
  br i1 %.not57.i.i, label %bb.ai, label %gauss_expand.exit

bb.ai:                                            ; preds = %.loopexit.i.i
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.asf
  %i.ash = add nsw i32 %.05.lcssa.i783, -3
  %i.asi = mul nsw i32 %i.ash, %.05.lcssa.i775822
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.asj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.asg, ptr align 4 %i.ask, i64 %i.asb, i1 false)
  br label %gauss_expand.exit

._crit_edge.i:                                    ; preds = %ll_expand_gaussian.exit.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %iter.check1277, label %.preheader.i794

bb.aj:                                            ; preds = %ll_expand_gaussian.exit.i, %.preheader.i794
  %indvars.iv.i = phi i64 [ 1, %.preheader.i794 ], [ %indvars.iv.next.i, %ll_expand_gaussian.exit.i ] ; 3 uses
  %i.asl = trunc nuw nsw i64 %indvars.iv.i to i32 ; 2 uses
  %i.asm = lshr i32 %i.asl, 1
  %i.asn = add nsw i32 %i.asm, %i.ajh             ; 12 uses
  %i.aso = and i32 %i.asl, 1
  %i.asp = or disjoint i32 %i.aso, %i.ajj
  switch i32 %i.asp, label %default.unreachable [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.asq = sub nsw i32 %i.asn, %i.ajc
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.asr ; 3 uses
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !21
  %i.asu = sext i32 %i.asn to i64
  %i.asv = getelementptr [4 x i8], ptr %i.aiu, i64 %i.asu ; 3 uses
  %i.asw = getelementptr i8, ptr %i.asv, i64 -4
  %i.asx = load float, ptr %i.asw, align 4, !tbaa !21
  %i.asy = fadd reassoc nsz arcp contract afn float %i.asx, %i.ast
  %i.asz = load float, ptr %i.asv, align 4, !tbaa !21
  %i.ata = fmul reassoc nsz arcp contract afn float %i.asz, 6.000000e+00
  %i.atb = fadd reassoc nsz arcp contract afn float %i.asy, %i.ata
  %i.atc = getelementptr i8, ptr %i.asv, i64 4
  %i.atd = load float, ptr %i.atc, align 4, !tbaa !21
  %i.ate = fadd reassoc nsz arcp contract afn float %i.atb, %i.atd
  %i.atf = add nsw i32 %i.asn, %i.ajc
  %i.atg = sext i32 %i.atf to i64
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.atg ; 2 uses
  %i.ati = load float, ptr %i.ath, align 4, !tbaa !21
  %i.atj = fadd reassoc nsz arcp contract afn float %i.ate, %i.ati
  %i.atk = fmul reassoc nsz arcp contract afn float %i.atj, 6.000000e+00
  %i.atl = getelementptr i8, ptr %i.ass, i64 -4
  %i.atm = load float, ptr %i.atl, align 4, !tbaa !21
  %i.atn = fadd reassoc nsz arcp contract afn float %i.atm, %i.atk
  %i.ato = getelementptr i8, ptr %i.ass, i64 4
  %i.atp = load float, ptr %i.ato, align 4, !tbaa !21
  %i.atq = add i32 %i.asn, %i.ajb
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.atr
  %i.att = load float, ptr %i.ats, align 4, !tbaa !21
  %i.atu = getelementptr i8, ptr %i.ath, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !21
  %i.atw = fadd reassoc nsz arcp contract afn float %i.att, %i.atp
  %i.atx = fadd reassoc nsz arcp contract afn float %i.atw, %i.atn
  %i.aty = fadd reassoc nsz arcp contract afn float %i.atx, %i.atv
  %i.atz = fmul reassoc nsz arcp contract afn float %i.aty, 1.562500e-02
  br label %ll_expand_gaussian.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.aua = sext i32 %i.asn to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.aua ; 2 uses
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !21
  %i.aud = getelementptr i8, ptr %i.aub, i64 4
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !21
  %i.auf = fadd reassoc nsz arcp contract afn float %i.aue, %i.auc
  %i.aug = fpext reassoc nsz arcp contract afn float %i.auf to double
  %.reass21.i = fmul reassoc nsz arcp contract afn double %i.aug, 3.750000e-01
  %i.auh = sub nsw i32 %i.asn, %i.ajc
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.aui ; 2 uses
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !21
  %i.aul = getelementptr i8, ptr %i.auj, i64 4
  %i.aum = load float, ptr %i.aul, align 4, !tbaa !21
  %i.aun = fadd reassoc nsz arcp contract afn float %i.aum, %i.auk
  %i.auo = add nsw i32 %i.asn, %i.ajc
  %i.aup = sext i32 %i.auo to i64
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.aup ; 2 uses
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !21
  %i.aus = fadd reassoc nsz arcp contract afn float %i.aun, %i.aur
  %i.aut = getelementptr i8, ptr %i.auq, i64 4
  %i.auu = load float, ptr %i.aut, align 4, !tbaa !21
  %i.auv = fadd reassoc nsz arcp contract afn float %i.aus, %i.auu
  %i.auw = fpext reassoc nsz arcp contract afn float %i.auv to double
  %.reass22.i = fmul reassoc nsz arcp contract afn double %i.auw, 6.250000e-02
  %i.aux = fadd reassoc nsz arcp contract afn double %.reass22.i, %.reass21.i
  %i.auy = fptrunc reassoc nsz arcp contract afn double %i.aux to float
  br label %ll_expand_gaussian.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.auz = sext i32 %i.asn to i64
  %i.ava = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.auz ; 2 uses
  %i.avb = add nsw i32 %i.asn, %i.ajc
  %i.avc = sext i32 %i.avb to i64
  %i.avd = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.avc
  %i.ave = getelementptr i8, ptr %i.ava, i64 -4
  %i.avf = load float, ptr %i.ave, align 4, !tbaa !21
  %i.avg = add i32 %i.asn, %i.ajb
  %i.avh = sext i32 %i.avg to i64
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.avh
  %i.avj = load float, ptr %i.avi, align 4, !tbaa !21
  %i.avk = load <2 x float>, ptr %i.ava, align 4, !tbaa !21
  %i.avl = load <2 x float>, ptr %i.avd, align 4, !tbaa !21
  %i.avm = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avj, i64 1
  %i.avn = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.avf, i64 1
  %i.avo = fadd reassoc nsz arcp contract afn <2 x float> %i.avl, %i.avm
  %i.avp = fadd reassoc nsz arcp contract afn <2 x float> %i.avn, %i.avk
  %i.avq = fadd reassoc nsz arcp contract afn <2 x float> %i.avo, %i.avp
  %i.avr = fpext <2 x float> %i.avq to <2 x double> ; 2 uses
  %i.avs = extractelement <2 x double> %i.avr, i64 0
  %.reass.i = fmul reassoc nsz arcp contract afn double %i.avs, 3.750000e-01
  %i.avt = extractelement <2 x double> %i.avr, i64 1
  %.reass20.i = fmul reassoc nsz arcp contract afn double %i.avt, 6.250000e-02
  %i.avu = fadd reassoc nsz arcp contract afn double %.reass20.i, %.reass.i
  %i.avv = fptrunc reassoc nsz arcp contract afn double %i.avu to float
  br label %ll_expand_gaussian.exit.i

default.unreachable:                              ; preds = %bb.aj
  unreachable

bb.an:                                            ; preds = %bb.aj
  %i.avw = sext i32 %i.asn to i64
  %i.avx = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.avw ; 2 uses
  %i.avy = load float, ptr %i.avx, align 4, !tbaa !21
  %i.avz = getelementptr i8, ptr %i.avx, i64 4
  %i.awa = load float, ptr %i.avz, align 4, !tbaa !21
  %i.awb = fadd reassoc nsz arcp contract afn float %i.awa, %i.avy
  %i.awc = add nsw i32 %i.asn, %i.ajc
  %i.awd = sext i32 %i.awc to i64
  %i.awe = getelementptr inbounds [4 x i8], ptr %i.aiu, i64 %i.awd ; 2 uses
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !21
  %i.awg = fadd reassoc nsz arcp contract afn float %i.awb, %i.awf
  %i.awh = getelementptr i8, ptr %i.awe, i64 4
  %i.awi = load float, ptr %i.awh, align 4, !tbaa !21
  %i.awj = fadd reassoc nsz arcp contract afn float %i.awg, %i.awi
  %i.awk = fmul reassoc nsz arcp contract afn float %i.awj, 2.500000e-01
  br label %ll_expand_gaussian.exit.i

ll_expand_gaussian.exit.i:                        ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.0.i.i = phi nsz float [ %i.atz, %bb.ak ], [ %i.auy, %bb.al ], [ %i.avv, %bb.am ], [ %i.awk, %bb.an ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %.0.i.i, ptr %gep.i, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i795 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i795, label %._crit_edge.i, label %bb.aj

gauss_expand.exit:                                ; preds = %.loopexit.i.i, %bb.ai
  %i.awl = mul nsw i32 %.pre-phi, %.05.lcssa.i775822
  %i.awm = sext i32 %i.awl to i64
  %i.awn = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.awm
  %i.awo = getelementptr inbounds [4 x i8], ptr %i.aiw, i64 %i.asf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.awn, ptr align 4 %i.awo, i64 %i.asb, i1 false)
  %i.awp = icmp sgt i32 %.05.lcssa.i783, 0
  %i.awq = icmp sgt i32 %.05.lcssa.i775822, 0
  %or.cond1143 = select i1 %i.awp, i1 %i.awq, i1 false
  br i1 %or.cond1143, label %.preheader846.lr.ph.split, label %._crit_edge899.split

.preheader846.lr.ph.split:                        ; preds = %gauss_expand.exit
  %i.awr = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1041
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !17
  %i.awt = zext nneg i32 %.05.lcssa.i775822 to i64 ; 2 uses
  %wide.trip.count1039 = zext nneg i32 %.05.lcssa.i783 to i64
  br label %.preheader846

.preheader846:                                    ; preds = %.preheader846.lr.ph.split, %._crit_edge897
  %indvars.iv1036 = phi i64 [ 0, %.preheader846.lr.ph.split ], [ %indvars.iv.next1037, %._crit_edge897 ] ; 3 uses
  %i.awu = mul nuw nsw i64 %indvars.iv1036, %i.awt
  %i.awv = trunc nuw nsw i64 %indvars.iv1036 to i32 ; 2 uses
  br label %bb.ao

._crit_edge899.split:                             ; preds = %._crit_edge897, %gauss_expand.exit
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -1
  %i.aww = icmp sgt i64 %indvars.iv1041, 0
  %indvar.next1665 = add i64 %indvar1664, 1
  br i1 %i.aww, label %bb.ah, label %.preheader844.preheader

._crit_edge897:                                   ; preds = %.critedge
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 2 uses
  %exitcond1040.not = icmp eq i64 %indvars.iv.next1037, %wide.trip.count1039
  br i1 %exitcond1040.not, label %._crit_edge899.split, label %.preheader846

bb.ao:                                            ; preds = %.preheader846, %.critedge
  %indvars.iv1031 = phi i64 [ 0, %.preheader846 ], [ %indvars.iv.next1032, %.critedge ] ; 3 uses
  %i.awx = add nuw nsw i64 %indvars.iv1031, %i.awu ; 2 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.aws, i64 %i.awx
  %i.awz = load float, ptr %i.awy, align 4, !tbaa !21 ; 5 uses
  %9 = fcmp reassoc nsz arcp contract afn ult float %i.awz, 2.500000e-01
  br i1 %9, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %10 = fcmp reassoc nsz arcp contract afn ult float %i.awz, f0x3ED55556
  br i1 %10, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %11 = fcmp reassoc nsz arcp contract afn ult float %i.awz, f0x3F155555
  br i1 %11, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %12 = fcmp reassoc nsz arcp contract afn ult float %i.awz, 7.500000e-01
  %spec.select1144 = select i1 %12, i32 4, i32 5
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.0529.lcssa = phi i32 [ 3, %bb.aq ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ %spec.select1144, %bb.ar ] ; 2 uses
  %i.axa = add nsw i32 %.0529.lcssa, -1
  %i.axb = zext nneg i32 %i.axa to i64            ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axb
  %i.axd = load float, ptr %i.axc, align 4, !tbaa !21 ; 2 uses
  %i.axe = fsub reassoc nsz arcp contract afn float %i.awz, %i.axd
  %i.axf = zext nneg i32 %.0529.lcssa to i64      ; 2 uses
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.axf
  %i.axh = load float, ptr %i.axg, align 4, !tbaa !21
  %i.axi = fsub reassoc nsz arcp contract afn float %i.axh, %i.axd
  %i.axj = fdiv reassoc nsz arcp contract afn float %i.axe, %i.axi ; 3 uses
  %i.axk = fcmp reassoc nsz arcp contract afn ogt float %i.axj, 0.000000e+00
  %i.axl = fcmp reassoc nsz arcp contract afn olt float %i.axj, 1.000000e+00
  %spec.select644 = select reassoc nsz arcp contract afn i1 %i.axl, float %i.axj, float 1.000000e+00
  %i.axm = select reassoc nsz arcp contract afn i1 %i.axk, float %spec.select644, float 0.000000e+00
  %i.axn = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.axb ; 2 uses
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %i.ais
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !17
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.axn, i64 %indvars.iv1041
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !17
  %i.axs = trunc nuw nsw i64 %indvars.iv1031 to i32 ; 2 uses
  %i.axt = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axp, ptr noundef %i.axr, i32 noundef %i.axs, i32 noundef %i.awv, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783) ; 2 uses
  %i.axu = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %i.axf ; 2 uses
  %i.axv = getelementptr inbounds nuw [8 x i8], ptr %i.axu, i64 %i.ais
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !17
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.axu, i64 %indvars.iv1041
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !17
  %i.axz = tail call reassoc nsz arcp contract afn fastcc float @ll_laplacian(ptr noundef %i.axw, ptr noundef %i.axy, i32 noundef %i.axs, i32 noundef %i.awv, i32 noundef %.05.lcssa.i775822, i32 noundef %.05.lcssa.i783)
  %i.aya = fsub reassoc nsz arcp contract afn float %i.axz, %i.axt
  %i.ayb = fmul reassoc nsz arcp contract afn float %i.aya, %i.axm
  %i.ayc = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %i.awx ; 2 uses
  %i.ayd = load float, ptr %i.ayc, align 4, !tbaa !21
  %i.aye = fadd reassoc nsz arcp contract afn float %i.ayd, %i.axt
  %i.ayf = fadd reassoc nsz arcp contract afn float %i.aye, %i.ayb
  store float %i.ayf, ptr %i.ayc, align 4, !tbaa !21
  %indvars.iv.next1032 = add nuw nsw i64 %indvars.iv1031, 1 ; 2 uses
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1032, %i.awt
  br i1 %exitcond1035.not, label %._crit_edge897, label %bb.ao

.preheader844:                                    ; preds = %.preheader844.preheader, %._crit_edge905
  %indvars.iv1049 = phi i64 [ 0, %.preheader844.preheader ], [ %indvars.iv.next1050, %._crit_edge905 ] ; 3 uses
  %i.ayg = add nuw nsw i64 %indvars.iv1049, %i.ahp
  %i.ayh = mul nsw i64 %i.ayg, %i.ahq
  %i.ayi = mul nuw nsw i64 %indvars.iv1049, %i.ahr ; 4 uses
  %gep1142 = getelementptr [4 x i8], ptr %invariant.gep1141, i64 %i.ayh ; 4 uses
  %brmerge1770 = select i1 %min.iters.check1303, i1 true, i1 %conflict.rdx
  br i1 %brmerge1770, label %scalar.ph.preheader, label %vector.ph1304

scalar.ph.preheader:                              ; preds = %.preheader844, %vector.body1308
  %indvars.iv1044.ph = phi i64 [ %n.vec1305, %vector.body1308 ], [ 0, %.preheader844 ] ; 6 uses
  %i.ayj = sub nsw i64 %wide.trip.count1047, %indvars.iv1044.ph
  %xtraiter1695 = and i64 %i.ayj, 1
  %lcmp.mod1696.not = icmp eq i64 %xtraiter1695, 0
  br i1 %lcmp.mod1696.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ayk = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044.ph
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !21
  %i.aym = fmul reassoc nsz arcp contract afn float %i.ayl, 1.000000e+02
  %i.ayn = add nuw nsw i64 %indvars.iv1044.ph, %i.ayi
  %i.ayo = shl nsw i64 %i.ayn, 2                  ; 3 uses
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayo
  store float %i.aym, ptr %i.ayp, align 4, !tbaa !21
  %i.ayq = or disjoint i64 %i.ayo, 1              ; 2 uses
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayq
  %i.ays = load float, ptr %i.ayr, align 4, !tbaa !21
  %i.ayt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayq
  store float %i.ays, ptr %i.ayt, align 4, !tbaa !21
  %i.ayu = or disjoint i64 %i.ayo, 2              ; 2 uses
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ayu
  %i.ayw = load float, ptr %i.ayv, align 4, !tbaa !21
  %i.ayx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ayu
  store float %i.ayw, ptr %i.ayx, align 4, !tbaa !21
  %indvars.iv.next1045.prol = add nuw nsw i64 %indvars.iv1044.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1044.unr = phi i64 [ %indvars.iv1044.ph, %scalar.ph.preheader ], [ %indvars.iv.next1045.prol, %scalar.ph.prol ]
  %i.ayy = icmp eq i64 %indvars.iv1044.ph, %i.aih
  br i1 %i.ayy, label %._crit_edge905, label %scalar.ph

vector.ph1304:                                    ; preds = %.preheader844
  %broadcast.splatinsert1306 = insertelement <4 x i64> poison, i64 %i.ayi, i64 0
  %broadcast.splat1307 = shufflevector <4 x i64> %broadcast.splatinsert1306, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1304
  %index1309 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1316, %vector.body1308 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1304 ], [ %vec.ind.next, %vector.body1308 ] ; 2 uses
  %i.ayz = getelementptr [4 x i8], ptr %gep1142, i64 %index1309
  %wide.load1310 = load <4 x float>, ptr %i.ayz, align 4, !tbaa !21, !alias.scope !160
  %i.aza = fmul reassoc nsz arcp contract afn <4 x float> %wide.load1310, splat (float 1.000000e+02)
  %i.azb = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat1307
  %i.azc = shl nsw <4 x i64> %i.azb, splat (i64 2) ; 3 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azc
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.aza, <4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.azd = or disjoint <4 x i64> %i.azc, splat (i64 1) ; 2 uses
  %i.aze = extractelement <4 x i64> %i.azd, i64 0
  %i.azf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aze
  %wide.vec1311 = load <16 x float>, ptr %i.azf, align 4, !tbaa !21, !alias.scope !163 ; 2 uses
  %strided.vec1312.a = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec1313 = shufflevector <16 x float> %wide.vec1311, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.gep1314.a = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azd
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1312.a, <4 x ptr> align 4 %wide.gep1314.a, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %i.azg = or disjoint <4 x i64> %i.azc, splat (i64 2)
  %wide.gep1315 = getelementptr inbounds nuw [4 x i8], ptr %1, <4 x i64> %i.azg
  tail call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %strided.vec1313, <4 x ptr> align 4 %wide.gep1315, <4 x i1> splat (i1 true)), !tbaa !21, !alias.scope !161, !noalias !162
  %index.next1316 = add nuw i64 %index1309, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.azh = icmp eq i64 %index.next1316, %n.vec1305
  br i1 %i.azh, label %scalar.ph.preheader, label %vector.body1308, !llvm.loop !102

._crit_edge907.split:                             ; preds = %._crit_edge905
  br i1 %.not, label %.thread825.peel, label %bb.as

._crit_edge905:                                   ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1 ; 2 uses
  %exitcond1053.not = icmp eq i64 %indvars.iv.next1050, %wide.trip.count1052
  br i1 %exitcond1053.not, label %._crit_edge907.split, label %.preheader844

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045.1, %scalar.ph ], [ %indvars.iv1044.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.azi = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv1044
  %i.azj = load float, ptr %i.azi, align 4, !tbaa !21
  %i.azk = fmul reassoc nsz arcp contract afn float %i.azj, 1.000000e+02
  %i.azl = add nuw nsw i64 %indvars.iv1044, %i.ayi
  %i.azm = shl nsw i64 %i.azl, 2                  ; 3 uses
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azm
  store float %i.azk, ptr %i.azn, align 4, !tbaa !21
  %i.azo = or disjoint i64 %i.azm, 1              ; 2 uses
  %i.azp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azo
  %i.azq = load float, ptr %i.azp, align 4, !tbaa !21
  %i.azr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azo
  store float %i.azq, ptr %i.azr, align 4, !tbaa !21
  %i.azs = or disjoint i64 %i.azm, 2              ; 2 uses
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.azs
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !21
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.azs
  store float %i.azu, ptr %i.azv, align 4, !tbaa !21
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %i.azw = getelementptr [4 x i8], ptr %gep1142, i64 %indvars.iv.next1045
  %i.azx = load float, ptr %i.azw, align 4, !tbaa !21
  %i.azy = fmul reassoc nsz arcp contract afn float %i.azx, 1.000000e+02
  %i.azz = add nuw nsw i64 %indvars.iv.next1045, %i.ayi
  %i.baa = shl nsw i64 %i.azz, 2                  ; 3 uses
  %i.bab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.baa
  store float %i.azy, ptr %i.bab, align 4, !tbaa !21
  %i.bac = or disjoint i64 %i.baa, 1              ; 2 uses
  %i.bad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bac
  %i.bae = load float, ptr %i.bad, align 4, !tbaa !21
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bac
  store float %i.bae, ptr %i.baf, align 4, !tbaa !21
  %i.bag = or disjoint i64 %i.baa, 2              ; 2 uses
  %i.bah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bag
  %i.bai = load float, ptr %i.bah, align 4, !tbaa !21
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bag
  store float %i.bai, ptr %i.baj, align 4, !tbaa !21
  %indvars.iv.next1045.1 = add nuw nsw i64 %indvars.iv1044, 2 ; 2 uses
  %exitcond1048.not.1 = icmp eq i64 %indvars.iv.next1045.1, %wide.trip.count1047
  br i1 %exitcond1048.not.1, label %._crit_edge905, label %scalar.ph, !llvm.loop !103

bb.as:                                            ; preds = %._crit_edge907.split
  %i.bak = load i32, ptr %8, align 8, !tbaa !18
  %i.bal = icmp eq i32 %i.bak, 1
  br i1 %i.bal, label %.lr.ph910, label %.thread809.thread.thread

.lr.ph910:                                        ; preds = %bb.as
  %i.bam = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %storemerge, ptr %i.bam, align 8, !tbaa !15
  %i.ban = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %2, ptr %i.ban, align 8, !tbaa !111
  %i.bao = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %3, ptr %i.bao, align 4, !tbaa !164
  %i.bap = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.pre, ptr %i.bap, align 8, !tbaa !112
  %i.baq = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.pre1074, ptr %i.baq, align 4, !tbaa !113
  %i.bar = getelementptr inbounds nuw i8, ptr %8, i64 288
  store i32 %i.m, ptr %i.bar, align 8, !tbaa !16
  %i.bas = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bat = tail call i32 @llvm.umax.i32(i32 %i.m, i32 1)
  %i.bau = shl nuw nsw i32 %i.bat, 3
  %i.bav = zext nneg i32 %i.bau to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bas, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.bav, i1 false), !tbaa !17
  br label %.thread809.thread

.thread809:                                       ; preds = %vec.epilog.vector.body1342, %.lr.ph912.prol.loopexit, %.lr.ph912, %middle.block1333
  br i1 %.not, label %.thread825.peel, label %.thread809.thread

.thread809.thread:                                ; preds = %.lr.ph910, %.thread809
  %.pr1103 = load i32, ptr %8, align 8, !tbaa !18
  %.not1100 = icmp eq i32 %.pr1103, 1
  br i1 %.not1100, label %.peel.next, label %.thread809.thread.thread

.thread809.thread.thread:                         ; preds = %bb.as, %.thread809.thread
  %i.baw = load ptr, ptr %i.e, align 16, !tbaa !17
  tail call void @free(ptr noundef %i.baw) #14
end_hunk_3
