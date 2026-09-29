Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Lalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@RNApenalty = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"i = %d / %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bug! hairetsu ga kowareta!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"j = %d / %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"hairetsu ga kowareta (end of MSalignmm) !\0A\00", align 1
@penalty = external local_unnamed_addr global i32, align 4
@reccycle = internal unnamed_addr global i32 0, align 4
@n_dis = external local_unnamed_addr global [26 x [26 x i32]], align 16
@RNAthr = external local_unnamed_addr global i32, align 4
@ribosumdis = external local_unnamed_addr global [37 x [37 x i32]], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef float @Lalignmm_hmout(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @RNApenalty, align 4, !tbaa !7
  %i.b = sitofp i32 %i.a to float                 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = tail call i32 @seqlen(ptr noundef %i.c) #12 ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !10
  %i.f = tail call i32 @seqlen(ptr noundef %i.e) #12 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13 ; 6 uses
  %i.i = trunc i64 %i.h to i32                    ; 16 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !10
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 8 uses
  %i.l = trunc i64 %i.k to i32                    ; 23 uses
  %i.m = add i32 %i.i, 200
  %i.n = add i32 %i.m, %i.l                       ; 2 uses
  %i.o = tail call ptr @AllocateCharMtx(i32 noundef %4, i32 noundef %i.n) #12 ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = tail call ptr @AllocateCharMtx(i32 noundef %5, i32 noundef %i.n) #12 ; 18 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = tail call ptr @AllocateFloatMtx(i32 noundef 4, i32 noundef 0) #12 ; 5 uses
  %i.t = add nsw i32 %i.i, 102                    ; 5 uses
  %i.u = tail call ptr @AllocateFloatVec(i32 noundef %i.t) #12 ; 26 uses
  %i.v = add nsw i32 %i.l, 102                    ; 16 uses
  %i.w = tail call ptr @AllocateFloatVec(i32 noundef %i.v) #12 ; 30 uses
  %i.x = tail call ptr @AllocateFloatVec(i32 noundef %i.t) #12 ; 19 uses
  %i.y = tail call ptr @AllocateFloatVec(i32 noundef %i.v) #12 ; 21 uses
  %i.z = tail call ptr @AllocateFloatMtx(i32 noundef %i.t, i32 noundef 27) #12 ; 8 uses
  %i.aa = tail call ptr @AllocateFloatMtx(i32 noundef %i.v, i32 noundef 27) #12 ; 8 uses
  %i.ab = icmp sgt i32 %4, 0                      ; 4 uses
  br i1 %i.ab, label %.lr.ph, label %.preheader188

.lr.ph:                                           ; preds = %bb.a
  %sext181 = shl i64 %i.h, 32
  %i.ac = ashr exact i64 %sext181, 32
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

.preheader188:                                    ; preds = %bb.d, %bb.a
  %i.ad = icmp sgt i32 %5, 0                      ; 4 uses
  br i1 %i.ad, label %.lr.ph195, label %._crit_edge

.lr.ph195:                                        ; preds = %.preheader188
  %sext178 = shl i64 %i.k, 32
  %i.ae = ashr exact i64 %sext178, 32
  %wide.trip.count217 = zext nneg i32 %5 to i64
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #13
  %.not182 = icmp eq i64 %i.ah, %i.ac
  br i1 %.not182, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str, i32 noundef %i.ai, i32 noundef %4) #14 ; 0 uses
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite183 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.al) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader188, label %bb.b, !llvm.loop !24

bb.e:                                             ; preds = %.lr.ph195, %bb.g
  %indvars.iv214 = phi i64 [ 0, %.lr.ph195 ], [ %indvars.iv.next215, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv214
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  %.not179 = icmp eq i64 %i.ao, %i.ae
  br i1 %.not179, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc nuw nsw i64 %indvars.iv214 to i32
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.2, i32 noundef %i.ap, i32 noundef %5) #14 ; 0 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite180 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.as) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge, label %bb.e, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.g, %.preheader188
  tail call void @MScpmx_calc_new(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef %2, i32 noundef %i.i, i32 noundef %4) #12
  tail call void @MScpmx_calc_new(ptr noundef nonnull %1, ptr noundef %i.aa, ptr noundef %3, i32 noundef %i.l, i32 noundef %5) #12
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @new_OpeningGapCount(ptr noundef %i.u, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i, ptr noundef nonnull %7) #12
  tail call void @new_OpeningGapCount(ptr noundef %i.w, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l, ptr noundef %8) #12
  tail call void @new_FinalGapCount(ptr noundef %i.x, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i, ptr noundef %10) #12
  tail call void @new_FinalGapCount(ptr noundef %i.y, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l, ptr noundef %10) #12
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  tail call void @st_OpeningGapCount(ptr noundef %i.u, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i) #12
  tail call void @st_OpeningGapCount(ptr noundef %i.w, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l) #12
  tail call void @st_FinalGapCount(ptr noundef %i.x, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i) #12
  tail call void @st_FinalGapCount(ptr noundef %i.y, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = icmp sgt i32 %i.i, 0
  br i1 %i.at, label %.lr.ph198, label %.preheader187

.lr.ph198:                                        ; preds = %bb.j
  %i.au = fpext float %i.b to double              ; 3 uses
  %wide.trip.count222 = and i64 %i.h, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count222, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198
  %i.av = shl nuw nsw i64 %wide.trip.count222, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.av
  %scevgep270 = getelementptr i8, ptr %i.x, i64 %i.av
  %bound0 = icmp ult ptr %i.u, %scevgep270
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aw, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fsub <4 x double> splat (double 1.000000e+00), %i.ax
  %i.az = fmul <4 x double> %i.ay, splat (double 5.000000e-01)
  %i.ba = fmul <4 x double> %i.az, %broadcast.splat
  %i.bb = fptrunc <4 x double> %i.ba to <4 x float>
  store <4 x float> %i.bb, ptr %i.aw, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load271 = load <4 x float>, ptr %i.bc, align 4, !tbaa !15, !alias.scope !107
  %i.bd = fpext <4 x float> %wide.load271 to <4 x double>
  %i.be = fsub <4 x double> splat (double 1.000000e+00), %i.bd
  %i.bf = fmul <4 x double> %i.be, splat (double 5.000000e-01)
  %i.bg = fmul <4 x double> %i.bf, %broadcast.splat
  %i.bh = fptrunc <4 x double> %i.bg to <4 x float>
  store <4 x float> %i.bh, ptr %i.bc, align 4, !tbaa !15, !alias.scope !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count222, %n.vec
  br i1 %cmp.n, label %.preheader187, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph198, %middle.block
  %indvars.iv219.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph198 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader187:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bj = icmp sgt i32 %i.l, 0
  br i1 %i.bj, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %.preheader187
  %i.bk = fpext float %i.b to double              ; 3 uses
  %wide.trip.count227 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check279 = icmp samesign ult i64 %wide.trip.count227, 4
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph200
  %i.bl = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %scevgep273 = getelementptr i8, ptr %i.w, i64 %i.bl
  %scevgep274 = getelementptr i8, ptr %i.y, i64 %i.bl
  %bound0275 = icmp ult ptr %i.w, %scevgep274
  %bound1276 = icmp ult ptr %i.y, %scevgep273
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck272
  %n.vec281 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert282 = insertelement <4 x double> poison, double %i.bk, i64 0
  %broadcast.splat283 = shufflevector <4 x double> %broadcast.splatinsert282, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body284 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index285 ; 2 uses
  %wide.load286 = load <4 x float>, ptr %i.bm, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bn = fpext <4 x float> %wide.load286 to <4 x double>
  %i.bo = fsub <4 x double> splat (double 1.000000e+00), %i.bn
  %i.bp = fmul <4 x double> %i.bo, splat (double 5.000000e-01)
  %i.bq = fmul <4 x double> %i.bp, %broadcast.splat283
  %i.br = fptrunc <4 x double> %i.bq to <4 x float>
  store <4 x float> %i.br, ptr %i.bm, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index285 ; 2 uses
  %wide.load287 = load <4 x float>, ptr %i.bs, align 4, !tbaa !15, !alias.scope !109
  %i.bt = fpext <4 x float> %wide.load287 to <4 x double>
  %i.bu = fsub <4 x double> splat (double 1.000000e+00), %i.bt
  %i.bv = fmul <4 x double> %i.bu, splat (double 5.000000e-01)
  %i.bw = fmul <4 x double> %i.bv, %broadcast.splat283
  %i.bx = fptrunc <4 x double> %i.bw to <4 x float>
  store <4 x float> %i.bx, ptr %i.bs, align 4, !tbaa !15, !alias.scope !109
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.by, label %middle.block289, label %vector.body284, !llvm.loop !33

middle.block289:                                  ; preds = %vector.body284
  %cmp.n290 = icmp eq i64 %wide.trip.count227, %n.vec281
  br i1 %cmp.n290, label %._crit_edge201, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck272, %.lr.ph200, %middle.block289
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.lr.ph200 ], [ %n.vec281, %middle.block289 ]
  br label %scalar.ph278

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %scalar.ph ], [ %indvars.iv219.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv219 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !15
  %i.cb = fpext float %i.ca to double
  %i.cc = fsub double 1.000000e+00, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fmul double %i.cd, %i.au
  %i.cf = fptrunc double %i.ce to float
  store float %i.cf, ptr %i.bz, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv219 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !15
  %i.ci = fpext float %i.ch to double
  %i.cj = fsub double 1.000000e+00, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fmul double %i.ck, %i.au
  %i.cm = fptrunc double %i.cl to float
  store float %i.cm, ptr %i.cg, align 4, !tbaa !15
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.preheader187, label %scalar.ph, !llvm.loop !34

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %scalar.ph278 ], [ %indvars.iv224.ph, %scalar.ph278.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv224 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15
  %i.cp = fpext float %i.co to double
  %i.cq = fsub double 1.000000e+00, %i.cp
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fmul double %i.cr, %i.bk
  %i.ct = fptrunc double %i.cs to float
  store float %i.ct, ptr %i.cn, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv224 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fpext float %i.cv to double
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = fmul double %i.cx, 5.000000e-01
  %i.cz = fmul double %i.cy, %i.bk
  %i.da = fptrunc double %i.cz to float
  store float %i.da, ptr %i.cu, align 4, !tbaa !15
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge201, label %scalar.ph278, !llvm.loop !35

._crit_edge201:                                   ; preds = %scalar.ph278, %middle.block289, %.preheader187
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.db, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.dc, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.dd, align 8, !tbaa !19
  %i.de = add i32 %i.i, -1                        ; 9 uses
  %i.df = add i32 %i.l, -1                        ; 8 uses
  %i.dg = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr @reccycle, align 4, !tbaa !7
  %i.di = icmp slt i32 %i.l, 1
  br i1 %i.di, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge201
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext184 = shl i64 %i.h, 32
  %i.dj = ashr exact i64 %sext184, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %4 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalignmm_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %5 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter605 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.dk = icmp ult i32 %5, 8
  br i1 %i.dk, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter609 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter610 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter610.next.7, %.lr.ph121.split.us.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10
  store i8 0, ptr %i.dm, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10
  store i8 0, ptr %i.dp, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  store i8 0, ptr %i.ds, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !10
  store i8 0, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !10
  store i8 0, ptr %i.eb, align 1, !tbaa !20
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10
  store i8 0, ptr %i.ee, align 1, !tbaa !20
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !10
  store i8 0, ptr %i.eh, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter610.next.7 = add i64 %niter610, 8         ; 2 uses
  %niter610.ncmp.7 = icmp eq i64 %niter610.next.7, %unroll_iter609
  br i1 %niter610.ncmp.7, label %MSalignmm_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !36

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call ptr @strncpy(ptr noundef %i.ej, ptr noundef %i.el, i64 noundef %i.dj) #12 ; 0 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.dj
  store i8 0, ptr %i.eo, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %.preheader.i, label %bb.k, !llvm.loop !37

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !10
  store i8 0, ptr %i.eq, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.es, %bb.l ] ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.er)
  %endptr.i = getelementptr inbounds i8, ptr %i.er, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.es = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.de
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !38

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalignmm_rec.exit, label %.lr.ph118.i, !llvm.loop !36

