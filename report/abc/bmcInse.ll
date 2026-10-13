Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcInse?download=true
inline.NumInlined: 150
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [59 x i8] c"Running with %d frames, %d words, and %sgiven init state.\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Frame =%6d : Values =%6d (out of %6d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Frame =%6d : Values =%6d (out of %6d)   \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"After %d frames, found a sequence to produce %d x-values (out of %d).  \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Total runtime\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManInseInit(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  %i.b = icmp sgt i32 %.val, 0
  br i1 %i.b, label %.lr.ph56, label %.critedge

.lr.ph56:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %.val41 = load ptr, ptr %i.c, align 8, !tbaa !31
  %.not = icmp eq ptr %.val41, null
  br i1 %.not, label %.critedge, label %.lr.ph56.split

.lr.ph56.split:                                   ; preds = %.lr.ph56
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %0, i64 808
  %i.f = getelementptr i8, ptr %0, i64 792
  %i.g = getelementptr i8, ptr %0, i64 72
  %.val38 = load ptr, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = getelementptr i8, ptr %.val38, i64 8
  %.val42.val = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.i, align 4, !tbaa !34
  %invariant.op = sub i32 %.val38.val, %.val
  %.val44 = load ptr, ptr %i.f, align 8, !tbaa !35
  %.val45 = load i32, ptr %i.e, align 8, !tbaa !36
  %.val45.fr = freeze i32 %.val45                 ; 6 uses
  %factor.op.mul = shl i32 %.val45.fr, 1
  %i.j = sext i32 %.val45.fr to i64
  %.val40 = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = icmp sgt i32 %.val45.fr, 0
  br i1 %i.k, label %.lr.ph56.split.split.us.preheader, label %.critedge

.lr.ph56.split.split.us.preheader:                ; preds = %.lr.ph56.split
  %i.l = zext nneg i32 %.val45.fr to i64          ; 7 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %wide.trip.count141 = zext nneg i32 %.val to i64
  %min.iters.check146 = icmp ult i32 %.val45.fr, 4
  %n.vec148 = and i64 %i.l, 2147483644            ; 3 uses
  %cmp.n153 = icmp eq i64 %n.vec148, %i.l
  %min.iters.check = icmp ult i32 %.val45.fr, 4
  %n.vec = and i64 %i.l, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.l
  br label %.lr.ph56.split.split.us

.lr.ph56.split.split.us:                          ; preds = %.lr.ph56.split.split.us.preheader, %.loopexit47.us
  %indvars.iv138 = phi i64 [ 0, %.lr.ph56.split.split.us.preheader ], [ %indvars.iv.next139, %.loopexit47.us ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv138 to i32
  %.reass.us = add i32 %invariant.op, %i.n
  %i.o = sext i32 %.reass.us to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.val42.val, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !37
  %.reass58.us = mul i32 %i.q, %factor.op.mul
  %i.r = sext i32 %.reass58.us to i64
  %i.s = getelementptr [8 x i8], ptr %.val44, i64 %i.r ; 6 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.j ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv138
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37
  switch i32 %i.v, label %.preheader.us.preheader [
    i32 0, label %.lr.ph52.us.preheader
    i32 1, label %.lr.ph.us.preheader
  ]

.lr.ph.us.preheader:                              ; preds = %.lr.ph56.split.split.us
  br i1 %min.iters.check146, label %.lr.ph.us.preheader156, label %vector.body149

vector.body149:                                   ; preds = %.lr.ph.us.preheader, %vector.body149
  %index150 = phi i64 [ %index.next151, %vector.body149 ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index150 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> zeroinitializer, ptr %i.w, align 8, !tbaa !38
  store <2 x i64> zeroinitializer, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index150 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.y, align 8, !tbaa !38
  store <2 x i64> splat (i64 -1), ptr %i.z, align 8, !tbaa !38
  %index.next151 = add nuw i64 %index150, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next151, %n.vec148
  br i1 %i.aa, label %middle.block152, label %vector.body149, !llvm.loop !45

middle.block152:                                  ; preds = %vector.body149
  br i1 %cmp.n153, label %.loopexit47.us, label %.lr.ph.us.preheader156

.lr.ph.us.preheader156:                           ; preds = %.lr.ph.us.preheader, %middle.block152
  %indvars.iv125.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec148, %middle.block152 ]
  br label %.lr.ph.us

.lr.ph52.us.preheader:                            ; preds = %.lr.ph56.split.split.us
  br i1 %min.iters.check, label %.lr.ph52.us.preheader155, label %vector.body

vector.body:                                      ; preds = %.lr.ph52.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph52.us.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ab, align 8, !tbaa !38
  store <2 x i64> splat (i64 -1), ptr %i.ac, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x i64> zeroinitializer, ptr %i.ad, align 8, !tbaa !38
  store <2 x i64> zeroinitializer, ptr %i.ae, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit47.us, label %.lr.ph52.us.preheader155

.lr.ph52.us.preheader155:                         ; preds = %.lr.ph52.us.preheader, %middle.block
  %indvars.iv130.ph = phi i64 [ 0, %.lr.ph52.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph52.us

.preheader.us.preheader:                          ; preds = %.lr.ph56.split.split.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.m, i1 false), !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.m, i1 false), !tbaa !38
  br label %.loopexit47.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader156, %.lr.ph.us
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %.lr.ph.us ], [ %indvars.iv125.ph, %.lr.ph.us.preheader156 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv125
  store i64 0, ptr %i.ag, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv125
  store i64 -1, ptr %i.ah, align 8, !tbaa !38
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %i.l
  br i1 %exitcond129.not, label %.loopexit47.us, label %.lr.ph.us, !llvm.loop !47

.lr.ph52.us:                                      ; preds = %.lr.ph52.us.preheader155, %.lr.ph52.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %.lr.ph52.us ], [ %indvars.iv130.ph, %.lr.ph52.us.preheader155 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv130
  store i64 -1, ptr %i.ai, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv130
  store i64 0, ptr %i.aj, align 8, !tbaa !38
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %i.l
  br i1 %exitcond134.not, label %.loopexit47.us, label %.lr.ph52.us, !llvm.loop !48

.loopexit47.us:                                   ; preds = %.lr.ph.us, %.lr.ph52.us, %middle.block152, %middle.block, %.preheader.us.preheader
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.critedge, label %.lr.ph56.split.split.us, !llvm.loop !0

.critedge:                                        ; preds = %.loopexit47.us, %.lr.ph56.split, %.lr.ph56, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Gia_ManInseSimulateObj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.b
  %.val174 = load i64, ptr %i.c, align 4          ; 9 uses
  %i.d = and i64 %.val174, 2147483648
  %.not.i = icmp eq i64 %i.d, 0                   ; 2 uses
  %i.e = and i64 %.val174, 536870911
  %i.f = icmp ne i64 %i.e, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.f
  br i1 %narrow.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 792
  %.val172 = load ptr, ptr %i.g, align 8, !tbaa !35 ; 4 uses
  %.val172301 = ptrtoaddr ptr %.val172 to i64     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 808
  %.val173 = load i32, ptr %i.h, align 8, !tbaa !36 ; 5 uses
  %i.i = shl i32 %.val173, 1                      ; 3 uses
  %i.j = mul i32 %i.i, %1
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.val172, i64 %i.k ; 5 uses
  %i.m = sext i32 %.val173 to i64                 ; 4 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m ; 4 uses
  %i.o = trunc i64 %.val174 to i32                ; 2 uses
  %i.p = and i32 %i.o, 536870912
  %.not142 = icmp eq i32 %i.p, 0                  ; 2 uses
  %i.q = and i32 %i.o, 536870911
  %i.r = sub nsw i32 %1, %i.q
  %i.s = mul nsw i32 %i.i, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %.val172, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.m ; 2 uses
  %i.w = and i64 %.val174, 2305843009213693952
  %.not143 = icmp eq i64 %i.w, 0                  ; 2 uses
  %.248 = select i1 %.not142, ptr %i.u, ptr %i.v  ; 5 uses
  %.248302 = ptrtoaddr ptr %.248 to i64           ; 2 uses
  %.249 = select i1 %.not142, ptr %i.v, ptr %i.u  ; 5 uses
  %.249308 = ptrtoaddr ptr %.249 to i64           ; 2 uses
  %i.x = lshr i64 %.val174, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = and i32 %i.y, 536870911
  %i.aa = sub nsw i32 %1, %i.z
  %i.ab = mul nsw i32 %i.i, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val172, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.m ; 2 uses
  %.238 = select i1 %.not143, ptr %i.ad, ptr %i.ae ; 5 uses
  %.238305 = ptrtoaddr ptr %.238 to i64           ; 2 uses
  %.239 = select i1 %.not143, ptr %i.ae, ptr %i.ad ; 5 uses
  %.239311 = ptrtoaddr ptr %.239 to i64           ; 2 uses
  %i.af = icmp sgt i32 %.val173, 0
  br i1 %i.af, label %.lr.ph209.preheader, label %.loopexit

.lr.ph209.preheader:                              ; preds = %bb.b
  %wide.trip.count231 = zext nneg i32 %.val173 to i64 ; 5 uses
  %min.iters.check323 = icmp ult i32 %.val173, 44
  br i1 %min.iters.check323, label %.lr.ph209.preheader340, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph209.preheader
  %i.ag = shl nuw nsw i64 %i.m, 3                 ; 2 uses
  %i.ah = shl nsw i64 %i.k, 3                     ; 5 uses
  %i.ai = add i64 %i.ah, %.val172301              ; 2 uses
  %i.aj = sub i64 %.248302, %i.ai
  %diff.check303.a = icmp ugt i64 %i.aj, -32
  %i.ak = sub i64 %.238305, %i.ai
  %diff.check306 = icmp ugt i64 %i.ak, -32
  %conflict.rdx307 = or i1 %diff.check303.a, %diff.check306
  %i.al = add i64 %i.ah, %.val172301
  %i.am = sub i64 %i.al, %.249308
  %diff.check309 = icmp ugt i64 %i.am, -32
  %conflict.rdx310 = or i1 %conflict.rdx307, %diff.check309
  %i.an = add i64 %i.ah, %.val172301
  %i.ao = sub i64 %i.an, %.239311
  %diff.check312 = icmp ugt i64 %i.ao, -32
  %conflict.rdx313 = or i1 %conflict.rdx310, %diff.check312
  %i.ap = add i64 %i.ag, %.val172301
  %i.aq = add i64 %i.ap, %i.ah                    ; 2 uses
  %i.ar = sub i64 %.248302, %i.aq
  %diff.check314 = icmp ugt i64 %i.ar, -32
  %conflict.rdx315 = or i1 %conflict.rdx313, %diff.check314
  %i.as = sub i64 %.238305, %i.aq
  %diff.check316 = icmp ugt i64 %i.as, -32
  %conflict.rdx317 = or i1 %conflict.rdx315, %diff.check316
  %2 = add i64 %i.ag, %.val172301
  %3 = add i64 %2, %i.ah                          ; 2 uses
  %i.at = sub i64 %.249308, %3
  %diff.check318 = icmp ugt i64 %i.at, -32
  %conflict.rdx319 = or i1 %conflict.rdx317, %diff.check318
  %i.au = sub i64 %.239311, %3
  %diff.check320 = icmp ugt i64 %i.au, -32
  %conflict.rdx321 = or i1 %conflict.rdx319, %diff.check320
  br i1 %conflict.rdx321, label %.lr.ph209.preheader340, label %vector.ph324

vector.ph324:                                     ; preds = %vector.memcheck299
  %n.vec325 = and i64 %wide.trip.count231, 2147483644 ; 3 uses
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next336, %vector.body326 ] ; 7 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %index327 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load328 = load <2 x i64>, ptr %i.av, align 8, !tbaa !38
  %wide.load329 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %index327 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load330 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !38
  %wide.load331 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !38
  %i.az = or <2 x i64> %wide.load330, %wide.load328
  %i.ba = or <2 x i64> %wide.load331, %wide.load329
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index327 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %i.az, ptr %i.bb, align 8, !tbaa !38
  store <2 x i64> %i.ba, ptr %i.bc, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %index327 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load332 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !38
  %wide.load333 = load <2 x i64>, ptr %i.be, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %index327 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load334 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !38
  %wide.load335 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !38
  %i.bh = and <2 x i64> %wide.load334, %wide.load332
  %i.bi = and <2 x i64> %wide.load335, %wide.load333
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index327 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <2 x i64> %i.bh, ptr %i.bj, align 8, !tbaa !38
  store <2 x i64> %i.bi, ptr %i.bk, align 8, !tbaa !38
  %index.next336 = add nuw i64 %index327, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next336, %n.vec325
  br i1 %i.bl, label %middle.block337, label %vector.body326, !llvm.loop !49

