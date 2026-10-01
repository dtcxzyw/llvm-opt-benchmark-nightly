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
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 9 uses
  %i.l = trunc i64 %i.k to i32                    ; 21 uses
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
  %i.aw = getelementptr i8, ptr %i.u, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.x, i64 %i.av
  %bound0 = icmp ult ptr %i.u, %i.ax
  %bound1 = icmp ult ptr %i.x, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.az = fpext <4 x float> %wide.load to <4 x double>
  %i.ba = fsub <4 x double> splat (double 1.000000e+00), %i.az
  %i.bb = fmul <4 x double> %i.ba, splat (double 5.000000e-01)
  %i.bc = fmul <4 x double> %i.bb, %broadcast.splat
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %i.ay, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load271 = load <4 x float>, ptr %i.be, align 4, !tbaa !15, !alias.scope !107
  %i.bf = fpext <4 x float> %wide.load271 to <4 x double>
  %i.bg = fsub <4 x double> splat (double 1.000000e+00), %i.bf
  %i.bh = fmul <4 x double> %i.bg, splat (double 5.000000e-01)
  %i.bi = fmul <4 x double> %i.bh, %broadcast.splat
  %i.bj = fptrunc <4 x double> %i.bi to <4 x float>
  store <4 x float> %i.bj, ptr %i.be, align 4, !tbaa !15, !alias.scope !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count222, %n.vec
  br i1 %cmp.n, label %.preheader187, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph198, %middle.block
  %indvars.iv219.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph198 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader187:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bl = icmp sgt i32 %i.l, 0
  br i1 %i.bl, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %.preheader187
  %i.bm = fpext float %i.b to double              ; 3 uses
  %wide.trip.count227 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check278 = icmp samesign ult i64 %wide.trip.count227, 4
  br i1 %min.iters.check278, label %scalar.ph277.preheader, label %vector.memcheck279

vector.memcheck279:                               ; preds = %.lr.ph200
  %i.bn = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.w, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.y, i64 %i.bn
  %bound0280 = icmp ult ptr %i.w, %i.bp
  %bound1281 = icmp ult ptr %i.y, %i.bo
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %scalar.ph277.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck279
  %n.vec284 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert285 = insertelement <4 x double> poison, double %i.bm, i64 0
  %broadcast.splat286 = shufflevector <4 x double> %broadcast.splatinsert285, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph283
  %index288 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body287 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index288 ; 2 uses
  %wide.load289 = load <4 x float>, ptr %i.bq, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.br = fpext <4 x float> %wide.load289 to <4 x double>
  %i.bs = fsub <4 x double> splat (double 1.000000e+00), %i.br
  %i.bt = fmul <4 x double> %i.bs, splat (double 5.000000e-01)
  %i.bu = fmul <4 x double> %i.bt, %broadcast.splat286
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.bq, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index288 ; 2 uses
  %wide.load290 = load <4 x float>, ptr %i.bw, align 4, !tbaa !15, !alias.scope !109
  %i.bx = fpext <4 x float> %wide.load290 to <4 x double>
  %i.by = fsub <4 x double> splat (double 1.000000e+00), %i.bx
  %i.bz = fmul <4 x double> %i.by, splat (double 5.000000e-01)
  %i.ca = fmul <4 x double> %i.bz, %broadcast.splat286
  %i.cb = fptrunc <4 x double> %i.ca to <4 x float>
  store <4 x float> %i.cb, ptr %i.bw, align 4, !tbaa !15, !alias.scope !109
  %index.next291 = add nuw i64 %index288, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.cc, label %middle.block292, label %vector.body287, !llvm.loop !33

middle.block292:                                  ; preds = %vector.body287
  %cmp.n293 = icmp eq i64 %wide.trip.count227, %n.vec284
  br i1 %cmp.n293, label %._crit_edge201, label %scalar.ph277.preheader

scalar.ph277.preheader:                           ; preds = %vector.memcheck279, %.lr.ph200, %middle.block292
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck279 ], [ 0, %.lr.ph200 ], [ %n.vec284, %middle.block292 ]
  br label %scalar.ph277

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %scalar.ph ], [ %indvars.iv219.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv219 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !15
  %i.cf = fpext float %i.ce to double
  %i.cg = fsub double 1.000000e+00, %i.cf
  %i.ch = fmul double %i.cg, 5.000000e-01
  %i.ci = fmul double %i.ch, %i.au
  %i.cj = fptrunc double %i.ci to float
  store float %i.cj, ptr %i.cd, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv219 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cm = fpext float %i.cl to double
  %i.cn = fsub double 1.000000e+00, %i.cm
  %i.co = fmul double %i.cn, 5.000000e-01
  %i.cp = fmul double %i.co, %i.au
  %i.cq = fptrunc double %i.cp to float
  store float %i.cq, ptr %i.ck, align 4, !tbaa !15
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.preheader187, label %scalar.ph, !llvm.loop !34

scalar.ph277:                                     ; preds = %scalar.ph277.preheader, %scalar.ph277
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %scalar.ph277 ], [ %indvars.iv224.ph, %scalar.ph277.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv224 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = fpext float %i.cs to double
  %i.cu = fsub double 1.000000e+00, %i.ct
  %i.cv = fmul double %i.cu, 5.000000e-01
  %i.cw = fmul double %i.cv, %i.bm
  %i.cx = fptrunc double %i.cw to float
  store float %i.cx, ptr %i.cr, align 4, !tbaa !15
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv224 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !15
  %i.da = fpext float %i.cz to double
  %i.db = fsub double 1.000000e+00, %i.da
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fmul double %i.dc, %i.bm
  %i.de = fptrunc double %i.dd to float
  store float %i.de, ptr %i.cy, align 4, !tbaa !15
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge201, label %scalar.ph277, !llvm.loop !35

._crit_edge201:                                   ; preds = %scalar.ph277, %middle.block292, %.preheader187
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.df, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.dg, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.dh, align 8, !tbaa !19
  %i.di = add i32 %i.i, -1                        ; 9 uses
  %i.dj = add nsw i32 %i.l, -1                    ; 6 uses
  %i.dk = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr @reccycle, align 4, !tbaa !7
  %i.dm = icmp slt i32 %i.l, 1
  br i1 %i.dm, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge201
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext184 = shl i64 %i.h, 32
  %i.dn = ashr exact i64 %sext184, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %4 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalignmm_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %5 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter656 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.do = icmp ult i32 %5, 8
  br i1 %i.do, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter660 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter661 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter661.next.7, %.lr.ph121.split.us.i ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10
  store i8 0, ptr %i.dq, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !10
  store i8 0, ptr %i.dt, align 1, !tbaa !20
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !10
  store i8 0, ptr %i.dw, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !10
  store i8 0, ptr %i.dz, align 1, !tbaa !20
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !10
  store i8 0, ptr %i.ec, align 1, !tbaa !20
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10
  store i8 0, ptr %i.ef, align 1, !tbaa !20
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !10
  store i8 0, ptr %i.ei, align 1, !tbaa !20
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  store i8 0, ptr %i.el, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter661.next.7 = add i64 %niter661, 8         ; 2 uses
  %niter661.ncmp.7 = icmp eq i64 %niter661.next.7, %unroll_iter660
  br i1 %niter661.ncmp.7, label %MSalignmm_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !36

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !10
  %i.eq = tail call ptr @strncpy(ptr noundef %i.en, ptr noundef %i.ep, i64 noundef %i.dn) #12 ; 0 uses
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !10
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.dn
  store i8 0, ptr %i.es, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i.a = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i.a, label %.preheader.i, label %bb.k, !llvm.loop !37

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10
  store i8 0, ptr %i.eu, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.ew, %bb.l ] ; 2 uses
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.ev)
  %endptr.i = getelementptr inbounds i8, ptr %i.ev, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.ew = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.di
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !38

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalignmm_rec.exit, label %.lr.ph118.i, !llvm.loop !36