bb.m:                                             ; preds = %._crit_edge201
  %i.et = tail call ptr @AllocateCharMtx(i32 noundef %4, i32 noundef 0) #12 ; 8 uses
  %i.eu = tail call ptr @AllocateCharMtx(i32 noundef %5, i32 noundef 0) #12 ; 8 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ew = ptrtoaddr ptr %i.et to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 5 uses
  %min.iters.check294 = icmp ult i32 %4, 8
  %i.ex = sub i64 %i.p, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = select i1 %min.iters.check294, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph.preheader.i
  %n.vec296 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next301, %vector.body297 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index298 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load299 = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !10
  %wide.load300 = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index298 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x ptr> %wide.load299, ptr %i.fa, align 8, !tbaa !10
  store <2 x ptr> %wide.load300, ptr %i.fb, align 8, !tbaa !10
  %index.next301 = add nuw i64 %index298, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.fc, label %middle.block302, label %vector.body297, !llvm.loop !39

middle.block302:                                  ; preds = %vector.body297
  %cmp.n303 = icmp eq i64 %n.vec296, %wide.trip.count.i
  br i1 %cmp.n303, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block302
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec296, %middle.block302 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i.prol
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !40

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block302, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %5 to i64 ; 5 uses
  %min.iters.check308 = icmp ult i32 %5, 8
  %i.fi = sub i64 %i.r, %i.ev
  %diff.check306 = icmp ugt i64 %i.fi, -32
  %or.cond541 = select i1 %min.iters.check308, i1 true, i1 %diff.check306
  br i1 %or.cond541, label %.lr.ph17.i.preheader, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec310 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next315, %vector.body311 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index312 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load313 = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !10
  %wide.load314 = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index312 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %wide.load313, ptr %i.fl, align 8, !tbaa !10
  store <2 x ptr> %wide.load314, ptr %i.fm, align 8, !tbaa !10
  %index.next315 = add nuw i64 %index312, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next315, %n.vec310
  br i1 %i.fn, label %middle.block316, label %vector.body311, !llvm.loop !41

middle.block316:                                  ; preds = %vector.body311
  %cmp.n317 = icmp eq i64 %n.vec310, %wide.trip.count134.i
  br i1 %cmp.n317, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_0
begin_hunk_1_@Lalignmm_hmout:bb.a
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !15
  %i.ub = fadd float %i.ua, %i.ty
  store float %i.ub, ptr %i.tz, align 4, !tbaa !15
  br label %scalar.ph453.prol.loopexit

scalar.ph453.prol.loopexit:                       ; preds = %scalar.ph453.prol, %scalar.ph453.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph453.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph453.prol ]
  %i.uc = add nsw i64 %i.oq, -1
  %i.ud = icmp eq i64 %indvars.iv189.i.ph, %i.uc
  br i1 %i.ud, label %.lr.ph60.i.preheader, label %scalar.ph453

.lr.ph60.i.preheader:                             ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453, %middle.block466
  %xtraiter577 = and i64 %i.sj, 1
  %i.ue = icmp eq i32 %i.de, 1
  br i1 %i.ue, label %.lr.ph60.i.epil.preheader, label %.lr.ph60.i.preheader.new

.lr.ph60.i.preheader.new:                         ; preds = %.lr.ph60.i.preheader
  %unroll_iter581 = and i64 %i.sj, 4294967294
  br label %.lr.ph60.i

scalar.ph425:                                     ; preds = %scalar.ph425.prol.loopexit, %scalar.ph425
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph425 ], [ %indvars.iv184.i.unr, %scalar.ph425.prol.loopexit ] ; 3 uses
  %i.uf = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !15
  %i.ui = fadd float %i.uf, %i.uh
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv184.i ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !15
  %i.ul = fadd float %i.uk, %i.ui
  store float %i.ul, ptr %i.uj, align 4, !tbaa !15
  %i.um = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.uo = load float, ptr %i.un, align 4, !tbaa !15
  %i.up = fadd float %i.um, %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next185.i ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !15
  %i.us = fadd float %i.ur, %i.up
  store float %i.us, ptr %i.uq, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sj
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph425, !llvm.loop !80

scalar.ph453:                                     ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph453 ], [ %indvars.iv189.i.unr, %scalar.ph453.prol.loopexit ] ; 3 uses
  %i.ut = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !15
  %i.uw = fadd float %i.ut, %i.uv
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !15
  %i.uz = fadd float %i.uy, %i.uw
  store float %i.uz, ptr %i.ux, align 4, !tbaa !15
  %i.va = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !15
  %i.vd = fadd float %i.va, %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !15
  %i.vg = fadd float %i.vf, %i.vd
  store float %i.vg, ptr %i.ve, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.oq
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph453, !llvm.loop !81

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod579.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod579.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.preheader
  %indvars.iv195.i.epil.init = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph62.i.unr-lcssa ] ; 2 uses
  %lcmp.mod580 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod580)
  %i.vh = load float, ptr %i.sk, align 4, !tbaa !15
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv195.i.epil.init
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !15
  %i.vl = fadd float %i.vh, %i.vk
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv195.i.epil.init
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !19
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.oq ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !15
  %i.vq = fadd float %i.vl, %i.vp
  store float %i.vq, ptr %i.vo, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.sj
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !19 ; 7 uses
  %min.iters.check482 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check482, label %scalar.ph481.preheader, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.lr.ph62.i
  %i.vt = shl nuw nsw i64 %i.oq, 2                ; 2 uses
  %scevgep470 = getelementptr i8, ptr %i.vs, i64 %i.vt ; 2 uses
  %i.vu = add nuw nsw i64 %i.vt, 4                ; 2 uses
  %scevgep471 = getelementptr i8, ptr %i.y, i64 %i.vu
  %scevgep472 = getelementptr i8, ptr %i.w, i64 4
  %scevgep473 = getelementptr i8, ptr %i.w, i64 %i.vu
  %bound0474 = icmp ult ptr %i.vs, %scevgep471
  %bound1475 = icmp ult ptr %i.th, %scevgep470
  %found.conflict476 = and i1 %bound0474, %bound1475
  %bound0477 = icmp ult ptr %i.vs, %scevgep473
  %bound1478 = icmp ult ptr %scevgep472, %scevgep470
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %found.conflict476, %found.conflict479
  br i1 %conflict.rdx480, label %scalar.ph481.preheader, label %vector.ph483

