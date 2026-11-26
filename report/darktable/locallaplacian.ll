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
  %i.g = alloca [6 x float], align 16             ; 10 uses
  %i.h = alloca [6 x [30 x ptr]], align 16        ; 19 uses
  %i.i = icmp slt i32 %2, 2
  %i.j = icmp slt i32 %3, 2
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @llvm.umin.i32(i32 %2, i32 %3) ; 5 uses
  %i.l = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.k, i1 true) ; 7 uses
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
  %i.v = shl nuw nsw i32 %i.u, 1                  ; 2 uses
  %i.w = add nuw nsw i32 %i.v, %2                 ; 17 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !19
  %i.x = add nuw nsw i32 %i.v, %3                 ; 5 uses
  store i32 %i.x, ptr %i.d, align 4, !tbaa !19
  %i.y = zext nneg i32 %i.w to i64                ; 6 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = mul nuw i64 %i.aa, %i.y
  %i.ac = tail call ptr @dt_alloc_aligned(i64 noundef %i.ab) #14 ; 29 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = shl i32 %2, 2                           ; 3 uses
  %i.ae = add nuw i32 %i.u, %2                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.w
  %i.ag = sext i32 %i.ae to i64                   ; 8 uses
  %i.ah = sext i32 %i.ad to i64                   ; 2 uses
  %i.ai = zext nneg i32 %i.u to i64               ; 10 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 16 uses
  %wide.trip.count542.i = zext nneg i32 %3 to i64 ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  %i.ak = shl nuw nsw i64 %i.ai, 3
  %i.al = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.am = add nuw nsw i64 %i.ak, %i.al            ; 2 uses
  %i.an = add nsw i64 %wide.trip.count542.i, -1
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = add nuw nsw i64 %i.am, 8
  %i.aq = sub nsw i32 30, %i.l
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl i64 %i.ap, %i.ar
  %i.at = getelementptr i8, ptr %i.ac, i64 %i.ao
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %scevgep1183 = getelementptr i8, ptr %i.au, i64 %i.al
  %i.av = sub nsw i32 30, %i.l
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl i64 %i.y, %i.aw
  %i.ay = add i64 %i.ax, %i.ag
  %i.az = shl i64 %i.ay, 2
  %scevgep1184 = getelementptr i8, ptr %i.ac, i64 %i.az
  %i.ba = shl nuw nsw i64 %i.ai, 1                ; 3 uses
  %i.bb = add nuw nsw i64 %i.ba, %i.aj
  %i.bc = sub nsw i64 %i.bb, %i.ag                ; 7 uses
  %i.bd = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.aj, 2
  %scevgep1200 = getelementptr i8, ptr %i.ac, i64 %i.be
  %i.bf = mul nuw nsw i64 %wide.trip.count542.i, %i.aj
  %i.bg = shl i64 %i.bf, 4
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %scevgep1201 = getelementptr i8, ptr %i.bh, i64 -12
  %i.bi = add nsw i64 %wide.trip.count542.i, -1   ; 2 uses
  %i.bj = mul nsw i64 %i.bi, %i.ah
  %i.bk = shl i64 %i.bj, 2
  %i.bl = getelementptr i8, ptr %0, i64 %i.bk
  %scevgep1242 = getelementptr i8, ptr %i.bl, i64 4
  %i.bm = shl nuw nsw i64 %i.ai, 3
  %i.bn = shl nuw nsw i64 %i.aj, 2
  %i.bo = add nuw nsw i64 %i.bm, %i.bn            ; 2 uses
  %i.bp = mul i64 %i.bo, %i.bi
  %i.bq = add nuw nsw i64 %i.bo, 4
  %i.br = sub nsw i32 30, %i.l
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr i8, ptr %i.ac, i64 %i.bp
  %scevgep1243 = getelementptr i8, ptr %i.bu, i64 %i.bt
  %i.bv = sub nsw i32 30, %i.l
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = shl i64 %i.y, %i.bw
  %i.by = shl i64 %i.bx, 2
  %scevgep1244 = getelementptr i8, ptr %i.ac, i64 %i.by
  %i.bz = add nuw nsw i64 %i.ba, %i.aj
  %i.ca = add nuw nsw i64 %i.ba, %i.aj
  %min.iters.check1245 = icmp ult i32 %i.k, 8
  %bound01247 = icmp ult ptr %scevgep1244, %scevgep1242
  %bound11248 = icmp ult ptr %0, %scevgep1243
  %found.conflict1249 = and i1 %bound01247, %bound11248
  %stride.check = icmp slt i32 %i.ad, 0
  %i.cb = or i1 %found.conflict1249, %stride.check
  %min.iters.check1251 = icmp ult i32 %i.k, 64
  %n.vec1253 = and i64 %i.ai, 1073741792
  %n.vec1267 = and i64 %i.ai, 1073741820
  %xtraiter = and i64 %i.ai, 7                    ; 3 uses
  %i.cc = icmp ult i32 %i.k, 16
  %unroll_iter = and i64 %i.ai, 1073741816
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1448 = icmp ne i64 %xtraiter, 0
  %min.iters.check1202 = icmp ult i32 %2, 5
  %i.cd = trunc nsw i64 %i.bd to i32
  %i.ce = icmp ugt i64 %i.bd, 4294967295
  %min.iters.check1208 = icmp ult i32 %2, 33
  %i.cf = and i64 %i.aj, 31                       ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = select i1 %i.cg, i64 32, i64 %i.cf      ; 2 uses
  %n.vec1210 = sub nsw i64 %i.aj, %i.ch           ; 3 uses
  %min.epilog.iters.check1224 = icmp samesign ult i64 %i.ch, 5
  %i.ci = and i64 %i.aj, 3                        ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  %i.ck = select i1 %i.cj, i64 4, i64 %i.ci
  %n.vec1227 = sub nsw i64 %i.aj, %i.ck           ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
  %min.iters.check1185 = icmp ult i64 %i.bc, 32
  %i.cl = and i64 %i.bc, 28
  %n.vec = and i64 %i.bc, -32                     ; 4 uses
  %i.cm = add nsw i64 %n.vec, %i.ag
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.cl, 0
  %n.vec1186 = and i64 %i.bc, -4                  ; 3 uses
  %i.cn = add nsw i64 %n.vec1186, %i.ag
  %cmp.n1191 = icmp eq i64 %i.bc, %n.vec1186
  br label %iter.check1261

iter.check1261:                                   ; preds = %._crit_edge479.i, %bb.e
  %indvars.iv539.i = phi i64 [ 0, %bb.e ], [ %i.ig, %._crit_edge479.i ] ; 4 uses
  %i.co = mul nuw nsw i64 %indvars.iv539.i, %i.ah
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.co ; 10 uses
  %i.cq = add nuw nsw i64 %indvars.iv539.i, %i.ai
  %i.cr = mul nuw nsw i64 %i.cq, %i.y             ; 2 uses
  %i.cs = getelementptr [4 x i8], ptr %i.ac, i64 %i.cr ; 22 uses
  %brmerge = select i1 %min.iters.check1245, i1 true, i1 %i.cb
  br i1 %brmerge, label %vec.epilog.scalar.ph1263.preheader, label %vector.main.loop.iter.check1250

vec.epilog.scalar.ph1263.preheader:               ; preds = %iter.check1261
  br i1 %i.cc, label %vec.epilog.scalar.ph1263.epil.preheader, label %vec.epilog.scalar.ph1263

vector.main.loop.iter.check1250:                  ; preds = %iter.check1261
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !21, !alias.scope !105
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, f0x3C23D70A ; 2 uses
  br i1 %min.iters.check1251, label %vec.epilog.ph1265, label %vector.ph1252

vector.ph1252:                                    ; preds = %vector.main.loop.iter.check1250
  %broadcast.splatinsert1256 = insertelement <8 x float> poison, float %i.cu, i64 0
  %broadcast.splat1257 = shufflevector <8 x float> %broadcast.splatinsert1256, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.ph1252, %vector.body1254
  %index1255 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1258, %vector.body1254 ] ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cs, i64 %index1255 ; 4 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 32
  %i.cx = getelementptr i8, ptr %i.cv, i64 64
  %i.cy = getelementptr i8, ptr %i.cv, i64 96
  store <8 x float> %broadcast.splat1257, ptr %i.cv, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1257, ptr %i.cw, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1257, ptr %i.cx, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  store <8 x float> %broadcast.splat1257, ptr %i.cy, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  %index.next1258 = add nuw i64 %index1255, 32    ; 2 uses
  %i.cz = icmp eq i64 %index.next1258, %n.vec1253
  br i1 %i.cz, label %iter.check1221, label %vector.body1254, !llvm.loop !35

vec.epilog.ph1265:                                ; preds = %vector.main.loop.iter.check1250
  %broadcast.splatinsert1270 = insertelement <4 x float> poison, float %i.cu, i64 0
  %broadcast.splat1271 = shufflevector <4 x float> %broadcast.splatinsert1270, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1268

vec.epilog.vector.body1268:                       ; preds = %vec.epilog.vector.body1268, %vec.epilog.ph1265
  %index1269 = phi i64 [ 0, %vec.epilog.ph1265 ], [ %index.next1272, %vec.epilog.vector.body1268 ] ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %i.cs, i64 %index1269
  store <4 x float> %broadcast.splat1271, ptr %i.da, align 4, !tbaa !21, !alias.scope !106, !noalias !105
  %index.next1272 = add nuw i64 %index1269, 4     ; 2 uses
  %i.db = icmp eq i64 %index.next1272, %n.vec1267
  br i1 %i.db, label %iter.check1221, label %vec.epilog.vector.body1268, !llvm.loop !36

