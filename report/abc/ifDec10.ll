Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec10?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Truth10 = internal unnamed_addr constant [10 x [16 x i64]] [[16 x i64] [i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206, i64 -6148914691236517206], [16 x i64] [i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324, i64 -3689348814741910324], [16 x i64] [i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096, i64 -1085102592571150096], [16 x i64] [i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696, i64 -71777214294589696], [16 x i64] [i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896, i64 -281470681808896], [16 x i64] [i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296, i64 -4294967296], [16 x i64] [i64 0, i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 0, i64 -1], [16 x i64] [i64 0, i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 -1, i64 -1], [16 x i64] [i64 0, i64 0, i64 0, i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 0, i64 0, i64 0, i64 -1, i64 -1, i64 -1, i64 -1], [16 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1]], align 16
@Truth6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@PMasks = internal unnamed_addr constant [5 x [3 x i64]] [[3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]], align 16
@str = private unnamed_addr constant [21 x i8] c"Verification failed!\00", align 1

; Function Attrs: nounwind uwtable
define void @If_Dec10PrintConfig(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.t, %.lr.ph ], [ %i.b, %bb.a ] ; 5 uses
  %.04 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.04, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.e = and i32 %i.c, 65535
  %i.f = mul nuw i32 %i.e, 65537
  store i32 %i.f, ptr %i.a, align 4, !tbaa !8
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !9
  call void @Extra_PrintBinary(ptr noundef %i.g, ptr noundef nonnull %i.a, i32 noundef 16) #11
  %putchar.i = call i32 @putchar(i32 32)          ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef 4) #11
  %putchar6.i = call i32 @putchar(i32 32)         ; 0 uses
  %i.h = lshr i32 %i.c, 16
  %i.i = and i32 %i.h, 7
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.i) ; 0 uses
  %i.k = lshr i32 %i.c, 20
  %i.l = and i32 %i.k, 7
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.l) ; 0 uses
  %i.n = lshr i32 %i.c, 24
  %i.o = and i32 %i.n, 7
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.o) ; 0 uses
  %i.q = lshr i32 %i.c, 28
  %i.r = and i32 %i.q, 7
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.r) ; 0 uses
  %putchar7.i = call i32 @putchar(i32 10)         ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.t = load i32, ptr %i.d, align 4, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @If_Dec10Verify(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 21 uses
  %i.b = alloca [16 x [16 x i64]], align 16       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = icmp slt i32 %1, 7
  %i.d = add nsw i32 %1, -6
  %i.e = shl nuw i32 1, %i.d
  %.fr.i = freeze i32 %i.e
  %i.f = select i1 %i.c, i32 1, i32 %.fr.i        ; 11 uses
  %i.g = icmp sgt i32 %1, 0
  br i1 %i.g, label %.preheader49.lr.ph, label %.preheader48

.preheader49.lr.ph:                               ; preds = %bb.a
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.preheader49.us.preheader, label %.preheader48

.preheader49.us.preheader:                        ; preds = %.preheader49.lr.ph
  %i.i = zext nneg i32 %i.f to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %1, 1
  br i1 %i.k, label %.preheader49.us.epil.preheader, label %.preheader49.us.preheader.new

.preheader49.us.preheader.new:                    ; preds = %.preheader49.us.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.preheader49.us

.preheader49.us:                                  ; preds = %.preheader49.us, %.preheader49.us.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader49.us.preheader.new ], [ %indvars.iv.next.1, %.preheader49.us ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader49.us.preheader.new ], [ %niter.next.1, %.preheader49.us ]
  %3 = getelementptr inbounds nuw [128 x i8], ptr @Truth10, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.l, ptr nonnull align 16 %3, i64 %i.j, i1 false), !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %4 = getelementptr inbounds nuw [128 x i8], ptr @Truth10, i64 %indvars.iv.next
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.m, ptr nonnull align 16 %4, i64 %i.j, i1 false), !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader48.loopexit.unr-lcssa, label %.preheader49.us, !llvm.loop !16

.preheader48.loopexit.unr-lcssa:                  ; preds = %.preheader49.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader48, label %.preheader49.us.epil.preheader