vector.ph483:                                     ; preds = %vector.memcheck469
  %n.vec484 = and i64 %i.oq, 2147483640           ; 3 uses
  %i.vv = load float, ptr %i.th, align 4, !tbaa !15, !alias.scope !130
  %broadcast.splatinsert489 = insertelement <4 x float> poison, float %i.vv, i64 0
  %broadcast.splat490 = shufflevector <4 x float> %broadcast.splatinsert489, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %vector.ph483
  %index486 = phi i64 [ 0, %vector.ph483 ], [ %index.next493, %vector.body485 ] ; 3 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index486 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 20
  %wide.load487 = load <4 x float>, ptr %i.vx, align 4, !tbaa !15, !alias.scope !131
  %wide.load488 = load <4 x float>, ptr %i.vy, align 4, !tbaa !15, !alias.scope !131
  %i.vz = fadd <4 x float> %broadcast.splat490, %wide.load487
  %i.wa = fadd <4 x float> %broadcast.splat490, %wide.load488
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %index486 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %wide.load491 = load <4 x float>, ptr %i.wb, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %wide.load492 = load <4 x float>, ptr %i.wc, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %i.wd = fadd <4 x float> %i.vz, %wide.load491
  %i.we = fadd <4 x float> %i.wa, %wide.load492
  store <4 x float> %i.wd, ptr %i.wb, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  store <4 x float> %i.we, ptr %i.wc, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %index.next493 = add nuw i64 %index486, 8       ; 2 uses
  %i.wf = icmp eq i64 %index.next493, %n.vec484
  br i1 %i.wf, label %middle.block494, label %vector.body485, !llvm.loop !86

middle.block494:                                  ; preds = %vector.body485
  %cmp.n495 = icmp eq i64 %n.vec484, %i.oq
  br i1 %cmp.n495, label %.lr.ph64.i, label %scalar.ph481.preheader

scalar.ph481.preheader:                           ; preds = %vector.memcheck469, %.lr.ph62.i, %middle.block494
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck469 ], [ 0, %.lr.ph62.i ], [ %n.vec484, %middle.block494 ] ; 4 uses
  %xtraiter583 = and i64 %i.oq, 1
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %scalar.ph481.prol.loopexit, label %scalar.ph481.prol

scalar.ph481.prol:                                ; preds = %scalar.ph481.preheader
  %i.wg = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !15
  %i.wj = fadd float %i.wg, %i.wi
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv200.i.ph ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !15
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.wk, align 4, !tbaa !15
  br label %scalar.ph481.prol.loopexit

scalar.ph481.prol.loopexit:                       ; preds = %scalar.ph481.prol, %scalar.ph481.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph481.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph481.prol ]
  %i.wn = add nsw i64 %i.oq, -1
  %i.wo = icmp eq i64 %indvars.iv200.i.ph, %i.wn
  br i1 %i.wo, label %.lr.ph64.i, label %scalar.ph481

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter582 = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %niter582.next.1, %.lr.ph60.i ]
  %i.wp = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !15
  %i.ws = fadd float %i.wp, %i.wr
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv195.i
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !19
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.oq ; 2 uses
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !15
  %i.wx = fadd float %i.ws, %i.ww
  store float %i.wx, ptr %i.wv, align 4, !tbaa !15
  %i.wy = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 3 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !15
  %i.xb = fadd float %i.wy, %i.xa
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next196.i
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !19
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.oq ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !15
  %i.xg = fadd float %i.xb, %i.xf
  store float %i.xg, ptr %i.xe, align 4, !tbaa !15
  %niter582.next.1 = add nuw i64 %niter582, 2     ; 2 uses
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581
  br i1 %niter582.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !87

.lr.ph64.i:                                       ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481, %middle.block494
  %i.xh = getelementptr i8, ptr %i.th, i64 -4     ; 3 uses
  %i.xi = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %i.xj = xor i32 %i.xi, -1
  %i.xk = add i32 %i.xj, %i.l                     ; 2 uses
  %i.xl = zext i32 %i.xk to i64
  %i.xm = add nuw nsw i64 %i.xl, 1                ; 2 uses
  %min.iters.check510 = icmp ult i32 %i.xk, 19
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.memcheck497

vector.memcheck497:                               ; preds = %.lr.ph64.i
  %i.xn = shl nuw nsw i64 %i.oq, 2                ; 4 uses
  %12 = add nsw i64 %i.xn, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %13 = xor i32 %smin, -1
  %14 = add i32 %13, %i.l
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2                    ; 2 uses
  %i.xo = sub nsw i64 %12, %16
  %scevgep498 = getelementptr i8, ptr %i.hj, i64 %i.xo ; 2 uses
  %scevgep499 = getelementptr i8, ptr %i.hj, i64 %i.xn ; 2 uses
  %i.xp = sub nsw i64 %i.xn, %16
  %scevgep500 = getelementptr i8, ptr %.057648.i, i64 %i.xp
  %i.xq = getelementptr i8, ptr %.057648.i, i64 %i.xn
  %scevgep501 = getelementptr i8, ptr %i.xq, i64 4
  %bound0502 = icmp ult ptr %scevgep498, %scevgep501
  %bound1503 = icmp ult ptr %scevgep500, %scevgep499
  %found.conflict504 = and i1 %bound0502, %bound1503
  %bound0505 = icmp ult ptr %scevgep498, %i.th
  %bound1506 = icmp ult ptr %i.xh, %scevgep499
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %found.conflict504, %found.conflict507
  br i1 %conflict.rdx508, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %vector.memcheck497
  %n.vec512 = and i64 %i.xm, 8589934588           ; 3 uses
  %broadcast.splatinsert513 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat514 = shufflevector <4 x i32> %broadcast.splatinsert513, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xr = sub nsw i64 %i.oq, %n.vec512
  %i.xs = load float, ptr %i.xh, align 4, !tbaa !15, !alias.scope !134
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.xs, i64 0
  %i.xt = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph511
  %index516 = phi i64 [ 0, %vector.ph511 ], [ %index.next522, %vector.body515 ] ; 2 uses
  %i.xu = sub i64 %i.oq, %index516                ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.xu
  %i.xw = getelementptr inbounds i8, ptr %i.xv, i64 -12
  %wide.load517 = load <4 x float>, ptr %i.xw, align 4, !tbaa !15, !alias.scope !135
  %i.xx = getelementptr [4 x i8], ptr %i.hj, i64 %i.xu
  %i.xy = getelementptr i8, ptr %i.xx, i64 -16
  %reverse521 = fadd <4 x float> %wide.load517, %i.xt
  store <4 x float> %reverse521, ptr %i.xy, align 4, !tbaa !15, !alias.scope !136, !noalias !137
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.xu
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -12
  store <4 x i32> %broadcast.splat514, ptr %i.ya, align 4, !tbaa !7
  %index.next522 = add nuw i64 %index516, 4       ; 2 uses
  %i.yb = icmp eq i64 %index.next522, %n.vec512
  br i1 %i.yb, label %middle.block523, label %vector.body515, !llvm.loop !92

middle.block523:                                  ; preds = %vector.body515
  %cmp.n524 = icmp eq i64 %i.xm, %n.vec512
  br i1 %cmp.n524, label %.lr.ph104.i, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %vector.memcheck497, %.lr.ph64.i, %middle.block523
  %indvars.iv206.i.ph = phi i64 [ %i.oq, %vector.memcheck497 ], [ %i.oq, %.lr.ph64.i ], [ %i.xr, %middle.block523 ]
  br label %scalar.ph509

scalar.ph481:                                     ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph481 ], [ %indvars.iv200.i.unr, %scalar.ph481.prol.loopexit ] ; 3 uses
  %i.yc = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !15
  %i.yf = fadd float %i.yc, %i.ye
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv200.i ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !15
  %i.yi = fadd float %i.yf, %i.yh
  store float %i.yi, ptr %i.yg, align 4, !tbaa !15
  %i.yj = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !15
  %i.ym = fadd float %i.yj, %i.yl
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv.next201.i ; 2 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !15
  %i.yp = fadd float %i.ym, %i.yo
  store float %i.yp, ptr %i.yn, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.oq
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph481, !llvm.loop !93