bb.f:                                             ; preds = %._crit_edge479.i
end_hunk_0
begin_hunk_1_@local_laplacian_internal:bb.a
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep1793 = getelementptr [4 x i8], ptr %i.cs, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep1794 = getelementptr [4 x i8], ptr %invariant.gep1793, i64 %index ; 4 uses
  %i.iq = getelementptr i8, ptr %gep1794, i64 32
  %i.ir = getelementptr i8, ptr %gep1794, i64 64
  %i.is = getelementptr i8, ptr %gep1794, i64 96
  store <8 x float> %broadcast.splat, ptr %gep1794, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  store <8 x float> %broadcast.splat, ptr %i.iq, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  store <8 x float> %broadcast.splat, ptr %i.ir, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  store <8 x float> %broadcast.splat, ptr %i.is, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge479.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.iu = load float, ptr %i.il, align 4, !tbaa !21, !alias.scope !109
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, f0x3C23D70A
  %broadcast.splatinsert1188 = insertelement <4 x float> poison, float %i.iv, i64 0
  %broadcast.splat1189 = shufflevector <4 x float> %broadcast.splatinsert1188, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1795 = getelementptr [4 x i8], ptr %i.cs, i64 %i.ag
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1190, %vec.epilog.vector.body ] ; 2 uses
  %gep1796 = getelementptr [4 x i8], ptr %invariant.gep1795, i64 %index1187
  store <4 x float> %broadcast.splat1189, ptr %gep1796, align 4, !tbaa !21, !alias.scope !110, !noalias !109
  %index.next1190 = add nuw i64 %index1187, 4     ; 2 uses
  %i.iw = icmp eq i64 %index.next1190, %n.vec1186
  br i1 %i.iw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n1191, label %._crit_edge479.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv534.i.ph = phi i64 [ %i.ag, %iter.check ], [ %i.ag, %vector.memcheck ], [ %i.cm, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ] ; 4 uses
  %i.ix = sub i64 %i.bz, %indvars.iv534.i.ph
  %xtraiter1451 = and i64 %i.ix, 7                ; 2 uses
  %lcmp.mod1452.not = icmp eq i64 %xtraiter1451, 0
  br i1 %lcmp.mod1452.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv534.i.prol = phi i64 [ %indvars.iv.next535.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv534.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter1453 = phi i64 [ %prol.iter1453.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.iy = load float, ptr %i.il, align 4, !tbaa !21
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, f0x3C23D70A
  %i.ja = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i.prol
  store float %i.iz, ptr %i.ja, align 4, !tbaa !21
  %indvars.iv.next535.i.prol = add nuw nsw i64 %indvars.iv534.i.prol, 1 ; 2 uses
  %prol.iter1453.next = add i64 %prol.iter1453, 1 ; 2 uses
  %prol.iter1453.cmp.not = icmp eq i64 %prol.iter1453.next, %xtraiter1451
  br i1 %prol.iter1453.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !50

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv534.i.unr = phi i64 [ %indvars.iv534.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next535.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.jb = sub i64 %indvars.iv534.i.ph, %i.ca
  %i.jc = icmp ugt i64 %i.jb, -8
  br i1 %i.jc, label %._crit_edge479.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph1223:                         ; preds = %vec.epilog.scalar.ph1223.prol.loopexit, %vec.epilog.scalar.ph1223
  %indvars.iv529.i = phi i64 [ %indvars.iv.next530.i.3, %vec.epilog.scalar.ph1223 ], [ %indvars.iv529.i.unr, %vec.epilog.scalar.ph1223.prol.loopexit ] ; 6 uses
  %i.jd = add nuw nsw i64 %indvars.iv529.i, %i.ey
  %.idx570.i = shl nuw nsw i64 %i.jd, 4
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i
  %i.jf = load float, ptr %i.je, align 4, !tbaa !21
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, f0x3C23D70A
  %i.jh = trunc nuw nsw i64 %indvars.iv529.i to i32
  %.reass474.i = add i32 %invariant.op473.i, %i.jh
  %i.ji = sext i32 %.reass474.i to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ji
  store float %i.jg, ptr %i.jj, align 4, !tbaa !21
  %indvars.iv.next530.i = add nuw nsw i64 %indvars.iv529.i, 1 ; 2 uses
  %i.jk = add nuw nsw i64 %indvars.iv.next530.i, %i.ey
  %.idx570.i.1 = shl nuw nsw i64 %i.jk, 4
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.1
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !21
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, f0x3C23D70A
  %i.jo = trunc nuw nsw i64 %indvars.iv.next530.i to i32
  %.reass474.i.1 = add i32 %invariant.op473.i, %i.jo
  %i.jp = sext i32 %.reass474.i.1 to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jp
  store float %i.jn, ptr %i.jq, align 4, !tbaa !21
  %indvars.iv.next530.i.1 = add nuw nsw i64 %indvars.iv529.i, 2 ; 2 uses
  %i.jr = add nuw nsw i64 %indvars.iv.next530.i.1, %i.ey
  %.idx570.i.2 = shl nuw nsw i64 %i.jr, 4
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.2
  %i.jt = load float, ptr %i.js, align 4, !tbaa !21
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jt, f0x3C23D70A
  %i.jv = trunc nuw nsw i64 %indvars.iv.next530.i.1 to i32
  %.reass474.i.2 = add i32 %invariant.op473.i, %i.jv
  %i.jw = sext i32 %.reass474.i.2 to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jw
  store float %i.ju, ptr %i.jx, align 4, !tbaa !21
  %indvars.iv.next530.i.2 = add nuw nsw i64 %indvars.iv529.i, 3 ; 2 uses
  %i.jy = add nuw nsw i64 %indvars.iv.next530.i.2, %i.ey
  %.idx570.i.3 = shl nuw nsw i64 %i.jy, 4
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx570.i.3
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !21
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, f0x3C23D70A
  %i.kc = trunc nuw nsw i64 %indvars.iv.next530.i.2 to i32
  %.reass474.i.3 = add i32 %invariant.op473.i, %i.kc
  %i.kd = sext i32 %.reass474.i.3 to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.kd
  store float %i.kb, ptr %i.ke, align 4, !tbaa !21
  %indvars.iv.next530.i.3 = add nuw nsw i64 %indvars.iv529.i, 4 ; 2 uses
  %exitcond533.not.i.3 = icmp eq i64 %indvars.iv.next530.i.3, %i.aj
  br i1 %exitcond533.not.i.3, label %.unr-lcssa, label %vec.epilog.scalar.ph1223, !llvm.loop !51

._crit_edge479.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.unr-lcssa
  %exitcond543.not.i = icmp eq i64 %i.ig, %wide.trip.count542.i
  br i1 %exitcond543.not.i, label %bb.f, label %iter.check1261

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv534.i = phi i64 [ %indvars.iv.next535.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv534.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.kf = load float, ptr %i.il, align 4, !tbaa !21
  %i.kg = fmul reassoc nsz arcp contract afn float %i.kf, f0x3C23D70A
  %i.kh = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  store float %i.kg, ptr %i.kh, align 4, !tbaa !21
  %i.ki = load float, ptr %i.il, align 4, !tbaa !21
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ki, f0x3C23D70A
  %i.kk = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  store float %i.kj, ptr %i.kl, align 4, !tbaa !21
  %i.km = load float, ptr %i.il, align 4, !tbaa !21
  %i.kn = fmul reassoc nsz arcp contract afn float %i.km, f0x3C23D70A
  %i.ko = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.kp = getelementptr i8, ptr %i.ko, i64 8
  store float %i.kn, ptr %i.kp, align 4, !tbaa !21
  %i.kq = load float, ptr %i.il, align 4, !tbaa !21
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, f0x3C23D70A
  %i.ks = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.kt = getelementptr i8, ptr %i.ks, i64 12
  store float %i.kr, ptr %i.kt, align 4, !tbaa !21
  %i.ku = load float, ptr %i.il, align 4, !tbaa !21
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, f0x3C23D70A
  %i.kw = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.kx = getelementptr i8, ptr %i.kw, i64 16
  store float %i.kv, ptr %i.kx, align 4, !tbaa !21
  %i.ky = load float, ptr %i.il, align 4, !tbaa !21
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, f0x3C23D70A
  %i.la = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.lb = getelementptr i8, ptr %i.la, i64 20
  store float %i.kz, ptr %i.lb, align 4, !tbaa !21
  %i.lc = load float, ptr %i.il, align 4, !tbaa !21
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, f0x3C23D70A
  %i.le = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.lf = getelementptr i8, ptr %i.le, i64 24
  store float %i.ld, ptr %i.lf, align 4, !tbaa !21
  %i.lg = load float, ptr %i.il, align 4, !tbaa !21
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, f0x3C23D70A
  %i.li = getelementptr [4 x i8], ptr %i.cs, i64 %indvars.iv534.i
  %i.lj = getelementptr i8, ptr %i.li, i64 28
  store float %i.lh, ptr %i.lj, align 4, !tbaa !21
  %indvars.iv.next535.i.7 = add nuw nsw i64 %indvars.iv534.i, 8 ; 2 uses
  %exitcond538.not.i.7 = icmp eq i64 %indvars.iv.next535.i.7, %i.y
  br i1 %exitcond538.not.i.7, label %._crit_edge479.i, label %vec.epilog.scalar.ph, !llvm.loop !52

ll_pad_input.exit.loopexit.unr-lcssa:             ; preds = %bb.g
  %lcmp.mod1456.not = icmp eq i64 %xtraiter1454, 0
  br i1 %lcmp.mod1456.not, label %ll_pad_input.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ll_pad_input.exit.loopexit.unr-lcssa, %bb.f
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i.3, %ll_pad_input.exit.loopexit.unr-lcssa ]
  %lcmp.mod1457 = icmp ne i64 %xtraiter1454, 0
  tail call void @llvm.assume(i1 %lcmp.mod1457)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.h ] ; 2 uses
  %epil.iter1455 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter1455.next, %bb.h ]
  %i.lk = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32 ; 2 uses
  %i.ll = mul i32 %i.w, %i.lk
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.lm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ln, ptr noundef nonnull align 4 dereferenceable(1) %i.de, i64 %i.df, i1 false)
  %i.lo = add i32 %i.dg, %i.lk
  %i.lp = mul i32 %i.lo, %i.w
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.lq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lr, ptr noundef nonnull align 4 dereferenceable(1) %i.dk, i64 %i.df, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter1455.next = add i64 %epil.iter1455, 1 ; 2 uses
  %epil.iter1455.cmp.not = icmp eq i64 %epil.iter1455.next, %xtraiter1454
  br i1 %epil.iter1455.cmp.not, label %ll_pad_input.exit, label %bb.h, !llvm.loop !53

