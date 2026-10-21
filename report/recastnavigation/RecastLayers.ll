Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastLayers?download=true
inline.NumInlined: 113
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"rcBuildHeightfieldLayers: Out of memory 'srcReg' (%d).\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"rcBuildHeightfieldLayers: Out of memory 'sweeps' (%d).\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"rcBuildHeightfieldLayers: Region ID overflow.\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"rcBuildHeightfieldLayers: Out of memory 'regs' (%d).\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"rcBuildHeightfieldLayers: layer overflow (too many overlapping walkable platforms). Try increasing RC_MAX_LAYERS.\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"rcBuildHeightfieldLayers: Out of memory 'layers' (%d).\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"rcBuildHeightfieldLayers: Out of memory 'heights' (%d).\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"rcBuildHeightfieldLayers: Out of memory 'areas' (%d).\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"rcBuildHeightfieldLayers: Out of memory 'cons' (%d).\00", align 1

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z24rcBuildHeightfieldLayersP9rcContextRK20rcCompactHeightfieldiiR21rcHeightfieldLayerSet(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 5 uses
  %i.b = alloca [63 x i8], align 16               ; 6 uses
  %i.c = alloca [64 x i8], align 16               ; 7 uses
  %i.d = alloca [256 x i8], align 16              ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 25) #6, !call_target !30, !inline_history !13
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.k = load i32, ptr %1, align 8, !tbaa !70     ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !71   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !72
  %i.p = sext i32 %i.o to i64
  %i.q = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.p, i32 noundef 1) #6 ; 17 uses
  %.not = icmp eq ptr %i.q, null
  %i.r = load i32, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %i.r) #6
  br label %bb.ea

bb.d:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.s, i1 false)
  %i.t = load i32, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.v, i32 noundef 1) #6 ; 6 uses
  %.not670 = icmp eq ptr %i.w, null
  br i1 %.not670, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %i.t) #6
  br label %bb.dz

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.x = sub nsw i32 %i.m, %2                     ; 2 uses
  %.not673965 = icmp slt i32 %2, %i.x
  br i1 %.not673965, label %.lr.ph969, label %.critedge711.thread

.lr.ph969:                                        ; preds = %bb.f
  %i.y = sub nsw i32 %i.k, %2                     ; 3 uses
  %i.z = icmp slt i32 %2, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = sext i32 %2 to i64                      ; 3 uses
  %i.ae = sext i32 %i.k to i64                    ; 3 uses
  %wide.trip.count = sext i32 %i.y to i64
  %wide.trip.count1075 = sext i32 %i.y to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph969, %.critedge._crit_edge
  %indvars.iv1077 = phi i64 [ %i.ad, %.lr.ph969 ], [ %indvars.iv.next1078, %.critedge._crit_edge ] ; 4 uses
  %.0615966 = phi i8 [ 0, %.lr.ph969 ], [ %.1616.lcssa1303, %.critedge._crit_edge ] ; 4 uses
  %i.af = zext i8 %.0615966 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ag, i1 false)
  br i1 %i.z, label %.lr.ph951, label %.critedge._crit_edge

.lr.ph951:                                        ; preds = %bb.g
  %i.ah = mul nsw i64 %indvars.iv1077, %i.ae      ; 2 uses
  %i.ai = add i64 %i.ah, 4294967295
  %i.aj = add nsw i64 %indvars.iv1077, -1
  %i.ak = mul nsw i64 %i.aj, %i.ae
  br label %bb.h

.preheader935:                                    ; preds = %._crit_edge
  %.not672.not954.not = icmp eq i8 %.1611.lcssa, 0
  br i1 %.not672.not954.not, label %.lr.ph964, label %.lr.ph957.preheader

.lr.ph957.preheader:                              ; preds = %.preheader935
  %wide.trip.count1067 = zext i8 %.1611.lcssa to i64
  br label %.lr.ph957

bb.h:                                             ; preds = %.lr.ph951, %._crit_edge
  %indvars.iv1063 = phi i64 [ %i.ad, %.lr.ph951 ], [ %indvars.iv.next1064, %._crit_edge ] ; 4 uses
  %.0610948 = phi i8 [ 0, %.lr.ph951 ], [ %.1611.lcssa, %._crit_edge ] ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv1063
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ah
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = lshr i32 %i.ao, 24                      ; 2 uses
  %.not1052 = icmp eq i32 %i.ap, 0
  br i1 %.not1052, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.aq = and i32 %i.ao, 16777215
  %i.ar = add nuw nsw i32 %i.aq, %i.ap
  %i.as = add i64 %i.ai, %indvars.iv1063
  %sext = shl i64 %i.as, 32
  %i.at = and i32 %i.ao, 16777215
  %i.au = zext nneg i32 %i.at to i64
  %i.av = zext nneg i32 %i.ar to i64
  %i.aw = ashr exact i64 %sext, 30
  br label %bb.i