.lr.ph104.i:                                      ; preds = %scalar.ph509, %middle.block523
  %i.yq = add i64 %i.k, 4294967294
  %i.yr = and i64 %i.yq, 4294967295               ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.oy
  %i.yu = getelementptr inbounds i8, ptr %i.yt, i64 -8
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.oy
  %i.yw = getelementptr inbounds i8, ptr %i.yv, i64 -8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter586 = and i64 %i.oq, 1
  %i.yy = icmp eq i32 %i.df, 3
  %i.yz = and i64 %i.oq, 2147483646
  %i.za = add nsw i64 %i.yz, -4
  %lcmp.mod588.not = icmp eq i64 %xtraiter586, 0
  %lcmp.mod591 = trunc i32 %i.df to i1
  %xtraiter594 = and i64 %wide.trip.count221.i, 1
  %i.zb = icmp eq i32 %smax220.i, 1
  %unroll_iter600 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod596.not = icmp eq i64 %xtraiter594, 0
  %lcmp.mod599 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %scalar.ph509
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph509 ], [ %indvars.iv206.i.ph, %scalar.ph509.preheader ] ; 5 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !15
  %i.ze = load float, ptr %i.xh, align 4, !tbaa !15
  %i.zf = fadd float %i.zd, %i.ze
  %i.zg = getelementptr [4 x i8], ptr %i.hj, i64 %indvars.iv206.i
  %i.zh = getelementptr i8, ptr %i.zg, i64 -4
  store float %i.zf, ptr %i.zh, align 4, !tbaa !15
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv206.i
  store i32 %i.de, ptr %i.zi, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.zj = trunc nuw i64 %indvars.iv206.i to i32
  %i.zk = icmp sgt i32 %i.zj, 1
  br i1 %i.zk, label %scalar.ph509, label %.lr.ph104.i, !llvm.loop !94

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check529 = icmp samesign ult i64 %i.oy, 4
  %n.vec531 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert532 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat533 = shufflevector <4 x float> %broadcast.splatinsert532, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n539 = icmp eq i64 %i.oy, %n.vec531
  %xtraiter602 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sj, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.de, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.ov, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv223.i
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !15
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oq ; 2 uses
  store float %i.zm, ptr %i.zn, align 4, !tbaa !15
  %i.zo = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_calc(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.zo, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 0)
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224.i
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !15
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oq
  store float %i.zq, ptr %i.zr, align 4, !tbaa !15
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oy
  %.156765.i = getelementptr inbounds i8, ptr %i.zs, i64 -4
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oy
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -8
  %i.zv = load float, ptr %i.zn, align 4, !tbaa !15
  %i.zw = load float, ptr %i.ys, align 4, !tbaa !15
  %i.zx = fadd float %i.zv, %i.zw
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.aaa = zext i32 %.055299.i to i64
  %i.aab = icmp eq i64 %indvars.iv.next224.i, %i.aaa
  %i.aac = zext i32 %.059194.i to i64             ; 2 uses
  %i.aad = icmp eq i64 %indvars.iv223.i, %i.aac   ; 3 uses
  %or.cond640.i = select i1 %i.aab, i1 true, i1 %i.aad
  %i.aae = icmp eq i64 %indvars.iv.next224.i, %i.aac ; 2 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next224.i
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !19
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.next224.i
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !19
  %i.aaj = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.yr, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.zx, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.zu, %.lr.ph74.i ], [ %i.aca, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.yu, %.lr.ph74.i ], [ %i.aby, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.df, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.yw, %.lr.ph74.i ], [ %i.abz, %bb.ad ] ; 3 uses
  %i.aak = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.aal = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aal
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !15
  %i.aao = fadd float %.256271.i, %i.aan          ; 2 uses
  %i.aap = fcmp ogt float %i.aao, %i.aak          ; 2 uses
  %.2582.i = select i1 %i.aap, float %i.aao, float %i.aak ; 2 uses
  %i.aaq = trunc nuw i64 %i.aal to i32            ; 3 uses
  %.0546.i = select i1 %i.aap, i32 %.257268.i, i32 %i.aaq
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !15
  %i.aat = fadd float %i.aak, %i.aas              ; 2 uses
  %i.aau = fcmp ult float %i.aat, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.aau, i32 %.257268.i, i32 %i.aaq
  %.3563.i = select i1 %i.aau, float %.256271.i, float %i.aat ; 2 uses
  %i.aav = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.aaw = load float, ptr %i.zy, align 4, !tbaa !15
  %i.aax = fadd float %i.aav, %i.aaw              ; 2 uses
  %i.aay = fcmp ogt float %i.aax, %.2582.i
  br i1 %i.aay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aaz = load i32, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3583.i = phi float [ %i.aax, %bb.u ], [ %.2582.i, %bb.t ] ; 3 uses
end_hunk_1
begin_hunk_2_@Lalignmm_hmout:bb.a
  store float %i.afg, ptr %i.afh, align 4, !tbaa !15
  %indvars.iv.next227.i.1 = add nuw nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv.next227.i.1
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !15
  %i.afk = fdiv float %i.afj, %.5.i
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next227.i.1
  store float %i.afk, ptr %i.afl, align 4, !tbaa !15
  %indvars.iv.next227.i.2 = add nuw nsw i64 %indvars.iv226.i, 3 ; 2 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %indvars.iv.next227.i.2
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !15
  %i.afo = fdiv float %i.afn, %.5.i
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %indvars.iv.next227.i.2
  store float %i.afo, ptr %i.afp, align 4, !tbaa !15
  %indvars.iv.next227.i.3 = add nuw nsw i64 %indvars.iv226.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next227.i.3, %i.oy
  br i1 %exitcond231.not.i.3, label %._crit_edge109.i, label %scalar.ph528, !llvm.loop !101

._crit_edge109.i:                                 ; preds = %scalar.ph528.prol.loopexit, %scalar.ph528, %middle.block538
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %._crit_edge112.split.i, label %.preheader2.i, !llvm.loop !102

._crit_edge112.split.i:                           ; preds = %._crit_edge109.i
  tail call void @FreeFloatVec(ptr noundef %i.gv) #12
  tail call void @FreeFloatVec(ptr noundef %i.gx) #12
  tail call void @FreeFloatVec(ptr noundef nonnull %i.hh) #12
  tail call void @FreeFloatVec(ptr noundef nonnull %i.hi) #12
  tail call void @FreeFloatVec(ptr noundef %i.gy) #12
  tail call void @FreeFloatVec(ptr noundef %i.ha) #12
  tail call void @FreeFloatVec(ptr noundef %i.gz) #12
  tail call void @FreeIntVec(ptr noundef %i.hb) #12
  tail call void @FreeIntVec(ptr noundef %i.hc) #12
  tail call void @FreeIntVec(ptr noundef %i.hd) #12
  tail call void @FreeIntVec(ptr noundef %i.he) #12
  tail call void @FreeIntVec(ptr noundef %i.hf) #12
  tail call void @FreeIntVec(ptr noundef %i.hg) #12
  tail call void @FreeFloatVec(ptr noundef nonnull %i.hj) #12
  tail call void @FreeIntVec(ptr noundef %i.hk) #12
  tail call void @FreeFloatMtx(ptr noundef %i.ho) #12
  tail call void @FreeIntMtx(ptr noundef %i.hp) #12
  tail call void @FreeFloatMtx(ptr noundef nonnull %i.hq) #12
  tail call void @FreeFloatMtx(ptr noundef %i.hr) #12
  br label %MSalignmm_rec.exit

MSalignmm_rec.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph121.split.us.i
  %lcmp.mod607.not = icmp eq i64 %xtraiter605, 0
  br i1 %lcmp.mod607.not, label %MSalignmm_rec.exit, label %.lr.ph121.split.us.i.epil.preheader

.lr.ph121.split.us.i.epil.preheader:              ; preds = %MSalignmm_rec.exit.loopexit.unr-lcssa, %.lr.ph121.split.us.i.preheader
  %indvars.iv249.i.epil.init = phi i64 [ 0, %.lr.ph121.split.us.i.preheader ], [ %indvars.iv.next250.i.7, %MSalignmm_rec.exit.loopexit.unr-lcssa ]
  %lcmp.mod608 = icmp ne i64 %xtraiter605, 0
  tail call void @llvm.assume(i1 %lcmp.mod608)
  br label %.lr.ph121.split.us.i.epil