ll_pad_input.exit:                                ; preds = %ll_pad_input.exit.loopexit.unr-lcssa, %bb.h, %bb.d
  %.pre1074 = phi i32 [ %.pre1074.pre, %bb.d ], [ %i.x, %bb.h ], [ %i.x, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 15 uses
  %.pre = phi i32 [ %.pre.pre, %bb.d ], [ %i.w, %bb.h ], [ %i.w, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 17 uses
  %i.ls = phi i32 [ %i.s, %bb.d ], [ %i.u, %bb.h ], [ %i.u, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0528797 = phi i32 [ %i.r, %bb.d ], [ %i.n, %bb.h ], [ %i.n, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 16 uses
  %storemerge = phi ptr [ %i.t, %bb.d ], [ %i.ac, %bb.h ], [ %i.ac, %ll_pad_input.exit.loopexit.unr-lcssa ] ; 5 uses
  store ptr %storemerge, ptr %i.e, align 16, !tbaa !17
  %.not617 = icmp eq ptr %storemerge, null        ; 2 uses
  %.not612871 = icmp slt i32 %.0528797, 1         ; 2 uses
  %.pre1079 = add nsw i32 %.pre, -1               ; 26 uses
  %.pre1081 = add i32 %.pre1074, -1               ; 27 uses
  br i1 %.not612871, label %dl.exit649._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ll_pad_input.exit
  %i.lt = add nuw nsw i32 %.0528797, 1
  %wide.trip.count = zext nneg i32 %i.lt to i64   ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %dl.exit649
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %dl.exit649._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %xtraiter1461 = and i64 %indvars.iv, 7          ; 3 uses
  %i.lu = icmp ult i64 %indvar, 7
  br i1 %i.lu, label %.lr.ph.i.epil.preheader, label %.new1460

.new1460:                                         ; preds = %bb.j
  %unroll_iter1466 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new1460
  %.056.i = phi i32 [ %.pre1079, %.new1460 ], [ %i.lv, %.lr.ph.i ]
  %niter1467 = phi i64 [ 0, %.new1460 ], [ %niter1467.next.7, %.lr.ph.i ]
  %i.lv = sdiv i32 %.056.i, 256                   ; 3 uses
  %niter1467.next.7 = add i64 %niter1467, 8       ; 2 uses
  %niter1467.ncmp.7 = icmp eq i64 %niter1467.next.7, %unroll_iter1466
  br i1 %niter1467.ncmp.7, label %.lr.ph.i645.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph.i645.preheader.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod1463.not = icmp eq i64 %xtraiter1461, 0
  br i1 %lcmp.mod1463.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i645.preheader.unr-lcssa, %bb.j
  %.056.i.epil.init = phi i32 [ %.pre1079, %bb.j ], [ %i.lv, %.lr.ph.i645.preheader.unr-lcssa ]
  %lcmp.mod1465 = icmp ne i64 %xtraiter1461, 0
  tail call void @llvm.assume(i1 %lcmp.mod1465)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.056.i.epil = phi i32 [ %i.lw, %.lr.ph.i.epil ], [ %.056.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter1462 = phi i64 [ %epil.iter1462.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.lw = sdiv i32 %.056.i.epil, 2                ; 2 uses
  %epil.iter1462.next = add i64 %epil.iter1462, 1 ; 2 uses
  %epil.iter1462.cmp.not = icmp eq i64 %epil.iter1462.next, %xtraiter1461
  br i1 %epil.iter1462.cmp.not, label %.lr.ph.i645.preheader, label %.lr.ph.i.epil, !llvm.loop !54

.lr.ph.i645.preheader:                            ; preds = %.lr.ph.i.epil, %.lr.ph.i645.preheader.unr-lcssa
  %.lcssa1444 = phi i32 [ %i.lv, %.lr.ph.i645.preheader.unr-lcssa ], [ %i.lw, %.lr.ph.i.epil ]
  %xtraiter1468 = and i64 %indvars.iv, 7          ; 3 uses
  %i.lx = icmp ult i64 %indvar, 7
  br i1 %i.lx, label %.lr.ph.i645.epil.preheader, label %.lr.ph.i645.preheader.new

.lr.ph.i645.preheader.new:                        ; preds = %.lr.ph.i645.preheader
  %unroll_iter1473 = and i64 %indvars.iv, 9223372036854775800
  br label %.lr.ph.i645

.lr.ph.i645:                                      ; preds = %.lr.ph.i645, %.lr.ph.i645.preheader.new
  %.056.i647 = phi i32 [ %.pre1081, %.lr.ph.i645.preheader.new ], [ %i.ly, %.lr.ph.i645 ]
  %niter1474 = phi i64 [ 0, %.lr.ph.i645.preheader.new ], [ %niter1474.next.7, %.lr.ph.i645 ]
  %i.ly = sdiv i32 %.056.i647, 256                ; 3 uses
  %niter1474.next.7 = add i64 %niter1474, 8       ; 2 uses
  %niter1474.ncmp.7 = icmp eq i64 %niter1474.next.7, %unroll_iter1473
  br i1 %niter1474.ncmp.7, label %dl.exit649.unr-lcssa, label %.lr.ph.i645

dl.exit649.unr-lcssa:                             ; preds = %.lr.ph.i645
  %lcmp.mod1470.not = icmp eq i64 %xtraiter1468, 0
  br i1 %lcmp.mod1470.not, label %dl.exit649, label %.lr.ph.i645.epil.preheader

.lr.ph.i645.epil.preheader:                       ; preds = %dl.exit649.unr-lcssa, %.lr.ph.i645.preheader
  %.056.i647.epil.init = phi i32 [ %.pre1081, %.lr.ph.i645.preheader ], [ %i.ly, %dl.exit649.unr-lcssa ]
  %lcmp.mod1472 = icmp ne i64 %xtraiter1468, 0
  tail call void @llvm.assume(i1 %lcmp.mod1472)
  br label %.lr.ph.i645.epil

.lr.ph.i645.epil:                                 ; preds = %.lr.ph.i645.epil, %.lr.ph.i645.epil.preheader
  %.056.i647.epil = phi i32 [ %i.lz, %.lr.ph.i645.epil ], [ %.056.i647.epil.init, %.lr.ph.i645.epil.preheader ]
  %epil.iter1469 = phi i64 [ %epil.iter1469.next, %.lr.ph.i645.epil ], [ 0, %.lr.ph.i645.epil.preheader ]
  %i.lz = sdiv i32 %.056.i647.epil, 2             ; 2 uses
  %epil.iter1469.next = add i64 %epil.iter1469, 1 ; 2 uses
  %epil.iter1469.cmp.not = icmp eq i64 %epil.iter1469.next, %xtraiter1468
  br i1 %epil.iter1469.cmp.not, label %dl.exit649, label %.lr.ph.i645.epil, !llvm.loop !55

dl.exit649:                                       ; preds = %.lr.ph.i645.epil, %dl.exit649.unr-lcssa
  %.lcssa1445 = phi i32 [ %i.ly, %dl.exit649.unr-lcssa ], [ %i.lz, %.lr.ph.i645.epil ]
  %i.ma = add nsw i32 %.lcssa1444, 1
  %i.mb = sext i32 %i.ma to i64
  %i.mc = add nsw i32 %.lcssa1445, 1
  %i.md = sext i32 %i.mc to i64
  %i.me = shl nsw i64 %i.mb, 2
  %i.mf = mul nsw i64 %i.me, %i.md
  %i.mg = tail call ptr @dt_alloc_aligned(i64 noundef %i.mf) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mg, i64 64) ]
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !17
  %.not613 = icmp eq ptr %i.mg, null
  br i1 %.not613, label %dl.exit649._crit_edge, label %bb.i

dl.exit649._crit_edge:                            ; preds = %bb.i, %dl.exit649, %ll_pad_input.exit
  %wide.trip.count947.pre-phi = phi i64 [ 1, %ll_pad_input.exit ], [ %wide.trip.count, %dl.exit649 ], [ %wide.trip.count, %bb.i ] ; 9 uses
  %.0547 = phi i1 [ %.not617, %ll_pad_input.exit ], [ %.not617, %bb.i ], [ true, %dl.exit649 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.f, i8 0, i64 240, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %dl.exit662
  %indvars.iv.next945 = add nuw nsw i64 %indvars.iv944, 1 ; 2 uses
  %exitcond948.not = icmp eq i64 %indvars.iv.next945, %wide.trip.count947.pre-phi
  br i1 %exitcond948.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %dl.exit649._crit_edge, %bb.k
  %indvars.iv944 = phi i64 [ 0, %dl.exit649._crit_edge ], [ %indvars.iv.next945, %bb.k ] ; 9 uses
  %.not828 = icmp eq i64 %indvars.iv944, 0
  br i1 %.not828, label %dl.exit662, label %.lr.ph.i650.preheader

.lr.ph.i650.preheader:                            ; preds = %bb.l
  %xtraiter1475 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.mi = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.mi, label %.lr.ph.i650.epil.preheader, label %.lr.ph.i650.preheader.new

.lr.ph.i650.preheader.new:                        ; preds = %.lr.ph.i650.preheader
  %unroll_iter1480 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i650

.lr.ph.i650:                                      ; preds = %.lr.ph.i650, %.lr.ph.i650.preheader.new
  %.056.i652 = phi i32 [ %.pre1079, %.lr.ph.i650.preheader.new ], [ %i.mj, %.lr.ph.i650 ]
  %niter1481 = phi i64 [ 0, %.lr.ph.i650.preheader.new ], [ %niter1481.next.7, %.lr.ph.i650 ]
  %i.mj = sdiv i32 %.056.i652, 256                ; 3 uses
  %niter1481.next.7 = add i64 %niter1481, 8       ; 2 uses
  %niter1481.ncmp.7 = icmp eq i64 %niter1481.next.7, %unroll_iter1480
  br i1 %niter1481.ncmp.7, label %.lr.ph.i657.preheader.unr-lcssa, label %.lr.ph.i650

.lr.ph.i657.preheader.unr-lcssa:                  ; preds = %.lr.ph.i650
  %lcmp.mod1477.not = icmp eq i64 %xtraiter1475, 0
  br i1 %lcmp.mod1477.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil.preheader

.lr.ph.i650.epil.preheader:                       ; preds = %.lr.ph.i657.preheader.unr-lcssa, %.lr.ph.i650.preheader
  %.056.i652.epil.init = phi i32 [ %.pre1079, %.lr.ph.i650.preheader ], [ %i.mj, %.lr.ph.i657.preheader.unr-lcssa ]
  %lcmp.mod1479 = icmp ne i64 %xtraiter1475, 0
  tail call void @llvm.assume(i1 %lcmp.mod1479)
  br label %.lr.ph.i650.epil

.lr.ph.i650.epil:                                 ; preds = %.lr.ph.i650.epil, %.lr.ph.i650.epil.preheader
  %.056.i652.epil = phi i32 [ %i.mk, %.lr.ph.i650.epil ], [ %.056.i652.epil.init, %.lr.ph.i650.epil.preheader ]
  %epil.iter1476 = phi i64 [ %epil.iter1476.next, %.lr.ph.i650.epil ], [ 0, %.lr.ph.i650.epil.preheader ]
  %i.mk = sdiv i32 %.056.i652.epil, 2             ; 2 uses
  %epil.iter1476.next = add i64 %epil.iter1476, 1 ; 2 uses
  %epil.iter1476.cmp.not = icmp eq i64 %epil.iter1476.next, %xtraiter1475
  br i1 %epil.iter1476.cmp.not, label %.lr.ph.i657.preheader, label %.lr.ph.i650.epil, !llvm.loop !56

.lr.ph.i657.preheader:                            ; preds = %.lr.ph.i650.epil, %.lr.ph.i657.preheader.unr-lcssa
  %.lcssa1442 = phi i32 [ %i.mj, %.lr.ph.i657.preheader.unr-lcssa ], [ %i.mk, %.lr.ph.i650.epil ]
  %xtraiter1482 = and i64 %indvars.iv944, 7       ; 3 uses
  %i.ml = icmp samesign ult i64 %indvars.iv944, 8
  br i1 %i.ml, label %.lr.ph.i657.epil.preheader, label %.lr.ph.i657.preheader.new

.lr.ph.i657.preheader.new:                        ; preds = %.lr.ph.i657.preheader
  %unroll_iter1487 = and i64 %indvars.iv944, 9223372036854775800
  br label %.lr.ph.i657

._crit_edge.loopexit.i661.unr-lcssa:              ; preds = %.lr.ph.i657
  %lcmp.mod1484.not = icmp eq i64 %xtraiter1482, 0
  br i1 %lcmp.mod1484.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil.preheader

.lr.ph.i657.epil.preheader:                       ; preds = %._crit_edge.loopexit.i661.unr-lcssa, %.lr.ph.i657.preheader
  %.056.i659.epil.init = phi i32 [ %.pre1081, %.lr.ph.i657.preheader ], [ %i.mp, %._crit_edge.loopexit.i661.unr-lcssa ]
  %lcmp.mod1486 = icmp ne i64 %xtraiter1482, 0
  tail call void @llvm.assume(i1 %lcmp.mod1486)
  br label %.lr.ph.i657.epil

.lr.ph.i657.epil:                                 ; preds = %.lr.ph.i657.epil, %.lr.ph.i657.epil.preheader
  %.056.i659.epil = phi i32 [ %i.mm, %.lr.ph.i657.epil ], [ %.056.i659.epil.init, %.lr.ph.i657.epil.preheader ]
  %epil.iter1483 = phi i64 [ %epil.iter1483.next, %.lr.ph.i657.epil ], [ 0, %.lr.ph.i657.epil.preheader ]
  %i.mm = sdiv i32 %.056.i659.epil, 2             ; 2 uses
  %epil.iter1483.next = add i64 %epil.iter1483, 1 ; 2 uses
  %epil.iter1483.cmp.not = icmp eq i64 %epil.iter1483.next, %xtraiter1482
  br i1 %epil.iter1483.cmp.not, label %._crit_edge.loopexit.i661, label %.lr.ph.i657.epil, !llvm.loop !57

._crit_edge.loopexit.i661:                        ; preds = %.lr.ph.i657.epil, %._crit_edge.loopexit.i661.unr-lcssa
  %.lcssa1443 = phi i32 [ %i.mp, %._crit_edge.loopexit.i661.unr-lcssa ], [ %i.mm, %.lr.ph.i657.epil ]
  %i.mn = add nsw i32 %.lcssa1442, 1
  %i.mo = add nsw i32 %.lcssa1443, 1
  br label %dl.exit662

.lr.ph.i657:                                      ; preds = %.lr.ph.i657, %.lr.ph.i657.preheader.new
  %.056.i659 = phi i32 [ %.pre1081, %.lr.ph.i657.preheader.new ], [ %i.mp, %.lr.ph.i657 ]
  %niter1488 = phi i64 [ 0, %.lr.ph.i657.preheader.new ], [ %niter1488.next.7, %.lr.ph.i657 ]
  %i.mp = sdiv i32 %.056.i659, 256                ; 3 uses
  %niter1488.next.7 = add i64 %niter1488, 8       ; 2 uses
  %niter1488.ncmp.7 = icmp eq i64 %niter1488.next.7, %unroll_iter1487
  br i1 %niter1488.ncmp.7, label %._crit_edge.loopexit.i661.unr-lcssa, label %.lr.ph.i657

end_hunk_1
begin_hunk_2_@local_laplacian_internal:bb.a
  %index1402.ph = phi i64 [ 0, %vector.main.loop.iter.check1381 ], [ %n.vec1384, %vec.epilog.iter.check1395 ]
  br label %vec.epilog.vector.body1401

.lr.ph918.preheader:                              ; preds = %iter.check1394, %vec.epilog.iter.check1395
  %.0542917.ph = phi i64 [ %n.vec1384, %vec.epilog.iter.check1395 ], [ 0, %iter.check1394 ] ; 3 uses
  %xtraiter1728 = and i64 %i.ng, 4                ; 2 uses
  %lcmp.mod1729.not = icmp eq i64 %xtraiter1728, 0
  br i1 %lcmp.mod1729.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol

.lr.ph918.prol:                                   ; preds = %.lr.ph918.preheader, %.lr.ph918.prol
  %.0542917.prol = phi i64 [ %i.nv, %.lr.ph918.prol ], [ %.0542917.ph, %.lr.ph918.preheader ] ; 3 uses
  %prol.iter1730 = phi i64 [ %prol.iter1730.next, %.lr.ph918.prol ], [ 0, %.lr.ph918.preheader ]
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917.prol
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !21
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917.prol
  store float %i.nt, ptr %i.nu, align 4, !tbaa !21
  %i.nv = add nuw i64 %.0542917.prol, 1           ; 2 uses
  %prol.iter1730.next = add i64 %prol.iter1730, 1 ; 2 uses
  %prol.iter1730.cmp.not = icmp eq i64 %prol.iter1730.next, %xtraiter1728
  br i1 %prol.iter1730.cmp.not, label %.lr.ph918.prol.loopexit, label %.lr.ph918.prol, !llvm.loop !59

.lr.ph918.prol.loopexit:                          ; preds = %.lr.ph918.prol, %.lr.ph918.preheader
  %.0542917.unr = phi i64 [ %.0542917.ph, %.lr.ph918.preheader ], [ %i.nv, %.lr.ph918.prol ]
  %i.nw = sub i64 %.0542917.ph, %i.ng
  %i.nx = icmp ugt i64 %i.nw, -8
  br i1 %i.nx, label %.loopexit, label %.lr.ph918

vec.epilog.vector.body1401:                       ; preds = %vec.epilog.vector.body1401.preheader, %vec.epilog.vector.body1401
  %index1402 = phi i64 [ %index.next1404, %vec.epilog.vector.body1401 ], [ %index1402.ph, %vec.epilog.vector.body1401.preheader ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1402
  %wide.load1403 = load <4 x float>, ptr %i.ny, align 4, !tbaa !21
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1402
  store <4 x float> %wide.load1403, ptr %i.nz, align 4, !tbaa !21
  %index.next1404 = add nuw i64 %index1402, 4     ; 2 uses
  %i.oa = icmp eq i64 %index.next1404, %i.ng
  br i1 %i.oa, label %.loopexit, label %vec.epilog.vector.body1401, !llvm.loop !60

.critedge638:                                     ; preds = %.critedge638.preheader, %.critedge638
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.critedge638 ], [ 0, %.critedge638.preheader ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv1068
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.oc) #14
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv1068
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.oe) #14
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %exitcond1072.not = icmp eq i64 %indvars.iv.next1069, %wide.trip.count947.pre-phi
  br i1 %exitcond1072.not, label %iter.check1394, label %.critedge638

.lr.ph918:                                        ; preds = %.lr.ph918.prol.loopexit, %.lr.ph918
  %.0542917 = phi i64 [ %i.pk, %.lr.ph918 ], [ %.0542917.unr, %.lr.ph918.prol.loopexit ] ; 10 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0542917
  %i.og = load float, ptr %i.of, align 4, !tbaa !21
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0542917
  store float %i.og, ptr %i.oh, align 4, !tbaa !21
  %i.oi = add nuw i64 %.0542917, 1                ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oi
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !21
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oi
  store float %i.ok, ptr %i.ol, align 4, !tbaa !21
  %i.om = add nuw i64 %.0542917, 2                ; 2 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.om
  %i.oo = load float, ptr %i.on, align 4, !tbaa !21
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.om
  store float %i.oo, ptr %i.op, align 4, !tbaa !21
  %i.oq = add nuw i64 %.0542917, 3                ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !21
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oq
  store float %i.os, ptr %i.ot, align 4, !tbaa !21
  %i.ou = add nuw i64 %.0542917, 4                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ou
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !21
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ou
  store float %i.ow, ptr %i.ox, align 4, !tbaa !21
  %i.oy = add nuw i64 %.0542917, 5                ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oy
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !21
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.oy
  store float %i.pa, ptr %i.pb, align 4, !tbaa !21
  %i.pc = add nuw i64 %.0542917, 6                ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !21
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pc
  store float %i.pe, ptr %i.pf, align 4, !tbaa !21
  %i.pg = add nuw i64 %.0542917, 7                ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !21
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pg
  store float %i.pi, ptr %i.pj, align 4, !tbaa !21
  %i.pk = add nuw i64 %.0542917, 8                ; 2 uses
  %exitcond1073.not.7 = icmp eq i64 %i.pk, %i.ng
  br i1 %exitcond1073.not.7, label %.loopexit, label %.lr.ph918, !llvm.loop !61

._crit_edge877:                                   ; preds = %dl.exit694
  %i.pl = add nsw i32 %.0528797, -1               ; 6 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pm
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !17
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %wide.trip.count952
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !17
  %i.pr = add nsw i32 %.0528797, -2               ; 2 uses
  %xtraiter1505 = and i32 %i.pl, 7                ; 3 uses
  %i.ps = icmp ult i32 %i.pr, 7
  br i1 %i.ps, label %.lr.ph.i665.epil.preheader, label %._crit_edge877.new

._crit_edge877.new:                               ; preds = %._crit_edge877
  %unroll_iter1510 = and i32 %i.pl, -8
  br label %.lr.ph.i665

.lr.ph.i665:                                      ; preds = %.lr.ph.i665, %._crit_edge877.new
  %.056.i667 = phi i32 [ %.pre1079, %._crit_edge877.new ], [ %i.pt, %.lr.ph.i665 ]
  %niter1511 = phi i32 [ 0, %._crit_edge877.new ], [ %niter1511.next.7, %.lr.ph.i665 ]
  %i.pt = sdiv i32 %.056.i667, 256                ; 3 uses
  %niter1511.next.7 = add i32 %niter1511, 8       ; 2 uses
  %niter1511.ncmp.7 = icmp eq i32 %niter1511.next.7, %unroll_iter1510
  br i1 %niter1511.ncmp.7, label %.lr.ph.i673.preheader.unr-lcssa, label %.lr.ph.i665

.lr.ph.i673.preheader.unr-lcssa:                  ; preds = %.lr.ph.i665
  %lcmp.mod1507.not = icmp eq i32 %xtraiter1505, 0
  br i1 %lcmp.mod1507.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil.preheader

.lr.ph.i665.epil.preheader:                       ; preds = %.lr.ph.i673.preheader.unr-lcssa, %._crit_edge877
  %.056.i667.epil.init = phi i32 [ %.pre1079, %._crit_edge877 ], [ %i.pt, %.lr.ph.i673.preheader.unr-lcssa ]
  %lcmp.mod1509 = icmp ne i32 %xtraiter1505, 0
  tail call void @llvm.assume(i1 %lcmp.mod1509)
  br label %.lr.ph.i665.epil

.lr.ph.i665.epil:                                 ; preds = %.lr.ph.i665.epil, %.lr.ph.i665.epil.preheader
  %.056.i667.epil = phi i32 [ %i.pu, %.lr.ph.i665.epil ], [ %.056.i667.epil.init, %.lr.ph.i665.epil.preheader ]
  %epil.iter1506 = phi i32 [ %epil.iter1506.next, %.lr.ph.i665.epil ], [ 0, %.lr.ph.i665.epil.preheader ]
  %i.pu = sdiv i32 %.056.i667.epil, 2             ; 2 uses
  %epil.iter1506.next = add i32 %epil.iter1506, 1 ; 2 uses
  %epil.iter1506.cmp.not = icmp eq i32 %epil.iter1506.next, %xtraiter1505
  br i1 %epil.iter1506.cmp.not, label %.lr.ph.i673.preheader, label %.lr.ph.i665.epil, !llvm.loop !62

.lr.ph.i673.preheader:                            ; preds = %.lr.ph.i665.epil, %.lr.ph.i673.preheader.unr-lcssa
  %.lcssa1439 = phi i32 [ %i.pt, %.lr.ph.i673.preheader.unr-lcssa ], [ %i.pu, %.lr.ph.i665.epil ]
  %xtraiter1512 = and i32 %i.pl, 7                ; 3 uses
  %i.pv = icmp ult i32 %i.pr, 7
  br i1 %i.pv, label %.lr.ph.i673.epil.preheader, label %.lr.ph.i673.preheader.new

.lr.ph.i673.preheader.new:                        ; preds = %.lr.ph.i673.preheader
  %unroll_iter1517 = and i32 %i.pl, -8
  br label %.lr.ph.i673

._crit_edge.loopexit.i677.unr-lcssa:              ; preds = %.lr.ph.i673
  %lcmp.mod1514.not = icmp eq i32 %xtraiter1512, 0
  br i1 %lcmp.mod1514.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil.preheader

.lr.ph.i673.epil.preheader:                       ; preds = %._crit_edge.loopexit.i677.unr-lcssa, %.lr.ph.i673.preheader
  %.056.i675.epil.init = phi i32 [ %.pre1081, %.lr.ph.i673.preheader ], [ %i.pz, %._crit_edge.loopexit.i677.unr-lcssa ]
  %lcmp.mod1516 = icmp ne i32 %xtraiter1512, 0
  tail call void @llvm.assume(i1 %lcmp.mod1516)
  br label %.lr.ph.i673.epil

.lr.ph.i673.epil:                                 ; preds = %.lr.ph.i673.epil, %.lr.ph.i673.epil.preheader
  %.056.i675.epil = phi i32 [ %i.pw, %.lr.ph.i673.epil ], [ %.056.i675.epil.init, %.lr.ph.i673.epil.preheader ]
  %epil.iter1513 = phi i32 [ %epil.iter1513.next, %.lr.ph.i673.epil ], [ 0, %.lr.ph.i673.epil.preheader ]
  %i.pw = sdiv i32 %.056.i675.epil, 2             ; 2 uses
  %epil.iter1513.next = add i32 %epil.iter1513, 1 ; 2 uses
  %epil.iter1513.cmp.not = icmp eq i32 %epil.iter1513.next, %xtraiter1512
  br i1 %epil.iter1513.cmp.not, label %._crit_edge.loopexit.i677, label %.lr.ph.i673.epil, !llvm.loop !63

._crit_edge.loopexit.i677:                        ; preds = %.lr.ph.i673.epil, %._crit_edge.loopexit.i677.unr-lcssa
  %.lcssa1438 = phi i32 [ %i.pz, %._crit_edge.loopexit.i677.unr-lcssa ], [ %i.pw, %.lr.ph.i673.epil ]
  %i.px = add nsw i32 %.lcssa1439, 1
  %i.py = add nsw i32 %.lcssa1438, 1
  br label %dl.exit678

.lr.ph.i673:                                      ; preds = %.lr.ph.i673, %.lr.ph.i673.preheader.new
  %.056.i675 = phi i32 [ %.pre1081, %.lr.ph.i673.preheader.new ], [ %i.pz, %.lr.ph.i673 ]
  %niter1518 = phi i32 [ 0, %.lr.ph.i673.preheader.new ], [ %niter1518.next.7, %.lr.ph.i673 ]
  %i.pz = sdiv i32 %.056.i675, 256                ; 3 uses
  %niter1518.next.7 = add i32 %niter1518, 8       ; 2 uses
  %niter1518.ncmp.7 = icmp eq i32 %niter1518.next.7, %unroll_iter1517
  br i1 %niter1518.ncmp.7, label %._crit_edge.loopexit.i677.unr-lcssa, label %.lr.ph.i673

dl.exit678:                                       ; preds = %._crit_edge877.thread, %._crit_edge.loopexit.i677
  %i.qa = phi ptr [ %i.pq, %._crit_edge.loopexit.i677 ], [ %i.nc, %._crit_edge877.thread ] ; 4 uses
  %i.qb = phi ptr [ %i.po, %._crit_edge.loopexit.i677 ], [ %i.na, %._crit_edge877.thread ]
  %i.qc = phi i32 [ %i.pl, %._crit_edge.loopexit.i677 ], [ %i.mx, %._crit_edge877.thread ]
  %.in829 = phi i32 [ %i.px, %._crit_edge.loopexit.i677 ], [ %.pre, %._crit_edge877.thread ]
  %.05.lcssa.i671 = phi i32 [ %i.py, %._crit_edge.loopexit.i677 ], [ %.pre1074, %._crit_edge877.thread ]
  %i.qd = sext i32 %.in829 to i64
  %i.qe = sext i32 %.05.lcssa.i671 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %i.qb, ptr noundef %i.qa, i64 noundef %i.qd, i64 noundef %i.qe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.qf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store <4 x float> <float f0x3DAAAAAB, float 2.500000e-01, float f0x3ED55556, float f0x3F155555>, ptr %i.g, align 16, !tbaa !21
  %i.qi = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store <2 x float> <float 7.500000e-01, float f0x3F6AAAAB>, ptr %i.qi, align 16, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1440) %i.h, i8 0, i64 1440, i1 false)
  br label %bb.o

.lr.ph876:                                        ; preds = %.preheader851, %dl.exit694
  %indvar1489 = phi i64 [ %indvar.next1490, %dl.exit694 ], [ 0, %.preheader851 ] ; 4 uses
  %9 = phi ptr [ %i.ql, %dl.exit694 ], [ %storemerge, %.preheader851 ]
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %dl.exit694 ], [ 1, %.preheader851 ] ; 4 uses
  %i.qj = add i64 %indvar1489, -1                 ; 2 uses
  %10 = add nsw i64 %indvars.iv949, -1            ; 2 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv949
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !17 ; 2 uses
  %i.qm = icmp samesign ugt i64 %indvars.iv949, 1
  br i1 %i.qm, label %.lr.ph.i681.preheader, label %dl.exit694

.lr.ph.i681.preheader:                            ; preds = %.lr.ph876
  %xtraiter1491 = and i64 %10, 7                  ; 3 uses
  %i.qn = icmp ult i64 %i.qj, 7
  br i1 %i.qn, label %.lr.ph.i681.epil.preheader, label %.lr.ph.i681.preheader.new

.lr.ph.i681.preheader.new:                        ; preds = %.lr.ph.i681.preheader
  %unroll_iter1496 = and i64 %10, -8
  br label %.lr.ph.i681

.lr.ph.i681:                                      ; preds = %.lr.ph.i681, %.lr.ph.i681.preheader.new
  %.056.i683 = phi i32 [ %.pre1079, %.lr.ph.i681.preheader.new ], [ %i.qo, %.lr.ph.i681 ]
  %niter1497 = phi i64 [ 0, %.lr.ph.i681.preheader.new ], [ %niter1497.next.7, %.lr.ph.i681 ]
  %i.qo = sdiv i32 %.056.i683, 256                ; 3 uses
  %niter1497.next.7 = add i64 %niter1497, 8       ; 2 uses
  %niter1497.ncmp.7 = icmp eq i64 %niter1497.next.7, %unroll_iter1496
  br i1 %niter1497.ncmp.7, label %.lr.ph.i689.preheader.unr-lcssa, label %.lr.ph.i681

.lr.ph.i689.preheader.unr-lcssa:                  ; preds = %.lr.ph.i681
  %lcmp.mod1493.not = icmp eq i64 %xtraiter1491, 0
  br i1 %lcmp.mod1493.not, label %.lr.ph.i689.preheader, label %.lr.ph.i681.epil.preheader

.lr.ph.i681.epil.preheader:                       ; preds = %.lr.ph.i689.preheader.unr-lcssa, %.lr.ph.i681.preheader
  %.056.i683.epil.init = phi i32 [ %.pre1079, %.lr.ph.i681.preheader ], [ %i.qo, %.lr.ph.i689.preheader.unr-lcssa ]
  %lcmp.mod1495 = icmp ne i64 %xtraiter1491, 0
  tail call void @llvm.assume(i1 %lcmp.mod1495)
  br label %.lr.ph.i681.epil

.lr.ph.i681.epil:                                 ; preds = %.lr.ph.i681.epil, %.lr.ph.i681.epil.preheader
  %.056.i683.epil = phi i32 [ %i.qp, %.lr.ph.i681.epil ], [ %.056.i683.epil.init, %.lr.ph.i681.epil.preheader ]
  %epil.iter1492 = phi i64 [ %epil.iter1492.next, %.lr.ph.i681.epil ], [ 0, %.lr.ph.i681.epil.preheader ]
  %i.qp = sdiv i32 %.056.i683.epil, 2             ; 2 uses
  %epil.iter1492.next = add i64 %epil.iter1492, 1 ; 2 uses
  %epil.iter1492.cmp.not = icmp eq i64 %epil.iter1492.next, %xtraiter1491
  br i1 %epil.iter1492.cmp.not, label %.lr.ph.i689.preheader, label %.lr.ph.i681.epil, !llvm.loop !64

.lr.ph.i689.preheader:                            ; preds = %.lr.ph.i681.epil, %.lr.ph.i689.preheader.unr-lcssa
  %.lcssa1440 = phi i32 [ %i.qo, %.lr.ph.i689.preheader.unr-lcssa ], [ %i.qp, %.lr.ph.i681.epil ]
  %xtraiter1498 = and i64 %indvar1489, 7          ; 3 uses
  %i.qq = icmp ult i64 %i.qj, 7
  br i1 %i.qq, label %.lr.ph.i689.epil.preheader, label %.lr.ph.i689.preheader.new

.lr.ph.i689.preheader.new:                        ; preds = %.lr.ph.i689.preheader
  %unroll_iter1503 = and i64 %indvar1489, -8
  br label %.lr.ph.i689

._crit_edge.loopexit.i693.unr-lcssa:              ; preds = %.lr.ph.i689
  %lcmp.mod1500.not = icmp eq i64 %xtraiter1498, 0
  br i1 %lcmp.mod1500.not, label %._crit_edge.loopexit.i693, label %.lr.ph.i689.epil.preheader

.lr.ph.i689.epil.preheader:                       ; preds = %._crit_edge.loopexit.i693.unr-lcssa, %.lr.ph.i689.preheader
  %.056.i691.epil.init = phi i32 [ %.pre1081, %.lr.ph.i689.preheader ], [ %i.qu, %._crit_edge.loopexit.i693.unr-lcssa ]
  %lcmp.mod1502 = icmp ne i64 %xtraiter1498, 0
  tail call void @llvm.assume(i1 %lcmp.mod1502)
  br label %.lr.ph.i689.epil

.lr.ph.i689.epil:                                 ; preds = %.lr.ph.i689.epil, %.lr.ph.i689.epil.preheader
  %.056.i691.epil = phi i32 [ %i.qr, %.lr.ph.i689.epil ], [ %.056.i691.epil.init, %.lr.ph.i689.epil.preheader ]
  %epil.iter1499 = phi i64 [ %epil.iter1499.next, %.lr.ph.i689.epil ], [ 0, %.lr.ph.i689.epil.preheader ]
  %i.qr = sdiv i32 %.056.i691.epil, 2             ; 2 uses
  %epil.iter1499.next = add i64 %epil.iter1499, 1 ; 2 uses
  %epil.iter1499.cmp.not = icmp eq i64 %epil.iter1499.next, %xtraiter1498
  br i1 %epil.iter1499.cmp.not, label %._crit_edge.loopexit.i693, label %.lr.ph.i689.epil, !llvm.loop !65

._crit_edge.loopexit.i693:                        ; preds = %.lr.ph.i689.epil, %._crit_edge.loopexit.i693.unr-lcssa
  %.lcssa1441 = phi i32 [ %i.qu, %._crit_edge.loopexit.i693.unr-lcssa ], [ %i.qr, %.lr.ph.i689.epil ]
  %i.qs = add nsw i32 %.lcssa1440, 1
  %i.qt = add nsw i32 %.lcssa1441, 1
  br label %dl.exit694

.lr.ph.i689:                                      ; preds = %.lr.ph.i689, %.lr.ph.i689.preheader.new
  %.056.i691 = phi i32 [ %.pre1081, %.lr.ph.i689.preheader.new ], [ %i.qu, %.lr.ph.i689 ]
  %niter1504 = phi i64 [ 0, %.lr.ph.i689.preheader.new ], [ %niter1504.next.7, %.lr.ph.i689 ]
  %i.qu = sdiv i32 %.056.i691, 256                ; 3 uses
  %niter1504.next.7 = add i64 %niter1504, 8       ; 2 uses
  %niter1504.ncmp.7 = icmp eq i64 %niter1504.next.7, %unroll_iter1503
  br i1 %niter1504.ncmp.7, label %._crit_edge.loopexit.i693.unr-lcssa, label %.lr.ph.i689

dl.exit694:                                       ; preds = %.lr.ph876, %._crit_edge.loopexit.i693
  %.in834 = phi i32 [ %i.qs, %._crit_edge.loopexit.i693 ], [ %.pre, %.lr.ph876 ]
  %.05.lcssa.i687 = phi i32 [ %i.qt, %._crit_edge.loopexit.i693 ], [ %.pre1074, %.lr.ph876 ]
  %i.qv = sext i32 %.in834 to i64
  %i.qw = sext i32 %.05.lcssa.i687 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %9, ptr noundef %i.ql, i64 noundef %i.qv, i64 noundef %i.qw)
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %exitcond953.not = icmp eq i64 %indvars.iv.next950, %wide.trip.count952
  %indvar.next1490 = add i64 %indvar1489, 1
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
  %xtraiter1519 = and i64 %indvars.iv958, 7       ; 3 uses
  %i.qx = icmp samesign ult i64 %indvars.iv958, 8
  br i1 %i.qx, label %.lr.ph.i697.epil.preheader, label %.lr.ph.i697.preheader.new