middle.block337:                                  ; preds = %vector.body326
  %cmp.n338 = icmp eq i64 %n.vec325, %wide.trip.count231
  br i1 %cmp.n338, label %.loopexit, label %.lr.ph209.preheader340

.lr.ph209.preheader340:                           ; preds = %vector.memcheck299, %.lr.ph209.preheader, %middle.block337
  %indvars.iv228.ph = phi i64 [ 0, %vector.memcheck299 ], [ 0, %.lr.ph209.preheader ], [ %n.vec325, %middle.block337 ] ; 9 uses
  %xtraiter350 = and i64 %wide.trip.count231, 1
  %lcmp.mod351.not = icmp eq i64 %xtraiter350, 0
  br i1 %lcmp.mod351.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader340
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %indvars.iv228.ph
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %indvars.iv228.ph
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !38
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv228.ph
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %indvars.iv228.ph
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv228.ph
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !38
  %i.bw = and i64 %i.bv, %i.bt
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv228.ph
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !38
  %indvars.iv.next229.prol = or disjoint i64 %indvars.iv228.ph, 1
  br label %.lr.ph209.prol.loopexit

.lr.ph209.prol.loopexit:                          ; preds = %.lr.ph209.prol, %.lr.ph209.preheader340
  %indvars.iv228.unr = phi i64 [ %indvars.iv228.ph, %.lr.ph209.preheader340 ], [ %indvars.iv.next229.prol, %.lr.ph209.prol ]
  %i.by = add nsw i64 %wide.trip.count231, -1
  %i.bz = icmp eq i64 %indvars.iv228.ph, %i.by
  br i1 %i.bz, label %.loopexit, label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209
  %indvars.iv228 = phi i64 [ %indvars.iv.next229.1, %.lr.ph209 ], [ %indvars.iv228.unr, %.lr.ph209.prol.loopexit ] ; 8 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %indvars.iv228
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %indvars.iv228
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !38
  %i.ce = or i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv228
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %indvars.iv228
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !38
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv228
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !38
  %i.ck = and i64 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv228
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !38
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 6 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.248, i64 %indvars.iv.next229
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !38
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.238, i64 %indvars.iv.next229
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !38
  %i.cq = or i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next229
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.249, i64 %indvars.iv.next229
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !38
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.239, i64 %indvars.iv.next229
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !38
  %i.cw = and i64 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next229
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !38
  %indvars.iv.next229.1 = add nuw nsw i64 %indvars.iv228, 2 ; 2 uses
  %exitcond232.not.1 = icmp eq i64 %indvars.iv.next229.1, %wide.trip.count231
  br i1 %exitcond232.not.1, label %.loopexit, label %.lr.ph209, !llvm.loop !50