.preheader49.us.epil.preheader:                   ; preds = %.preheader48.loopexit.unr-lcssa, %.preheader49.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader49.us.preheader ], [ %indvars.iv.next.1, %.preheader48.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod235 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod235)
  %5 = getelementptr inbounds nuw [128 x i8], ptr @Truth10, i64 %indvars.iv.epil.init
  %i.n = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.n, ptr nonnull align 16 %5, i64 %i.j, i1 false), !tbaa !14
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader49.us.epil.preheader, %.preheader48.loopexit.unr-lcssa, %.preheader49.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %1, %.preheader49.lr.ph ], [ %1, %.preheader48.loopexit.unr-lcssa ], [ %1, %.preheader49.us.epil.preheader ] ; 2 uses
  %i.o = load i32, ptr %2, align 4, !tbaa !8      ; 2 uses
  %.not53 = icmp eq i32 %i.o, 0
  br i1 %.not53, label %.preheader, label %.preheader47.lr.ph

.preheader47.lr.ph:                               ; preds = %.preheader48
  %i.p = icmp sgt i32 %i.f, 0
  %i.q = zext i32 %i.f to i64                     ; 28 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  br i1 %i.p, label %.preheader47.us.preheader, label %.loopexit

.preheader47.us.preheader:                        ; preds = %.preheader47.lr.ph
  %i.s = zext nneg i32 %.0.lcssa to i64
  %min.iters.check196 = icmp ult i32 %i.f, 4      ; 2 uses
  %n.vec212 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n221 = icmp eq i64 %n.vec212, %i.q
  %n.vec198 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n207 = icmp eq i64 %n.vec198, %i.q
  %min.iters.check168 = icmp ult i32 %i.f, 4      ; 2 uses
  %n.vec184 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n193 = icmp eq i64 %n.vec184, %i.q
  %n.vec170 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n179 = icmp eq i64 %n.vec170, %i.q
  %min.iters.check140 = icmp ult i32 %i.f, 4      ; 2 uses
  %n.vec156 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n165 = icmp eq i64 %n.vec156, %i.q
  %n.vec142 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n151 = icmp eq i64 %n.vec142, %i.q
  %min.iters.check112 = icmp ult i32 %i.f, 4      ; 2 uses
  %n.vec128 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n137 = icmp eq i64 %n.vec128, %i.q
  %n.vec114 = and i64 %i.q, 2147483644            ; 3 uses
  %cmp.n123 = icmp eq i64 %n.vec114, %i.q
  %min.iters.check = icmp ult i32 %i.f, 4
  %n.vec = and i64 %i.q, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br label %.preheader47.us

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %If_Dec10ComposeLut4.exit.loopexit.us
  %indvars.iv83 = phi i64 [ 0, %.preheader47.us.preheader ], [ %indvars.iv.next84, %If_Dec10ComposeLut4.exit.loopexit.us ]
  %indvars.iv81 = phi i64 [ %i.s, %.preheader47.us.preheader ], [ %indvars.iv.next82, %If_Dec10ComposeLut4.exit.loopexit.us ] ; 2 uses
  %i.t = phi i32 [ %i.o, %.preheader47.us.preheader ], [ %i.fk, %If_Dec10ComposeLut4.exit.loopexit.us ] ; 5 uses
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 7
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.w ; 4 uses
  %i.y = lshr i32 %i.t, 20
  %i.z = and i32 %i.y, 7
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.aa ; 4 uses
  %i.ac = lshr i32 %i.t, 24
  %i.ad = and i32 %i.ac, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.ae ; 4 uses
  %i.ag = lshr i32 %i.t, 28
  %i.ah = and i32 %i.ag, 7
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %i.ai ; 4 uses
  %i.ak = and i32 %i.t, 65535
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %indvars.iv81 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.al, i8 0, i64 %i.r, i1 false), !tbaa !14
  br label %.preheader40.split.us.i.us

.preheader40.split.us.i.us:                       ; preds = %.loopexit.us.i.us, %.preheader47.us
  %.03449.us.i.us = phi i32 [ %i.fi, %.loopexit.us.i.us ], [ 0, %.preheader47.us ] ; 6 uses
  %i.am = shl nuw nsw i32 1, %.03449.us.i.us
  %i.an = and i32 %i.ak, %i.am
  %.not.us.i.us = icmp eq i32 %i.an, 0
  br i1 %.not.us.i.us, label %.loopexit.us.i.us, label %.preheader38.us.i.us