.lr.ph.i697.preheader.new:                        ; preds = %.lr.ph.i697.preheader
  %unroll_iter1524 = and i64 %indvars.iv958, 9223372036854775800
  br label %.lr.ph.i697

.lr.ph.i697:                                      ; preds = %.lr.ph.i697, %.lr.ph.i697.preheader.new
  %.056.i699 = phi i32 [ %.pre1079, %.lr.ph.i697.preheader.new ], [ %i.qy, %.lr.ph.i697 ]
  %niter1525 = phi i64 [ 0, %.lr.ph.i697.preheader.new ], [ %niter1525.next.7, %.lr.ph.i697 ]
  %i.qy = sdiv i32 %.056.i699, 256                ; 3 uses
  %niter1525.next.7 = add i64 %niter1525, 8       ; 2 uses
  %niter1525.ncmp.7 = icmp eq i64 %niter1525.next.7, %unroll_iter1524
  br i1 %niter1525.ncmp.7, label %.lr.ph.i705.preheader.unr-lcssa, label %.lr.ph.i697

.lr.ph.i705.preheader.unr-lcssa:                  ; preds = %.lr.ph.i697
  %lcmp.mod1521.not = icmp eq i64 %xtraiter1519, 0
  br i1 %lcmp.mod1521.not, label %.lr.ph.i705.preheader, label %.lr.ph.i697.epil.preheader