bb.m:                                             ; preds = %._crit_edge201
  %i.ex = tail call ptr @AllocateCharMtx(i32 noundef %4, i32 noundef 0) #12 ; 8 uses
  %i.ey = tail call ptr @AllocateCharMtx(i32 noundef %5, i32 noundef 0) #12 ; 8 uses
  %i.ez = ptrtoaddr ptr %i.ey to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.fa = ptrtoaddr ptr %i.ex to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 5 uses
  %min.iters.check297 = icmp ult i32 %4, 8
  %i.fb = sub i64 %i.p, %i.fa
  %diff.check = icmp ugt i64 %i.fb, -32
  %or.cond = select i1 %min.iters.check297, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph.preheader.i
  %n.vec299 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph298
  %index301 = phi i64 [ 0, %vector.ph298 ], [ %index.next304, %vector.body300 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index301 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load302 = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !10
  %wide.load303 = load <2 x ptr>, ptr %i.fd, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index301 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x ptr> %wide.load302, ptr %i.fe, align 8, !tbaa !10
  store <2 x ptr> %wide.load303, ptr %i.ff, align 8, !tbaa !10
  %index.next304 = add nuw i64 %index301, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next304, %n.vec299
  br i1 %i.fg, label %middle.block305, label %vector.body300, !llvm.loop !39

middle.block305:                                  ; preds = %vector.body300
  %cmp.n306 = icmp eq i64 %n.vec299, %wide.trip.count.i
  br i1 %cmp.n306, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block305
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec299, %middle.block305 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i.prol
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !40

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fk = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block305, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %5 to i64 ; 5 uses
  %min.iters.check311 = icmp ult i32 %5, 8
  %i.fm = sub i64 %i.r, %i.ez
  %diff.check309 = icmp ugt i64 %i.fm, -32
  %or.cond592 = select i1 %min.iters.check311, i1 true, i1 %diff.check309
  br i1 %or.cond592, label %.lr.ph17.i.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec313 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph312
  %index315 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body314 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index315 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load316 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !10
  %wide.load317 = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %index315 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x ptr> %wide.load316, ptr %i.fp, align 8, !tbaa !10
  store <2 x ptr> %wide.load317, ptr %i.fq, align 8, !tbaa !10
  %index.next318 = add nuw i64 %index315, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.fr, label %middle.block319, label %vector.body314, !llvm.loop !41

middle.block319:                                  ; preds = %vector.body314
  %cmp.n320 = icmp eq i64 %n.vec313, %wide.trip.count134.i
  br i1 %cmp.n320, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_0
begin_hunk_1_@Lalignmm_hmout:bb.a
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.prol
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !15
  %i.uv = fadd float %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !15
  %i.uy = fadd float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !15
  br label %scalar.ph482.prol.loopexit

scalar.ph482.prol.loopexit:                       ; preds = %scalar.ph482.prol, %scalar.ph482.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph482.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph482.prol ]
  %i.uz = add nsw i64 %i.pg, -1
  %i.va = icmp eq i64 %indvars.iv189.i.ph, %i.uz
  br i1 %i.va, label %.lr.ph60.i.preheader, label %scalar.ph482

.lr.ph60.i.preheader:                             ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482, %middle.block503
  %xtraiter628 = and i64 %i.sz, 1
  %i.vb = icmp eq i32 %i.di, 1
  br i1 %i.vb, label %.lr.ph60.i.epil.preheader, label %.lr.ph60.i.preheader.new

.lr.ph60.i.preheader.new:                         ; preds = %.lr.ph60.i.preheader
  %unroll_iter632 = and i64 %i.sz, 4294967294
  br label %.lr.ph60.i

scalar.ph447:                                     ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph447 ], [ %indvars.iv184.i.unr, %scalar.ph447.prol.loopexit ] ; 3 uses
  %i.vc = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !15
  %i.vf = fadd float %i.vc, %i.ve
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv184.i ; 2 uses
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !15
  %i.vi = fadd float %i.vh, %i.vf
  store float %i.vi, ptr %i.vg, align 4, !tbaa !15
  %i.vj = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !15
  %i.vm = fadd float %i.vj, %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next185.i ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !15
  %i.vp = fadd float %i.vo, %i.vm
  store float %i.vp, ptr %i.vn, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sz
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph447, !llvm.loop !80

scalar.ph482:                                     ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph482 ], [ %indvars.iv189.i.unr, %scalar.ph482.prol.loopexit ] ; 3 uses
  %i.vq = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !15
  %i.vt = fadd float %i.vq, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !15
  %i.vw = fadd float %i.vv, %i.vt
  store float %i.vw, ptr %i.vu, align 4, !tbaa !15
  %i.vx = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !15
  %i.wa = fadd float %i.vx, %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !15
  %i.wd = fadd float %i.wc, %i.wa
  store float %i.wd, ptr %i.wb, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.pg
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph482, !llvm.loop !81

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod630.not = icmp eq i64 %xtraiter628, 0
  br i1 %lcmp.mod630.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.preheader
  %indvars.iv195.i.epil.init = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph62.i.unr-lcssa ] ; 2 uses
  %lcmp.mod631 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod631)
  %i.we = load float, ptr %i.ta, align 4, !tbaa !15
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv195.i.epil.init
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !15
  %i.wi = fadd float %i.we, %i.wh
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv195.i.epil.init
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !19
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.pg ; 2 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !15
  %i.wn = fadd float %i.wi, %i.wm
  store float %i.wn, ptr %i.wl, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.sz
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !19 ; 7 uses
  %min.iters.check518 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check518, label %scalar.ph517.preheader, label %vector.memcheck519

vector.memcheck519:                               ; preds = %.lr.ph62.i
  %i.wq = shl nuw nsw i64 %i.pg, 2                ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wp, i64 %i.wq  ; 2 uses
  %i.ws = add nuw nsw i64 %i.wq, 4                ; 2 uses
  %i.wt = getelementptr i8, ptr %i.y, i64 %i.ws
  %i.wu = getelementptr i8, ptr %i.w, i64 4
  %i.wv = getelementptr i8, ptr %i.w, i64 %i.ws
  %bound0520 = icmp ult ptr %i.wp, %i.wt
  %bound1521 = icmp ult ptr %i.ua, %i.wr
  %found.conflict522 = and i1 %bound0520, %bound1521
  %bound0523 = icmp ult ptr %i.wp, %i.wv
  %bound1524 = icmp ult ptr %i.wu, %i.wr
  %found.conflict525 = and i1 %bound0523, %bound1524
  %conflict.rdx526 = or i1 %found.conflict522, %found.conflict525
  br i1 %conflict.rdx526, label %scalar.ph517.preheader, label %vector.ph527

vector.ph527:                                     ; preds = %vector.memcheck519
  %n.vec528 = and i64 %i.pg, 2147483640           ; 3 uses
  %i.ww = load float, ptr %i.ua, align 4, !tbaa !15, !alias.scope !130
  %broadcast.splatinsert533 = insertelement <4 x float> poison, float %i.ww, i64 0
  %broadcast.splat534 = shufflevector <4 x float> %broadcast.splatinsert533, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph527
  %index530 = phi i64 [ 0, %vector.ph527 ], [ %index.next537, %vector.body529 ] ; 3 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index530 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 20
  %wide.load531 = load <4 x float>, ptr %i.wy, align 4, !tbaa !15, !alias.scope !131
  %wide.load532 = load <4 x float>, ptr %i.wz, align 4, !tbaa !15, !alias.scope !131
  %i.xa = fadd <4 x float> %broadcast.splat534, %wide.load531
  %i.xb = fadd <4 x float> %broadcast.splat534, %wide.load532
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %index530 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %wide.load535 = load <4 x float>, ptr %i.xc, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %wide.load536 = load <4 x float>, ptr %i.xd, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %i.xe = fadd <4 x float> %i.xa, %wide.load535
  %i.xf = fadd <4 x float> %i.xb, %wide.load536
  store <4 x float> %i.xe, ptr %i.xc, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  store <4 x float> %i.xf, ptr %i.xd, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %index.next537 = add nuw i64 %index530, 8       ; 2 uses
  %i.xg = icmp eq i64 %index.next537, %n.vec528
  br i1 %i.xg, label %middle.block538, label %vector.body529, !llvm.loop !86

middle.block538:                                  ; preds = %vector.body529
  %cmp.n539 = icmp eq i64 %n.vec528, %i.pg
  br i1 %cmp.n539, label %.lr.ph64.i, label %scalar.ph517.preheader

scalar.ph517.preheader:                           ; preds = %vector.memcheck519, %.lr.ph62.i, %middle.block538
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck519 ], [ 0, %.lr.ph62.i ], [ %n.vec528, %middle.block538 ] ; 4 uses
  %xtraiter634 = and i64 %i.pg, 1
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  br i1 %lcmp.mod635.not, label %scalar.ph517.prol.loopexit, label %scalar.ph517.prol

scalar.ph517.prol:                                ; preds = %scalar.ph517.preheader
  %i.xh = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !15
  %i.xk = fadd float %i.xh, %i.xj
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv200.i.ph ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !15
  %i.xn = fadd float %i.xk, %i.xm
  store float %i.xn, ptr %i.xl, align 4, !tbaa !15
  br label %scalar.ph517.prol.loopexit

scalar.ph517.prol.loopexit:                       ; preds = %scalar.ph517.prol, %scalar.ph517.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph517.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph517.prol ]
  %i.xo = add nsw i64 %i.pg, -1
  %i.xp = icmp eq i64 %indvars.iv200.i.ph, %i.xo
  br i1 %i.xp, label %.lr.ph64.i, label %scalar.ph517

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter633 = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %niter633.next.1, %.lr.ph60.i ]
  %i.xq = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !15
  %i.xt = fadd float %i.xq, %i.xs
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv195.i
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !19
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.pg ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !15
  %i.xy = fadd float %i.xt, %i.xx
  store float %i.xy, ptr %i.xw, align 4, !tbaa !15
  %i.xz = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 3 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !15
  %i.yc = fadd float %i.xz, %i.yb
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next196.i
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !19
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.pg ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !15
  %i.yh = fadd float %i.yc, %i.yg
  store float %i.yh, ptr %i.yf, align 4, !tbaa !15
  %niter633.next.1 = add nuw i64 %niter633, 2     ; 2 uses
  %niter633.ncmp.1 = icmp eq i64 %niter633.next.1, %unroll_iter632
  br i1 %niter633.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !87

.lr.ph64.i:                                       ; preds = %scalar.ph517.prol.loopexit, %scalar.ph517, %middle.block538
  %i.yi = getelementptr i8, ptr %i.ua, i64 -4     ; 3 uses
  %12 = add i64 %i.k, 4294967294
  %13 = and i64 %12, 4294967295                   ; 3 uses
  %i.yj = add nuw nsw i64 %13, 1                  ; 2 uses
  %min.iters.check553 = icmp samesign ult i64 %13, 19
  br i1 %min.iters.check553, label %scalar.ph552.preheader, label %vector.memcheck554

