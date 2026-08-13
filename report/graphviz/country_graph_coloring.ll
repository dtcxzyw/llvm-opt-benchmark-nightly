inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Verbose = external local_unnamed_addr global i8, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [49 x i8] c"saving timing vs antiband data to timing_greedy\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"timing_greedy\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"[%d] aband = %f, aband_avg = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"cpu time for spectral ordering (before greedy) = %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"cpu time for greedy refinement = %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"cpu time for spectral + greedy = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @improve_antibandwidth_by_swapping(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !9      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 6 uses
  %i.f = tail call i64 @clock() #9                ; 3 uses
  %i.g = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.i = tail call i64 @fwrite(ptr nonnull @.str, i64 48, i64 1, ptr %i.h) #10 ; 0 uses
  %i.j = tail call noalias ptr @fopen(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.069 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.k = icmp sgt i32 %i.a, 0
  %i.l = sitofp i32 %i.a to double                ; 21 uses
  %wide.trip.count50.i = zext i32 %i.a to i64     ; 4 uses
  %i.m = insertelement <2 x double> poison, double %i.l, i64 1
  %i.n = insertelement <2 x double> poison, double %i.l, i64 1
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %get_12_norm.exit129, %bb.c
  %.0147.ph = phi i32 [ %i.fq, %get_12_norm.exit129 ], [ 1, %bb.c ] ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.aa
  br i1 %i.k, label %.lr.ph144, label %._crit_edge145.thread

.thread172.critedge:                              ; preds = %._crit_edge145.thread
  %i.o = fdiv double 0.000000e+00, %i.l           ; 2 uses
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.4, i32 noundef %.0147.ph, double noundef %i.l, double noundef %i.o) #11 ; 0 uses
  %i.r = tail call i64 @clock() #9
  %i.s = sub nsw i64 %i.r, %i.f
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+06
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.069, ptr noundef nonnull @.str.3, double noundef %i.u, double noundef %i.l, double noundef %i.o) #9 ; 0 uses
  br label %.thread172

.thread172:                                       ; preds = %get_12_norm.exit129, %bb.aa, %.thread172.critedge, %._crit_edge145.thread
  %.not76 = icmp eq ptr %.069, null
  br i1 %.not76, label %bb.ac, label %bb.ab

._crit_edge145:                                   ; preds = %bb.w
  %i.w = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not77 = icmp eq i8 %i.w, 0
  br i1 %.not77, label %bb.aa, label %.lr.ph42.preheader.i112

._crit_edge145.thread:                            ; preds = %.preheader
  %i.x = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not77167 = icmp eq i8 %i.x, 0
  br i1 %.not77167, label %.thread172, label %.thread172.critedge