.lr.ph.i697.epil.preheader:                       ; preds = %.lr.ph.i705.preheader.unr-lcssa, %.lr.ph.i697.preheader
  %.056.i699.epil.init = phi i32 [ %.pre1079, %.lr.ph.i697.preheader ], [ %i.qy, %.lr.ph.i705.preheader.unr-lcssa ]
  %lcmp.mod1523 = icmp ne i64 %xtraiter1519, 0
  tail call void @llvm.assume(i1 %lcmp.mod1523)
  br label %.lr.ph.i697.epil

.lr.ph.i697.epil:                                 ; preds = %.lr.ph.i697.epil, %.lr.ph.i697.epil.preheader
  %.056.i699.epil = phi i32 [ %i.qz, %.lr.ph.i697.epil ], [ %.056.i699.epil.init, %.lr.ph.i697.epil.preheader ]
  %epil.iter1520 = phi i64 [ %epil.iter1520.next, %.lr.ph.i697.epil ], [ 0, %.lr.ph.i697.epil.preheader ]
  %i.qz = sdiv i32 %.056.i699.epil, 2             ; 2 uses
  %epil.iter1520.next = add i64 %epil.iter1520, 1 ; 2 uses
  %epil.iter1520.cmp.not = icmp eq i64 %epil.iter1520.next, %xtraiter1519
  br i1 %epil.iter1520.cmp.not, label %.lr.ph.i705.preheader, label %.lr.ph.i697.epil, !llvm.loop !66

.lr.ph.i705.preheader:                            ; preds = %.lr.ph.i697.epil, %.lr.ph.i705.preheader.unr-lcssa
  %.lcssa1436 = phi i32 [ %i.qy, %.lr.ph.i705.preheader.unr-lcssa ], [ %i.qz, %.lr.ph.i697.epil ]
  %xtraiter1541 = and i64 %indvars.iv958, 7       ; 3 uses
  %i.ra = icmp samesign ult i64 %indvars.iv958, 8
  br i1 %i.ra, label %.lr.ph.i705.epil.preheader, label %.lr.ph.i705.preheader.new

.lr.ph.i705.preheader.new:                        ; preds = %.lr.ph.i705.preheader
  %unroll_iter1546 = and i64 %indvars.iv958, 9223372036854775800
  br label %.lr.ph.i705

._crit_edge.loopexit.i709.unr-lcssa:              ; preds = %.lr.ph.i705
  %lcmp.mod1543.not = icmp eq i64 %xtraiter1541, 0
  br i1 %lcmp.mod1543.not, label %._crit_edge.loopexit.i709, label %.lr.ph.i705.epil.preheader

.lr.ph.i705.epil.preheader:                       ; preds = %._crit_edge.loopexit.i709.unr-lcssa, %.lr.ph.i705.preheader
  %.056.i707.epil.init = phi i32 [ %.pre1081, %.lr.ph.i705.preheader ], [ %i.re, %._crit_edge.loopexit.i709.unr-lcssa ]
  %lcmp.mod1545 = icmp ne i64 %xtraiter1541, 0
  tail call void @llvm.assume(i1 %lcmp.mod1545)
  br label %.lr.ph.i705.epil

.lr.ph.i705.epil:                                 ; preds = %.lr.ph.i705.epil, %.lr.ph.i705.epil.preheader
  %.056.i707.epil = phi i32 [ %i.rb, %.lr.ph.i705.epil ], [ %.056.i707.epil.init, %.lr.ph.i705.epil.preheader ]
  %epil.iter1542 = phi i64 [ %epil.iter1542.next, %.lr.ph.i705.epil ], [ 0, %.lr.ph.i705.epil.preheader ]
  %i.rb = sdiv i32 %.056.i707.epil, 2             ; 2 uses
  %epil.iter1542.next = add i64 %epil.iter1542, 1 ; 2 uses
  %epil.iter1542.cmp.not = icmp eq i64 %epil.iter1542.next, %xtraiter1541
  br i1 %epil.iter1542.cmp.not, label %._crit_edge.loopexit.i709, label %.lr.ph.i705.epil, !llvm.loop !67

._crit_edge.loopexit.i709:                        ; preds = %.lr.ph.i705.epil, %._crit_edge.loopexit.i709.unr-lcssa
  %.lcssa1437 = phi i32 [ %i.re, %._crit_edge.loopexit.i709.unr-lcssa ], [ %i.rb, %.lr.ph.i705.epil ]
  %i.rc = add nsw i32 %.lcssa1436, 1
  %i.rd = add nsw i32 %.lcssa1437, 1
  br label %dl.exit710

.lr.ph.i705:                                      ; preds = %.lr.ph.i705, %.lr.ph.i705.preheader.new
  %.056.i707 = phi i32 [ %.pre1081, %.lr.ph.i705.preheader.new ], [ %i.re, %.lr.ph.i705 ]
  %niter1547 = phi i64 [ 0, %.lr.ph.i705.preheader.new ], [ %niter1547.next.7, %.lr.ph.i705 ]
  %i.re = sdiv i32 %.056.i707, 256                ; 3 uses
  %niter1547.next.7 = add i64 %niter1547, 8       ; 2 uses
  %niter1547.ncmp.7 = icmp eq i64 %niter1547.next.7, %unroll_iter1546
  br i1 %niter1547.ncmp.7, label %._crit_edge.loopexit.i709.unr-lcssa, label %.lr.ph.i705

dl.exit710:                                       ; preds = %bb.o, %._crit_edge.loopexit.i709
  %.in833 = phi i32 [ %i.rc, %._crit_edge.loopexit.i709 ], [ %.pre, %bb.o ]
  %.05.lcssa.i703 = phi i32 [ %i.rd, %._crit_edge.loopexit.i709 ], [ %.pre1074, %bb.o ]
  %i.rf = sext i32 %.in833 to i64
  %i.rg = sext i32 %.05.lcssa.i703 to i64
  %i.rh = shl nsw i64 %i.rf, 2
  %i.ri = mul i64 %i.rh, %i.rg
  %i.rj = tail call ptr @dt_alloc_aligned(i64 noundef %i.ri) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rj, i64 64) ]
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv958
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !17
  %.not620 = icmp eq ptr %i.rj, null
  br i1 %.not620, label %iter.check1362, label %bb.n

iter.check1362:                                   ; preds = %dl.exit710, %dl.exit710.1, %dl.exit710.2, %dl.exit710.3, %dl.exit710.4, %dl.exit710.5
  %i.rl = zext nneg i32 %2 to i64
  %i.rm = shl nuw nsw i64 %i.rl, 2
  %i.rn = zext nneg i32 %3 to i64
  %i.ro = mul nuw i64 %i.rm, %i.rn                ; 8 uses
  %i.rp = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.rp, -128
  br i1 %diff.check, label %.lr.ph912.preheader, label %vector.main.loop.iter.check1349

vector.main.loop.iter.check1349:                  ; preds = %iter.check1362
  %min.iters.check1350 = icmp ult i64 %i.ro, 32
  br i1 %min.iters.check1350, label %vec.epilog.vector.body1369.preheader, label %vector.ph1351

vector.ph1351:                                    ; preds = %vector.main.loop.iter.check1349
  %i.rq = and i64 %i.ro, 28
  %n.vec1352 = and i64 %i.ro, -32                 ; 4 uses
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.ph1351, %vector.body1353
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1359, %vector.body1353 ] ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1354 ; 4 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rr, i64 96
  %wide.load1355 = load <8 x float>, ptr %i.rr, align 4, !tbaa !21
  %wide.load1356 = load <8 x float>, ptr %i.rs, align 4, !tbaa !21
  %wide.load1357 = load <8 x float>, ptr %i.rt, align 4, !tbaa !21
  %wide.load1358 = load <8 x float>, ptr %i.ru, align 4, !tbaa !21
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1354 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 64
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 96
  store <8 x float> %wide.load1355, ptr %i.rv, align 4, !tbaa !21
  store <8 x float> %wide.load1356, ptr %i.rw, align 4, !tbaa !21
  store <8 x float> %wide.load1357, ptr %i.rx, align 4, !tbaa !21
  store <8 x float> %wide.load1358, ptr %i.ry, align 4, !tbaa !21
  %index.next1359 = add nuw i64 %index1354, 32    ; 2 uses
  %i.rz = icmp eq i64 %index.next1359, %n.vec1352
  br i1 %i.rz, label %middle.block1360, label %vector.body1353, !llvm.loop !68

middle.block1360:                                 ; preds = %vector.body1353
  %cmp.n1361 = icmp eq i64 %i.ro, %n.vec1352
  br i1 %cmp.n1361, label %.thread809, label %vec.epilog.iter.check1363

vec.epilog.iter.check1363:                        ; preds = %middle.block1360
  %min.epilog.iters.check1365 = icmp eq i64 %i.rq, 0
  br i1 %min.epilog.iters.check1365, label %.lr.ph912.preheader, label %vec.epilog.vector.body1369.preheader, !prof !25

vec.epilog.vector.body1369.preheader:             ; preds = %vector.main.loop.iter.check1349, %vec.epilog.iter.check1363
  %index1370.ph = phi i64 [ 0, %vector.main.loop.iter.check1349 ], [ %n.vec1352, %vec.epilog.iter.check1363 ]
  br label %vec.epilog.vector.body1369

.lr.ph912.preheader:                              ; preds = %iter.check1362, %vec.epilog.iter.check1363
  %.0537911.ph = phi i64 [ %n.vec1352, %vec.epilog.iter.check1363 ], [ 0, %iter.check1362 ] ; 3 uses
  %xtraiter1725 = and i64 %i.ro, 4                ; 2 uses
  %lcmp.mod1726.not = icmp eq i64 %xtraiter1725, 0
  br i1 %lcmp.mod1726.not, label %.lr.ph912.prol.loopexit, label %.lr.ph912.prol

.lr.ph912.prol:                                   ; preds = %.lr.ph912.preheader, %.lr.ph912.prol
  %.0537911.prol = phi i64 [ %i.sd, %.lr.ph912.prol ], [ %.0537911.ph, %.lr.ph912.preheader ] ; 3 uses
  %prol.iter1727 = phi i64 [ %prol.iter1727.next, %.lr.ph912.prol ], [ 0, %.lr.ph912.preheader ]
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0537911.prol
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !21
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0537911.prol
  store float %i.sb, ptr %i.sc, align 4, !tbaa !21
  %i.sd = add nuw i64 %.0537911.prol, 1           ; 2 uses
  %prol.iter1727.next = add i64 %prol.iter1727, 1 ; 2 uses
  %prol.iter1727.cmp.not = icmp eq i64 %prol.iter1727.next, %xtraiter1725
  br i1 %prol.iter1727.cmp.not, label %.lr.ph912.prol.loopexit, label %.lr.ph912.prol, !llvm.loop !69

.lr.ph912.prol.loopexit:                          ; preds = %.lr.ph912.prol, %.lr.ph912.preheader
  %.0537911.unr = phi i64 [ %.0537911.ph, %.lr.ph912.preheader ], [ %i.sd, %.lr.ph912.prol ]
  %i.se = sub i64 %.0537911.ph, %i.ro
  %i.sf = icmp ugt i64 %i.se, -8
  br i1 %i.sf, label %.thread809, label %.lr.ph912