vector.memcheck554:                               ; preds = %.lr.ph64.i
  %i.yk = shl nuw nsw i64 %i.pg, 2                ; 4 uses
  %i.yl = shl nuw nsw i64 %13, 2                  ; 2 uses
  %i.ym = add nsw i64 %i.yk, -4
  %i.yn = sub nsw i64 %i.ym, %i.yl
  %i.yo = getelementptr i8, ptr %i.hn, i64 %i.yn  ; 2 uses
  %i.yp = getelementptr i8, ptr %i.hn, i64 %i.yk  ; 2 uses
  %i.yq = sub nsw i64 %i.yk, %i.yl
  %i.yr = getelementptr i8, ptr %.057648.i, i64 %i.yq
  %i.ys = getelementptr i8, ptr %.057648.i, i64 %i.yk
  %i.yt = getelementptr i8, ptr %i.ys, i64 4
  %bound0555 = icmp ult ptr %i.yo, %i.yt
  %bound1556 = icmp ult ptr %i.yr, %i.yp
  %found.conflict557 = and i1 %bound0555, %bound1556
  %bound0558 = icmp ult ptr %i.yo, %i.ua
  %bound1559 = icmp ult ptr %i.yi, %i.yp
  %found.conflict560 = and i1 %bound0558, %bound1559
  %conflict.rdx561 = or i1 %found.conflict557, %found.conflict560
  br i1 %conflict.rdx561, label %scalar.ph552.preheader, label %vector.ph562

vector.ph562:                                     ; preds = %vector.memcheck554
  %n.vec563 = and i64 %i.yj, 8589934588           ; 3 uses
  %broadcast.splatinsert564 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat565 = shufflevector <4 x i32> %broadcast.splatinsert564, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.yu = sub nsw i64 %i.pg, %n.vec563
  %i.yv = load float, ptr %i.yi, align 4, !tbaa !15, !alias.scope !134
  %broadcast.splatinsert570 = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.yw = shufflevector <4 x float> %broadcast.splatinsert570, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body566

vector.body566:                                   ; preds = %vector.body566, %vector.ph562
  %index567 = phi i64 [ 0, %vector.ph562 ], [ %index.next573, %vector.body566 ] ; 2 uses
  %i.yx = sub i64 %i.pg, %index567                ; 3 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.yx
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -12
  %wide.load568 = load <4 x float>, ptr %i.yz, align 4, !tbaa !15, !alias.scope !135
  %i.za = getelementptr [4 x i8], ptr %i.hn, i64 %i.yx
  %i.zb = getelementptr i8, ptr %i.za, i64 -16
  %reverse572 = fadd <4 x float> %wide.load568, %i.yw
  store <4 x float> %reverse572, ptr %i.zb, align 4, !tbaa !15, !alias.scope !136, !noalias !137
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.yx
  %i.zd = getelementptr inbounds i8, ptr %i.zc, i64 -12
  store <4 x i32> %broadcast.splat565, ptr %i.zd, align 4, !tbaa !7
  %index.next573 = add nuw i64 %index567, 4       ; 2 uses
  %i.ze = icmp eq i64 %index.next573, %n.vec563
  br i1 %i.ze, label %middle.block574, label %vector.body566, !llvm.loop !92

middle.block574:                                  ; preds = %vector.body566
  %cmp.n575 = icmp eq i64 %i.yj, %n.vec563
  br i1 %cmp.n575, label %.lr.ph104.i, label %scalar.ph552.preheader

scalar.ph552.preheader:                           ; preds = %vector.memcheck554, %.lr.ph64.i, %middle.block574
  %indvars.iv206.i.ph = phi i64 [ %i.pg, %vector.memcheck554 ], [ %i.pg, %.lr.ph64.i ], [ %i.yu, %middle.block574 ]
  br label %scalar.ph552

scalar.ph517:                                     ; preds = %scalar.ph517.prol.loopexit, %scalar.ph517
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph517 ], [ %indvars.iv200.i.unr, %scalar.ph517.prol.loopexit ] ; 3 uses
  %i.zf = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !15
  %i.zi = fadd float %i.zf, %i.zh
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv200.i ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !15
  %i.zl = fadd float %i.zi, %i.zk
  store float %i.zl, ptr %i.zj, align 4, !tbaa !15
  %i.zm = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !15
  %i.zp = fadd float %i.zm, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.next201.i ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !15
  %i.zs = fadd float %i.zp, %i.zr
  store float %i.zs, ptr %i.zq, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.pg
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph517, !llvm.loop !93

.lr.ph104.i:                                      ; preds = %scalar.ph552, %middle.block574
  %i.zt = add i64 %i.k, 4294967294
  %i.zu = and i64 %i.zt, 4294967295               ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.zu
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.po
  %i.zx = getelementptr inbounds i8, ptr %i.zw, i64 -8
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.po
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.jc, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter637 = and i64 %i.pg, 1
  %i.aab = icmp eq i32 %i.dj, 3
  %i.aac = and i64 %i.pg, 2147483646
  %i.aad = add nsw i64 %i.aac, -4
  %lcmp.mod639.not = icmp eq i64 %xtraiter637, 0
  %lcmp.mod642 = trunc i32 %i.dj to i1
  %xtraiter645 = and i64 %wide.trip.count221.i, 1
  %i.aae = icmp eq i32 %smax220.i, 1
  %unroll_iter651 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod647.not = icmp eq i64 %xtraiter645, 0
  %lcmp.mod650 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph552:                                     ; preds = %scalar.ph552.preheader, %scalar.ph552
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph552 ], [ %indvars.iv206.i.ph, %scalar.ph552.preheader ] ; 5 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !15
  %i.aah = load float, ptr %i.yi, align 4, !tbaa !15
  %i.aai = fadd float %i.aag, %i.aah
  %i.aaj = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv206.i
  %i.aak = getelementptr i8, ptr %i.aaj, i64 -4
  store float %i.aai, ptr %i.aak, align 4, !tbaa !15
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv206.i
  store i32 %i.di, ptr %i.aal, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.aam = trunc nuw i64 %indvars.iv206.i to i32
  %i.aan = icmp sgt i32 %i.aam, 1
  br i1 %i.aan, label %scalar.ph552, label %.lr.ph104.i, !llvm.loop !94

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check580 = icmp samesign ult i64 %i.po, 4
  %n.vec582 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert583 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat584 = shufflevector <4 x float> %broadcast.splatinsert583, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n590 = icmp eq i64 %i.po, %n.vec582
  %xtraiter653 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod654.not = icmp eq i64 %xtraiter653, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sz, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.di, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.pl, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv223.i
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !15
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.pg ; 2 uses
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !15
  %i.aar = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_calc(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.aar, i32 noundef %i.l, ptr noundef %i.hs, ptr noundef %i.ht, i32 noundef 0)
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next224.i
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !15
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.pg
  store float %i.aat, ptr %i.aau, align 4, !tbaa !15
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.po
  %.156765.i = getelementptr inbounds i8, ptr %i.aav, i64 -4
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.po
  %i.aax = getelementptr inbounds i8, ptr %i.aaw, i64 -8
  %i.aay = load float, ptr %i.aaq, align 4, !tbaa !15
  %i.aaz = load float, ptr %i.zv, align 4, !tbaa !15
  %i.aba = fadd float %i.aay, %i.aaz
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.abd = zext i32 %.055299.i to i64
  %i.abe = icmp eq i64 %indvars.iv.next224.i, %i.abd
  %i.abf = zext i32 %.059194.i to i64             ; 2 uses
  %i.abg = icmp eq i64 %indvars.iv223.i, %i.abf   ; 3 uses
  %or.cond640.i = select i1 %i.abe, i1 true, i1 %i.abg
  %i.abh = icmp eq i64 %indvars.iv.next224.i, %i.abf ; 2 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next224.i
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !19
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next224.i
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !19
  %i.abm = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.zu, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.aba, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.aax, %.lr.ph74.i ], [ %i.add, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.zx, %.lr.ph74.i ], [ %i.adb, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.dj, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.zz, %.lr.ph74.i ], [ %i.adc, %bb.ad ] ; 3 uses
  %i.abn = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.abo = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.abo
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !15
  %i.abr = fadd float %.256271.i, %i.abq          ; 2 uses
  %i.abs = fcmp ogt float %i.abr, %i.abn          ; 2 uses
  %.2582.i = select i1 %i.abs, float %i.abr, float %i.abn ; 2 uses
  %i.abt = trunc nuw i64 %i.abo to i32            ; 3 uses
  %.0546.i = select i1 %i.abs, i32 %.257268.i, i32 %i.abt
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !15
  %i.abw = fadd float %i.abn, %i.abv              ; 2 uses
  %i.abx = fcmp ult float %i.abw, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.abx, i32 %.257268.i, i32 %i.abt
  %.3563.i = select i1 %i.abx, float %.256271.i, float %i.abw ; 2 uses
  %i.aby = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.abz = load float, ptr %i.abb, align 4, !tbaa !15
  %i.aca = fadd float %i.aby, %i.abz              ; 2 uses
  %i.acb = fcmp ogt float %i.aca, %.2582.i
  br i1 %i.acb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