._crit_edge:                                      ; preds = %bb.u, %bb.h
  %.1611.lcssa = phi i8 [ %.0610948, %bb.h ], [ %.3613, %bb.u ] ; 3 uses
  %indvars.iv.next1064 = add nsw i64 %indvars.iv1063, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1064, %wide.trip.count
  br i1 %exitcond.not, label %.preheader935, label %bb.h

bb.i:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ %i.au, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %.1611946 = phi i8 [ %.0610948, %.lr.ph ], [ %.3613, %bb.u ] ; 5 uses
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !75
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 63                       ; 2 uses
  %.not705 = icmp eq i32 %i.bf, 63
  br i1 %.not705, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.aw
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 16777215
  %i.bk = add nuw nsw i32 %i.bj, %i.bf
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !75
  %.not706 = icmp eq i8 %i.bn, 0
  br i1 %.not706, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !75  ; 2 uses
  %.not707 = icmp eq i8 %i.bp, -1
  br i1 %.not707, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %i.bq = add i8 %.1611946, 1
  %i.br = zext i8 %.1611946 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 -1, ptr %i.bt, align 1, !tbaa !78
  store i16 0, ptr %i.bs, align 2, !tbaa !79
  %.pre = load i32, ptr %i.bd, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bu = phi i32 [ %.pre, %bb.m ], [ %i.be, %bb.l ]
  %.2612 = phi i8 [ %i.bq, %bb.m ], [ %.1611946, %bb.l ]
  %.2607 = phi i8 [ %.1611946, %bb.m ], [ %i.bp, %bb.l ] ; 2 uses
  %i.bv = lshr i32 %i.bu, 18
  %i.bw = and i32 %i.bv, 63                       ; 2 uses
  %.not708 = icmp eq i32 %i.bw, 63
  br i1 %.not708, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %indvars.iv1063
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.ak
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 16777215
  %i.cc = add nuw nsw i32 %i.cb, %i.bw
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !75  ; 4 uses
  %.not709 = icmp eq i8 %i.cf, -1
  br i1 %.not709, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = zext i8 %.2607 to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cg ; 4 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !79 ; 2 uses
  %i.cj = icmp eq i16 %i.ci, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 3 ; 2 uses
  br i1 %i.cj, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  store i8 %i.cf, ptr %i.ck, align 1, !tbaa !78
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %.pre1190 = load i8, ptr %i.ck, align 1, !tbaa !78
  %i.cl = icmp eq i8 %.pre1190, %i.cf
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread, %bb.q
  %i.cm = add i16 %i.ci, 1
  store i16 %i.cm, ptr %i.ch, align 2, !tbaa !79
  %i.cn = zext i8 %i.cf to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !80
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !80
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  store i8 -1, ptr %i.cr, align 1, !tbaa !78
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.r, %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  store i8 %.2607, ptr %i.cs, align 1, !tbaa !75
  br label %bb.u