vec.epilog.vector.body1369:                       ; preds = %vec.epilog.vector.body1369.preheader, %vec.epilog.vector.body1369
  %index1370 = phi i64 [ %index.next1372, %vec.epilog.vector.body1369 ], [ %index1370.ph, %vec.epilog.vector.body1369.preheader ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index1370
  %wide.load1371 = load <4 x float>, ptr %i.sg, align 4, !tbaa !21
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index1370
  store <4 x float> %wide.load1371, ptr %i.sh, align 4, !tbaa !21
  %index.next1372 = add nuw i64 %index1370, 4     ; 2 uses
  %i.si = icmp eq i64 %index.next1372, %i.ro
  br i1 %i.si, label %.thread809, label %vec.epilog.vector.body1369, !llvm.loop !70

.lr.ph912:                                        ; preds = %.lr.ph912.prol.loopexit, %.lr.ph912
  %.0537911 = phi i64 [ %i.to, %.lr.ph912 ], [ %.0537911.unr, %.lr.ph912.prol.loopexit ] ; 10 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0537911
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !21
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0537911
  store float %i.sk, ptr %i.sl, align 4, !tbaa !21
  %i.sm = add nuw i64 %.0537911, 1                ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.sm
end_hunk_2
begin_hunk_3_@local_laplacian_internal:bb.a
  %unroll_iter1610 = and i64 %indvars.iv958.4, 9223372036854775800
  br label %.lr.ph.i697.4

.lr.ph.i697.4:                                    ; preds = %.lr.ph.i697.4, %.lr.ph.i697.4.preheader.new
  %.056.i699.4 = phi i32 [ %.pre1079, %.lr.ph.i697.4.preheader.new ], [ %i.vk, %.lr.ph.i697.4 ]
  %niter1611 = phi i64 [ 0, %.lr.ph.i697.4.preheader.new ], [ %niter1611.next.7, %.lr.ph.i697.4 ]
  %i.vk = sdiv i32 %.056.i699.4, 256              ; 3 uses
  %niter1611.next.7 = add i64 %niter1611, 8       ; 2 uses
  %niter1611.ncmp.7 = icmp eq i64 %niter1611.next.7, %unroll_iter1610
  br i1 %niter1611.ncmp.7, label %.lr.ph.i705.4.preheader.unr-lcssa, label %.lr.ph.i697.4

.lr.ph.i705.4.preheader.unr-lcssa:                ; preds = %.lr.ph.i697.4
  %lcmp.mod1607.not = icmp eq i64 %xtraiter1605, 0
  br i1 %lcmp.mod1607.not, label %.lr.ph.i705.4.preheader, label %.lr.ph.i697.4.epil.preheader

.lr.ph.i697.4.epil.preheader:                     ; preds = %.lr.ph.i705.4.preheader.unr-lcssa, %.lr.ph.i697.4.preheader
  %.056.i699.4.epil.init = phi i32 [ %.pre1079, %.lr.ph.i697.4.preheader ], [ %i.vk, %.lr.ph.i705.4.preheader.unr-lcssa ]
  %lcmp.mod1609 = icmp ne i64 %xtraiter1605, 0
  tail call void @llvm.assume(i1 %lcmp.mod1609)
  br label %.lr.ph.i697.4.epil

.lr.ph.i697.4.epil:                               ; preds = %.lr.ph.i697.4.epil, %.lr.ph.i697.4.epil.preheader
  %.056.i699.4.epil = phi i32 [ %i.vl, %.lr.ph.i697.4.epil ], [ %.056.i699.4.epil.init, %.lr.ph.i697.4.epil.preheader ]
  %epil.iter1606 = phi i64 [ %epil.iter1606.next, %.lr.ph.i697.4.epil ], [ 0, %.lr.ph.i697.4.epil.preheader ]
  %i.vl = sdiv i32 %.056.i699.4.epil, 2           ; 2 uses
  %epil.iter1606.next = add i64 %epil.iter1606, 1 ; 2 uses
  %epil.iter1606.cmp.not = icmp eq i64 %epil.iter1606.next, %xtraiter1605
  br i1 %epil.iter1606.cmp.not, label %.lr.ph.i705.4.preheader, label %.lr.ph.i697.4.epil, !llvm.loop !78

.lr.ph.i705.4.preheader:                          ; preds = %.lr.ph.i697.4.epil, %.lr.ph.i705.4.preheader.unr-lcssa
  %.lcssa1424 = phi i32 [ %i.vk, %.lr.ph.i705.4.preheader.unr-lcssa ], [ %i.vl, %.lr.ph.i697.4.epil ]
  %xtraiter1612 = and i64 %indvars.iv958.4, 7     ; 3 uses
  %i.vm = icmp samesign ult i64 %indvars.iv958.4, 8
  br i1 %i.vm, label %.lr.ph.i705.4.epil.preheader, label %.lr.ph.i705.4.preheader.new

.lr.ph.i705.4.preheader.new:                      ; preds = %.lr.ph.i705.4.preheader
  %unroll_iter1617 = and i64 %indvars.iv958.4, 9223372036854775800
  br label %.lr.ph.i705.4

.lr.ph.i705.4:                                    ; preds = %.lr.ph.i705.4, %.lr.ph.i705.4.preheader.new
  %.056.i707.4 = phi i32 [ %.pre1081, %.lr.ph.i705.4.preheader.new ], [ %i.vn, %.lr.ph.i705.4 ]
  %niter1618 = phi i64 [ 0, %.lr.ph.i705.4.preheader.new ], [ %niter1618.next.7, %.lr.ph.i705.4 ]
  %i.vn = sdiv i32 %.056.i707.4, 256              ; 3 uses
  %niter1618.next.7 = add i64 %niter1618, 8       ; 2 uses
  %niter1618.ncmp.7 = icmp eq i64 %niter1618.next.7, %unroll_iter1617
  br i1 %niter1618.ncmp.7, label %._crit_edge.loopexit.i709.4.unr-lcssa, label %.lr.ph.i705.4

._crit_edge.loopexit.i709.4.unr-lcssa:            ; preds = %.lr.ph.i705.4
  %lcmp.mod1614.not = icmp eq i64 %xtraiter1612, 0
  br i1 %lcmp.mod1614.not, label %._crit_edge.loopexit.i709.4, label %.lr.ph.i705.4.epil.preheader

.lr.ph.i705.4.epil.preheader:                     ; preds = %._crit_edge.loopexit.i709.4.unr-lcssa, %.lr.ph.i705.4.preheader
  %.056.i707.4.epil.init = phi i32 [ %.pre1081, %.lr.ph.i705.4.preheader ], [ %i.vn, %._crit_edge.loopexit.i709.4.unr-lcssa ]
  %lcmp.mod1616 = icmp ne i64 %xtraiter1612, 0
  tail call void @llvm.assume(i1 %lcmp.mod1616)
  br label %.lr.ph.i705.4.epil

.lr.ph.i705.4.epil:                               ; preds = %.lr.ph.i705.4.epil, %.lr.ph.i705.4.epil.preheader
  %.056.i707.4.epil = phi i32 [ %i.vo, %.lr.ph.i705.4.epil ], [ %.056.i707.4.epil.init, %.lr.ph.i705.4.epil.preheader ]
  %epil.iter1613 = phi i64 [ %epil.iter1613.next, %.lr.ph.i705.4.epil ], [ 0, %.lr.ph.i705.4.epil.preheader ]
  %i.vo = sdiv i32 %.056.i707.4.epil, 2           ; 2 uses
  %epil.iter1613.next = add i64 %epil.iter1613, 1 ; 2 uses
  %epil.iter1613.cmp.not = icmp eq i64 %epil.iter1613.next, %xtraiter1612
  br i1 %epil.iter1613.cmp.not, label %._crit_edge.loopexit.i709.4, label %.lr.ph.i705.4.epil, !llvm.loop !79

._crit_edge.loopexit.i709.4:                      ; preds = %.lr.ph.i705.4.epil, %._crit_edge.loopexit.i709.4.unr-lcssa
  %.lcssa1425 = phi i32 [ %i.vn, %._crit_edge.loopexit.i709.4.unr-lcssa ], [ %i.vo, %.lr.ph.i705.4.epil ]
  %i.vp = add nsw i32 %.lcssa1424, 1
  %i.vq = add nsw i32 %.lcssa1425, 1
  br label %dl.exit710.4

dl.exit710.4:                                     ; preds = %._crit_edge.loopexit.i709.4, %bb.v
  %.in833.4 = phi i32 [ %i.vp, %._crit_edge.loopexit.i709.4 ], [ %.pre, %bb.v ]
  %.05.lcssa.i703.4 = phi i32 [ %i.vq, %._crit_edge.loopexit.i709.4 ], [ %.pre1074, %bb.v ]
  %i.vr = sext i32 %.in833.4 to i64
  %i.vs = sext i32 %.05.lcssa.i703.4 to i64
  %i.vt = shl nsw i64 %i.vr, 2
  %i.vu = mul i64 %i.vt, %i.vs
  %i.vv = tail call ptr @dt_alloc_aligned(i64 noundef %i.vu) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vv, i64 64) ]
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vi, i64 %indvars.iv958.4
  store ptr %i.vv, ptr %i.vw, align 8, !tbaa !17
  %.not620.4 = icmp eq ptr %i.vv, null
  br i1 %.not620.4, label %iter.check1362, label %bb.w

bb.w:                                             ; preds = %dl.exit710.4
  %indvars.iv.next959.4 = add nuw nsw i64 %indvars.iv958.4, 1 ; 2 uses
  %exitcond962.4.not = icmp eq i64 %indvars.iv.next959.4, %wide.trip.count947.pre-phi
  br i1 %exitcond962.4.not, label %.thread807.4, label %bb.v

.thread807.4:                                     ; preds = %bb.w
  %i.vx = getelementptr inbounds nuw i8, ptr %i.h, i64 1200
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.thread807.4
  %indvars.iv958.5 = phi i64 [ 0, %.thread807.4 ], [ %indvars.iv.next959.5, %bb.y ] ; 9 uses
  %.not832.5 = icmp eq i64 %indvars.iv958.5, 0
  br i1 %.not832.5, label %dl.exit710.5, label %.lr.ph.i697.5.preheader

.lr.ph.i697.5.preheader:                          ; preds = %bb.x
  %xtraiter1619 = and i64 %indvars.iv958.5, 7     ; 3 uses
  %i.vy = icmp samesign ult i64 %indvars.iv958.5, 8
  br i1 %i.vy, label %.lr.ph.i697.5.epil.preheader, label %.lr.ph.i697.5.preheader.new

.lr.ph.i697.5.preheader.new:                      ; preds = %.lr.ph.i697.5.preheader
  %unroll_iter1624 = and i64 %indvars.iv958.5, 9223372036854775800
  br label %.lr.ph.i697.5

.lr.ph.i697.5:                                    ; preds = %.lr.ph.i697.5, %.lr.ph.i697.5.preheader.new
  %.056.i699.5 = phi i32 [ %.pre1079, %.lr.ph.i697.5.preheader.new ], [ %i.vz, %.lr.ph.i697.5 ]
  %niter1625 = phi i64 [ 0, %.lr.ph.i697.5.preheader.new ], [ %niter1625.next.7, %.lr.ph.i697.5 ]
  %i.vz = sdiv i32 %.056.i699.5, 256              ; 3 uses
  %niter1625.next.7 = add i64 %niter1625, 8       ; 2 uses
  %niter1625.ncmp.7 = icmp eq i64 %niter1625.next.7, %unroll_iter1624
  br i1 %niter1625.ncmp.7, label %.lr.ph.i705.5.preheader.unr-lcssa, label %.lr.ph.i697.5

.lr.ph.i705.5.preheader.unr-lcssa:                ; preds = %.lr.ph.i697.5
  %lcmp.mod1621.not = icmp eq i64 %xtraiter1619, 0
  br i1 %lcmp.mod1621.not, label %.lr.ph.i705.5.preheader, label %.lr.ph.i697.5.epil.preheader

.lr.ph.i697.5.epil.preheader:                     ; preds = %.lr.ph.i705.5.preheader.unr-lcssa, %.lr.ph.i697.5.preheader
  %.056.i699.5.epil.init = phi i32 [ %.pre1079, %.lr.ph.i697.5.preheader ], [ %i.vz, %.lr.ph.i705.5.preheader.unr-lcssa ]
  %lcmp.mod1623 = icmp ne i64 %xtraiter1619, 0
  tail call void @llvm.assume(i1 %lcmp.mod1623)
  br label %.lr.ph.i697.5.epil

.lr.ph.i697.5.epil:                               ; preds = %.lr.ph.i697.5.epil, %.lr.ph.i697.5.epil.preheader
  %.056.i699.5.epil = phi i32 [ %i.wa, %.lr.ph.i697.5.epil ], [ %.056.i699.5.epil.init, %.lr.ph.i697.5.epil.preheader ]
  %epil.iter1620 = phi i64 [ %epil.iter1620.next, %.lr.ph.i697.5.epil ], [ 0, %.lr.ph.i697.5.epil.preheader ]
  %i.wa = sdiv i32 %.056.i699.5.epil, 2           ; 2 uses
  %epil.iter1620.next = add i64 %epil.iter1620, 1 ; 2 uses
  %epil.iter1620.cmp.not = icmp eq i64 %epil.iter1620.next, %xtraiter1619
  br i1 %epil.iter1620.cmp.not, label %.lr.ph.i705.5.preheader, label %.lr.ph.i697.5.epil, !llvm.loop !80

.lr.ph.i705.5.preheader:                          ; preds = %.lr.ph.i697.5.epil, %.lr.ph.i705.5.preheader.unr-lcssa
  %.lcssa1421 = phi i32 [ %i.vz, %.lr.ph.i705.5.preheader.unr-lcssa ], [ %i.wa, %.lr.ph.i697.5.epil ]
  %xtraiter1626 = and i64 %indvars.iv958.5, 7     ; 3 uses
  %i.wb = icmp samesign ult i64 %indvars.iv958.5, 8
  br i1 %i.wb, label %.lr.ph.i705.5.epil.preheader, label %.lr.ph.i705.5.preheader.new

.lr.ph.i705.5.preheader.new:                      ; preds = %.lr.ph.i705.5.preheader
  %unroll_iter1631 = and i64 %indvars.iv958.5, 9223372036854775800
  br label %.lr.ph.i705.5

.lr.ph.i705.5:                                    ; preds = %.lr.ph.i705.5, %.lr.ph.i705.5.preheader.new
  %.056.i707.5 = phi i32 [ %.pre1081, %.lr.ph.i705.5.preheader.new ], [ %i.wc, %.lr.ph.i705.5 ]
  %niter1632 = phi i64 [ 0, %.lr.ph.i705.5.preheader.new ], [ %niter1632.next.7, %.lr.ph.i705.5 ]
  %i.wc = sdiv i32 %.056.i707.5, 256              ; 3 uses
  %niter1632.next.7 = add i64 %niter1632, 8       ; 2 uses
  %niter1632.ncmp.7 = icmp eq i64 %niter1632.next.7, %unroll_iter1631
  br i1 %niter1632.ncmp.7, label %._crit_edge.loopexit.i709.5.unr-lcssa, label %.lr.ph.i705.5