end_hunk_1
begin_hunk_2_@Lalignmm_hmout:bb.a
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv.next227.i
  store float %i.agj, ptr %i.agk, align 4, !tbaa !15
  %indvars.iv.next227.i.1 = add nuw nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv.next227.i.1
  %i.agm = load float, ptr %i.agl, align 4, !tbaa !15
  %i.agn = fdiv float %i.agm, %.5.i
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv.next227.i.1
  store float %i.agn, ptr %i.ago, align 4, !tbaa !15
  %indvars.iv.next227.i.2 = add nuw nsw i64 %indvars.iv226.i, 3 ; 2 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %indvars.iv.next227.i.2
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !15
  %i.agr = fdiv float %i.agq, %.5.i
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.afp, i64 %indvars.iv.next227.i.2
  store float %i.agr, ptr %i.ags, align 4, !tbaa !15
  %indvars.iv.next227.i.3 = add nuw nsw i64 %indvars.iv226.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next227.i.3, %i.po
  br i1 %exitcond231.not.i.3, label %._crit_edge109.i, label %scalar.ph579, !llvm.loop !101

._crit_edge109.i:                                 ; preds = %scalar.ph579.prol.loopexit, %scalar.ph579, %middle.block589
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count236.i
  br i1 %exitcond237.not.i, label %._crit_edge112.split.i, label %.preheader2.i, !llvm.loop !102

._crit_edge112.split.i:                           ; preds = %._crit_edge109.i
  tail call void @FreeFloatVec(ptr noundef %i.gz) #12
  tail call void @FreeFloatVec(ptr noundef %i.hb) #12
  tail call void @FreeFloatVec(ptr noundef nonnull %i.hl) #12
  tail call void @FreeFloatVec(ptr noundef nonnull %i.hm) #12
  tail call void @FreeFloatVec(ptr noundef %i.hc) #12
  tail call void @FreeFloatVec(ptr noundef %i.he) #12
  tail call void @FreeFloatVec(ptr noundef %i.hd) #12
  tail call void @FreeIntVec(ptr noundef %i.hf) #12
  tail call void @FreeIntVec(ptr noundef %i.hg) #12
  tail call void @FreeIntVec(ptr noundef %i.hh) #12
  tail call void @FreeIntVec(ptr noundef %i.hi) #12
  tail call void @FreeIntVec(ptr noundef %i.hj) #12
  tail call void @FreeIntVec(ptr noundef %i.hk) #12
  tail call void @FreeFloatVec(ptr noundef nonnull %i.hn) #12
  tail call void @FreeIntVec(ptr noundef %i.ho) #12
  tail call void @FreeFloatMtx(ptr noundef %i.hs) #12
  tail call void @FreeIntMtx(ptr noundef %i.ht) #12
  tail call void @FreeFloatMtx(ptr noundef nonnull %i.hu) #12
  tail call void @FreeFloatMtx(ptr noundef %i.hv) #12
  br label %MSalignmm_rec.exit

MSalignmm_rec.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph121.split.us.i
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod658.not, label %MSalignmm_rec.exit, label %.lr.ph121.split.us.i.epil.preheader

.lr.ph121.split.us.i.epil.preheader:              ; preds = %MSalignmm_rec.exit.loopexit.unr-lcssa, %.lr.ph121.split.us.i.preheader
  %indvars.iv249.i.epil.init = phi i64 [ 0, %.lr.ph121.split.us.i.preheader ], [ %indvars.iv.next250.i.7, %MSalignmm_rec.exit.loopexit.unr-lcssa ]
  %lcmp.mod659 = icmp ne i64 %xtraiter656, 0
  tail call void @llvm.assume(i1 %lcmp.mod659)
  br label %.lr.ph121.split.us.i.epil

.lr.ph121.split.us.i.epil:                        ; preds = %.lr.ph121.split.us.i.epil, %.lr.ph121.split.us.i.epil.preheader
  %indvars.iv249.i.epil = phi i64 [ %indvars.iv.next250.i.epil, %.lr.ph121.split.us.i.epil ], [ %indvars.iv249.i.epil.init, %.lr.ph121.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter657 = phi i64 [ %epil.iter657.next, %.lr.ph121.split.us.i.epil ], [ 0, %.lr.ph121.split.us.i.epil.preheader ]
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i.epil
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !10
  store i8 0, ptr %i.agu, align 1, !tbaa !20
  %indvars.iv.next250.i.epil = add nuw nsw i64 %indvars.iv249.i.epil, 1
  %epil.iter657.next = add i64 %epil.iter657, 1   ; 2 uses
  %epil.iter657.cmp.not = icmp eq i64 %epil.iter657.next, %xtraiter656
  br i1 %epil.iter657.cmp.not, label %MSalignmm_rec.exit, label %.lr.ph121.split.us.i.epil, !llvm.loop !103

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
  %i.agv = load ptr, ptr %1, align 8, !tbaa !10
  %i.agw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agv) #13
  br i1 %i.ab, label %.lr.ph203, label %.preheader

.lr.ph203:                                        ; preds = %MSalignmm_rec.exit
  %i.agx = load ptr, ptr %0, align 8, !tbaa !10
  %i.agy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.agx) #13
  %sext175 = shl i64 %i.agy, 32
  %i.agz = ashr exact i64 %sext175, 32
  %wide.trip.count233 = zext nneg i32 %4 to i64
  br label %bb.aq

.preheader:                                       ; preds = %bb.as, %MSalignmm_rec.exit
  br i1 %i.ad, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.preheader
  %sext = shl i64 %i.agw, 32
  %i.aha = ashr exact i64 %sext, 32
  %wide.trip.count238 = zext nneg i32 %5 to i64
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph203, %bb.as
  %indvars.iv230 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next231, %bb.as ] ; 3 uses
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv230
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !10
  %i.ahd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahc) #13
  %.not176 = icmp eq i64 %i.ahd, %i.agz
  br i1 %.not176, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ahe = trunc nuw nsw i64 %indvars.iv230 to i32
  %i.ahf = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ahg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahf, ptr noundef nonnull @.str, i32 noundef %i.ahe, i32 noundef %4) #14 ; 0 uses
  %i.ahh = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite177 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr %i.ahh) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.as:                                            ; preds = %bb.aq
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.preheader, label %bb.aq, !llvm.loop !104

bb.at:                                            ; preds = %.lr.ph205, %bb.av
  %indvars.iv235 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next236, %bb.av ] ; 3 uses
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv235
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !10
  %i.ahk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ahj) #13
  %.not174 = icmp eq i64 %i.ahk, %i.aha
  br i1 %.not174, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ahl = trunc nuw nsw i64 %indvars.iv235 to i32
  %i.ahm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ahn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahm, ptr noundef nonnull @.str.2, i32 noundef %i.ahl, i32 noundef %5) #14 ; 0 uses
  %i.aho = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 42, i64 1, ptr %i.aho) #15 ; 0 uses
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
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #13 ; 9 uses
  %i.l = trunc i64 %i.k to i32                    ; 21 uses
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
  %i.aw = getelementptr i8, ptr %i.u, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.x, i64 %i.av
  %bound0 = icmp ult ptr %i.u, %i.ax
  %bound1 = icmp ult ptr %i.x, %i.aw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.az = fpext <4 x float> %wide.load to <4 x double>
  %i.ba = fsub <4 x double> splat (double 1.000000e+00), %i.az
  %i.bb = fmul <4 x double> %i.ba, splat (double 5.000000e-01)
  %i.bc = fmul <4 x double> %i.bb, %broadcast.splat
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %i.ay, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load275 = load <4 x float>, ptr %i.be, align 4, !tbaa !15, !alias.scope !221
  %i.bf = fpext <4 x float> %wide.load275 to <4 x double>
  %i.bg = fsub <4 x double> splat (double 1.000000e+00), %i.bf
  %i.bh = fmul <4 x double> %i.bg, splat (double 5.000000e-01)
  %i.bi = fmul <4 x double> %i.bh, %broadcast.splat
  %i.bj = fptrunc <4 x double> %i.bi to <4 x float>
  store <4 x float> %i.bj, ptr %i.be, align 4, !tbaa !15, !alias.scope !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count226, %n.vec
  br i1 %cmp.n, label %.preheader191, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph202, %middle.block
  %indvars.iv223.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph202 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader191:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bl = icmp sgt i32 %i.l, 0
  br i1 %i.bl, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %.preheader191
  %i.bm = fpext float %i.b to double              ; 3 uses
  %wide.trip.count231 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check282 = icmp samesign ult i64 %wide.trip.count231, 4
  br i1 %min.iters.check282, label %scalar.ph281.preheader, label %vector.memcheck283