bb.u:                                             ; preds = %bb.i, %bb.t
  %.3613 = phi i8 [ %.2612, %bb.t ], [ %.1611946, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ct = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.ct, label %bb.i, label %._crit_edge

.lr.ph964:                                        ; preds = %bb.y, %.preheader935
  %.1616.lcssa = phi i8 [ %.0615966, %.preheader935 ], [ %.2617, %bb.y ]
  %i.cu = mul nsw i64 %indvars.iv1077, %i.ae
  br label %bb.z

.lr.ph957:                                        ; preds = %.lr.ph957.preheader, %bb.y
  %indvars.iv1065 = phi i64 [ 0, %.lr.ph957.preheader ], [ %indvars.iv.next1066, %bb.y ] ; 2 uses
  %.1616955 = phi i8 [ %.0615966, %.lr.ph957.preheader ], [ %.2617, %bb.y ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv1065 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !78  ; 3 uses
  %.not671 = icmp eq i8 %i.cx, -1
  br i1 %.not671, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph957
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !80
  %i.db = load i16, ptr %i.cv, align 2, !tbaa !79
  %i.dc = zext i16 %i.db to i32
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph957
  %i.de = icmp eq i8 %.1616955, -1
  br i1 %i.de, label %.critedge711, label %bb.x

.critedge711:                                     ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.2) #6
  br label %bb.dy

bb.x:                                             ; preds = %bb.w
  %i.df = add nuw i8 %.1616955, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.sink = phi i8 [ %.1616955, %bb.x ], [ %i.cx, %bb.v ]
  %.2617 = phi i8 [ %i.df, %bb.x ], [ %.1616955, %bb.v ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %.sink, ptr %i.dg, align 2, !tbaa !81
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 1 ; 2 uses
  %exitcond1068.not = icmp eq i64 %indvars.iv.next1066, %wide.trip.count1067
  br i1 %exitcond1068.not, label %.lr.ph964, label %.lr.ph957

bb.z:                                             ; preds = %.lr.ph964, %.critedge
  %indvars.iv1072 = phi i64 [ %i.ad, %.lr.ph964 ], [ %indvars.iv.next1073, %.critedge ] ; 2 uses
  %5 = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.dh = getelementptr [4 x i8], ptr %5, i64 %indvars.iv1072
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.cu
  %i.dj = load i32, ptr %i.di, align 4            ; 3 uses
  %i.dk = lshr i32 %i.dj, 24                      ; 2 uses
  %.not1053 = icmp eq i32 %i.dk, 0
  br i1 %.not1053, label %.critedge, label %.lr.ph961.preheader

.lr.ph961.preheader:                              ; preds = %bb.z
  %i.dl = and i32 %i.dj, 16777215
  %i.dm = add nuw nsw i32 %i.dl, %i.dk
  %i.dn = and i32 %i.dj, 16777215
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = zext nneg i32 %i.dm to i64
  br label %.lr.ph961

.critedge:                                        ; preds = %bb.ab, %bb.z
  %indvars.iv.next1073 = add nsw i64 %indvars.iv1072, 1 ; 2 uses
  %exitcond1076.not = icmp eq i64 %indvars.iv.next1073, %wide.trip.count1075
  br i1 %exitcond1076.not, label %.critedge._crit_edge, label %bb.z

.lr.ph961:                                        ; preds = %.lr.ph961.preheader, %bb.ab
  %indvars.iv1069 = phi i64 [ %i.do, %.lr.ph961.preheader ], [ %indvars.iv.next1070, %bb.ab ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv1069 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !75  ; 2 uses
  %.not704 = icmp eq i8 %i.dr, -1
  br i1 %.not704, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph961
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !81
  store i8 %i.dv, ptr %i.dq, align 1, !tbaa !75
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph961, %bb.aa
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 1 ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next1070, %i.dp
  br i1 %i.dw, label %.lr.ph961, label %.critedge

.critedge._crit_edge:                             ; preds = %.critedge, %bb.g
  %.1616.lcssa1303 = phi i8 [ %.0615966, %bb.g ], [ %.1616.lcssa, %.critedge ] ; 2 uses
  %indvars.iv.next1078 = add nsw i64 %indvars.iv1077, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1078 to i32
  %exitcond1079.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond1079.not, label %.critedge711.thread, label %bb.g

.critedge711.thread:                              ; preds = %.critedge._crit_edge, %bb.f
  %.0615.lcssa = phi i8 [ 0, %bb.f ], [ %.1616.lcssa1303, %.critedge._crit_edge ] ; 13 uses
  %i.dx = zext i8 %.0615.lcssa to i64
  %i.dy = mul nuw nsw i64 %i.dx, 88               ; 2 uses
  %i.dz = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.dy, i32 noundef 1) #6 ; 36 uses
  %.not674 = icmp eq ptr %i.dz, null
  br i1 %.not674, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge711.thread
  %i.ea = zext i8 %.0615.lcssa to i32
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.3, i32 noundef %i.ea) #6
  br label %bb.dx

bb.ad:                                            ; preds = %.critedge711.thread
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.dz, i8 0, i64 %i.dy, i1 false)
  %.not1054 = icmp eq i8 %.0615.lcssa, 0          ; 4 uses
  br i1 %.not1054, label %.preheader934, label %.lr.ph973.preheader

.lr.ph973.preheader:                              ; preds = %bb.ad
  %wide.trip.count1083 = zext i8 %.0615.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count1083, 3     ; 3 uses
  %i.eb = icmp ult i8 %.0615.lcssa, 4
  br i1 %i.eb, label %.lr.ph973.epil.preheader, label %.lr.ph973.preheader.new