.lr.ph144:                                        ; preds = %.preheader, %bb.w
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.w ], [ 0, %.preheader ] ; 8 uses
  %.171143 = phi i1 [ %.4, %bb.w ], [ false, %.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv151 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 4       ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph144
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv151
  %i.ae = sext i32 %i.z to i64
  %wide.trip.count.i = sext i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01618.i = phi double [ %i.l, %.lr.ph.i ], [ %.1.i, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20 ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp eq i64 %indvars.iv151, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !20
  %i.ak = sext i32 %i.ag to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !20
  %i.an = sub nsw i32 %i.aj, %i.am
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = uitofp nneg i32 %i.ao to double
  %i.aq = tail call nsz double @llvm.minnum.f64(double %.01618.i, double %i.ap)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi double [ %.01618.i, %bb.d ], [ %i.aq, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph, label %bb.d, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.f, %.lr.ph144
  %.016.lcssa.i = phi double [ %i.l, %.lr.ph144 ], [ %.1.i, %bb.f ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv151 ; 4 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.s
  %i.as = trunc nuw nsw i64 %indvars.iv151 to i32
  %i.at = urem i32 %i.as, 100
  %i.au = icmp eq i32 %i.at, 0
  %i.av = load i8, ptr @Verbose, align 1
  %i.aw = icmp ne i8 %i.av, 0
  %or.cond = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond, label %.lr.ph42.preheader.i, label %bb.w

bb.g:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 7 uses
  %.2141 = phi i1 [ %.171143, %.lr.ph ], [ %.4, %bb.s ] ; 2 uses
  %.sroa.0.0138 = phi double [ %.016.lcssa.i, %.lr.ph ], [ %.sroa.0.1, %bb.s ] ; 3 uses
  %i.ax = icmp eq i64 %indvars.iv, %indvars.iv151
  br i1 %i.ax, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !20 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 4      ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !20 ; 2 uses
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph.i79, label %get_local_12_norm.exit86

.lr.ph.i79:                                       ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.be = sext i32 %i.az to i64
  %wide.trip.count.i80 = sext i32 %i.bb to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i79
  %indvars.iv.i81 = phi i64 [ %i.be, %.lr.ph.i79 ], [ %indvars.iv.next.i84, %bb.k ] ; 2 uses
  %.01618.i82 = phi double [ %i.l, %.lr.ph.i79 ], [ %.1.i83, %bb.k ] ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i81
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !20 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp eq i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !20
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %i.bn = sub nsw i32 %i.bj, %i.bm
  %i.bo = tail call i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = tail call nsz double @llvm.minnum.f64(double %.01618.i82, double %i.bp)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.i83 = phi double [ %.01618.i82, %bb.i ], [ %i.bq, %bb.j ] ; 2 uses
  %indvars.iv.next.i84 = add nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count.i80
  br i1 %exitcond.not.i85, label %get_local_12_norm.exit86, label %bb.i, !llvm.loop !21

get_local_12_norm.exit86:                         ; preds = %bb.k, %bb.h
  %.016.lcssa.i78 = phi double [ %i.l, %bb.h ], [ %.1.i83, %bb.k ]
  %i.br = load i32, ptr %i.ar, align 4, !tbaa !20 ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !20 ; 2 uses
  store i32 %i.bt, ptr %i.ar, align 4, !tbaa !20
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !20
  %i.bu = load i32, ptr %i.y, align 4, !tbaa !20  ; 2 uses
  %i.bv = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph.i88, label %get_local_12_norm.exit95

.lr.ph.i88:                                       ; preds = %get_local_12_norm.exit86
  %i.bx = sext i32 %i.bu to i64
  %wide.trip.count.i89 = sext i32 %i.bv to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i88
  %indvars.iv.i90 = phi i64 [ %i.bx, %.lr.ph.i88 ], [ %indvars.iv.next.i93, %bb.n ] ; 2 uses
  %.01618.i91 = phi double [ %i.l, %.lr.ph.i88 ], [ %.1.i92, %bb.n ] ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i90
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp eq i64 %indvars.iv151, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = load i32, ptr %i.ar, align 4, !tbaa !20
  %i.cd = sext i32 %i.bz to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !20
  %i.cg = sub nsw i32 %i.cc, %i.cf
  %i.ch = tail call i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = tail call nsz double @llvm.minnum.f64(double %.01618.i91, double %i.ci)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i92 = phi double [ %.01618.i91, %bb.l ], [ %i.cj, %bb.m ] ; 2 uses
  %indvars.iv.next.i93 = add nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i89
  br i1 %exitcond.not.i94, label %get_local_12_norm.exit95, label %bb.l, !llvm.loop !21

get_local_12_norm.exit95:                         ; preds = %bb.n, %get_local_12_norm.exit86
  %.016.lcssa.i87 = phi double [ %i.l, %get_local_12_norm.exit86 ], [ %.1.i92, %bb.n ] ; 2 uses
  %i.ck = load i32, ptr %i.ay, align 4, !tbaa !20 ; 2 uses
  %i.cl = load i32, ptr %i.ba, align 4, !tbaa !20 ; 2 uses
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.i97, label %get_local_12_norm.exit104

.lr.ph.i97:                                       ; preds = %get_local_12_norm.exit95
  %i.cn = sext i32 %i.ck to i64
  %wide.trip.count.i98 = sext i32 %i.cl to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i97
  %indvars.iv.i99 = phi i64 [ %i.cn, %.lr.ph.i97 ], [ %indvars.iv.next.i102, %bb.q ] ; 2 uses
  %.01618.i100 = phi double [ %i.l, %.lr.ph.i97 ], [ %.1.i101, %bb.q ] ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i99
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !20 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i64 %indvars.iv, %i.cq
  br i1 %i.cr, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !20
  %i.cv = sub nsw i32 %i.br, %i.cu
  %i.cw = tail call i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.cx = uitofp nneg i32 %i.cw to double
  %i.cy = tail call nsz double @llvm.minnum.f64(double %.01618.i100, double %i.cx)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.i101 = phi double [ %.01618.i100, %bb.o ], [ %i.cy, %bb.p ] ; 2 uses
  %indvars.iv.next.i102 = add nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i103 = icmp eq i64 %indvars.iv.next.i102, %wide.trip.count.i98
  br i1 %exitcond.not.i103, label %get_local_12_norm.exit104, label %bb.o, !llvm.loop !21

get_local_12_norm.exit104:                        ; preds = %bb.q, %get_local_12_norm.exit95
  %.016.lcssa.i96 = phi double [ %i.l, %get_local_12_norm.exit95 ], [ %.1.i101, %bb.q ]
  %i.cz = tail call nsz double @llvm.minnum.f64(double %.016.lcssa.i87, double %.016.lcssa.i96)
  %i.da = tail call nsz double @llvm.minnum.f64(double %.sroa.0.0138, double %.016.lcssa.i78)
  %i.db = fcmp ogt double %i.cz, %i.da
  br i1 %i.db, label %bb.s, label %bb.r

bb.r:                                             ; preds = %get_local_12_norm.exit104
  store i32 %i.br, ptr %i.ar, align 4, !tbaa !20
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %get_local_12_norm.exit104, %bb.r, %bb.g
  %.sroa.0.1 = phi double [ %.sroa.0.0138, %bb.g ], [ %.sroa.0.0138, %bb.r ], [ %.016.lcssa.i87, %get_local_12_norm.exit104 ]
  %.4 = phi i1 [ %.2141, %bb.g ], [ %.2141, %bb.r ], [ true, %get_local_12_norm.exit104 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count50.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !23

.lr.ph42.preheader.i:                             ; preds = %._crit_edge
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !20
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %._crit_edge.i, %.lr.ph42.preheader.i
  %.sroa.0.2 = phi double [ %i.l, %.lr.ph42.preheader.i ], [ %.sroa.0.3, %._crit_edge.i ] ; 2 uses
  %i.dc = phi double [ %i.l, %.lr.ph42.preheader.i ], [ %i.dm, %._crit_edge.i ] ; 2 uses
  %i.dd = phi i32 [ %.pre.i, %.lr.ph42.preheader.i ], [ %i.df, %._crit_edge.i ] ; 2 uses
  %indvars.iv47.i = phi i64 [ 0, %.lr.ph42.preheader.i ], [ %indvars.iv.next48.i, %._crit_edge.i ] ; 3 uses
  %storemerge39.i = phi double [ 0.000000e+00, %.lr.ph42.preheader.i ], [ %i.dn, %._crit_edge.i ]
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next48.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !20 ; 3 uses
  %i.dg = icmp slt i32 %i.dd, %i.df
  br i1 %i.dg, label %.lr.ph.i105, label %._crit_edge.i

.lr.ph.i105:                                      ; preds = %.lr.ph42.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv47.i
  %i.di = sext i32 %i.dd to i64
  %wide.trip.count.i106 = sext i32 %i.df to i64
  %i.dj = insertelement <2 x double> %i.m, double %i.dc, i64 0
  br label %bb.t

._crit_edge.i.loopexit:                           ; preds = %bb.v
  %i.dk = extractelement <2 x double> %i.ee, i64 1
  %i.dl = extractelement <2 x double> %i.ee, i64 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.lr.ph42.i
  %.sroa.0.3 = phi double [ %.sroa.0.2, %.lr.ph42.i ], [ %.sroa.0.5, %._crit_edge.i.loopexit ] ; 2 uses
  %i.dm = phi double [ %i.dc, %.lr.ph42.i ], [ %i.dl, %._crit_edge.i.loopexit ]
  %.032.lcssa.i = phi double [ %i.l, %.lr.ph42.i ], [ %i.dk, %._crit_edge.i.loopexit ]
  %i.dn = fadd double %storemerge39.i, %.032.lcssa.i ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count50.i
  br i1 %exitcond51.not.i, label %get_12_norm.exit.loopexit, label %.lr.ph42.i, !llvm.loop !24

bb.t:                                             ; preds = %bb.v, %.lr.ph.i105
  %.sroa.0.4 = phi double [ %.sroa.0.2, %.lr.ph.i105 ], [ %.sroa.0.5, %bb.v ]
  %indvars.iv.i107 = phi i64 [ %i.di, %.lr.ph.i105 ], [ %indvars.iv.next.i109, %bb.v ] ; 2 uses
  %i.do = phi <2 x double> [ %i.dj, %.lr.ph.i105 ], [ %i.ee, %bb.v ] ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i107
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !20 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp eq i64 %indvars.iv47.i, %i.dr
  br i1 %i.ds, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.du = sext i32 %i.dq to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.dx = sub nsw i32 %i.dt, %i.dw
  %i.dy = tail call i32 @llvm.abs.i32(i32 %i.dx, i1 true)
  %i.dz = uitofp nneg i32 %i.dy to double
  %i.ea = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.do, <2 x double> %i.eb) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.5 = phi double [ %.sroa.0.4, %bb.t ], [ %i.ed, %bb.u ] ; 2 uses
  %i.ee = phi <2 x double> [ %i.do, %bb.t ], [ %i.ec, %bb.u ] ; 3 uses
  %indvars.iv.next.i109 = add nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i106
  br i1 %exitcond.not.i110, label %._crit_edge.i.loopexit, label %bb.t, !llvm.loop !25

get_12_norm.exit.loopexit:                        ; preds = %._crit_edge.i
  %i.ef = fdiv double %i.dn, %i.l
  %i.eg = tail call i64 @clock() #9
  %i.eh = sub nsw i64 %i.eg, %i.f
  %i.ei = sitofp i64 %i.eh to double
  %i.ej = fdiv double %i.ei, 1.000000e+06
  %i.ek = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.069, ptr noundef nonnull @.str.3, double noundef %i.ej, double noundef %.sroa.0.3, double noundef %i.ef) #9 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %get_12_norm.exit.loopexit
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count50.i
  br i1 %exitcond154.not, label %._crit_edge145, label %.lr.ph144, !llvm.loop !26

.lr.ph42.preheader.i112:                          ; preds = %._crit_edge145
  %.pre.i114 = load i32, ptr %i.c, align 4, !tbaa !20
  br label %.lr.ph42.i115

.lr.ph42.i115:                                    ; preds = %._crit_edge.i119, %.lr.ph42.preheader.i112
  %.sroa.0.7 = phi double [ %i.l, %.lr.ph42.preheader.i112 ], [ %.sroa.0.8, %._crit_edge.i119 ] ; 2 uses
  %i.el = phi double [ %i.l, %.lr.ph42.preheader.i112 ], [ %i.ev, %._crit_edge.i119 ] ; 2 uses
  %i.em = phi i32 [ %.pre.i114, %.lr.ph42.preheader.i112 ], [ %i.eo, %._crit_edge.i119 ] ; 2 uses
  %indvars.iv47.i116 = phi i64 [ 0, %.lr.ph42.preheader.i112 ], [ %indvars.iv.next48.i118, %._crit_edge.i119 ] ; 3 uses
  %storemerge39.i117 = phi double [ 0.000000e+00, %.lr.ph42.preheader.i112 ], [ %i.ew, %._crit_edge.i119 ]
  %indvars.iv.next48.i118 = add nuw nsw i64 %indvars.iv47.i116, 1 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next48.i118
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !20 ; 3 uses
  %i.ep = icmp slt i32 %i.em, %i.eo
  br i1 %i.ep, label %.lr.ph.i122, label %._crit_edge.i119

.lr.ph.i122:                                      ; preds = %.lr.ph42.i115
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv47.i116
  %i.er = sext i32 %i.em to i64
  %wide.trip.count.i123 = sext i32 %i.eo to i64
  %i.es = insertelement <2 x double> %i.n, double %i.el, i64 0
  br label %bb.x

._crit_edge.i119.loopexit:                        ; preds = %bb.z
  %i.et = extractelement <2 x double> %i.fn, i64 1
  %i.eu = extractelement <2 x double> %i.fn, i64 0
  br label %._crit_edge.i119

._crit_edge.i119:                                 ; preds = %._crit_edge.i119.loopexit, %.lr.ph42.i115
  %.sroa.0.8 = phi double [ %.sroa.0.7, %.lr.ph42.i115 ], [ %.sroa.0.10, %._crit_edge.i119.loopexit ] ; 3 uses
  %i.ev = phi double [ %i.el, %.lr.ph42.i115 ], [ %i.eu, %._crit_edge.i119.loopexit ]
  %.032.lcssa.i120 = phi double [ %i.l, %.lr.ph42.i115 ], [ %i.et, %._crit_edge.i119.loopexit ]
  %i.ew = fadd double %storemerge39.i117, %.032.lcssa.i120 ; 2 uses
  %exitcond51.not.i121 = icmp eq i64 %indvars.iv.next48.i118, %wide.trip.count50.i
  br i1 %exitcond51.not.i121, label %get_12_norm.exit129, label %.lr.ph42.i115, !llvm.loop !24

bb.x:                                             ; preds = %bb.z, %.lr.ph.i122
  %.sroa.0.9 = phi double [ %.sroa.0.7, %.lr.ph.i122 ], [ %.sroa.0.10, %bb.z ]
  %indvars.iv.i124 = phi i64 [ %i.er, %.lr.ph.i122 ], [ %indvars.iv.next.i127, %bb.z ] ; 2 uses
  %i.ex = phi <2 x double> [ %i.es, %.lr.ph.i122 ], [ %i.fn, %bb.z ] ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i124
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !20 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp eq i64 %indvars.iv47.i116, %i.fa
  br i1 %i.fb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = load i32, ptr %i.eq, align 4, !tbaa !20
  %i.fd = sext i32 %i.ez to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !20
  %i.fg = sub nsw i32 %i.fc, %i.ff
  %i.fh = tail call i32 @llvm.abs.i32(i32 %i.fg, i1 true)
  %i.fi = uitofp nneg i32 %i.fh to double
  %i.fj = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ex, <2 x double> %i.fk) ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0.10 = phi double [ %.sroa.0.9, %bb.x ], [ %i.fm, %bb.y ] ; 2 uses
  %i.fn = phi <2 x double> [ %i.ex, %bb.x ], [ %i.fl, %bb.y ] ; 3 uses
  %indvars.iv.next.i127 = add nsw i64 %indvars.iv.i124, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next.i127, %wide.trip.count.i123
  br i1 %exitcond.not.i128, label %._crit_edge.i119.loopexit, label %bb.x, !llvm.loop !25

get_12_norm.exit129:                              ; preds = %._crit_edge.i119
  %i.fo = fdiv double %i.ew, %i.l                 ; 2 uses
  %i.fp = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.fq = add nuw nsw i32 %.0147.ph, 1
  %i.fr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fp, ptr noundef nonnull @.str.4, i32 noundef %.0147.ph, double noundef %.sroa.0.8, double noundef %i.fo) #11 ; 0 uses
  %i.fs = tail call i64 @clock() #9
  %i.ft = sub nsw i64 %i.fs, %i.f
  %i.fu = sitofp i64 %i.ft to double
  %i.fv = fdiv double %i.fu, 1.000000e+06
  %i.fw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.069, ptr noundef nonnull @.str.3, double noundef %i.fv, double noundef %.sroa.0.8, double noundef %i.fo) #9 ; 0 uses
  br i1 %.4, label %.preheader.outer, label %.thread172, !llvm.loop !27