.lr.ph121.split.us.i.epil:                        ; preds = %.lr.ph121.split.us.i.epil, %.lr.ph121.split.us.i.epil.preheader
  %indvars.iv249.i.epil = phi i64 [ %indvars.iv.next250.i.epil, %.lr.ph121.split.us.i.epil ], [ %indvars.iv249.i.epil.init, %.lr.ph121.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter606 = phi i64 [ %epil.iter606.next, %.lr.ph121.split.us.i.epil ], [ 0, %.lr.ph121.split.us.i.epil.preheader ]
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i.epil
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !10
  store i8 0, ptr %i.afr, align 1, !tbaa !20
  %indvars.iv.next250.i.epil = add nuw nsw i64 %indvars.iv249.i.epil, 1
  %epil.iter606.next = add i64 %epil.iter606, 1   ; 2 uses
  %epil.iter606.cmp.not = icmp eq i64 %epil.iter606.next, %xtraiter605
  br i1 %epil.iter606.cmp.not, label %MSalignmm_rec.exit, label %.lr.ph121.split.us.i.epil, !llvm.loop !103

MSalignmm_rec.exit:                               ; preds = %._crit_edge119.i, %MSalignmm_rec.exit.loopexit.unr-lcssa, %.lr.ph121.split.us.i.epil, %.preheader.i, %bb.n, %._crit_edge112.split.i
  tail call void @FreeFloatVec(ptr noundef %i.u) #12
  tail call void @FreeFloatVec(ptr noundef %i.w) #12
  tail call void @FreeFloatVec(ptr noundef %i.x) #12
  tail call void @FreeFloatVec(ptr noundef %i.y) #12
  tail call void @FreeFloatMtx(ptr noundef %i.z) #12
  tail call void @FreeFloatMtx(ptr noundef %i.aa) #12
  tail call void @free(ptr noundef %i.s) #12
  tail call void @FreeCharMtx(ptr noundef %i.o) #12
  tail call void @FreeCharMtx(ptr noundef %i.q) #12
  %i.afs = load ptr, ptr %1, align 8, !tbaa !10
  %i.aft = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afs) #13
  br i1 %i.ab, label %.lr.ph203, label %.preheader

.lr.ph203:                                        ; preds = %MSalignmm_rec.exit
  %i.afu = load ptr, ptr %0, align 8, !tbaa !10
  %i.afv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afu) #13
  %sext175 = shl i64 %i.afv, 32
  %i.afw = ashr exact i64 %sext175, 32
  %wide.trip.count233 = zext nneg i32 %4 to i64
  br label %bb.aq

.preheader:                                       ; preds = %bb.as, %MSalignmm_rec.exit
  br i1 %i.ad, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.preheader
  %sext = shl i64 %i.aft, 32
  %i.afx = ashr exact i64 %sext, 32
  %wide.trip.count238 = zext nneg i32 %5 to i64
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph203, %bb.as
  %indvars.iv230 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next231, %bb.as ] ; 3 uses
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv230
  %i.afz = load ptr, ptr %i.afy, align 8, !tbaa !10
  %i.aga = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afz) #13
  %.not176 = icmp eq i64 %i.aga, %i.afw
  br i1 %.not176, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.agb = trunc nuw nsw i64 %indvars.iv230 to i32
  %i.agc = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.agd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agc, ptr noundef nonnull @.str, i32 noundef %i.agb, i32 noundef %4) #14 ; 0 uses
  %i.age = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite177 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr %i.age) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.as:                                            ; preds = %bb.aq
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.preheader, label %bb.aq, !llvm.loop !104

bb.at:                                            ; preds = %.lr.ph205, %bb.av
  %indvars.iv235 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next236, %bb.av ] ; 3 uses
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv235
  %i.agg = load ptr, ptr %i.agf, align 8, !tbaa !10
  %i.agh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agg) #13
  %.not174 = icmp eq i64 %i.agh, %i.afx
  br i1 %.not174, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.agi = trunc nuw nsw i64 %indvars.iv235 to i32
  %i.agj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.agk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agj, ptr noundef nonnull @.str.2, i32 noundef %i.agi, i32 noundef %5) #14 ; 0 uses
  %i.agl = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr %i.agl) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.av:                                            ; preds = %bb.at
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge206, label %bb.at, !llvm.loop !105