vector.memcheck283:                               ; preds = %.lr.ph204
  %i.bn = shl nuw nsw i64 %wide.trip.count231, 2  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.w, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.y, i64 %i.bn
  %bound0284 = icmp ult ptr %i.w, %i.bp
  %bound1285 = icmp ult ptr %i.y, %i.bo
  %found.conflict286 = and i1 %bound0284, %bound1285
  br i1 %found.conflict286, label %scalar.ph281.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck283
  %n.vec288 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert289 = insertelement <4 x double> poison, double %i.bm, i64 0
  %broadcast.splat290 = shufflevector <4 x double> %broadcast.splatinsert289, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph287
  %index292 = phi i64 [ 0, %vector.ph287 ], [ %index.next295, %vector.body291 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index292 ; 2 uses
  %wide.load293 = load <4 x float>, ptr %i.bq, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.br = fpext <4 x float> %wide.load293 to <4 x double>
  %i.bs = fsub <4 x double> splat (double 1.000000e+00), %i.br
  %i.bt = fmul <4 x double> %i.bs, splat (double 5.000000e-01)
  %i.bu = fmul <4 x double> %i.bt, %broadcast.splat290
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.bq, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index292 ; 2 uses
  %wide.load294 = load <4 x float>, ptr %i.bw, align 4, !tbaa !15, !alias.scope !223
  %i.bx = fpext <4 x float> %wide.load294 to <4 x double>
  %i.by = fsub <4 x double> splat (double 1.000000e+00), %i.bx
  %i.bz = fmul <4 x double> %i.by, splat (double 5.000000e-01)
  %i.ca = fmul <4 x double> %i.bz, %broadcast.splat290
  %i.cb = fptrunc <4 x double> %i.ca to <4 x float>
  store <4 x float> %i.cb, ptr %i.bw, align 4, !tbaa !15, !alias.scope !223
  %index.next295 = add nuw i64 %index292, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.cc, label %middle.block296, label %vector.body291, !llvm.loop !147

middle.block296:                                  ; preds = %vector.body291
  %cmp.n297 = icmp eq i64 %wide.trip.count231, %n.vec288
  br i1 %cmp.n297, label %._crit_edge205, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %vector.memcheck283, %.lr.ph204, %middle.block296
  %indvars.iv228.ph = phi i64 [ 0, %vector.memcheck283 ], [ 0, %.lr.ph204 ], [ %n.vec288, %middle.block296 ]
  br label %scalar.ph281

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %scalar.ph ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !15
  %i.cf = fpext float %i.ce to double
  %i.cg = fsub double 1.000000e+00, %i.cf
  %i.ch = fmul double %i.cg, 5.000000e-01
  %i.ci = fmul double %i.ch, %i.au
  %i.cj = fptrunc double %i.ci to float
  store float %i.cj, ptr %i.cd, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv223 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cm = fpext float %i.cl to double
  %i.cn = fsub double 1.000000e+00, %i.cm
  %i.co = fmul double %i.cn, 5.000000e-01
  %i.cp = fmul double %i.co, %i.au
  %i.cq = fptrunc double %i.cp to float
  store float %i.cq, ptr %i.ck, align 4, !tbaa !15
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %.preheader191, label %scalar.ph, !llvm.loop !148

scalar.ph281:                                     ; preds = %scalar.ph281.preheader, %scalar.ph281
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %scalar.ph281 ], [ %indvars.iv228.ph, %scalar.ph281.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv228 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15
  %i.ct = fpext float %i.cs to double
  %i.cu = fsub double 1.000000e+00, %i.ct
  %i.cv = fmul double %i.cu, 5.000000e-01
  %i.cw = fmul double %i.cv, %i.bm
  %i.cx = fptrunc double %i.cw to float
  store float %i.cx, ptr %i.cr, align 4, !tbaa !15
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv228 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !15
  %i.da = fpext float %i.cz to double
  %i.db = fsub double 1.000000e+00, %i.da
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fmul double %i.dc, %i.bm
  %i.de = fptrunc double %i.dd to float
  store float %i.de, ptr %i.cy, align 4, !tbaa !15
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge205, label %scalar.ph281, !llvm.loop !149

._crit_edge205:                                   ; preds = %scalar.ph281, %middle.block296, %.preheader191
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.df, align 8, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.dg, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.dh, align 8, !tbaa !19
  %i.di = add i32 %i.i, -1                        ; 9 uses
  %i.dj = add nsw i32 %i.l, -1                    ; 6 uses
  %i.dk = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr @reccycle, align 4, !tbaa !7
  %i.dm = icmp slt i32 %i.l, 1
  br i1 %i.dm, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge205
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext188 = shl i64 %i.h, 32
  %i.dn = ashr exact i64 %sext188, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %8 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalign2m2m_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %9 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter660 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.do = icmp ult i32 %9, 8
  br i1 %i.do, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter664 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter665 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter665.next.7, %.lr.ph121.split.us.i ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10
  store i8 0, ptr %i.dq, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !10
  store i8 0, ptr %i.dt, align 1, !tbaa !20
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !10
  store i8 0, ptr %i.dw, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !10
  store i8 0, ptr %i.dz, align 1, !tbaa !20
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !10
  store i8 0, ptr %i.ec, align 1, !tbaa !20
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10
  store i8 0, ptr %i.ef, align 1, !tbaa !20
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !10
  store i8 0, ptr %i.ei, align 1, !tbaa !20
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  store i8 0, ptr %i.el, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter665.next.7 = add i64 %niter665, 8         ; 2 uses
  %niter665.ncmp.7 = icmp eq i64 %niter665.next.7, %unroll_iter664
  br i1 %niter665.ncmp.7, label %MSalign2m2m_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !150

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !10
  %i.eq = tail call ptr @strncpy(ptr noundef %i.en, ptr noundef %i.ep, i64 noundef %i.dn) #12 ; 0 uses
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !10
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.dn
  store i8 0, ptr %i.es, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i.a = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i.a, label %.preheader.i, label %bb.k, !llvm.loop !151

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10
  store i8 0, ptr %i.eu, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.ew, %bb.l ] ; 2 uses
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.ev)
  %endptr.i = getelementptr inbounds i8, ptr %i.ev, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.ew = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.di
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !152

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalign2m2m_rec.exit, label %.lr.ph118.i, !llvm.loop !150

bb.m:                                             ; preds = %._crit_edge205
  %i.ex = tail call ptr @AllocateCharMtx(i32 noundef %8, i32 noundef 0) #12 ; 8 uses
  %i.ey = tail call ptr @AllocateCharMtx(i32 noundef %9, i32 noundef 0) #12 ; 8 uses
  %i.ez = ptrtoaddr ptr %i.ey to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.fa = ptrtoaddr ptr %i.ex to i64
  %wide.trip.count.i = zext nneg i32 %8 to i64    ; 5 uses
  %min.iters.check301 = icmp ult i32 %8, 8
  %i.fb = sub i64 %i.p, %i.fa
  %diff.check = icmp ugt i64 %i.fb, -32
  %or.cond = select i1 %min.iters.check301, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %.lr.ph.preheader.i
  %n.vec303 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next308, %vector.body304 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index305 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load306 = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !10
  %wide.load307 = load <2 x ptr>, ptr %i.fd, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index305 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x ptr> %wide.load306, ptr %i.fe, align 8, !tbaa !10
  store <2 x ptr> %wide.load307, ptr %i.ff, align 8, !tbaa !10
  %index.next308 = add nuw i64 %index305, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next308, %n.vec303
  br i1 %i.fg, label %middle.block309, label %vector.body304, !llvm.loop !153

middle.block309:                                  ; preds = %vector.body304
  %cmp.n310 = icmp eq i64 %n.vec303, %wide.trip.count.i
  br i1 %cmp.n310, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block309
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec303, %middle.block309 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i.prol
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !154

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fk = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block309, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %9 to i64 ; 5 uses
  %min.iters.check315 = icmp ult i32 %9, 8
  %i.fm = sub i64 %i.r, %i.ez
  %diff.check313 = icmp ugt i64 %i.fm, -32
  %or.cond596 = select i1 %min.iters.check315, i1 true, i1 %diff.check313
  br i1 %or.cond596, label %.lr.ph17.i.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec317 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body318 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index319 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load320 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !10
  %wide.load321 = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %index319 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <2 x ptr> %wide.load320, ptr %i.fp, align 8, !tbaa !10
  store <2 x ptr> %wide.load321, ptr %i.fq, align 8, !tbaa !10
  %index.next322 = add nuw i64 %index319, 4       ; 2 uses
  %i.fr = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.fr, label %middle.block323, label %vector.body318, !llvm.loop !155

middle.block323:                                  ; preds = %vector.body318
  %cmp.n324 = icmp eq i64 %n.vec317, %wide.trip.count134.i
  br i1 %cmp.n324, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_2
begin_hunk_3_@Lalign2m2m_hmout:bb.a
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.prol
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !15
  %i.uv = fadd float %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !15
  %i.uy = fadd float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !15
  br label %scalar.ph486.prol.loopexit

scalar.ph486.prol.loopexit:                       ; preds = %scalar.ph486.prol, %scalar.ph486.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph486.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph486.prol ]
  %i.uz = add nsw i64 %i.pg, -1
  %i.va = icmp eq i64 %indvars.iv189.i.ph, %i.uz
  br i1 %i.va, label %.lr.ph60.i.preheader, label %scalar.ph486

.lr.ph60.i.preheader:                             ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486, %middle.block507
  %xtraiter632 = and i64 %i.sz, 1
  %i.vb = icmp eq i32 %i.di, 1
  br i1 %i.vb, label %.lr.ph60.i.epil.preheader, label %.lr.ph60.i.preheader.new

.lr.ph60.i.preheader.new:                         ; preds = %.lr.ph60.i.preheader
  %unroll_iter636 = and i64 %i.sz, 4294967294
  br label %.lr.ph60.i

