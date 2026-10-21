Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlacon?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dlacon_.iter = internal unnamed_addr global i32 0, align 4
@dlacon_.temp = internal unnamed_addr global double 0.000000e+00, align 8
@dlacon_.jump = internal unnamed_addr global i32 0, align 4
@dlacon_.j = internal unnamed_addr global i32 0, align 4
@dlacon_.jlast = internal unnamed_addr global i32 0, align 4
@dlacon_.estold = internal unnamed_addr global double 0.000000e+00, align 8
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dlacon_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -4 ; 3 uses
  %i.b = getelementptr inbounds i8, ptr %2, i64 -8 ; 11 uses
  %i.c = load i32, ptr %5, align 4, !tbaa !20
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !tbaa !20     ; 6 uses
  %.not104135 = icmp slt i32 %i.e, 1
  br i1 %.not104135, label %._crit_edge139, label %iter.check230

iter.check230:                                    ; preds = %bb.b
  %i.f = uitofp nneg i32 %i.e to double
  %i.g = fdiv double 1.000000e+00, %i.f           ; 3 uses
  %i.h = add nuw i32 %i.e, 1
  %wide.trip.count172 = zext i32 %i.h to i64
  %i.i = zext nneg i32 %i.e to i64                ; 5 uses
  %min.iters.check219 = icmp ult i32 %i.e, 4
  br i1 %min.iters.check219, label %vec.epilog.scalar.ph231.preheader, label %vector.main.loop.iter.check220

vector.main.loop.iter.check220:                   ; preds = %iter.check230
  %min.iters.check221 = icmp ult i32 %i.e, 16
  br i1 %min.iters.check221, label %vec.epilog.ph234, label %vector.ph222

vector.ph222:                                     ; preds = %vector.main.loop.iter.check220
  %i.j = and i64 %i.i, 12
  %n.vec223 = and i64 %i.i, 2147483632            ; 4 uses
  %i.k = or disjoint i64 %n.vec223, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.ph222, %vector.body224
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next226, %vector.body224 ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %2, i64 %index225 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <4 x double> %broadcast.splat, ptr %i.l, align 8, !tbaa !22
  store <4 x double> %broadcast.splat, ptr %i.m, align 8, !tbaa !22
  store <4 x double> %broadcast.splat, ptr %i.n, align 8, !tbaa !22
  store <4 x double> %broadcast.splat, ptr %i.o, align 8, !tbaa !22
  %index.next226 = add nuw i64 %index225, 16      ; 2 uses
  %i.p = icmp eq i64 %index.next226, %n.vec223
  br i1 %i.p, label %middle.block227, label %vector.body224, !llvm.loop !8

middle.block227:                                  ; preds = %vector.body224
  %cmp.n228 = icmp eq i64 %n.vec223, %i.i
  br i1 %cmp.n228, label %._crit_edge139, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block227
  %min.epilog.iters.check233 = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check233, label %vec.epilog.scalar.ph231.preheader, label %vec.epilog.ph234, !prof !26