._crit_edge206:                                   ; preds = %bb.av, %.preheader
  ret float 0.000000e+00
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @seqlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocateFloatMtx(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare void @MScpmx_calc_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @new_OpeningGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @new_FinalGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @st_OpeningGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @st_FinalGapCount(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @FreeFloatVec(ptr noundef) local_unnamed_addr #2

declare void @FreeFloatMtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef float @Lalign2m2m_hmout(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr nofree noundef readnone captures(none) %13, ptr noundef %14, ptr nofree noundef readonly captures(none) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @penalty, align 4, !tbaa !7
  %i.b = sitofp i32 %i.a to float                 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = tail call i32 @seqlen(ptr noundef %i.c) #12 ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !10
  %i.f = tail call i32 @seqlen(ptr noundef %i.e) #12 ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13 ; 6 uses
  %i.i = trunc i64 %i.h to i32                    ; 16 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !10
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 8 uses
  %i.l = trunc i64 %i.k to i32                    ; 23 uses
  %i.m = add i32 %i.i, 200
  %i.n = add i32 %i.m, %i.l                       ; 2 uses
  %i.o = tail call ptr @AllocateCharMtx(i32 noundef %8, i32 noundef %i.n) #12 ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = tail call ptr @AllocateCharMtx(i32 noundef %9, i32 noundef %i.n) #12 ; 18 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = tail call ptr @AllocateFloatMtx(i32 noundef 4, i32 noundef 0) #12 ; 5 uses
  %i.t = add nsw i32 %i.i, 102                    ; 5 uses
  %i.u = tail call ptr @AllocateFloatVec(i32 noundef %i.t) #12 ; 26 uses
  %i.v = add nsw i32 %i.l, 102                    ; 16 uses
  %i.w = tail call ptr @AllocateFloatVec(i32 noundef %i.v) #12 ; 30 uses
  %i.x = tail call ptr @AllocateFloatVec(i32 noundef %i.t) #12 ; 19 uses
  %i.y = tail call ptr @AllocateFloatVec(i32 noundef %i.v) #12 ; 21 uses
  %i.z = tail call ptr @AllocateFloatMtx(i32 noundef %i.t, i32 noundef 39) #12 ; 8 uses
  %i.aa = tail call ptr @AllocateFloatMtx(i32 noundef %i.v, i32 noundef 39) #12 ; 8 uses
  %i.ab = icmp sgt i32 %8, 0                      ; 4 uses
  br i1 %i.ab, label %.lr.ph, label %.preheader192

.lr.ph:                                           ; preds = %bb.a
  %sext185 = shl i64 %i.h, 32
  %i.ac = ashr exact i64 %sext185, 32
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %bb.b

.preheader192:                                    ; preds = %bb.d, %bb.a
  %i.ad = icmp sgt i32 %9, 0                      ; 4 uses
  br i1 %i.ad, label %.lr.ph199, label %._crit_edge

.lr.ph199:                                        ; preds = %.preheader192
  %sext182 = shl i64 %i.k, 32
  %i.ae = ashr exact i64 %sext182, 32
  %wide.trip.count221 = zext nneg i32 %9 to i64
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #13
  %.not186 = icmp eq i64 %i.ah, %i.ac
  br i1 %.not186, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str, i32 noundef %i.ai, i32 noundef %8) #14 ; 0 uses
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite187 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.al) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader192, label %bb.b, !llvm.loop !138

bb.e:                                             ; preds = %.lr.ph199, %bb.g
  %indvars.iv218 = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next219, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv218
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  %.not183 = icmp eq i64 %i.ao, %i.ae
  br i1 %.not183, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc nuw nsw i64 %indvars.iv218 to i32
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.2, i32 noundef %i.ap, i32 noundef %9) #14 ; 0 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite184 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.as) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge, label %bb.e, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.g, %.preheader192
  tail call void @cpmx_ribosum(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %4, ptr noundef %i.z, ptr noundef %6, i32 noundef %i.i, i32 noundef %8) #12
  tail call void @cpmx_ribosum(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %5, ptr noundef %i.aa, ptr noundef %7, i32 noundef %i.l, i32 noundef %9) #12
  %.not = icmp eq ptr %11, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @new_OpeningGapCount(ptr noundef %i.u, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i, ptr noundef nonnull %11) #12
  tail call void @new_OpeningGapCount(ptr noundef %i.w, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l, ptr noundef %12) #12
  tail call void @new_FinalGapCount(ptr noundef %i.x, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i, ptr noundef %14) #12
  tail call void @new_FinalGapCount(ptr noundef %i.y, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l, ptr noundef %14) #12
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  tail call void @st_OpeningGapCount(ptr noundef %i.u, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i) #12
  tail call void @st_OpeningGapCount(ptr noundef %i.w, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l) #12
  tail call void @st_FinalGapCount(ptr noundef %i.x, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i) #12
  tail call void @st_FinalGapCount(ptr noundef %i.y, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = icmp sgt i32 %i.i, 0
  br i1 %i.at, label %.lr.ph202, label %.preheader191

.lr.ph202:                                        ; preds = %bb.j
  %i.au = fpext float %i.b to double              ; 3 uses
  %wide.trip.count226 = and i64 %i.h, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count226, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph202
  %i.av = shl nuw nsw i64 %wide.trip.count226, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.av
  %scevgep274 = getelementptr i8, ptr %i.x, i64 %i.av
  %bound0 = icmp ult ptr %i.u, %scevgep274
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aw, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fsub <4 x double> splat (double 1.000000e+00), %i.ax
  %i.az = fmul <4 x double> %i.ay, splat (double 5.000000e-01)
  %i.ba = fmul <4 x double> %i.az, %broadcast.splat
  %i.bb = fptrunc <4 x double> %i.ba to <4 x float>
  store <4 x float> %i.bb, ptr %i.aw, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load275 = load <4 x float>, ptr %i.bc, align 4, !tbaa !15, !alias.scope !221
  %i.bd = fpext <4 x float> %wide.load275 to <4 x double>
  %i.be = fsub <4 x double> splat (double 1.000000e+00), %i.bd
  %i.bf = fmul <4 x double> %i.be, splat (double 5.000000e-01)
  %i.bg = fmul <4 x double> %i.bf, %broadcast.splat
  %i.bh = fptrunc <4 x double> %i.bg to <4 x float>
  store <4 x float> %i.bh, ptr %i.bc, align 4, !tbaa !15, !alias.scope !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count226, %n.vec
  br i1 %cmp.n, label %.preheader191, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph202, %middle.block
  %indvars.iv223.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph202 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader191:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bj = icmp sgt i32 %i.l, 0
  br i1 %i.bj, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %.preheader191
  %i.bk = fpext float %i.b to double              ; 3 uses
  %wide.trip.count231 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check283 = icmp samesign ult i64 %wide.trip.count231, 4
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph204
  %i.bl = shl nuw nsw i64 %wide.trip.count231, 2  ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.w, i64 %i.bl
  %scevgep278 = getelementptr i8, ptr %i.y, i64 %i.bl
  %bound0279 = icmp ult ptr %i.w, %scevgep278
  %bound1280 = icmp ult ptr %i.y, %scevgep277
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec285 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert286 = insertelement <4 x double> poison, double %i.bk, i64 0
  %broadcast.splat287 = shufflevector <4 x double> %broadcast.splatinsert286, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph284
  %index289 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body288 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index289 ; 2 uses
  %wide.load290 = load <4 x float>, ptr %i.bm, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bn = fpext <4 x float> %wide.load290 to <4 x double>
  %i.bo = fsub <4 x double> splat (double 1.000000e+00), %i.bn
  %i.bp = fmul <4 x double> %i.bo, splat (double 5.000000e-01)
  %i.bq = fmul <4 x double> %i.bp, %broadcast.splat287
  %i.br = fptrunc <4 x double> %i.bq to <4 x float>
  store <4 x float> %i.br, ptr %i.bm, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index289 ; 2 uses
  %wide.load291 = load <4 x float>, ptr %i.bs, align 4, !tbaa !15, !alias.scope !223
  %i.bt = fpext <4 x float> %wide.load291 to <4 x double>
  %i.bu = fsub <4 x double> splat (double 1.000000e+00), %i.bt
  %i.bv = fmul <4 x double> %i.bu, splat (double 5.000000e-01)
  %i.bw = fmul <4 x double> %i.bv, %broadcast.splat287
  %i.bx = fptrunc <4 x double> %i.bw to <4 x float>
  store <4 x float> %i.bx, ptr %i.bs, align 4, !tbaa !15, !alias.scope !223
  %index.next292 = add nuw i64 %index289, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.by, label %middle.block293, label %vector.body288, !llvm.loop !147

middle.block293:                                  ; preds = %vector.body288
  %cmp.n294 = icmp eq i64 %wide.trip.count231, %n.vec285
  br i1 %cmp.n294, label %._crit_edge205, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %vector.memcheck276, %.lr.ph204, %middle.block293
  %indvars.iv228.ph = phi i64 [ 0, %vector.memcheck276 ], [ 0, %.lr.ph204 ], [ %n.vec285, %middle.block293 ]
  br label %scalar.ph282

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %scalar.ph ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !15
  %i.cb = fpext float %i.ca to double
  %i.cc = fsub double 1.000000e+00, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fmul double %i.cd, %i.au
  %i.cf = fptrunc double %i.ce to float
  store float %i.cf, ptr %i.bz, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv223 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !15
  %i.ci = fpext float %i.ch to double
  %i.cj = fsub double 1.000000e+00, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fmul double %i.ck, %i.au
  %i.cm = fptrunc double %i.cl to float
  store float %i.cm, ptr %i.cg, align 4, !tbaa !15
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %.preheader191, label %scalar.ph, !llvm.loop !148

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %scalar.ph282 ], [ %indvars.iv228.ph, %scalar.ph282.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv228 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15
  %i.cp = fpext float %i.co to double
  %i.cq = fsub double 1.000000e+00, %i.cp
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fmul double %i.cr, %i.bk
  %i.ct = fptrunc double %i.cs to float
  store float %i.ct, ptr %i.cn, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv228 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fpext float %i.cv to double
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = fmul double %i.cx, 5.000000e-01
  %i.cz = fmul double %i.cy, %i.bk
  %i.da = fptrunc double %i.cz to float
  store float %i.da, ptr %i.cu, align 4, !tbaa !15
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge205, label %scalar.ph282, !llvm.loop !149

._crit_edge205:                                   ; preds = %scalar.ph282, %middle.block293, %.preheader191
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.db, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.dc, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.dd, align 8, !tbaa !19
  %i.de = add i32 %i.i, -1                        ; 9 uses
  %i.df = add i32 %i.l, -1                        ; 8 uses
  %i.dg = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr @reccycle, align 4, !tbaa !7
  %i.di = icmp slt i32 %i.l, 1
  br i1 %i.di, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge205
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext188 = shl i64 %i.h, 32
  %i.dj = ashr exact i64 %sext188, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %8 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalign2m2m_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %9 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter609 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.dk = icmp ult i32 %9, 8
  br i1 %i.dk, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter613 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter614 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter614.next.7, %.lr.ph121.split.us.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10
  store i8 0, ptr %i.dm, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10
  store i8 0, ptr %i.dp, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  store i8 0, ptr %i.ds, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !10
  store i8 0, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !10
  store i8 0, ptr %i.eb, align 1, !tbaa !20
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10
  store i8 0, ptr %i.ee, align 1, !tbaa !20
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !10
  store i8 0, ptr %i.eh, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter614.next.7 = add i64 %niter614, 8         ; 2 uses
  %niter614.ncmp.7 = icmp eq i64 %niter614.next.7, %unroll_iter613
  br i1 %niter614.ncmp.7, label %MSalign2m2m_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !150

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call ptr @strncpy(ptr noundef %i.ej, ptr noundef %i.el, i64 noundef %i.dj) #12 ; 0 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.dj
  store i8 0, ptr %i.eo, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %.preheader.i, label %bb.k, !llvm.loop !151

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !10
  store i8 0, ptr %i.eq, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.es, %bb.l ] ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.er)
  %endptr.i = getelementptr inbounds i8, ptr %i.er, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.es = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.de
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !152

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalign2m2m_rec.exit, label %.lr.ph118.i, !llvm.loop !150

bb.m:                                             ; preds = %._crit_edge205
  %i.et = tail call ptr @AllocateCharMtx(i32 noundef %8, i32 noundef 0) #12 ; 8 uses
  %i.eu = tail call ptr @AllocateCharMtx(i32 noundef %9, i32 noundef 0) #12 ; 8 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ew = ptrtoaddr ptr %i.et to i64
  %wide.trip.count.i = zext nneg i32 %8 to i64    ; 5 uses
  %min.iters.check298 = icmp ult i32 %8, 8
  %i.ex = sub i64 %i.p, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = select i1 %min.iters.check298, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph.preheader.i
  %n.vec300 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index302 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load303 = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !10
  %wide.load304 = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index302 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x ptr> %wide.load303, ptr %i.fa, align 8, !tbaa !10
  store <2 x ptr> %wide.load304, ptr %i.fb, align 8, !tbaa !10
  %index.next305 = add nuw i64 %index302, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.fc, label %middle.block306, label %vector.body301, !llvm.loop !153

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec300, %wide.trip.count.i
  br i1 %cmp.n307, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block306
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec300, %middle.block306 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i.prol
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !154

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block306, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %9 to i64 ; 5 uses
  %min.iters.check312 = icmp ult i32 %9, 8
  %i.fi = sub i64 %i.r, %i.ev
  %diff.check310 = icmp ugt i64 %i.fi, -32
  %or.cond545 = select i1 %min.iters.check312, i1 true, i1 %diff.check310
  br i1 %or.cond545, label %.lr.ph17.i.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec314 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index316 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load317 = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !10
  %wide.load318 = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index316 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %wide.load317, ptr %i.fl, align 8, !tbaa !10
  store <2 x ptr> %wide.load318, ptr %i.fm, align 8, !tbaa !10
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.fn, label %middle.block320, label %vector.body315, !llvm.loop !155

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %n.vec314, %wide.trip.count134.i
  br i1 %cmp.n321, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_2