scalar.ph451:                                     ; preds = %scalar.ph451.prol.loopexit, %scalar.ph451
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph451 ], [ %indvars.iv184.i.unr, %scalar.ph451.prol.loopexit ] ; 3 uses
  %i.vc = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !15
  %i.vf = fadd float %i.vc, %i.ve
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv184.i ; 2 uses
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !15
  %i.vi = fadd float %i.vh, %i.vf
  store float %i.vi, ptr %i.vg, align 4, !tbaa !15
  %i.vj = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !15
  %i.vm = fadd float %i.vj, %i.vl
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next185.i ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !15
  %i.vp = fadd float %i.vo, %i.vm
  store float %i.vp, ptr %i.vn, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sz
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph451, !llvm.loop !194

scalar.ph486:                                     ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph486 ], [ %indvars.iv189.i.unr, %scalar.ph486.prol.loopexit ] ; 3 uses
  %i.vq = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !15
  %i.vt = fadd float %i.vq, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !15
  %i.vw = fadd float %i.vv, %i.vt
  store float %i.vw, ptr %i.vu, align 4, !tbaa !15
  %i.vx = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !15
  %i.wa = fadd float %i.vx, %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !15
  %i.wd = fadd float %i.wc, %i.wa
  store float %i.wd, ptr %i.wb, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.pg
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph486, !llvm.loop !195

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod634.not = icmp eq i64 %xtraiter632, 0
  br i1 %lcmp.mod634.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.preheader
  %indvars.iv195.i.epil.init = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph62.i.unr-lcssa ] ; 2 uses
  %lcmp.mod635 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod635)
  %i.we = load float, ptr %i.ta, align 4, !tbaa !15
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv195.i.epil.init
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !15
  %i.wi = fadd float %i.we, %i.wh
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv195.i.epil.init
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !19
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.pg ; 2 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !15
  %i.wn = fadd float %i.wi, %i.wm
  store float %i.wn, ptr %i.wl, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.sz
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !19 ; 7 uses
  %min.iters.check522 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph62.i
  %i.wq = shl nuw nsw i64 %i.pg, 2                ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wp, i64 %i.wq  ; 2 uses
  %i.ws = add nuw nsw i64 %i.wq, 4                ; 2 uses
  %i.wt = getelementptr i8, ptr %i.y, i64 %i.ws
  %i.wu = getelementptr i8, ptr %i.w, i64 4
  %i.wv = getelementptr i8, ptr %i.w, i64 %i.ws
  %bound0524 = icmp ult ptr %i.wp, %i.wt
  %bound1525 = icmp ult ptr %i.ua, %i.wr
  %found.conflict526 = and i1 %bound0524, %bound1525
  %bound0527 = icmp ult ptr %i.wp, %i.wv
  %bound1528 = icmp ult ptr %i.wu, %i.wr
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx530 = or i1 %found.conflict526, %found.conflict529
  br i1 %conflict.rdx530, label %scalar.ph521.preheader, label %vector.ph531

vector.ph531:                                     ; preds = %vector.memcheck523
  %n.vec532 = and i64 %i.pg, 2147483640           ; 3 uses
  %i.ww = load float, ptr %i.ua, align 4, !tbaa !15, !alias.scope !244
  %broadcast.splatinsert537 = insertelement <4 x float> poison, float %i.ww, i64 0
  %broadcast.splat538 = shufflevector <4 x float> %broadcast.splatinsert537, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph531
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next541, %vector.body533 ] ; 3 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index534 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 20
  %wide.load535 = load <4 x float>, ptr %i.wy, align 4, !tbaa !15, !alias.scope !245
  %wide.load536 = load <4 x float>, ptr %i.wz, align 4, !tbaa !15, !alias.scope !245
  %i.xa = fadd <4 x float> %broadcast.splat538, %wide.load535
  %i.xb = fadd <4 x float> %broadcast.splat538, %wide.load536
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %index534 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %wide.load539 = load <4 x float>, ptr %i.xc, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %wide.load540 = load <4 x float>, ptr %i.xd, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %i.xe = fadd <4 x float> %i.xa, %wide.load539
  %i.xf = fadd <4 x float> %i.xb, %wide.load540
  store <4 x float> %i.xe, ptr %i.xc, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  store <4 x float> %i.xf, ptr %i.xd, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %index.next541 = add nuw i64 %index534, 8       ; 2 uses
  %i.xg = icmp eq i64 %index.next541, %n.vec532
  br i1 %i.xg, label %middle.block542, label %vector.body533, !llvm.loop !200

middle.block542:                                  ; preds = %vector.body533
  %cmp.n543 = icmp eq i64 %n.vec532, %i.pg
  br i1 %cmp.n543, label %.lr.ph64.i, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %vector.memcheck523, %.lr.ph62.i, %middle.block542
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck523 ], [ 0, %.lr.ph62.i ], [ %n.vec532, %middle.block542 ] ; 4 uses
  %xtraiter638 = and i64 %i.pg, 1
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod639.not, label %scalar.ph521.prol.loopexit, label %scalar.ph521.prol

scalar.ph521.prol:                                ; preds = %scalar.ph521.preheader
  %i.xh = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !15
  %i.xk = fadd float %i.xh, %i.xj
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv200.i.ph ; 2 uses
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !15
  %i.xn = fadd float %i.xk, %i.xm
  store float %i.xn, ptr %i.xl, align 4, !tbaa !15
  br label %scalar.ph521.prol.loopexit

scalar.ph521.prol.loopexit:                       ; preds = %scalar.ph521.prol, %scalar.ph521.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph521.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph521.prol ]
  %i.xo = add nsw i64 %i.pg, -1
  %i.xp = icmp eq i64 %indvars.iv200.i.ph, %i.xo
  br i1 %i.xp, label %.lr.ph64.i, label %scalar.ph521

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader.new
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter637 = phi i64 [ 0, %.lr.ph60.i.preheader.new ], [ %niter637.next.1, %.lr.ph60.i ]
  %i.xq = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !15
  %i.xt = fadd float %i.xq, %i.xs
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv195.i
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !19
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.pg ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !15
  %i.xy = fadd float %i.xt, %i.xx
  store float %i.xy, ptr %i.xw, align 4, !tbaa !15
  %i.xz = load float, ptr %i.ta, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 3 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !15
  %i.yc = fadd float %i.xz, %i.yb
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next196.i
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !19
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.pg ; 2 uses
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !15
  %i.yh = fadd float %i.yc, %i.yg
  store float %i.yh, ptr %i.yf, align 4, !tbaa !15
  %niter637.next.1 = add nuw i64 %niter637, 2     ; 2 uses
  %niter637.ncmp.1 = icmp eq i64 %niter637.next.1, %unroll_iter636
  br i1 %niter637.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !201

.lr.ph64.i:                                       ; preds = %scalar.ph521.prol.loopexit, %scalar.ph521, %middle.block542
  %i.yi = getelementptr i8, ptr %i.ua, i64 -4     ; 3 uses
  %16 = add i64 %i.k, 4294967294
  %17 = and i64 %16, 4294967295                   ; 3 uses
  %i.yj = add nuw nsw i64 %17, 1                  ; 2 uses
  %min.iters.check557 = icmp samesign ult i64 %17, 19
  br i1 %min.iters.check557, label %scalar.ph556.preheader, label %vector.memcheck558

vector.memcheck558:                               ; preds = %.lr.ph64.i
  %i.yk = shl nuw nsw i64 %i.pg, 2                ; 4 uses
  %i.yl = shl nuw nsw i64 %17, 2                  ; 2 uses
  %i.ym = add nsw i64 %i.yk, -4
  %i.yn = sub nsw i64 %i.ym, %i.yl
  %i.yo = getelementptr i8, ptr %i.hn, i64 %i.yn  ; 2 uses
  %i.yp = getelementptr i8, ptr %i.hn, i64 %i.yk  ; 2 uses
  %i.yq = sub nsw i64 %i.yk, %i.yl
  %i.yr = getelementptr i8, ptr %.057648.i, i64 %i.yq
  %i.ys = getelementptr i8, ptr %.057648.i, i64 %i.yk
  %i.yt = getelementptr i8, ptr %i.ys, i64 4
  %bound0559 = icmp ult ptr %i.yo, %i.yt
  %bound1560 = icmp ult ptr %i.yr, %i.yp
  %found.conflict561 = and i1 %bound0559, %bound1560
  %bound0562 = icmp ult ptr %i.yo, %i.ua
  %bound1563 = icmp ult ptr %i.yi, %i.yp
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx565 = or i1 %found.conflict561, %found.conflict564
  br i1 %conflict.rdx565, label %scalar.ph556.preheader, label %vector.ph566

vector.ph566:                                     ; preds = %vector.memcheck558
  %n.vec567 = and i64 %i.yj, 8589934588           ; 3 uses
  %broadcast.splatinsert568 = insertelement <4 x i32> poison, i32 %i.di, i64 0
  %broadcast.splat569 = shufflevector <4 x i32> %broadcast.splatinsert568, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.yu = sub nsw i64 %i.pg, %n.vec567
  %i.yv = load float, ptr %i.yi, align 4, !tbaa !15, !alias.scope !248
  %broadcast.splatinsert574 = insertelement <4 x float> poison, float %i.yv, i64 0
  %i.yw = shufflevector <4 x float> %broadcast.splatinsert574, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph566
  %index571 = phi i64 [ 0, %vector.ph566 ], [ %index.next577, %vector.body570 ] ; 2 uses
  %i.yx = sub i64 %i.pg, %index571                ; 3 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.yx
  %i.yz = getelementptr inbounds i8, ptr %i.yy, i64 -12
  %wide.load572 = load <4 x float>, ptr %i.yz, align 4, !tbaa !15, !alias.scope !249
  %i.za = getelementptr [4 x i8], ptr %i.hn, i64 %i.yx
  %i.zb = getelementptr i8, ptr %i.za, i64 -16
  %reverse576 = fadd <4 x float> %wide.load572, %i.yw
  store <4 x float> %reverse576, ptr %i.zb, align 4, !tbaa !15, !alias.scope !250, !noalias !251
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.yx
  %i.zd = getelementptr inbounds i8, ptr %i.zc, i64 -12
  store <4 x i32> %broadcast.splat569, ptr %i.zd, align 4, !tbaa !7
  %index.next577 = add nuw i64 %index571, 4       ; 2 uses
  %i.ze = icmp eq i64 %index.next577, %n.vec567
  br i1 %i.ze, label %middle.block578, label %vector.body570, !llvm.loop !206