vec.epilog.ph234:                                 ; preds = %vector.main.loop.iter.check220, %vec.epilog.iter.check232
  %vec.epilog.resume.val229 = phi i64 [ %n.vec223, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check220 ]
  %n.vec235 = and i64 %i.i, 2147483644            ; 3 uses
  %i.q = or disjoint i64 %n.vec235, 1
  %broadcast.splatinsert236 = insertelement <4 x double> poison, double %i.g, i64 0
  %broadcast.splat237 = shufflevector <4 x double> %broadcast.splatinsert236, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph234
  %index239 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph234 ], [ %index.next240, %vec.epilog.vector.body238 ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %2, i64 %index239
  store <4 x double> %broadcast.splat237, ptr %i.r, align 8, !tbaa !22
  %index.next240 = add nuw i64 %index239, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next240, %n.vec235
  br i1 %i.s, label %vec.epilog.middle.block241, label %vec.epilog.vector.body238, !llvm.loop !9

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body238
  %cmp.n242 = icmp eq i64 %n.vec235, %i.i
  br i1 %cmp.n242, label %._crit_edge139, label %vec.epilog.scalar.ph231.preheader

vec.epilog.scalar.ph231.preheader:                ; preds = %iter.check230, %vec.epilog.iter.check232, %vec.epilog.middle.block241
  %indvars.iv169.ph = phi i64 [ 1, %iter.check230 ], [ %i.k, %vec.epilog.iter.check232 ], [ %i.q, %vec.epilog.middle.block241 ]
  br label %vec.epilog.scalar.ph231

vec.epilog.scalar.ph231:                          ; preds = %vec.epilog.scalar.ph231.preheader, %vec.epilog.scalar.ph231
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %vec.epilog.scalar.ph231 ], [ %indvars.iv169.ph, %vec.epilog.scalar.ph231.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv169
  store double %i.g, ptr %i.t, align 8, !tbaa !22
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge139, label %vec.epilog.scalar.ph231, !llvm.loop !10

._crit_edge139:                                   ; preds = %vec.epilog.scalar.ph231, %middle.block227, %vec.epilog.middle.block241, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !20
  store i32 1, ptr @dlacon_.jump, align 4, !tbaa !20
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr @dlacon_.jump, align 4, !tbaa !20
  switch i32 %i.u, label %bb.d [
    i32 5, label %bb.p
    i32 2, label %bb.g
    i32 3, label %bb.i
    i32 4, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %0, align 4, !tbaa !20
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %2, align 8, !tbaa !22  ; 4 uses
  store double %i.x, ptr %1, align 8, !tbaa !22
  %i.y = fcmp ult double %i.x, 0.000000e+00
  %i.z = fneg double %i.x
  %i.aa = select i1 %i.y, double %i.z, double %i.x
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ab = tail call double @dasum_(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @c__1) #5
  store double %i.ab, ptr %4, align 8, !tbaa !22
  %i.ac = load i32, ptr %0, align 4, !tbaa !20    ; 5 uses
  %.not102129 = icmp slt i32 %i.ac, 1
  br i1 %.not102129, label %._crit_edge133, label %iter.check206

iter.check206:                                    ; preds = %bb.f
  %i.ad = add nuw i32 %i.ac, 1
  %wide.trip.count167 = zext i32 %i.ad to i64
  %i.ae = zext nneg i32 %i.ac to i64              ; 5 uses
  %min.iters.check191 = icmp ult i32 %i.ac, 4
  br i1 %min.iters.check191, label %.lr.ph132.preheader, label %vector.main.loop.iter.check192

vector.main.loop.iter.check192:                   ; preds = %iter.check206
  %min.iters.check193 = icmp ult i32 %i.ac, 16
  br i1 %min.iters.check193, label %vec.epilog.ph210, label %vector.ph194

vector.ph194:                                     ; preds = %vector.main.loop.iter.check192
  %i.af = and i64 %i.ae, 12
  %n.vec195 = and i64 %i.ae, 2147483632           ; 4 uses
  %i.ag = or disjoint i64 %n.vec195, 1
  br label %vector.body196

vector.body196:                                   ; preds = %vector.ph194, %vector.body196
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next202, %vector.body196 ] ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %2, i64 %index197 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96 ; 2 uses
  %wide.load198 = load <4 x double>, ptr %i.ah, align 8, !tbaa !22
  %wide.load199 = load <4 x double>, ptr %i.ai, align 8, !tbaa !22
  %wide.load200 = load <4 x double>, ptr %i.aj, align 8, !tbaa !22
  %wide.load201 = load <4 x double>, ptr %i.ak, align 8, !tbaa !22
  %i.al = fcmp ult <4 x double> %wide.load198, zeroinitializer ; 2 uses
  %i.am = fcmp ult <4 x double> %wide.load199, zeroinitializer ; 2 uses
  %i.an = fcmp ult <4 x double> %wide.load200, zeroinitializer ; 2 uses
  %i.ao = fcmp ult <4 x double> %wide.load201, zeroinitializer ; 2 uses
  %i.ap = select <4 x i1> %i.al, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  %i.aq = select <4 x i1> %i.am, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  %i.ar = select <4 x i1> %i.an, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  %i.as = select <4 x i1> %i.ao, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  store <4 x double> %i.ap, ptr %i.ah, align 8, !tbaa !22
  store <4 x double> %i.aq, ptr %i.ai, align 8, !tbaa !22
  store <4 x double> %i.ar, ptr %i.aj, align 8, !tbaa !22
  store <4 x double> %i.as, ptr %i.ak, align 8, !tbaa !22
  %6 = select <4 x i1> %i.al, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %7 = select <4 x i1> %i.am, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %8 = select <4 x i1> %i.an, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %9 = select <4 x i1> %i.ao, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %i.at = getelementptr [4 x i8], ptr %3, i64 %index197 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %10 = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %11 = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store <4 x i32> %6, ptr %i.at, align 4, !tbaa !20
  store <4 x i32> %7, ptr %i.au, align 4, !tbaa !20
  store <4 x i32> %8, ptr %10, align 4, !tbaa !20
  store <4 x i32> %9, ptr %11, align 4, !tbaa !20
  %index.next202 = add nuw i64 %index197, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.av, label %middle.block203, label %vector.body196, !llvm.loop !11

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %n.vec195, %i.ae
  br i1 %cmp.n204, label %._crit_edge133, label %vec.epilog.iter.check208

vec.epilog.iter.check208:                         ; preds = %middle.block203
  %min.epilog.iters.check209 = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check209, label %.lr.ph132.preheader, label %vec.epilog.ph210, !prof !26

vec.epilog.ph210:                                 ; preds = %vector.main.loop.iter.check192, %vec.epilog.iter.check208
  %vec.epilog.resume.val205 = phi i64 [ %n.vec195, %vec.epilog.iter.check208 ], [ 0, %vector.main.loop.iter.check192 ]
  %n.vec211 = and i64 %i.ae, 2147483644           ; 3 uses
  %i.aw = or disjoint i64 %n.vec211, 1
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph210
  %index213 = phi i64 [ %vec.epilog.resume.val205, %vec.epilog.ph210 ], [ %index.next215, %vec.epilog.vector.body212 ] ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %2, i64 %index213 ; 2 uses
  %wide.load214 = load <4 x double>, ptr %i.ax, align 8, !tbaa !22
  %i.ay = fcmp ult <4 x double> %wide.load214, zeroinitializer ; 2 uses
  %i.az = select <4 x i1> %i.ay, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  store <4 x double> %i.az, ptr %i.ax, align 8, !tbaa !22
  %i.ba = select <4 x i1> %i.ay, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %i.bb = getelementptr [4 x i8], ptr %3, i64 %index213
  store <4 x i32> %i.ba, ptr %i.bb, align 4, !tbaa !20
  %index.next215 = add nuw i64 %index213, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next215, %n.vec211
  br i1 %i.bc, label %vec.epilog.middle.block216, label %vec.epilog.vector.body212, !llvm.loop !12

vec.epilog.middle.block216:                       ; preds = %vec.epilog.vector.body212
  %cmp.n217 = icmp eq i64 %n.vec211, %i.ae
  br i1 %cmp.n217, label %._crit_edge133, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %iter.check206, %vec.epilog.iter.check208, %vec.epilog.middle.block216
  %indvars.iv164.ph = phi i64 [ 1, %iter.check206 ], [ %i.ag, %vec.epilog.iter.check208 ], [ %i.aw, %vec.epilog.middle.block216 ]
  br label %.lr.ph132

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph132 ], [ %indvars.iv164.ph, %.lr.ph132.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv164 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !22
  %i.bf = fcmp ult double %i.be, 0.000000e+00     ; 2 uses
  %. = select i1 %i.bf, double -1.000000e+00, double 1.000000e+00
  store double %., ptr %i.bd, align 8, !tbaa !22
  %.107 = select i1 %i.bf, i32 -1, i32 1
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv164
  store i32 %.107, ptr %i.bg, align 4, !tbaa !20
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge133, label %.lr.ph132, !llvm.loop !13

._crit_edge133:                                   ; preds = %.lr.ph132, %middle.block203, %vec.epilog.middle.block216, %bb.f
  store i32 2, ptr %5, align 4, !tbaa !20
  store i32 2, ptr @dlacon_.jump, align 4, !tbaa !20
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.bh = tail call i32 @idamax_(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @c__1) #5 ; 2 uses
  store i32 %i.bh, ptr @dlacon_.j, align 4, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %bb.g
  %i.bi = phi i32 [ %i.dd, %bb.m ], [ %i.bh, %bb.g ]
  %storemerge = phi i32 [ %i.dp, %bb.m ], [ 2, %bb.g ]
  store i32 %storemerge, ptr @dlacon_.iter, align 4, !tbaa !20
  %i.bj = load i32, ptr %0, align 4, !tbaa !20    ; 2 uses
  %.not100123 = icmp slt i32 %i.bj, 1
  br i1 %.not100123, label %._crit_edge127, label %.lr.ph126.preheader

.lr.ph126.preheader:                              ; preds = %bb.h
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %i.bl, i1 false), !tbaa !22
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %.lr.ph126.preheader, %bb.h
  %i.bm = sext i32 %i.bi to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bm
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !22
  store i32 1, ptr %5, align 4, !tbaa !20
  store i32 3, ptr @dlacon_.jump, align 4, !tbaa !20
  br label %bb.s