begin_hunk_3_@Lalign2m2m_hmout:bb.a
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !15
  %i.ub = fadd float %i.ua, %i.ty
  store float %i.ub, ptr %i.tz, align 4, !tbaa !15
  br label %scalar.ph457.prol.loopexit

scalar.ph457.prol.loopexit:                       ; preds = %scalar.ph457.prol, %scalar.ph457.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph457.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph457.prol ]
  %i.uc = add nsw i64 %i.oq, -1
  %i.ud = icmp eq i64 %indvars.iv189.i.ph, %i.uc
  br i1 %i.ud, label %.lr.ph60.i.preheader, label %scalar.ph457

.lr.ph60.i.preheader:                             ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457, %middle.block470
  %xtraiter581 = and i64 %i.sj, 1
  %i.ue = icmp eq i32 %i.de, 1
  br i1 %i.ue, label %.lr.ph60.i.epil.preheader, label %.lr.ph60.i.preheader.new

.lr.ph60.i.preheader.new:                         ; preds = %.lr.ph60.i.preheader
  %unroll_iter585 = and i64 %i.sj, 4294967294
  br label %.lr.ph60.i

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph429 ], [ %indvars.iv184.i.unr, %scalar.ph429.prol.loopexit ] ; 3 uses
  %i.uf = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !15
  %i.ui = fadd float %i.uf, %i.uh
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv184.i ; 2 uses
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !15
  %i.ul = fadd float %i.uk, %i.ui
  store float %i.ul, ptr %i.uj, align 4, !tbaa !15
  %i.um = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.uo = load float, ptr %i.un, align 4, !tbaa !15
  %i.up = fadd float %i.um, %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next185.i ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !15
  %i.us = fadd float %i.ur, %i.up
  store float %i.us, ptr %i.uq, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sj
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph429, !llvm.loop !194

scalar.ph457:                                     ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph457 ], [ %indvars.iv189.i.unr, %scalar.ph457.prol.loopexit ] ; 3 uses
  %i.ut = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !15
  %i.uw = fadd float %i.ut, %i.uv
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !15
  %i.uz = fadd float %i.uy, %i.uw
  store float %i.uz, ptr %i.ux, align 4, !tbaa !15
  %i.va = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !15
  %i.vd = fadd float %i.va, %i.vc
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !15
  %i.vg = fadd float %i.vf, %i.vd
  store float %i.vg, ptr %i.ve, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.oq
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph457, !llvm.loop !195

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod583.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.preheader
  %indvars.iv195.i.epil.init = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph62.i.unr-lcssa ] ; 2 uses
  %lcmp.mod584 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod584)
  %i.vh = load float, ptr %i.sk, align 4, !tbaa !15
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv195.i.epil.init
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 4
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !15
  %i.vl = fadd float %i.vh, %i.vk
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv195.i.epil.init
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !19
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vn, i64 %i.oq ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !15
  %i.vq = fadd float %i.vl, %i.vp
  store float %i.vq, ptr %i.vo, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.sj
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !19 ; 7 uses
  %min.iters.check486 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %.lr.ph62.i
  %i.vt = shl nuw nsw i64 %i.oq, 2                ; 2 uses
  %scevgep474 = getelementptr i8, ptr %i.vs, i64 %i.vt ; 2 uses
  %i.vu = add nuw nsw i64 %i.vt, 4                ; 2 uses
  %scevgep475 = getelementptr i8, ptr %i.y, i64 %i.vu
  %scevgep476 = getelementptr i8, ptr %i.w, i64 4
  %scevgep477 = getelementptr i8, ptr %i.w, i64 %i.vu
  %bound0478 = icmp ult ptr %i.vs, %scevgep475
  %bound1479 = icmp ult ptr %i.th, %scevgep474
  %found.conflict480 = and i1 %bound0478, %bound1479
  %bound0481 = icmp ult ptr %i.vs, %scevgep477
  %bound1482 = icmp ult ptr %scevgep476, %scevgep474
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx484 = or i1 %found.conflict480, %found.conflict483
  br i1 %conflict.rdx484, label %scalar.ph485.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %vector.memcheck473
  %n.vec488 = and i64 %i.oq, 2147483640           ; 3 uses
  %i.vv = load float, ptr %i.th, align 4, !tbaa !15, !alias.scope !244
  %broadcast.splatinsert493 = insertelement <4 x float> poison, float %i.vv, i64 0
  %broadcast.splat494 = shufflevector <4 x float> %broadcast.splatinsert493, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next497, %vector.body489 ] ; 3 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index490 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 20
  %wide.load491 = load <4 x float>, ptr %i.vx, align 4, !tbaa !15, !alias.scope !245
  %wide.load492 = load <4 x float>, ptr %i.vy, align 4, !tbaa !15, !alias.scope !245
  %i.vz = fadd <4 x float> %broadcast.splat494, %wide.load491
  %i.wa = fadd <4 x float> %broadcast.splat494, %wide.load492
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %index490 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16 ; 2 uses
  %wide.load495 = load <4 x float>, ptr %i.wb, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %wide.load496 = load <4 x float>, ptr %i.wc, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %i.wd = fadd <4 x float> %i.vz, %wide.load495
  %i.we = fadd <4 x float> %i.wa, %wide.load496
  store <4 x float> %i.wd, ptr %i.wb, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  store <4 x float> %i.we, ptr %i.wc, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %index.next497 = add nuw i64 %index490, 8       ; 2 uses
  %i.wf = icmp eq i64 %index.next497, %n.vec488
  br i1 %i.wf, label %middle.block498, label %vector.body489, !llvm.loop !200

middle.block498:                                  ; preds = %vector.body489
  %cmp.n499 = icmp eq i64 %n.vec488, %i.oq
  br i1 %cmp.n499, label %.lr.ph64.i, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %vector.memcheck473, %.lr.ph62.i, %middle.block498
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck473 ], [ 0, %.lr.ph62.i ], [ %n.vec488, %middle.block498 ] ; 4 uses
  %xtraiter587 = and i64 %i.oq, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader
  %i.wg = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !15
  %i.wj = fadd float %i.wg, %i.wi
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv200.i.ph ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !15
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.wk, align 4, !tbaa !15
  br label %scalar.ph485.prol.loopexit

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph485.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph485.prol ]
  %i.wn = add nsw i64 %i.oq, -1
  %i.wo = icmp eq i64 %indvars.iv200.i.ph, %i.wn
  br i1 %i.wo, label %.lr.ph64.i, label %scalar.ph485

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter586 = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %niter586.next.1, %.lr.ph60.i ]
  %i.wp = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !15
  %i.ws = fadd float %i.wp, %i.wr
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv195.i
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !19
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.oq ; 2 uses
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !15
  %i.wx = fadd float %i.ws, %i.ww
  store float %i.wx, ptr %i.wv, align 4, !tbaa !15
  %i.wy = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 3 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !15
  %i.xb = fadd float %i.wy, %i.xa
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next196.i
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !19
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.oq ; 2 uses
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !15
  %i.xg = fadd float %i.xb, %i.xf
  store float %i.xg, ptr %i.xe, align 4, !tbaa !15
  %niter586.next.1 = add nuw i64 %niter586, 2     ; 2 uses
  %niter586.ncmp.1 = icmp eq i64 %niter586.next.1, %unroll_iter585
  br i1 %niter586.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !201