middle.block578:                                  ; preds = %vector.body570
  %cmp.n579 = icmp eq i64 %i.yj, %n.vec567
  br i1 %cmp.n579, label %.lr.ph104.i, label %scalar.ph556.preheader

scalar.ph556.preheader:                           ; preds = %vector.memcheck558, %.lr.ph64.i, %middle.block578
  %indvars.iv206.i.ph = phi i64 [ %i.pg, %vector.memcheck558 ], [ %i.pg, %.lr.ph64.i ], [ %i.yu, %middle.block578 ]
  br label %scalar.ph556

scalar.ph521:                                     ; preds = %scalar.ph521.prol.loopexit, %scalar.ph521
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph521 ], [ %indvars.iv200.i.unr, %scalar.ph521.prol.loopexit ] ; 3 uses
  %i.zf = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !15
  %i.zi = fadd float %i.zf, %i.zh
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv200.i ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !15
  %i.zl = fadd float %i.zi, %i.zk
  store float %i.zl, ptr %i.zj, align 4, !tbaa !15
  %i.zm = load float, ptr %i.ua, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !15
  %i.zp = fadd float %i.zm, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.next201.i ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !15
  %i.zs = fadd float %i.zp, %i.zr
  store float %i.zs, ptr %i.zq, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.pg
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph521, !llvm.loop !207

.lr.ph104.i:                                      ; preds = %scalar.ph556, %middle.block578
  %i.zt = add i64 %i.k, 4294967294
  %i.zu = and i64 %i.zt, 4294967295               ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.zu
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.po
  %i.zx = getelementptr inbounds i8, ptr %i.zw, i64 -8
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.po
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.jc, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter641 = and i64 %i.pg, 1
  %i.aab = icmp eq i32 %i.dj, 3
  %i.aac = and i64 %i.pg, 2147483646
  %i.aad = add nsw i64 %i.aac, -4
  %lcmp.mod643.not = icmp eq i64 %xtraiter641, 0
  %lcmp.mod646 = trunc i32 %i.dj to i1
  %xtraiter649 = and i64 %wide.trip.count221.i, 1
  %i.aae = icmp eq i32 %smax220.i, 1
  %unroll_iter655 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod651.not = icmp eq i64 %xtraiter649, 0
  %lcmp.mod654 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph556:                                     ; preds = %scalar.ph556.preheader, %scalar.ph556
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph556 ], [ %indvars.iv206.i.ph, %scalar.ph556.preheader ] ; 5 uses
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !15
  %i.aah = load float, ptr %i.yi, align 4, !tbaa !15
  %i.aai = fadd float %i.aag, %i.aah
  %i.aaj = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv206.i
  %i.aak = getelementptr i8, ptr %i.aaj, i64 -4
  store float %i.aai, ptr %i.aak, align 4, !tbaa !15
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %indvars.iv206.i
  store i32 %i.di, ptr %i.aal, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.aam = trunc nuw i64 %indvars.iv206.i to i32
  %i.aan = icmp sgt i32 %i.aam, 1
  br i1 %i.aan, label %scalar.ph556, label %.lr.ph104.i, !llvm.loop !208

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check584 = icmp samesign ult i64 %i.po, 4
  %n.vec586 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert587 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat588 = shufflevector <4 x float> %broadcast.splatinsert587, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n594 = icmp eq i64 %i.po, %n.vec586
  %xtraiter657 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sz, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.di, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.pl, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv223.i
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !15
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.pg ; 2 uses
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !15
  %i.aar = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_ribosum(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.aar, i32 noundef %i.l, ptr noundef %i.hs, ptr noundef %i.ht, i32 noundef 0)
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.next224.i
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !15
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.pg
  store float %i.aat, ptr %i.aau, align 4, !tbaa !15
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.po
  %.156765.i = getelementptr inbounds i8, ptr %i.aav, i64 -4
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.po
  %i.aax = getelementptr inbounds i8, ptr %i.aaw, i64 -8
  %i.aay = load float, ptr %i.aaq, align 4, !tbaa !15
  %i.aaz = load float, ptr %i.zv, align 4, !tbaa !15
  %i.aba = fadd float %i.aay, %i.aaz
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.abd = zext i32 %.055299.i to i64
  %i.abe = icmp eq i64 %indvars.iv.next224.i, %i.abd
  %i.abf = zext i32 %.059194.i to i64             ; 2 uses
  %i.abg = icmp eq i64 %indvars.iv223.i, %i.abf   ; 3 uses
  %or.cond640.i = select i1 %i.abe, i1 true, i1 %i.abg
  %i.abh = icmp eq i64 %indvars.iv.next224.i, %i.abf ; 2 uses
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next224.i
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !19
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next224.i
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !19
  %i.abm = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.zu, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.aba, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.aax, %.lr.ph74.i ], [ %i.add, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.zx, %.lr.ph74.i ], [ %i.adb, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.dj, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.zz, %.lr.ph74.i ], [ %i.adc, %bb.ad ] ; 3 uses
  %i.abn = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.abo = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.abo
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !15
  %i.abr = fadd float %.256271.i, %i.abq          ; 2 uses
  %i.abs = fcmp ogt float %i.abr, %i.abn          ; 2 uses
  %.2582.i = select i1 %i.abs, float %i.abr, float %i.abn ; 2 uses
  %i.abt = trunc nuw i64 %i.abo to i32            ; 3 uses
  %.0546.i = select i1 %i.abs, i32 %.257268.i, i32 %i.abt
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !15
  %i.abw = fadd float %i.abn, %i.abv              ; 2 uses
  %i.abx = fcmp ult float %i.abw, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.abx, i32 %.257268.i, i32 %i.abt
  %.3563.i = select i1 %i.abx, float %.256271.i, float %i.abw ; 2 uses
  %i.aby = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.abz = load float, ptr %i.abb, align 4, !tbaa !15
  %i.aca = fadd float %i.aby, %i.abz              ; 2 uses
  %i.acb = fcmp ogt float %i.aca, %.2582.i
  br i1 %i.acb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
end_hunk_3
begin_hunk_4_@match_ribosum:bb.a
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %broadcast.splat150, <4 x float> %i.gm)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.db, i64 4588
  %wide.load193 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !7
  %i.gr = sitofp <4 x i32> %wide.load193 to <4 x float>
  %i.gs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %broadcast.splat152, <4 x float> %i.gp)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.db, i64 4736
  %wide.load194 = load <4 x i32>, ptr %i.gt, align 16, !tbaa !7
  %i.gu = sitofp <4 x i32> %wide.load194 to <4 x float>
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %broadcast.splat154, <4 x float> %i.gs)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.db, i64 4884
  %wide.load195 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !7
  %i.gx = sitofp <4 x i32> %wide.load195 to <4 x float>
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %broadcast.splat156, <4 x float> %i.gv)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.db, i64 5032
  %wide.load196 = load <4 x i32>, ptr %i.gz, align 8, !tbaa !7
  %i.ha = sitofp <4 x i32> %wide.load196 to <4 x float>
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ha, <4 x float> %broadcast.splat158, <4 x float> %i.gy)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.db, i64 5180
  %wide.load197 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !7
  %i.hd = sitofp <4 x i32> %wide.load197 to <4 x float>
  %i.he = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %broadcast.splat160, <4 x float> %i.hb)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.db, i64 5328
  %wide.load198 = load <4 x i32>, ptr %i.hf, align 16, !tbaa !7
  %i.hg = sitofp <4 x i32> %wide.load198 to <4 x float>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %broadcast.splat162, <4 x float> %i.he)
  store <4 x float> %i.hh, ptr %i.da, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hi = icmp eq i64 %index.next, 36
  br i1 %i.hi, label %scalar.ph, label %vector.body, !llvm.loop !259