bb.i:                                             ; preds = %bb.c
  tail call void @dcopy_(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @c__1, ptr noundef %1, ptr noundef nonnull @c__1) #5
  %i.bo = load double, ptr %4, align 8, !tbaa !22
  store double %i.bo, ptr @dlacon_.estold, align 8, !tbaa !22
  %i.bp = tail call double @dasum_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @c__1) #5 ; 2 uses
  store double %i.bp, ptr %4, align 8, !tbaa !22
  %i.bq = load i32, ptr %0, align 4, !tbaa !20    ; 8 uses
  %.not111 = icmp slt i32 %i.bq, 1
  br i1 %.not111, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.br = add nuw i32 %i.bq, 1
  %wide.trip.count = zext i32 %i.br to i64        ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !22
  %i.bu = fcmp ult double %i.bt, 0.000000e+00
  %.108 = select i1 %i.bu, i32 -1, i32 1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !20
  %.not94 = icmp eq i32 %i.bw, %.108
  br i1 %.not94, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !14

bb.k:                                             ; preds = %.lr.ph
  %i.bx = load double, ptr @dlacon_.estold, align 8, !tbaa !22
  %i.by = fcmp ugt double %i.bp, %i.bx
  br i1 %i.by, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.k
  %i.bz = zext nneg i32 %i.bq to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bq, 4
  br i1 %min.iters.check, label %.lr.ph115.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.bq, 16
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ca = and i64 %i.bz, 12
  %n.vec = and i64 %i.bz, 2147483632              ; 4 uses
  %i.cb = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %2, i64 %index ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 64 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.cc, align 8, !tbaa !22
  %wide.load182 = load <4 x double>, ptr %i.cd, align 8, !tbaa !22
  %wide.load183 = load <4 x double>, ptr %i.ce, align 8, !tbaa !22
  %wide.load184 = load <4 x double>, ptr %i.cf, align 8, !tbaa !22
  %i.cg = fcmp ult <4 x double> %wide.load, zeroinitializer ; 2 uses
  %i.ch = fcmp ult <4 x double> %wide.load182, zeroinitializer ; 2 uses
  %i.ci = fcmp ult <4 x double> %wide.load183, zeroinitializer ; 2 uses
  %i.cj = fcmp ult <4 x double> %wide.load184, zeroinitializer ; 2 uses
  %i.ck = select <4 x i1> %i.cg, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  %i.cl = select <4 x i1> %i.ch, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  %i.cm = select <4 x i1> %i.ci, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  %i.cn = select <4 x i1> %i.cj, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  store <4 x double> %i.ck, ptr %i.cc, align 8, !tbaa !22
  store <4 x double> %i.cl, ptr %i.cd, align 8, !tbaa !22
  store <4 x double> %i.cm, ptr %i.ce, align 8, !tbaa !22
  store <4 x double> %i.cn, ptr %i.cf, align 8, !tbaa !22
  %12 = select <4 x i1> %i.cg, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %13 = select <4 x i1> %i.ch, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %14 = select <4 x i1> %i.ci, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %15 = select <4 x i1> %i.cj, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %i.co = getelementptr [4 x i8], ptr %3, i64 %index ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store <4 x i32> %12, ptr %i.co, align 4, !tbaa !20
  store <4 x i32> %13, ptr %i.cp, align 4, !tbaa !20
  store <4 x i32> %14, ptr %16, align 4, !tbaa !20
  store <4 x i32> %15, ptr %17, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bz
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check, label %.lr.ph115.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec185 = and i64 %i.bz, 2147483644           ; 3 uses
  %i.cr = or disjoint i64 %n.vec185, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index186 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next188, %vec.epilog.vector.body ] ; 3 uses
  %i.cs = getelementptr [8 x i8], ptr %2, i64 %index186 ; 2 uses
  %wide.load187 = load <4 x double>, ptr %i.cs, align 8, !tbaa !22
  %i.ct = fcmp ult <4 x double> %wide.load187, zeroinitializer ; 2 uses
  %i.cu = select <4 x i1> %i.ct, <4 x double> splat (double -1.000000e+00), <4 x double> splat (double 1.000000e+00)
  store <4 x double> %i.cu, ptr %i.cs, align 8, !tbaa !22
  %i.cv = select <4 x i1> %i.ct, <4 x i32> splat (i32 -1), <4 x i32> splat (i32 1)
  %i.cw = getelementptr [4 x i8], ptr %3, i64 %index186
  store <4 x i32> %i.cv, ptr %i.cw, align 4, !tbaa !20
  %index.next188 = add nuw i64 %index186, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next188, %n.vec185
  br i1 %i.cx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n189 = icmp eq i64 %n.vec185, %i.bz
  br i1 %cmp.n189, label %._crit_edge, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv149.ph = phi i64 [ 1, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cr, %vec.epilog.middle.block ]
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.lr.ph115
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.lr.ph115 ], [ %indvars.iv149.ph, %.lr.ph115.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv149 ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !22
  %i.da = fcmp ult double %i.cz, 0.000000e+00     ; 2 uses
  %.106 = select i1 %i.da, double -1.000000e+00, double 1.000000e+00
  store double %.106, ptr %i.cy, align 8, !tbaa !22
  %.109 = select i1 %i.da, i32 -1, i32 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv149
  store i32 %.109, ptr %i.db, align 4, !tbaa !20
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count
  br i1 %exitcond153.not, label %._crit_edge, label %.lr.ph115, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph115, %vec.epilog.middle.block, %middle.block
  store i32 2, ptr %5, align 4, !tbaa !20
  store i32 4, ptr @dlacon_.jump, align 4, !tbaa !20
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.dc = load i32, ptr @dlacon_.j, align 4, !tbaa !20
  store i32 %i.dc, ptr @dlacon_.jlast, align 4, !tbaa !20
  %i.dd = tail call i32 @idamax_(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @c__1) #5 ; 3 uses
  store i32 %i.dd, ptr @dlacon_.j, align 4, !tbaa !20
  %i.de = load i32, ptr @dlacon_.jlast, align 4, !tbaa !20
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !22
  %i.di = sext i32 %i.dd to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !22
  %i.dl = tail call double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp une double %i.dh, %i.dl
  %i.dn = load i32, ptr @dlacon_.iter, align 4    ; 2 uses
  %i.do = icmp slt i32 %i.dn, 5
  %or.cond = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %or.cond, label %bb.m, label %._crit_edge174

._crit_edge174:                                   ; preds = %bb.l
  %.pre = load i32, ptr %0, align 4, !tbaa !20
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.dp = add nuw nsw i32 %i.dn, 1
  br label %bb.h

.loopexit:                                        ; preds = %bb.j, %bb.i, %._crit_edge174, %bb.k
  %i.dq = phi i32 [ %.pre, %._crit_edge174 ], [ %i.bq, %bb.k ], [ %i.bq, %bb.i ], [ %i.bq, %bb.j ] ; 4 uses
  %.not98117 = icmp slt i32 %i.dq, 1
  br i1 %.not98117, label %._crit_edge121, label %.lr.ph120

.lr.ph120:                                        ; preds = %.loopexit
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = uitofp nneg i32 %i.dr to double         ; 5 uses
  %i.dt = zext nneg i32 %i.dq to i64              ; 2 uses
  %xtraiter = and i64 %i.dt, 3                    ; 3 uses
  %i.du = icmp ult i32 %i.dq, 4
  br i1 %i.du, label %.epil.preheader, label %.lr.ph120.new

.lr.ph120.new:                                    ; preds = %.lr.ph120
  %unroll_iter = and i64 %i.dt, 2147483644
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph120.new
  %indvars.iv154 = phi i64 [ 1, %.lr.ph120.new ], [ %indvars.iv.next155.3, %bb.n ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph120.new ], [ %niter.next.3, %bb.n ]
  %i.dv = trunc i64 %indvars.iv154 to i32
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = sitofp i32 %i.dw to double
  %i.dy = fdiv double %i.dx, %i.ds
  %i.dz = fadd double %i.dy, 1.000000e+00
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv154
  store double %i.dz, ptr %i.ea, align 8, !tbaa !22
  %i.eb = trunc i64 %indvars.iv154 to i32
  %i.ec = sitofp i32 %i.eb to double
  %i.ed = fdiv double %i.ec, %i.ds
  %i.ee = fadd double %i.ed, 1.000000e+00
  %i.ef = fneg double %i.ee
  %i.eg = getelementptr [8 x i8], ptr %2, i64 %indvars.iv154
  store double %i.ef, ptr %i.eg, align 8, !tbaa !22
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154, 2 ; 2 uses
  %i.eh = trunc i64 %indvars.iv.next155.1 to i32
  %i.ei = add nsw i32 %i.eh, -1
  %i.ej = sitofp i32 %i.ei to double
  %i.ek = fdiv double %i.ej, %i.ds
  %i.el = fadd double %i.ek, 1.000000e+00
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next155.1
  store double %i.el, ptr %i.em, align 8, !tbaa !22
  %indvars.iv.next155.2 = add nuw nsw i64 %indvars.iv154, 3 ; 2 uses
  %i.en = trunc i64 %indvars.iv.next155.2 to i32
  %i.eo = add i32 %i.en, -1
  %i.ep = sitofp i32 %i.eo to double
  %i.eq = fdiv double %i.ep, %i.ds
  %i.er = fadd double %i.eq, 1.000000e+00
  %i.es = fneg double %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next155.2
  store double %i.es, ptr %i.et, align 8, !tbaa !22
  %indvars.iv.next155.3 = add nuw nsw i64 %indvars.iv154, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge121.loopexit.unr-lcssa, label %bb.n, !llvm.loop !18

._crit_edge121.loopexit.unr-lcssa:                ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge121, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge121.loopexit.unr-lcssa, %.lr.ph120
  %indvars.iv154.epil.init = phi i64 [ 1, %.lr.ph120 ], [ %indvars.iv.next155.3, %._crit_edge121.loopexit.unr-lcssa ]
  %lcmp.mod244 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod244)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv154.epil = phi i64 [ %indvars.iv154.epil.init, %.epil.preheader ], [ %indvars.iv.next155.epil, %bb.o ] ; 3 uses
  %i.eu = phi double [ 1.000000e+00, %.epil.preheader ], [ %i.fc, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.ev = trunc i64 %indvars.iv154.epil to i32
  %i.ew = add i32 %i.ev, -1
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fdiv double %i.ex, %i.ds
  %i.ez = fadd double %i.ey, 1.000000e+00
  %i.fa = fmul double %i.ez, %i.eu
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv154.epil
  store double %i.fa, ptr %i.fb, align 8, !tbaa !22
  %i.fc = fneg double %i.eu
  %indvars.iv.next155.epil = add nuw nsw i64 %indvars.iv154.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge121, label %bb.o, !llvm.loop !19

._crit_edge121:                                   ; preds = %._crit_edge121.loopexit.unr-lcssa, %bb.o, %.loopexit
  store i32 1, ptr %5, align 4, !tbaa !20
  store i32 5, ptr @dlacon_.jump, align 4, !tbaa !20
  br label %bb.s

bb.p:                                             ; preds = %bb.c
  %i.fd = tail call double @dasum_(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @c__1) #5
  %i.fe = load i32, ptr %0, align 4, !tbaa !20
  %i.ff = mul nsw i32 %i.fe, 3
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = fdiv double %i.fd, %i.fg
  %i.fi = fmul double %i.fh, 2.000000e+00         ; 2 uses
  store double %i.fi, ptr @dlacon_.temp, align 8, !tbaa !22
  %i.fj = load double, ptr %4, align 8, !tbaa !22
  %i.fk = fcmp ogt double %i.fi, %i.fj
  br i1 %i.fk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @dcopy_(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull @c__1, ptr noundef %1, ptr noundef nonnull @c__1) #5
  %i.fl = load double, ptr @dlacon_.temp, align 8, !tbaa !22
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.q
  %.sink = phi double [ %i.fl, %bb.q ], [ %i.aa, %bb.e ]
  store double %.sink, ptr %4, align 8, !tbaa !22
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.p
  store i32 0, ptr %5, align 4, !tbaa !20
  br label %bb.s
end_hunk_0