bb.aa:                                            ; preds = %._crit_edge145
  br i1 %.4, label %.preheader, label %.thread172, !llvm.loop !27

bb.ab:                                            ; preds = %.thread172
  %i.fx = tail call i32 @fclose(ptr noundef nonnull %.069) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread172
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @country_graph_coloring(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !9      ; 5 uses
  %i.d = tail call i64 @clock() #9                ; 2 uses
  %i.e = tail call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %1, i1 noundef zeroext true) #9 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = tail call ptr @SparseMatrix_new(i32 noundef %i.c, i32 noundef %i.c, i64 noundef 1, i32 noundef 1, i32 noundef 1) #9 ; 2 uses
  %i.k = icmp sgt i32 %i.c, 0
  br i1 %i.k, label %.lr.ph57.preheader, label %._crit_edge58

.lr.ph57.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph57

._crit_edge58:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.l = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %.0.lcssa) #9 ; 3 uses
  call void @SparseMatrix_delete(ptr noundef %.0.lcssa) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = call ptr @power_method(ptr noundef %i.l, i32 noundef %i.n, i32 noundef %0) #9 ; 2 uses
  call void @vector_ordering(i32 noundef %i.c, ptr noundef %i.o, ptr noundef %2) #9
  call void @free(ptr noundef %i.o) #9
  %i.p = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next62, %._crit_edge ] ; 5 uses
  %.055 = phi ptr [ %i.j, %.lr.ph57.preheader ], [ %i.y, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv61
  %i.r = load i32, ptr %i.q, align 4, !tbaa !20   ; 2 uses
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next62 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20   ; 2 uses
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph57
  %i.v = sext i32 %i.r to i64
  %i.w = trunc nuw nsw i64 %indvars.iv61 to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph57
  %.1.lcssa = phi ptr [ %.055, %.lr.ph57 ], [ %.2, %bb.c ]
  %i.x = trunc nuw nsw i64 %indvars.iv61 to i32   ; 2 uses
  %i.y = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %.1.lcssa, i32 noundef %i.x, i32 noundef %i.x, ptr noundef nonnull %i.a, i32 noundef 1) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58, label %.lr.ph57, !llvm.loop !31

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.z = phi i32 [ %i.t, %.lr.ph.preheader ], [ %i.ag, %bb.c ]
  %indvars.iv = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.152 = phi ptr [ %.055, %.lr.ph.preheader ], [ %.2, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.not50 = icmp eq i64 %indvars.iv61, %i.ac
  br i1 %.not50, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ad = load double, ptr %i.a, align 8, !tbaa !29
  %i.ae = fadd double %i.ad, 1.000000e+00
  store double %i.ae, ptr %i.a, align 8, !tbaa !29
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !29
  %i.af = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %.152, i32 noundef %i.w, i32 noundef %i.ab, ptr noundef nonnull %i.b, i32 noundef 1) #9
  %.pre = load i32, ptr %i.s, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.ag = phi i32 [ %.pre, %bb.b ], [ %i.z, %.lr.ph ] ; 2 uses
  %.2 = phi ptr [ %i.af, %bb.b ], [ %.152, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !32

bb.d:                                             ; preds = %._crit_edge58
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ak = call i64 @clock() #9
  %i.al = sub nsw i64 %i.ak, %i.d
  %i.am = sitofp i64 %i.al to double
  %i.an = fdiv double %i.am, 1.000000e+06
  %i.ao = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.5, double noundef %i.an) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge58
  %i.ap = call i64 @clock() #9
  %i.aq = load ptr, ptr %2, align 8, !tbaa !33
  call void @improve_antibandwidth_by_swapping(ptr noundef %i.e, ptr noundef %i.aq)
  %i.ar = load i8, ptr @Verbose, align 1, !tbaa !17
  %.not48 = icmp eq i8 %i.ar, 0
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.at = call i64 @clock() #9
  %i.au = sub nsw i64 %i.at, %i.ap
  %i.av = sitofp i64 %i.au to double
  %i.aw = fdiv double %i.av, 1.000000e+06
  %i.ax = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.6, double noundef %i.aw) #11 ; 0 uses
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.az = call i64 @clock() #9
  %i.ba = sub nsw i64 %i.az, %i.d
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = fdiv double %i.bb, 1.000000e+06
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ay, ptr noundef nonnull @.str.7, double noundef %i.bc) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not49 = icmp eq ptr %i.e, %1
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @SparseMatrix_delete(ptr noundef %i.e) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @SparseMatrix_delete(ptr noundef nonnull %i.l) #9
  ret void
}

declare ptr @SparseMatrix_symmetrize(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @SparseMatrix_new(i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @SparseMatrix_from_coordinate_format(ptr noundef) local_unnamed_addr #5

declare void @SparseMatrix_delete(ptr noundef) local_unnamed_addr #5

declare ptr @power_method(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @vector_ordering(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"SparseMatrix_struct", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !6, i64 56, !14, i64 60, !14, i64 60, !14, i64 60, !11, i64 64}
!11 = !{!"long", !7, i64 0}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_Bool", !7, i64 0}
!15 = !{!10, !12, i64 32}
!16 = !{!10, !12, i64 40}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = !{!10, !6, i64 4}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !7, i64 0}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = !{!12, !12, i64 0}
end_hunk_0