bb.c:                                             ; preds = %bb.a
  %.not.i.not = xor i1 %.not.i, true
  %narrow.i193 = and i1 %i.f, %.not.i.not
  br i1 %narrow.i193, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cy = getelementptr i8, ptr %0, i64 792
  %.val158 = load ptr, ptr %i.cy, align 8, !tbaa !35 ; 3 uses
  %.val158274 = ptrtoaddr ptr %.val158 to i64     ; 3 uses
  %i.cz = getelementptr i8, ptr %0, i64 808
  %.val159 = load i32, ptr %i.cz, align 8, !tbaa !36 ; 5 uses
  %i.da = shl i32 %.val159, 1                     ; 2 uses
  %i.db = mul i32 %i.da, %1
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %.val158, i64 %i.dc ; 5 uses
  %i.de = sext i32 %.val159 to i64                ; 3 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.de ; 4 uses
  %i.dg = trunc i64 %.val174 to i32               ; 2 uses
  %i.dh = and i32 %i.dg, 536870912
  %.not141 = icmp eq i32 %i.dh, 0                 ; 2 uses
  %i.di = and i32 %i.dg, 536870911
  %i.dj = sub nsw i32 %1, %i.di
  %i.dk = mul nsw i32 %i.da, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %.val158, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.de ; 2 uses
  %. = select i1 %.not141, ptr %i.dm, ptr %i.dn   ; 5 uses
  %.275 = ptrtoaddr ptr %. to i64                 ; 2 uses
  %.247 = select i1 %.not141, ptr %i.dn, ptr %i.dm ; 5 uses
  %.247278 = ptrtoaddr ptr %.247 to i64           ; 2 uses
  %i.do = icmp sgt i32 %.val159, 0
  br i1 %i.do, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %bb.d
  %wide.trip.count226 = zext nneg i32 %.val159 to i64 ; 5 uses
  %min.iters.check286 = icmp ult i32 %.val159, 40
  br i1 %min.iters.check286, label %.lr.ph207.preheader341, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph207.preheader
  %i.dp = shl nuw nsw i64 %i.de, 3
  %i.dq = shl nsw i64 %i.dc, 3                    ; 3 uses
  %i.dr = add i64 %i.dq, %.val158274
  %i.ds = sub i64 %.275, %i.dr
  %diff.check276 = icmp ugt i64 %i.ds, -32
  %i.dt = add i64 %i.dq, %.val158274
  %i.du = sub i64 %i.dt, %.247278
  %diff.check279 = icmp ugt i64 %i.du, -32
  %conflict.rdx280 = or i1 %diff.check276, %diff.check279
  %i.dv = add i64 %i.dp, %.val158274
  %i.dw = add i64 %i.dv, %i.dq                    ; 2 uses
  %i.dx = sub i64 %.275, %i.dw
  %diff.check281 = icmp ugt i64 %i.dx, -32
  %conflict.rdx282 = or i1 %conflict.rdx280, %diff.check281
  %i.dy = sub i64 %.247278, %i.dw
  %diff.check283 = icmp ugt i64 %i.dy, -32
  %conflict.rdx284 = or i1 %conflict.rdx282, %diff.check283
  br i1 %conflict.rdx284, label %.lr.ph207.preheader341, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck272
  %n.vec288 = and i64 %wide.trip.count226, 2147483644 ; 3 uses
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next295, %vector.body289 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %., i64 %index290 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load291 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !38
  %wide.load292 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index290 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x i64> %wide.load291, ptr %i.eb, align 8, !tbaa !38
  store <2 x i64> %wide.load292, ptr %i.ec, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.247, i64 %index290 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load293 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !38
  %wide.load294 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !38
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index290 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x i64> %wide.load293, ptr %i.ef, align 8, !tbaa !38
  store <2 x i64> %wide.load294, ptr %i.eg, align 8, !tbaa !38
  %index.next295 = add nuw i64 %index290, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next295, %n.vec288
  br i1 %i.eh, label %middle.block296, label %vector.body289, !llvm.loop !51

middle.block296:                                  ; preds = %vector.body289
  %cmp.n297 = icmp eq i64 %n.vec288, %wide.trip.count226
  br i1 %cmp.n297, label %.loopexit, label %.lr.ph207.preheader341

.lr.ph207.preheader341:                           ; preds = %vector.memcheck272, %.lr.ph207.preheader, %middle.block296
end_hunk_0