.lr.ph973.preheader.new:                          ; preds = %.lr.ph973.preheader
  %unroll_iter = and i64 %wide.trip.count1083, 252
  br label %.lr.ph973

.preheader934.loopexit.unr-lcssa:                 ; preds = %.lr.ph973
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader934, label %.lr.ph973.epil.preheader

.lr.ph973.epil.preheader:                         ; preds = %.preheader934.loopexit.unr-lcssa, %.lr.ph973.preheader
  %indvars.iv1080.epil.init = phi i64 [ 0, %.lr.ph973.preheader ], [ %indvars.iv.next1081.3, %.preheader934.loopexit.unr-lcssa ]
  %lcmp.mod1320 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1320)
  br label %.lr.ph973.epil

.lr.ph973.epil:                                   ; preds = %.lr.ph973.epil, %.lr.ph973.epil.preheader
  %indvars.iv1080.epil = phi i64 [ %indvars.iv1080.epil.init, %.lr.ph973.epil.preheader ], [ %indvars.iv.next1081.epil, %.lr.ph973.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph973.epil.preheader ], [ %epil.iter.next, %.lr.ph973.epil ]
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %i.dz, i64 %indvars.iv1080.epil ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 84
  store i8 -1, ptr %i.ed, align 2, !tbaa !83
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  store i16 -1, ptr %i.ee, align 2, !tbaa !84
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 82
  store i16 0, ptr %i.ef, align 2, !tbaa !85
  %indvars.iv.next1081.epil = add nuw nsw i64 %indvars.iv1080.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader934, label %.lr.ph973.epil, !llvm.loop !14

.preheader934:                                    ; preds = %.preheader934.loopexit.unr-lcssa, %.lr.ph973.epil, %bb.ad
  %.not677990 = icmp sgt i32 %i.m, 0
  br i1 %.not677990, label %.preheader933.lr.ph, label %.critedge722

.preheader933.lr.ph:                              ; preds = %.preheader934
  %.not678987 = icmp sgt i32 %i.k, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 72
  br i1 %.not678987, label %.preheader933.preheader, label %.critedge722

.preheader933.preheader:                          ; preds = %.preheader933.lr.ph
  %i.ei = zext nneg i32 %i.k to i64               ; 3 uses
  %wide.trip.count1112 = zext nneg i32 %i.m to i64
  %wide.trip.count1107 = zext nneg i32 %i.k to i64
  br label %.preheader933

.lr.ph973:                                        ; preds = %.lr.ph973, %.lr.ph973.preheader.new
  %indvars.iv1080 = phi i64 [ 0, %.lr.ph973.preheader.new ], [ %indvars.iv.next1081.3, %.lr.ph973 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph973.preheader.new ], [ %niter.next.3, %.lr.ph973 ]
  %i.ej = getelementptr inbounds nuw [88 x i8], ptr %i.dz, i64 %indvars.iv1080 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 84
  store i8 -1, ptr %i.ek, align 2, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  store i16 -1, ptr %i.el, align 2, !tbaa !84
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 82
  store i16 0, ptr %i.em, align 2, !tbaa !85
  %i.en = getelementptr inbounds nuw [88 x i8], ptr %i.dz, i64 %indvars.iv1080 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 172
  store i8 -1, ptr %i.eo, align 2, !tbaa !83
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 168
  store i16 -1, ptr %i.ep, align 2, !tbaa !84
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 170
  store i16 0, ptr %i.eq, align 2, !tbaa !85
  %i.er = getelementptr inbounds nuw [88 x i8], ptr %i.dz, i64 %indvars.iv1080 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 260
  store i8 -1, ptr %i.es, align 2, !tbaa !83
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 256
  store i16 -1, ptr %i.et, align 2, !tbaa !84
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 258
  store i16 0, ptr %i.eu, align 2, !tbaa !85
  %i.ev = getelementptr inbounds nuw [88 x i8], ptr %i.dz, i64 %indvars.iv1080 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 348
  store i8 -1, ptr %i.ew, align 2, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 344
  store i16 -1, ptr %i.ex, align 2, !tbaa !84
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 346
  store i16 0, ptr %i.ey, align 2, !tbaa !85
  %indvars.iv.next1081.3 = add nuw nsw i64 %indvars.iv1080, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader934.loopexit.unr-lcssa, label %.lr.ph973