scalar.ph:                                        ; preds = %vector.body
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.hk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 144), align 16, !tbaa !7
  %i.hl = sitofp i32 %i.hk to float
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.af, float 0.000000e+00)
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 292), align 4, !tbaa !7
  %i.ho = sitofp i32 %i.hn to float
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.ah, float %i.hm)
  %i.hq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 440), align 8, !tbaa !7
  %i.hr = sitofp i32 %i.hq to float
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hr, float %i.aj, float %i.hp)
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 588), align 4, !tbaa !7
  %i.hu = sitofp i32 %i.ht to float
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.al, float %i.hs)
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 736), align 16, !tbaa !7
  %i.hx = sitofp i32 %i.hw to float
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.an, float %i.hv)
  %i.hz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 884), align 4, !tbaa !7
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.ap, float %i.hy)
  %i.ic = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1032), align 8, !tbaa !7
  %i.id = sitofp i32 %i.ic to float
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.ar, float %i.ib)
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1180), align 4, !tbaa !7
  %i.ig = sitofp i32 %i.if to float
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.at, float %i.ie)
  %i.ii = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1328), align 16, !tbaa !7
  %i.ij = sitofp i32 %i.ii to float
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.ij, float %i.av, float %i.ih)
  %i.il = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1476), align 4, !tbaa !7
  %i.im = sitofp i32 %i.il to float
  %i.in = tail call float @llvm.fmuladd.f32(float %i.im, float %i.ax, float %i.ik)
  %i.io = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1624), align 8, !tbaa !7
  %i.ip = sitofp i32 %i.io to float
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.az, float %i.in)
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1772), align 4, !tbaa !7
  %i.is = sitofp i32 %i.ir to float
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.bb, float %i.iq)
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 1920), align 16, !tbaa !7
  %i.iv = sitofp i32 %i.iu to float
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.bd, float %i.it)
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2068), align 4, !tbaa !7
  %i.iy = sitofp i32 %i.ix to float
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.bf, float %i.iw)
  %i.ja = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2216), align 8, !tbaa !7
  %i.jb = sitofp i32 %i.ja to float
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.bh, float %i.iz)
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2364), align 4, !tbaa !7
  %i.je = sitofp i32 %i.jd to float
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.je, float %i.bj, float %i.jc)
  %i.jg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2512), align 16, !tbaa !7
  %i.jh = sitofp i32 %i.jg to float
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jh, float %i.bl, float %i.jf)
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2660), align 4, !tbaa !7
  %i.jk = sitofp i32 %i.jj to float
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.bn, float %i.ji)
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2808), align 8, !tbaa !7
  %i.jn = sitofp i32 %i.jm to float
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.bp, float %i.jl)
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 2956), align 4, !tbaa !7
  %i.jq = sitofp i32 %i.jp to float
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.br, float %i.jo)
  %i.js = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3104), align 16, !tbaa !7
  %i.jt = sitofp i32 %i.js to float
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.bt, float %i.jr)
  %i.jv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3252), align 4, !tbaa !7
  %i.jw = sitofp i32 %i.jv to float
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.bv, float %i.ju)
  %i.jy = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3400), align 8, !tbaa !7
  %i.jz = sitofp i32 %i.jy to float
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.bx, float %i.jx)
  %i.kb = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3548), align 4, !tbaa !7
  %i.kc = sitofp i32 %i.kb to float
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.bz, float %i.ka)
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3696), align 16, !tbaa !7
  %i.kf = sitofp i32 %i.ke to float
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.cb, float %i.kd)
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3844), align 4, !tbaa !7
  %i.ki = sitofp i32 %i.kh to float
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.cd, float %i.kg)
  %i.kk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 3992), align 8, !tbaa !7
  %i.kl = sitofp i32 %i.kk to float
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.cf, float %i.kj)
  %i.kn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 4140), align 4, !tbaa !7
  %i.ko = sitofp i32 %i.kn to float
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.ch, float %i.km)
  %i.kq = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 4288), align 16, !tbaa !7
  %i.kr = sitofp i32 %i.kq to float
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.kr, float %i.cj, float %i.kp)
  %i.kt = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 4436), align 4, !tbaa !7
  %i.ku = sitofp i32 %i.kt to float
  %i.kv = tail call float @llvm.fmuladd.f32(float %i.ku, float %i.cl, float %i.ks)
  %i.kw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 4584), align 8, !tbaa !7
  %i.kx = sitofp i32 %i.kw to float
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kx, float %i.cn, float %i.kv)
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 4732), align 4, !tbaa !7
  %i.la = sitofp i32 %i.kz to float
  %i.lb = tail call float @llvm.fmuladd.f32(float %i.la, float %i.cp, float %i.ky)
  %i.lc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 4880), align 16, !tbaa !7
  %i.ld = sitofp i32 %i.lc to float
  %i.le = tail call float @llvm.fmuladd.f32(float %i.ld, float %i.cr, float %i.lb)
  %i.lf = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 5028), align 4, !tbaa !7
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.ct, float %i.le)
  %i.li = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 5176), align 8, !tbaa !7
  %i.lj = sitofp i32 %i.li to float
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.lj, float %i.cv, float %i.lh)
  %i.ll = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 5324), align 4, !tbaa !7
  %i.lm = sitofp i32 %i.ll to float
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.lm, float %i.cx, float %i.lk)
  %i.lo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ribosumdis, i64 5472), align 16, !tbaa !7
  %i.lp = sitofp i32 %i.lo to float
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.cz, float %i.ln)
  store float %i.lq, ptr %i.hj, align 16, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %scalar.ph, %._crit_edge
  %.in = phi i32 [ %i.lr, %._crit_edge ], [ %4, %scalar.ph ]
  %.072 = phi ptr [ %i.mi, %._crit_edge ], [ %6, %scalar.ph ] ; 2 uses
  %.05071 = phi ptr [ %i.mj, %._crit_edge ], [ %5, %scalar.ph ] ; 2 uses
  %.05170 = phi ptr [ %i.mh, %._crit_edge ], [ %0, %scalar.ph ] ; 3 uses
  %i.lr = add nsw i32 %.in, -1                    ; 2 uses
  store float 0.000000e+00, ptr %.05170, align 4, !tbaa !15
  %i.ls = load ptr, ptr %.072, align 8, !tbaa !23 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7  ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, -1
  br i1 %i.lu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.lv = load ptr, ptr %.05071, align 8, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv86 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next87, %bb.i ] ; 2 uses
  %i.lw = phi float [ 0.000000e+00, %.lr.ph ], [ %i.md, %bb.i ]
  %i.lx = phi i32 [ %i.lt, %.lr.ph ], [ %i.mf, %bb.i ]
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !15
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv86
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !15
  %i.md = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.mc, float %i.lw) ; 2 uses
  store float %i.md, ptr %.05170, align 4, !tbaa !15
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv.next87
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !7  ; 2 uses
  %i.mg = icmp sgt i32 %i.mf, -1
  br i1 %i.mg, label %bb.i, label %._crit_edge, !llvm.loop !260

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.mh = getelementptr inbounds nuw i8, ptr %.05170, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.05071, i64 8
  %.not61 = icmp eq i32 %i.lr, 0
  br i1 %.not61, label %bb.j, label %.preheader, !llvm.loop !261

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"float", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"p1 float", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"p1 int", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !13, !16, !17}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !13, !16, !17}
!34 = distinct !{!34, !13, !16}
!35 = distinct !{!35, !13, !16}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13, !16, !17}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !13, !16, !17}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !13, !16}
!44 = distinct !{!44, !13, !16}
!45 = distinct !{!45, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !13, !16, !17}
!50 = distinct !{!50, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !13, !16, !17}
!55 = distinct !{!55, !13, !16}
!56 = distinct !{!56, !13, !16}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !13, !16, !17}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !"LVerDomain"}
!62 = distinct !{!62, !61}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = distinct !{!65, !13, !16, !17}
!66 = distinct !{!66, !13, !16}
!67 = distinct !{!67, !13, !16}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !70}
!74 = distinct !{!74, !13, !16, !17}
!75 = distinct !{!75, !"LVerDomain"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !75}
!79 = distinct !{!79, !13, !16, !17}
!80 = distinct !{!80, !13, !16}
!81 = distinct !{!81, !13, !16}
!82 = distinct !{!82, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !82}
!86 = distinct !{!86, !13, !16, !17}
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !"LVerDomain"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !88}
!92 = distinct !{!92, !13, !16, !17}
!93 = distinct !{!93, !13, !16}
!94 = distinct !{!94, !13, !16}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13, !16, !17}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !13, !16}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = !{!27}
!107 = !{!28}
!108 = !{!31}
!109 = !{!32}
!110 = !{!46}
!111 = !{!47}
!112 = !{!48}
!113 = !{!46, !47}
!114 = !{!51}
!115 = !{!52}
!116 = !{!53}
!117 = !{!51, !52}
!118 = !{!62}
!119 = !{!63}
!120 = !{!64}
!121 = !{!63, !62}
!122 = !{!71}
!123 = !{!72}
!124 = !{!73}
!125 = !{!71, !72}
!126 = !{!76}
!127 = !{!77}
!128 = !{!78}
!129 = !{!76, !77}
!130 = !{!83}
!131 = !{!84}
!132 = !{!85}
!133 = !{!83, !84}
!134 = !{!89}
!135 = !{!90}
!136 = !{!91}
!137 = !{!90, !89}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !"LVerDomain"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !140}
!143 = distinct !{!143, !13, !16, !17}
!144 = distinct !{!144, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !13, !16, !17}
!148 = distinct !{!148, !13, !16}
!149 = distinct !{!149, !13, !16}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13, !16, !17}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !13, !16, !17}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !13, !16}
!158 = distinct !{!158, !13, !16}
!159 = distinct !{!159, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !159}
!163 = distinct !{!163, !13, !16, !17}
!164 = distinct !{!164, !"LVerDomain"}
!165 = distinct !{!165, !164}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !164}
!168 = distinct !{!168, !13, !16, !17}
!169 = distinct !{!169, !13, !16}
!170 = distinct !{!170, !13, !16}
!171 = distinct !{!171, !13}
end_hunk_4