.lr.ph64.i:                                       ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485, %middle.block498
  %i.xh = getelementptr i8, ptr %i.th, i64 -4     ; 3 uses
  %i.xi = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %i.xj = xor i32 %i.xi, -1
  %i.xk = add i32 %i.xj, %i.l                     ; 2 uses
  %i.xl = zext i32 %i.xk to i64
  %i.xm = add nuw nsw i64 %i.xl, 1                ; 2 uses
  %min.iters.check514 = icmp ult i32 %i.xk, 19
  br i1 %min.iters.check514, label %scalar.ph513.preheader, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph64.i
  %i.xn = shl nuw nsw i64 %i.oq, 2                ; 4 uses
  %16 = add nsw i64 %i.xn, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %17 = xor i32 %smin, -1
  %18 = add i32 %17, %i.l
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 2                    ; 2 uses
  %i.xo = sub nsw i64 %16, %20
  %scevgep502 = getelementptr i8, ptr %i.hj, i64 %i.xo ; 2 uses
  %scevgep503 = getelementptr i8, ptr %i.hj, i64 %i.xn ; 2 uses
  %i.xp = sub nsw i64 %i.xn, %20
  %scevgep504 = getelementptr i8, ptr %.057648.i, i64 %i.xp
  %i.xq = getelementptr i8, ptr %.057648.i, i64 %i.xn
  %scevgep505 = getelementptr i8, ptr %i.xq, i64 4
  %bound0506 = icmp ult ptr %scevgep502, %scevgep505
  %bound1507 = icmp ult ptr %scevgep504, %scevgep503
  %found.conflict508 = and i1 %bound0506, %bound1507
  %bound0509 = icmp ult ptr %scevgep502, %i.th
  %bound1510 = icmp ult ptr %i.xh, %scevgep503
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx512 = or i1 %found.conflict508, %found.conflict511
  br i1 %conflict.rdx512, label %scalar.ph513.preheader, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck501
  %n.vec516 = and i64 %i.xm, 8589934588           ; 3 uses
  %broadcast.splatinsert517 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat518 = shufflevector <4 x i32> %broadcast.splatinsert517, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xr = sub nsw i64 %i.oq, %n.vec516
  %i.xs = load float, ptr %i.xh, align 4, !tbaa !15, !alias.scope !248
  %broadcast.splatinsert523 = insertelement <4 x float> poison, float %i.xs, i64 0
  %i.xt = shufflevector <4 x float> %broadcast.splatinsert523, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph515
  %index520 = phi i64 [ 0, %vector.ph515 ], [ %index.next526, %vector.body519 ] ; 2 uses
  %i.xu = sub i64 %i.oq, %index520                ; 3 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.xu
  %i.xw = getelementptr inbounds i8, ptr %i.xv, i64 -12
  %wide.load521 = load <4 x float>, ptr %i.xw, align 4, !tbaa !15, !alias.scope !249
  %i.xx = getelementptr [4 x i8], ptr %i.hj, i64 %i.xu
  %i.xy = getelementptr i8, ptr %i.xx, i64 -16
  %reverse525 = fadd <4 x float> %wide.load521, %i.xt
  store <4 x float> %reverse525, ptr %i.xy, align 4, !tbaa !15, !alias.scope !250, !noalias !251
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.xu
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -12
  store <4 x i32> %broadcast.splat518, ptr %i.ya, align 4, !tbaa !7
  %index.next526 = add nuw i64 %index520, 4       ; 2 uses
  %i.yb = icmp eq i64 %index.next526, %n.vec516
  br i1 %i.yb, label %middle.block527, label %vector.body519, !llvm.loop !206

middle.block527:                                  ; preds = %vector.body519
  %cmp.n528 = icmp eq i64 %i.xm, %n.vec516
  br i1 %cmp.n528, label %.lr.ph104.i, label %scalar.ph513.preheader

scalar.ph513.preheader:                           ; preds = %vector.memcheck501, %.lr.ph64.i, %middle.block527
  %indvars.iv206.i.ph = phi i64 [ %i.oq, %vector.memcheck501 ], [ %i.oq, %.lr.ph64.i ], [ %i.xr, %middle.block527 ]
  br label %scalar.ph513

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph485 ], [ %indvars.iv200.i.unr, %scalar.ph485.prol.loopexit ] ; 3 uses
  %i.yc = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !15
  %i.yf = fadd float %i.yc, %i.ye
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv200.i ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !15
  %i.yi = fadd float %i.yf, %i.yh
  store float %i.yi, ptr %i.yg, align 4, !tbaa !15
  %i.yj = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !15
  %i.ym = fadd float %i.yj, %i.yl
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %indvars.iv.next201.i ; 2 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !15
  %i.yp = fadd float %i.ym, %i.yo
  store float %i.yp, ptr %i.yn, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.oq
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph485, !llvm.loop !207

.lr.ph104.i:                                      ; preds = %scalar.ph513, %middle.block527
  %i.yq = add i64 %i.k, 4294967294
  %i.yr = and i64 %i.yq, 4294967295               ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.oy
  %i.yu = getelementptr inbounds i8, ptr %i.yt, i64 -8
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.oy
  %i.yw = getelementptr inbounds i8, ptr %i.yv, i64 -8
  %i.yx = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter590 = and i64 %i.oq, 1
  %i.yy = icmp eq i32 %i.df, 3
  %i.yz = and i64 %i.oq, 2147483646
  %i.za = add nsw i64 %i.yz, -4
  %lcmp.mod592.not = icmp eq i64 %xtraiter590, 0
  %lcmp.mod595 = trunc i32 %i.df to i1
  %xtraiter598 = and i64 %wide.trip.count221.i, 1
  %i.zb = icmp eq i32 %smax220.i, 1
  %unroll_iter604 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod600.not = icmp eq i64 %xtraiter598, 0
  %lcmp.mod603 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph513:                                     ; preds = %scalar.ph513.preheader, %scalar.ph513
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph513 ], [ %indvars.iv206.i.ph, %scalar.ph513.preheader ] ; 5 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !15
  %i.ze = load float, ptr %i.xh, align 4, !tbaa !15
  %i.zf = fadd float %i.zd, %i.ze
  %i.zg = getelementptr [4 x i8], ptr %i.hj, i64 %indvars.iv206.i
  %i.zh = getelementptr i8, ptr %i.zg, i64 -4
  store float %i.zf, ptr %i.zh, align 4, !tbaa !15
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv206.i
  store i32 %i.de, ptr %i.zi, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.zj = trunc nuw i64 %indvars.iv206.i to i32
  %i.zk = icmp sgt i32 %i.zj, 1
  br i1 %i.zk, label %scalar.ph513, label %.lr.ph104.i, !llvm.loop !208

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check533 = icmp samesign ult i64 %i.oy, 4
  %n.vec535 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert536 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat537 = shufflevector <4 x float> %broadcast.splatinsert536, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n543 = icmp eq i64 %i.oy, %n.vec535
  %xtraiter606 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod607.not = icmp eq i64 %xtraiter606, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sj, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.de, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.ov, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv223.i
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !15
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oq ; 2 uses
  store float %i.zm, ptr %i.zn, align 4, !tbaa !15
  %i.zo = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_ribosum(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.zo, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 0)
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224.i
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !15
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oq
  store float %i.zq, ptr %i.zr, align 4, !tbaa !15
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oy
  %.156765.i = getelementptr inbounds i8, ptr %i.zs, i64 -4
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oy
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -8
  %i.zv = load float, ptr %i.zn, align 4, !tbaa !15
  %i.zw = load float, ptr %i.ys, align 4, !tbaa !15
  %i.zx = fadd float %i.zv, %i.zw
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.aaa = zext i32 %.055299.i to i64
  %i.aab = icmp eq i64 %indvars.iv.next224.i, %i.aaa
  %i.aac = zext i32 %.059194.i to i64             ; 2 uses
  %i.aad = icmp eq i64 %indvars.iv223.i, %i.aac   ; 3 uses
  %or.cond640.i = select i1 %i.aab, i1 true, i1 %i.aad
  %i.aae = icmp eq i64 %indvars.iv.next224.i, %i.aac ; 2 uses
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next224.i
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !19
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.next224.i
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !19
  %i.aaj = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.yr, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.zx, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.zu, %.lr.ph74.i ], [ %i.aca, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.yu, %.lr.ph74.i ], [ %i.aby, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.df, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.yw, %.lr.ph74.i ], [ %i.abz, %bb.ad ] ; 3 uses
  %i.aak = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.aal = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aal
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !15
  %i.aao = fadd float %.256271.i, %i.aan          ; 2 uses
  %i.aap = fcmp ogt float %i.aao, %i.aak          ; 2 uses
  %.2582.i = select i1 %i.aap, float %i.aao, float %i.aak ; 2 uses
  %i.aaq = trunc nuw i64 %i.aal to i32            ; 3 uses
  %.0546.i = select i1 %i.aap, i32 %.257268.i, i32 %i.aaq
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !15
  %i.aat = fadd float %i.aak, %i.aas              ; 2 uses
  %i.aau = fcmp ult float %i.aat, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.aau, i32 %.257268.i, i32 %i.aaq
  %.3563.i = select i1 %i.aau, float %.256271.i, float %i.aat ; 2 uses
  %i.aav = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.aaw = load float, ptr %i.zy, align 4, !tbaa !15
  %i.aax = fadd float %i.aav, %i.aaw              ; 2 uses
  %i.aay = fcmp ogt float %i.aax, %.2582.i
  br i1 %i.aay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.aaz = load i32, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3583.i = phi float [ %i.aax, %bb.u ], [ %.2582.i, %bb.t ] ; 3 uses
end_hunk_3