._crit_edge.loopexit.i709.5.unr-lcssa:            ; preds = %.lr.ph.i705.5
  %lcmp.mod1628.not = icmp eq i64 %xtraiter1626, 0
  br i1 %lcmp.mod1628.not, label %._crit_edge.loopexit.i709.5, label %.lr.ph.i705.5.epil.preheader

.lr.ph.i705.5.epil.preheader:                     ; preds = %._crit_edge.loopexit.i709.5.unr-lcssa, %.lr.ph.i705.5.preheader
  %.056.i707.5.epil.init = phi i32 [ %.pre1081, %.lr.ph.i705.5.preheader ], [ %i.wc, %._crit_edge.loopexit.i709.5.unr-lcssa ]
  %lcmp.mod1630 = icmp ne i64 %xtraiter1626, 0
  tail call void @llvm.assume(i1 %lcmp.mod1630)
  br label %.lr.ph.i705.5.epil

.lr.ph.i705.5.epil:                               ; preds = %.lr.ph.i705.5.epil, %.lr.ph.i705.5.epil.preheader
  %.056.i707.5.epil = phi i32 [ %i.wd, %.lr.ph.i705.5.epil ], [ %.056.i707.5.epil.init, %.lr.ph.i705.5.epil.preheader ]
  %epil.iter1627 = phi i64 [ %epil.iter1627.next, %.lr.ph.i705.5.epil ], [ 0, %.lr.ph.i705.5.epil.preheader ]
  %i.wd = sdiv i32 %.056.i707.5.epil, 2           ; 2 uses
  %epil.iter1627.next = add i64 %epil.iter1627, 1 ; 2 uses
  %epil.iter1627.cmp.not = icmp eq i64 %epil.iter1627.next, %xtraiter1626
  br i1 %epil.iter1627.cmp.not, label %._crit_edge.loopexit.i709.5, label %.lr.ph.i705.5.epil, !llvm.loop !81

._crit_edge.loopexit.i709.5:                      ; preds = %.lr.ph.i705.5.epil, %._crit_edge.loopexit.i709.5.unr-lcssa
  %.lcssa1422 = phi i32 [ %i.wc, %._crit_edge.loopexit.i709.5.unr-lcssa ], [ %i.wd, %.lr.ph.i705.5.epil ]
  %i.we = add nsw i32 %.lcssa1421, 1
  %i.wf = add nsw i32 %.lcssa1422, 1
  br label %dl.exit710.5

dl.exit710.5:                                     ; preds = %._crit_edge.loopexit.i709.5, %bb.x
  %.in833.5 = phi i32 [ %i.we, %._crit_edge.loopexit.i709.5 ], [ %.pre, %bb.x ]
  %.05.lcssa.i703.5 = phi i32 [ %i.wf, %._crit_edge.loopexit.i709.5 ], [ %.pre1074, %bb.x ]
  %i.wg = sext i32 %.in833.5 to i64
  %i.wh = sext i32 %.05.lcssa.i703.5 to i64
  %i.wi = shl nsw i64 %i.wg, 2
  %i.wj = mul i64 %i.wi, %i.wh
  %i.wk = tail call ptr @dt_alloc_aligned(i64 noundef %i.wj) #14 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.wk, i64 64) ]
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.vx, i64 %indvars.iv958.5
  store ptr %i.wk, ptr %i.wl, align 8, !tbaa !17
  %.not620.5 = icmp eq ptr %i.wk, null
  br i1 %.not620.5, label %iter.check1362, label %bb.y

bb.y:                                             ; preds = %dl.exit710.5
  %indvars.iv.next959.5 = add nuw nsw i64 %indvars.iv958.5, 1 ; 2 uses
  %exitcond962.5.not = icmp eq i64 %indvars.iv.next959.5, %wide.trip.count947.pre-phi
  br i1 %exitcond962.5.not, label %.thread807.5, label %bb.x

bb.z:                                             ; preds = %._crit_edge885
  br i1 %.not, label %bb.ag, label %bb.aa

.thread807.5:                                     ; preds = %bb.y, %._crit_edge885
  %indvars.iv1013 = phi i64 [ %indvars.iv.next1014, %._crit_edge885 ], [ 0, %bb.y ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [240 x i8], ptr %i.h, i64 %indvars.iv1013 ; 2 uses
  %i.wn = load ptr, ptr %i.wm, align 16, !tbaa !17 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv1013
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !21
  tail call void @apply_curve(ptr noundef %i.wn, ptr noundef %storemerge, i32 noundef %.pre, i32 noundef %.pre1074, i32 noundef %i.ls, float noundef %i.wp, float noundef %4, float noundef %5, float noundef %6, float noundef %7)
  br i1 %.not612871, label %._crit_edge885, label %.lr.ph884

._crit_edge885:                                   ; preds = %dl.exit726, %.thread807.5
  %indvars.iv.next1014 = add nuw nsw i64 %indvars.iv1013, 1 ; 2 uses
  %exitcond1016.not = icmp eq i64 %indvars.iv.next1014, 6
  br i1 %exitcond1016.not, label %bb.z, label %.thread807.5

.lr.ph884:                                        ; preds = %.thread807.5, %dl.exit726
  %indvar1633 = phi i64 [ %indvar.next1634, %dl.exit726 ], [ 0, %.thread807.5 ] ; 4 uses
  %11 = phi ptr [ %i.ws, %dl.exit726 ], [ %i.wn, %.thread807.5 ]
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %dl.exit726 ], [ 1, %.thread807.5 ] ; 4 uses
  %i.wq = add i64 %indvar1633, -1                 ; 2 uses
  %12 = add nsw i64 %indvars.iv1008, -1           ; 2 uses
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv1008
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !17 ; 2 uses
  %i.wt = icmp samesign ugt i64 %indvars.iv1008, 1
  br i1 %i.wt, label %.lr.ph.i713.preheader, label %dl.exit726

.lr.ph.i713.preheader:                            ; preds = %.lr.ph884
  %xtraiter1635 = and i64 %12, 7                  ; 3 uses
  %i.wu = icmp ult i64 %i.wq, 7
  br i1 %i.wu, label %.lr.ph.i713.epil.preheader, label %.lr.ph.i713.preheader.new

.lr.ph.i713.preheader.new:                        ; preds = %.lr.ph.i713.preheader
  %unroll_iter1640 = and i64 %12, -8
  br label %.lr.ph.i713

.lr.ph.i713:                                      ; preds = %.lr.ph.i713, %.lr.ph.i713.preheader.new
  %.056.i715 = phi i32 [ %.pre1079, %.lr.ph.i713.preheader.new ], [ %i.wv, %.lr.ph.i713 ]
  %niter1641 = phi i64 [ 0, %.lr.ph.i713.preheader.new ], [ %niter1641.next.7, %.lr.ph.i713 ]
  %i.wv = sdiv i32 %.056.i715, 256                ; 3 uses
  %niter1641.next.7 = add i64 %niter1641, 8       ; 2 uses
  %niter1641.ncmp.7 = icmp eq i64 %niter1641.next.7, %unroll_iter1640
  br i1 %niter1641.ncmp.7, label %.lr.ph.i721.preheader.unr-lcssa, label %.lr.ph.i713

.lr.ph.i721.preheader.unr-lcssa:                  ; preds = %.lr.ph.i713
  %lcmp.mod1637.not = icmp eq i64 %xtraiter1635, 0
  br i1 %lcmp.mod1637.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil.preheader

.lr.ph.i713.epil.preheader:                       ; preds = %.lr.ph.i721.preheader.unr-lcssa, %.lr.ph.i713.preheader
  %.056.i715.epil.init = phi i32 [ %.pre1079, %.lr.ph.i713.preheader ], [ %i.wv, %.lr.ph.i721.preheader.unr-lcssa ]
  %lcmp.mod1639 = icmp ne i64 %xtraiter1635, 0
  tail call void @llvm.assume(i1 %lcmp.mod1639)
  br label %.lr.ph.i713.epil

.lr.ph.i713.epil:                                 ; preds = %.lr.ph.i713.epil, %.lr.ph.i713.epil.preheader
  %.056.i715.epil = phi i32 [ %i.ww, %.lr.ph.i713.epil ], [ %.056.i715.epil.init, %.lr.ph.i713.epil.preheader ]
  %epil.iter1636 = phi i64 [ %epil.iter1636.next, %.lr.ph.i713.epil ], [ 0, %.lr.ph.i713.epil.preheader ]
  %i.ww = sdiv i32 %.056.i715.epil, 2             ; 2 uses
  %epil.iter1636.next = add i64 %epil.iter1636, 1 ; 2 uses
  %epil.iter1636.cmp.not = icmp eq i64 %epil.iter1636.next, %xtraiter1635
  br i1 %epil.iter1636.cmp.not, label %.lr.ph.i721.preheader, label %.lr.ph.i713.epil, !llvm.loop !82

.lr.ph.i721.preheader:                            ; preds = %.lr.ph.i713.epil, %.lr.ph.i721.preheader.unr-lcssa
  %.lcssa1419 = phi i32 [ %i.wv, %.lr.ph.i721.preheader.unr-lcssa ], [ %i.ww, %.lr.ph.i713.epil ]
  %xtraiter1642 = and i64 %indvar1633, 7          ; 3 uses
  %i.wx = icmp ult i64 %i.wq, 7
  br i1 %i.wx, label %.lr.ph.i721.epil.preheader, label %.lr.ph.i721.preheader.new

.lr.ph.i721.preheader.new:                        ; preds = %.lr.ph.i721.preheader
  %unroll_iter1647 = and i64 %indvar1633, -8
  br label %.lr.ph.i721

._crit_edge.loopexit.i725.unr-lcssa:              ; preds = %.lr.ph.i721
  %lcmp.mod1644.not = icmp eq i64 %xtraiter1642, 0
  br i1 %lcmp.mod1644.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil.preheader

.lr.ph.i721.epil.preheader:                       ; preds = %._crit_edge.loopexit.i725.unr-lcssa, %.lr.ph.i721.preheader
  %.056.i723.epil.init = phi i32 [ %.pre1081, %.lr.ph.i721.preheader ], [ %i.xb, %._crit_edge.loopexit.i725.unr-lcssa ]
  %lcmp.mod1646 = icmp ne i64 %xtraiter1642, 0
  tail call void @llvm.assume(i1 %lcmp.mod1646)
  br label %.lr.ph.i721.epil

.lr.ph.i721.epil:                                 ; preds = %.lr.ph.i721.epil, %.lr.ph.i721.epil.preheader
  %.056.i723.epil = phi i32 [ %i.wy, %.lr.ph.i721.epil ], [ %.056.i723.epil.init, %.lr.ph.i721.epil.preheader ]
  %epil.iter1643 = phi i64 [ %epil.iter1643.next, %.lr.ph.i721.epil ], [ 0, %.lr.ph.i721.epil.preheader ]
  %i.wy = sdiv i32 %.056.i723.epil, 2             ; 2 uses
  %epil.iter1643.next = add i64 %epil.iter1643, 1 ; 2 uses
  %epil.iter1643.cmp.not = icmp eq i64 %epil.iter1643.next, %xtraiter1642
  br i1 %epil.iter1643.cmp.not, label %._crit_edge.loopexit.i725, label %.lr.ph.i721.epil, !llvm.loop !83

._crit_edge.loopexit.i725:                        ; preds = %.lr.ph.i721.epil, %._crit_edge.loopexit.i725.unr-lcssa
  %.lcssa1420 = phi i32 [ %i.xb, %._crit_edge.loopexit.i725.unr-lcssa ], [ %i.wy, %.lr.ph.i721.epil ]
  %i.wz = add nsw i32 %.lcssa1419, 1
  %i.xa = add nsw i32 %.lcssa1420, 1
  br label %dl.exit726

.lr.ph.i721:                                      ; preds = %.lr.ph.i721, %.lr.ph.i721.preheader.new
  %.056.i723 = phi i32 [ %.pre1081, %.lr.ph.i721.preheader.new ], [ %i.xb, %.lr.ph.i721 ]
  %niter1648 = phi i64 [ 0, %.lr.ph.i721.preheader.new ], [ %niter1648.next.7, %.lr.ph.i721 ]
  %i.xb = sdiv i32 %.056.i723, 256                ; 3 uses
  %niter1648.next.7 = add i64 %niter1648, 8       ; 2 uses
  %niter1648.ncmp.7 = icmp eq i64 %niter1648.next.7, %unroll_iter1647
  br i1 %niter1648.ncmp.7, label %._crit_edge.loopexit.i725.unr-lcssa, label %.lr.ph.i721

dl.exit726:                                       ; preds = %.lr.ph884, %._crit_edge.loopexit.i725
  %.in831 = phi i32 [ %i.wz, %._crit_edge.loopexit.i725 ], [ %.pre, %.lr.ph884 ]
  %.05.lcssa.i719 = phi i32 [ %i.xa, %._crit_edge.loopexit.i725 ], [ %.pre1074, %.lr.ph884 ]
  %i.xc = sext i32 %.in831 to i64
  %i.xd = sext i32 %.05.lcssa.i719 to i64
  tail call fastcc void @gauss_reduce(ptr noundef %11, ptr noundef %i.ws, i64 noundef %i.xc, i64 noundef %i.xd)
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %exitcond1012.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count947.pre-phi
  %indvar.next1634 = add i64 %indvar1633, 1
  br i1 %exitcond1012.not, label %._crit_edge885, label %.lr.ph884