.preheader933:                                    ; preds = %.preheader933.preheader, %..critedge720_crit_edge
  %indvars.iv1109 = phi i64 [ 0, %.preheader933.preheader ], [ %indvars.iv.next1110, %..critedge720_crit_edge ] ; 4 uses
  %i.ez = mul nuw nsw i64 %indvars.iv1109, %i.ei  ; 3 uses
  %i.fa = add nuw nsw i64 %indvars.iv1109, 1
  %i.fb = mul nuw nsw i64 %i.fa, %i.ei
  %i.fc = add nsw i64 %indvars.iv1109, -1
  %i.fd = mul nsw i64 %i.fc, %i.ei
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader933, %.critedge716._crit_edge
  %indvars.iv1104 = phi i64 [ 0, %.preheader933 ], [ %indvars.iv.next1105, %.critedge716._crit_edge ] ; 6 uses
  %i.fe = load ptr, ptr %i.eg, align 8, !tbaa !73
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv1104
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.fh = load i32, ptr %i.fg, align 4            ; 3 uses
  %i.fi = lshr i32 %i.fh, 24                      ; 2 uses
  %.not1055 = icmp eq i32 %i.fi, 0
  br i1 %.not1055, label %.critedge716._crit_edge, label %.lr.ph978.preheader

.lr.ph978.preheader:                              ; preds = %bb.ae
  %i.fj = and i32 %i.fh, 16777215
  %i.fk = add nuw nsw i32 %i.fj, %i.fi
  %i.fl = and i32 %i.fh, 16777215
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = zext nneg i32 %i.fk to i64
  br label %.lr.ph978

.critedge716.preheader:                           ; preds = %.loopexit932
  %.not679984 = icmp sgt i32 %.2598, 1
  br i1 %.not679984, label %.lr.ph986.preheader, label %.critedge716._crit_edge

.lr.ph986.preheader:                              ; preds = %.critedge716.preheader
  %i.fo = add nsw i32 %.2598, -1
  %wide.trip.count1102 = zext nneg i32 %i.fo to i64
  %wide.trip.count1097 = zext nneg i32 %.2598 to i64
  br label %.lr.ph983

.lr.ph978:                                        ; preds = %.lr.ph978.preheader, %.loopexit932
  %indvars.iv1089 = phi i64 [ %i.fm, %.lr.ph978.preheader ], [ %indvars.iv.next1090, %.loopexit932 ] ; 3 uses
  %.0596975 = phi i32 [ 0, %.lr.ph978.preheader ], [ %.2598, %.loopexit932 ] ; 5 uses
  %i.fp = load ptr, ptr %i.eh, align 8, !tbaa !76
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv1089 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv1089
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !75  ; 7 uses
  %i.ft = icmp eq i8 %i.fs, -1
  br i1 %i.ft, label %.loopexit932, label %bb.af

bb.af:                                            ; preds = %.lr.ph978
  %i.fu = zext i8 %i.fs to i64
  %i.fv = getelementptr inbounds nuw [88 x i8], ptr %i.dz, i64 %i.fu ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80 ; 2 uses
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !84
  %i.fy = load i16, ptr %i.fq, align 4, !tbaa !88 ; 2 uses
  %i.fz = tail call noundef i16 @llvm.umin.i16(i16 %i.fx, i16 %i.fy)
  store i16 %i.fz, ptr %i.fw, align 2, !tbaa !84
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 82 ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !85
  %i.gc = tail call noundef i16 @llvm.umax.i16(i16 %i.gb, i16 %i.fy)
  store i16 %i.gc, ptr %i.ga, align 2, !tbaa !85
  %i.gd = icmp slt i32 %.0596975, 63
  br i1 %i.gd, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ge = add nsw i32 %.0596975, 1
  %i.gf = sext i32 %.0596975 to i64
  %i.gg = getelementptr inbounds i8, ptr %i.b, i64 %i.gf
  store i8 %i.fs, ptr %i.gg, align 1, !tbaa !75
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1597 = phi i32 [ %i.ge, %bb.ag ], [ %.0596975, %bb.af ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fv, i64 63 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 86 ; 12 uses
  %i.gk = load i32, ptr %i.gh, align 4            ; 5 uses
  %i.gl = and i32 %i.gk, 63                       ; 2 uses
  %.not701 = icmp eq i32 %i.gl, 63
  br i1 %.not701, label %_ZL9addUniquePhRhih.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gm = load ptr, ptr %i.eg, align 8, !tbaa !73
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %indvars.iv1104
  %i.go = getelementptr i8, ptr %i.gn, i64 -4
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %i.ez
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = and i32 %i.gq, 16777215
end_hunk_0