.preheader38.us.i.us:                             ; preds = %.preheader40.split.us.i.us
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 -1, i64 %i.r, i1 false), !tbaa !14
  %i.ao = and i32 %.03449.us.i.us, 1
  %.not36.us.i.us = icmp eq i32 %i.ao, 0
  br i1 %.not36.us.i.us, label %.lr.ph45.split.us.us.i.us.preheader, label %.lr.ph45.split.us53.i.us.preheader

.lr.ph45.split.us53.i.us.preheader:               ; preds = %.preheader38.us.i.us
  br i1 %min.iters.check196, label %.lr.ph45.split.us53.i.us.preheader233, label %vector.body213

vector.body213:                                   ; preds = %.lr.ph45.split.us53.i.us.preheader, %vector.body213
  %index214 = phi i64 [ %index.next219, %vector.body213 ], [ 0, %.lr.ph45.split.us53.i.us.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index214 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load215 = load <2 x i64>, ptr %i.ap, align 16, !tbaa !14
  %wide.load216 = load <2 x i64>, ptr %i.aq, align 16, !tbaa !14
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index214 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.ar, align 16, !tbaa !14
  %wide.load218 = load <2 x i64>, ptr %i.as, align 16, !tbaa !14
  %i.at = and <2 x i64> %wide.load217, %wide.load215
  %i.au = and <2 x i64> %wide.load218, %wide.load216
  store <2 x i64> %i.at, ptr %i.ar, align 16, !tbaa !14
  store <2 x i64> %i.au, ptr %i.as, align 16, !tbaa !14
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.av, label %middle.block220, label %vector.body213, !llvm.loop !17

middle.block220:                                  ; preds = %vector.body213
  br i1 %cmp.n221, label %._crit_edge.us.i.us, label %.lr.ph45.split.us53.i.us.preheader233

.lr.ph45.split.us53.i.us.preheader233:            ; preds = %.lr.ph45.split.us53.i.us.preheader, %middle.block220
  %indvars.iv97.i.us.ph = phi i64 [ 0, %.lr.ph45.split.us53.i.us.preheader ], [ %n.vec212, %middle.block220 ]
  br label %.lr.ph45.split.us53.i.us

.lr.ph45.split.us.us.i.us.preheader:              ; preds = %.preheader38.us.i.us
  br i1 %min.iters.check196, label %.lr.ph45.split.us.us.i.us.preheader232, label %vector.body199

vector.body199:                                   ; preds = %.lr.ph45.split.us.us.i.us.preheader, %vector.body199
  %index200 = phi i64 [ %index.next205, %vector.body199 ], [ 0, %.lr.ph45.split.us.us.i.us.preheader ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index200 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load201 = load <2 x i64>, ptr %i.aw, align 16, !tbaa !14
  %wide.load202 = load <2 x i64>, ptr %i.ax, align 16, !tbaa !14
  %i.ay = xor <2 x i64> %wide.load201, splat (i64 -1)
  %i.az = xor <2 x i64> %wide.load202, splat (i64 -1)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index200 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load203 = load <2 x i64>, ptr %i.ba, align 16, !tbaa !14
  %wide.load204 = load <2 x i64>, ptr %i.bb, align 16, !tbaa !14
  %i.bc = and <2 x i64> %wide.load203, %i.ay
  %i.bd = and <2 x i64> %wide.load204, %i.az
  store <2 x i64> %i.bc, ptr %i.ba, align 16, !tbaa !14
  store <2 x i64> %i.bd, ptr %i.bb, align 16, !tbaa !14
  %index.next205 = add nuw i64 %index200, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.be, label %middle.block206, label %vector.body199, !llvm.loop !20

middle.block206:                                  ; preds = %vector.body199
  br i1 %cmp.n207, label %._crit_edge.us.i.us, label %.lr.ph45.split.us.us.i.us.preheader232

.lr.ph45.split.us.us.i.us.preheader232:           ; preds = %.lr.ph45.split.us.us.i.us.preheader, %middle.block206
  %indvars.iv102.i.us.ph = phi i64 [ 0, %.lr.ph45.split.us.us.i.us.preheader ], [ %n.vec198, %middle.block206 ]
  br label %.lr.ph45.split.us.us.i.us

.lr.ph45.split.us53.i.us:                         ; preds = %.lr.ph45.split.us53.i.us.preheader233, %.lr.ph45.split.us53.i.us
  %indvars.iv97.i.us = phi i64 [ %indvars.iv.next98.i.us, %.lr.ph45.split.us53.i.us ], [ %indvars.iv97.i.us.ph, %.lr.ph45.split.us53.i.us.preheader233 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv97.i.us
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97.i.us ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = and i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !14
  %indvars.iv.next98.i.us = add nuw nsw i64 %indvars.iv97.i.us, 1 ; 2 uses
  %exitcond101.not.i.us = icmp eq i64 %indvars.iv.next98.i.us, %i.q
  br i1 %exitcond101.not.i.us, label %._crit_edge.us.i.us, label %.lr.ph45.split.us53.i.us, !llvm.loop !21

.lr.ph45.split.us.us.i.us:                        ; preds = %.lr.ph45.split.us.us.i.us.preheader232, %.lr.ph45.split.us.us.i.us
  %indvars.iv102.i.us = phi i64 [ %indvars.iv.next103.i.us, %.lr.ph45.split.us.us.i.us ], [ %indvars.iv102.i.us.ph, %.lr.ph45.split.us.us.i.us.preheader232 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv102.i.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.bm = xor i64 %i.bl, -1
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv102.i.us ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !14
  %i.bp = and i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !14
  %indvars.iv.next103.i.us = add nuw nsw i64 %indvars.iv102.i.us, 1 ; 2 uses
  %exitcond106.not.i.us = icmp eq i64 %indvars.iv.next103.i.us, %i.q
  br i1 %exitcond106.not.i.us, label %._crit_edge.us.i.us, label %.lr.ph45.split.us.us.i.us, !llvm.loop !22

._crit_edge.us.i.us:                              ; preds = %.lr.ph45.split.us53.i.us, %.lr.ph45.split.us.us.i.us, %middle.block220, %middle.block206
  %i.bq = and i32 %.03449.us.i.us, 2
  %.not36.us.1.i.us = icmp eq i32 %i.bq, 0
  br i1 %.not36.us.1.i.us, label %.lr.ph45.split.us.us.1.i.us.preheader, label %.lr.ph45.split.us53.1.i.us.preheader

.lr.ph45.split.us53.1.i.us.preheader:             ; preds = %._crit_edge.us.i.us
  br i1 %min.iters.check168, label %.lr.ph45.split.us53.1.i.us.preheader230, label %vector.body185

vector.body185:                                   ; preds = %.lr.ph45.split.us53.1.i.us.preheader, %vector.body185
  %index186 = phi i64 [ %index.next191, %vector.body185 ], [ 0, %.lr.ph45.split.us53.1.i.us.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index186 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load187 = load <2 x i64>, ptr %i.br, align 16, !tbaa !14
  %wide.load188 = load <2 x i64>, ptr %i.bs, align 16, !tbaa !14
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index186 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load189 = load <2 x i64>, ptr %i.bt, align 16, !tbaa !14
  %wide.load190 = load <2 x i64>, ptr %i.bu, align 16, !tbaa !14
  %i.bv = and <2 x i64> %wide.load189, %wide.load187
  %i.bw = and <2 x i64> %wide.load190, %wide.load188
  store <2 x i64> %i.bv, ptr %i.bt, align 16, !tbaa !14
  store <2 x i64> %i.bw, ptr %i.bu, align 16, !tbaa !14
  %index.next191 = add nuw i64 %index186, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.bx, label %middle.block192, label %vector.body185, !llvm.loop !23

middle.block192:                                  ; preds = %vector.body185
  br i1 %cmp.n193, label %._crit_edge.us.1.i.us, label %.lr.ph45.split.us53.1.i.us.preheader230

.lr.ph45.split.us53.1.i.us.preheader230:          ; preds = %.lr.ph45.split.us53.1.i.us.preheader, %middle.block192
  %indvars.iv97.1.i.us.ph = phi i64 [ 0, %.lr.ph45.split.us53.1.i.us.preheader ], [ %n.vec184, %middle.block192 ]
  br label %.lr.ph45.split.us53.1.i.us

.lr.ph45.split.us.us.1.i.us.preheader:            ; preds = %._crit_edge.us.i.us
  br i1 %min.iters.check168, label %.lr.ph45.split.us.us.1.i.us.preheader229, label %vector.body171

vector.body171:                                   ; preds = %.lr.ph45.split.us.us.1.i.us.preheader, %vector.body171
end_hunk_0