bb.aa:                                            ; preds = %bb.z
  %i.xe = load i32, ptr %8, align 8, !tbaa !18
  %i.xf = icmp eq i32 %i.xe, 2
  br i1 %i.xf, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.xg = uitofp nneg i32 %.0528797 to float
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.xg) ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !26
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !28
  %i.xl = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !29
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !30
  %i.xp = sitofp reassoc nsz arcp contract afn i32 %i.xo to float
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xk, %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !111
  %i.xt = sitofp reassoc nsz arcp contract afn i32 %i.xs to float
  %i.xu = fmul reassoc nsz arcp contract afn float %exp2, %i.xt
  %i.xv = fdiv reassoc nsz arcp contract afn float %i.xu, %i.xq
  %i.xw = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !16 ; 2 uses
  %i.xy = add nsw i32 %i.xx, -1
  %i.xz = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.xv) ; 2 uses
  %i.ya = insertelement <2 x float> poison, float %i.xz, i64 0
  %i.yb = shufflevector <2 x float> %i.ya, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yc = fadd reassoc nsz arcp contract afn <2 x float> %i.yb, <float -0.000000e+00, float 1.000000e+00>
  %i.yd = fptosi <2 x float> %i.yc to <2 x i32>   ; 2 uses
  %i.ye = insertelement <2 x i32> poison, i32 %i.xx, i64 0
  %i.yf = shufflevector <2 x i32> %i.ye, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yg = icmp sgt <2 x i32> %i.yf, %i.yd
  %i.yh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yd, <2 x i32> zeroinitializer)
  %i.yi = insertelement <2 x i32> poison, i32 %i.xy, i64 0
  %i.yj = shufflevector <2 x i32> %i.yi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.yk = select <2 x i1> %i.yg, <2 x i32> %i.yh, <2 x i32> %i.yj ; 3 uses
  %i.yl = extractelement <2 x i32> %i.yk, i64 0   ; 10 uses
  %i.ym = sitofp reassoc nsz arcp contract afn i32 %i.yl to float
  %i.yn = fsub reassoc nsz arcp contract afn float %i.xz, %i.ym ; 3 uses
  %i.yo = fcmp reassoc nsz arcp contract afn ogt float %i.yn, 1.000000e+00
  %i.yp = fcmp reassoc nsz arcp contract afn olt float %i.yn, 0.000000e+00
  %i.yq = select reassoc nsz arcp contract afn i1 %i.yp, float 0.000000e+00, float %i.yn
  %i.yr = select reassoc nsz arcp contract afn i1 %i.yo, float 1.000000e+00, float %i.yq
  %i.ys = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.ldexp.v2f32.v2i32(<2 x float> splat (float 1.000000e+00), <2 x i32> %i.yk)
  %i.yt = fdiv reassoc nnan nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ys
  %i.yu = shufflevector <2 x float> %i.yt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.yv = icmp sgt i32 %.0528797, 0
  br i1 %i.yv, label %.lr.ph.i729.preheader, label %dl.exit742

.lr.ph.i729.preheader:                            ; preds = %bb.ab
  %xtraiter1649 = and i32 %.0528797, 7            ; 3 uses
  %i.yw = icmp ult i32 %.0528797, 8
  br i1 %i.yw, label %.lr.ph.i729.epil.preheader, label %.lr.ph.i729.preheader.new

.lr.ph.i729.preheader.new:                        ; preds = %.lr.ph.i729.preheader
  %unroll_iter1654 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i729

.lr.ph.i729:                                      ; preds = %.lr.ph.i729, %.lr.ph.i729.preheader.new
  %.056.i731 = phi i32 [ %.pre1079, %.lr.ph.i729.preheader.new ], [ %i.yx, %.lr.ph.i729 ]
  %niter1655 = phi i32 [ 0, %.lr.ph.i729.preheader.new ], [ %niter1655.next.7, %.lr.ph.i729 ]
  %i.yx = sdiv i32 %.056.i731, 256                ; 3 uses
  %niter1655.next.7 = add nuw nsw i32 %niter1655, 8 ; 2 uses
  %niter1655.ncmp.7 = icmp eq i32 %niter1655.next.7, %unroll_iter1654
  br i1 %niter1655.ncmp.7, label %.lr.ph.i737.preheader.unr-lcssa, label %.lr.ph.i729

.lr.ph.i737.preheader.unr-lcssa:                  ; preds = %.lr.ph.i729
  %lcmp.mod1651.not = icmp eq i32 %xtraiter1649, 0
  br i1 %lcmp.mod1651.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil.preheader

.lr.ph.i729.epil.preheader:                       ; preds = %.lr.ph.i737.preheader.unr-lcssa, %.lr.ph.i729.preheader
  %.056.i731.epil.init = phi i32 [ %.pre1079, %.lr.ph.i729.preheader ], [ %i.yx, %.lr.ph.i737.preheader.unr-lcssa ]
  %lcmp.mod1653 = icmp ne i32 %xtraiter1649, 0
  tail call void @llvm.assume(i1 %lcmp.mod1653)
  br label %.lr.ph.i729.epil

.lr.ph.i729.epil:                                 ; preds = %.lr.ph.i729.epil, %.lr.ph.i729.epil.preheader
  %.056.i731.epil = phi i32 [ %i.yy, %.lr.ph.i729.epil ], [ %.056.i731.epil.init, %.lr.ph.i729.epil.preheader ]
  %epil.iter1650 = phi i32 [ %epil.iter1650.next, %.lr.ph.i729.epil ], [ 0, %.lr.ph.i729.epil.preheader ]
  %i.yy = sdiv i32 %.056.i731.epil, 2             ; 2 uses
  %epil.iter1650.next = add i32 %epil.iter1650, 1 ; 2 uses
  %epil.iter1650.cmp.not = icmp eq i32 %epil.iter1650.next, %xtraiter1649
  br i1 %epil.iter1650.cmp.not, label %.lr.ph.i737.preheader, label %.lr.ph.i729.epil, !llvm.loop !84

.lr.ph.i737.preheader:                            ; preds = %.lr.ph.i729.epil, %.lr.ph.i737.preheader.unr-lcssa
  %.lcssa1418 = phi i32 [ %i.yx, %.lr.ph.i737.preheader.unr-lcssa ], [ %i.yy, %.lr.ph.i729.epil ]
  %xtraiter1656 = and i32 %.0528797, 7            ; 3 uses
  %i.yz = icmp ult i32 %.0528797, 8
  br i1 %i.yz, label %.lr.ph.i737.epil.preheader, label %.lr.ph.i737.preheader.new

.lr.ph.i737.preheader.new:                        ; preds = %.lr.ph.i737.preheader
  %unroll_iter1661 = and i32 %.0528797, 2147483640
  br label %.lr.ph.i737

._crit_edge.loopexit.i741.unr-lcssa:              ; preds = %.lr.ph.i737
  %lcmp.mod1658.not = icmp eq i32 %xtraiter1656, 0
  br i1 %lcmp.mod1658.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil.preheader

.lr.ph.i737.epil.preheader:                       ; preds = %._crit_edge.loopexit.i741.unr-lcssa, %.lr.ph.i737.preheader
  %.056.i739.epil.init = phi i32 [ %.pre1081, %.lr.ph.i737.preheader ], [ %i.zd, %._crit_edge.loopexit.i741.unr-lcssa ]
  %lcmp.mod1660 = icmp ne i32 %xtraiter1656, 0
  tail call void @llvm.assume(i1 %lcmp.mod1660)
  br label %.lr.ph.i737.epil

.lr.ph.i737.epil:                                 ; preds = %.lr.ph.i737.epil, %.lr.ph.i737.epil.preheader
  %.056.i739.epil = phi i32 [ %i.za, %.lr.ph.i737.epil ], [ %.056.i739.epil.init, %.lr.ph.i737.epil.preheader ]
  %epil.iter1657 = phi i32 [ %epil.iter1657.next, %.lr.ph.i737.epil ], [ 0, %.lr.ph.i737.epil.preheader ]
  %i.za = sdiv i32 %.056.i739.epil, 2             ; 2 uses
  %epil.iter1657.next = add i32 %epil.iter1657, 1 ; 2 uses
  %epil.iter1657.cmp.not = icmp eq i32 %epil.iter1657.next, %xtraiter1656
  br i1 %epil.iter1657.cmp.not, label %._crit_edge.loopexit.i741, label %.lr.ph.i737.epil, !llvm.loop !85

._crit_edge.loopexit.i741:                        ; preds = %.lr.ph.i737.epil, %._crit_edge.loopexit.i741.unr-lcssa
  %.lcssa1417 = phi i32 [ %i.zd, %._crit_edge.loopexit.i741.unr-lcssa ], [ %i.za, %.lr.ph.i737.epil ]
  %i.zb = add nsw i32 %.lcssa1418, 1
  %i.zc = add nsw i32 %.lcssa1417, 1
  br label %dl.exit742

.lr.ph.i737:                                      ; preds = %.lr.ph.i737, %.lr.ph.i737.preheader.new
  %.056.i739 = phi i32 [ %.pre1081, %.lr.ph.i737.preheader.new ], [ %i.zd, %.lr.ph.i737 ]
  %niter1662 = phi i32 [ 0, %.lr.ph.i737.preheader.new ], [ %niter1662.next.7, %.lr.ph.i737 ]
  %i.zd = sdiv i32 %.056.i739, 256                ; 3 uses
  %niter1662.next.7 = add nuw nsw i32 %niter1662, 8 ; 2 uses
  %niter1662.ncmp.7 = icmp eq i32 %niter1662.next.7, %unroll_iter1661
  br i1 %niter1662.ncmp.7, label %._crit_edge.loopexit.i741.unr-lcssa, label %.lr.ph.i737

dl.exit742:                                       ; preds = %bb.ab, %._crit_edge.loopexit.i741
  %.05.lcssa.i727813 = phi i32 [ %i.zb, %._crit_edge.loopexit.i741 ], [ %.pre, %bb.ab ] ; 4 uses
  %.05.lcssa.i735 = phi i32 [ %i.zc, %._crit_edge.loopexit.i741 ], [ %.pre1074, %bb.ab ] ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !112 ; 4 uses
  %i.zg = icmp sgt i32 %i.yl, 0
  br i1 %i.zg, label %.lr.ph.preheader.i744, label %dl.exit750

.lr.ph.preheader.i744:                            ; preds = %dl.exit742
  %i.zh = add nsw i32 %i.zf, -1                   ; 2 uses
  %xtraiter1663 = and i32 %i.yl, 7                ; 3 uses
  %i.zi = icmp ult i32 %i.yl, 8
  br i1 %i.zi, label %.lr.ph.i745.epil.preheader, label %.lr.ph.preheader.i744.new

.lr.ph.preheader.i744.new:                        ; preds = %.lr.ph.preheader.i744
  %unroll_iter1668 = and i32 %i.yl, 2147483640
  br label %.lr.ph.i745

.lr.ph.i745:                                      ; preds = %.lr.ph.i745, %.lr.ph.preheader.i744.new
  %.056.i747 = phi i32 [ %i.zh, %.lr.ph.preheader.i744.new ], [ %i.zj, %.lr.ph.i745 ]
  %niter1669 = phi i32 [ 0, %.lr.ph.preheader.i744.new ], [ %niter1669.next.7, %.lr.ph.i745 ]
  %i.zj = sdiv i32 %.056.i747, 256                ; 3 uses
  %niter1669.next.7 = add nuw nsw i32 %niter1669, 8 ; 2 uses
  %niter1669.ncmp.7 = icmp eq i32 %niter1669.next.7, %unroll_iter1668
  br i1 %niter1669.ncmp.7, label %.lr.ph.preheader.i752.unr-lcssa, label %.lr.ph.i745

dl.exit750:                                       ; preds = %dl.exit742
  %i.zk = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !113 ; 2 uses
  br label %dl.exit758

.lr.ph.preheader.i752.unr-lcssa:                  ; preds = %.lr.ph.i745
  %lcmp.mod1665.not = icmp eq i32 %xtraiter1663, 0
  br i1 %lcmp.mod1665.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil.preheader

.lr.ph.i745.epil.preheader:                       ; preds = %.lr.ph.preheader.i752.unr-lcssa, %.lr.ph.preheader.i744
  %.056.i747.epil.init = phi i32 [ %i.zh, %.lr.ph.preheader.i744 ], [ %i.zj, %.lr.ph.preheader.i752.unr-lcssa ]
  %lcmp.mod1667 = icmp ne i32 %xtraiter1663, 0
  tail call void @llvm.assume(i1 %lcmp.mod1667)
  br label %.lr.ph.i745.epil

.lr.ph.i745.epil:                                 ; preds = %.lr.ph.i745.epil, %.lr.ph.i745.epil.preheader
  %.056.i747.epil = phi i32 [ %i.zm, %.lr.ph.i745.epil ], [ %.056.i747.epil.init, %.lr.ph.i745.epil.preheader ]
  %epil.iter1664 = phi i32 [ %epil.iter1664.next, %.lr.ph.i745.epil ], [ 0, %.lr.ph.i745.epil.preheader ]
  %i.zm = sdiv i32 %.056.i747.epil, 2             ; 2 uses
  %epil.iter1664.next = add i32 %epil.iter1664, 1 ; 2 uses
  %epil.iter1664.cmp.not = icmp eq i32 %epil.iter1664.next, %xtraiter1663
  br i1 %epil.iter1664.cmp.not, label %.lr.ph.preheader.i752, label %.lr.ph.i745.epil, !llvm.loop !86

.lr.ph.preheader.i752:                            ; preds = %.lr.ph.i745.epil, %.lr.ph.preheader.i752.unr-lcssa
  %.lcssa1416 = phi i32 [ %i.zj, %.lr.ph.preheader.i752.unr-lcssa ], [ %i.zm, %.lr.ph.i745.epil ]
  %i.zn = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !113 ; 2 uses
  %i.zp = add nsw i32 %i.zo, -1                   ; 2 uses
  %xtraiter1670 = and i32 %i.yl, 7                ; 3 uses
  %i.zq = icmp ult i32 %i.yl, 8
  br i1 %i.zq, label %.lr.ph.i753.epil.preheader, label %.lr.ph.preheader.i752.new

.lr.ph.preheader.i752.new:                        ; preds = %.lr.ph.preheader.i752
  %unroll_iter1675 = and i32 %i.yl, 2147483640
  br label %.lr.ph.i753

._crit_edge.loopexit.i757.unr-lcssa:              ; preds = %.lr.ph.i753
  %lcmp.mod1672.not = icmp eq i32 %xtraiter1670, 0
  br i1 %lcmp.mod1672.not, label %._crit_edge.loopexit.i757, label %.lr.ph.i753.epil.preheader

.lr.ph.i753.epil.preheader:                       ; preds = %._crit_edge.loopexit.i757.unr-lcssa, %.lr.ph.preheader.i752
end_hunk_3
