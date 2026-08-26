Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/taper?download=true
inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pointf_s = type { double, double }
%struct.stroke_t = type { i64, ptr }
%struct.vararr_t = type { %union.anon, ptr, %struct.pathpoint }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.pathpoint = type { double, double, double, i8, double, double, i8, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [58 x i8] c"integer overflow when trying to allocate %zu * %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define { i64, ptr } @taper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [4 x %struct.pointf_s], align 16    ; 8 uses
  %4 = alloca %struct.stroke_t, align 8           ; 11 uses
  %5 = alloca %struct.vararr_t, align 8           ; 12 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %.val = load ptr, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val165 = load i64, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i64 40, i1 false), !alias.scope !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12, !noalias !16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.e = load <2 x double>, ptr %.val, align 8, !noalias !16
  store <2 x double> %i.e, ptr %i.d, align 8, !tbaa !19, !alias.scope !16
  %.sroa.5.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.a, i8 0, i64 48, i1 false), !alias.scope !16
  %i.f = call i64 @gv_list_append_slot_(ptr noundef nonnull align 8 %5, i64 noundef 64) #12
  %i.g = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !16
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !tbaa.struct !21
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.val, i64 16, i1 false), !tbaa.struct !24, !noalias !16
  %i.j = icmp ugt i64 %.val165, 3
  br i1 %i.j, label %.lr.ph.i, label %pathtolines.exit

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

.loopexit.i:                                      ; preds = %bb.c
  %i.k = add i64 %i.m, 3                          ; 2 uses
  %i.l = icmp ult i64 %i.k, %.val165
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %i.l, label %bb.b, label %pathtolines.exit, !llvm.loop !25

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %.loopexit.i ] ; 2 uses
  %i.m = phi i64 [ 3, %.lr.ph.i ], [ %i.k, %.loopexit.i ]
  %.0227.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.x, %.loopexit.i ]
  %i.n = mul i64 %indvar.i, 48
  %i.o = getelementptr i8, ptr %.val, i64 %i.n
  %scevgep8.i = getelementptr i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !24, !noalias !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %scevgep8.i, i64 48, i1 false), !noalias !16
  %.sroa.013.0.copyload.i = load double, ptr %3, align 16, !tbaa !19, !noalias !16
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !19, !noalias !16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.05.i = phi i32 [ 1, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %.14.i = phi double [ %.0227.i, %bb.b ], [ %i.x, %bb.c ]
  %.sroa.5.03.i = phi double [ %.sroa.5.0.copyload.i, %bb.b ], [ %i.t, %bb.c ]
  %.sroa.013.02.i = phi double [ %.sroa.013.0.copyload.i, %bb.b ], [ %i.s, %bb.c ]
  %i.p = uitofp nneg i32 %.05.i to double
  %i.q = fdiv double %i.p, 2.000000e+01
  %i.r = call { double, double } @Bezier(ptr noundef nonnull %3, double noundef %i.q, ptr noundef null, ptr noundef null) #12 ; 2 uses
  %i.s = extractvalue { double, double } %i.r, 0  ; 3 uses
  %i.t = extractvalue { double, double } %i.r, 1  ; 3 uses
  %i.u = fsub double %.sroa.013.02.i, %i.s
  %i.v = fsub double %.sroa.5.03.i, %i.t
  %i.w = call double @hypot(double noundef %i.u, double noundef %i.v) #12
  %i.x = fadd double %.14.i, %i.w                 ; 3 uses
  store double %i.s, ptr %i.d, align 8, !tbaa !19, !alias.scope !16
  store double %i.t, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !19, !alias.scope !16
  store double %i.x, ptr %.sroa.5.0..sroa_idx.i.i.a, align 8, !tbaa !19, !alias.scope !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !alias.scope !16
  %i.y = call i64 @gv_list_append_slot_(ptr noundef nonnull align 8 %5, i64 noundef 64) #12
  %i.z = load ptr, ptr %5, align 8, !tbaa !20, !alias.scope !16
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !tbaa.struct !21
  %i.ab = add nuw nsw i32 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ab, 21
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.c, !llvm.loop !27

pathtolines.exit:                                 ; preds = %.loopexit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @gv_list_detach_(ptr noundef nonnull %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 64) #12
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !28  ; 4 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %i.ae = getelementptr [64 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -48
  %i.ag = load double, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %.not191 = icmp eq i64 %i.ad, 0
  br i1 %.not191, label %._crit_edge.thread, label %.lr.ph.preheader

._crit_edge.thread:                               ; preds = %pathtolines.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %._crit_edge181

.lr.ph.preheader:                                 ; preds = %pathtolines.exit
  %i.ah = icmp ne i64 %i.ad, 1
  %i.ai = zext i1 %i.ah to i64
  %i.aj = load <2 x double>, ptr %i.ac, align 8, !tbaa !19 ; 5 uses
  %.sroa.11.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.11.0.copyload.peel = load double, ptr %.sroa.11.0..sroa_idx.peel, align 8, !tbaa !19 ; 2 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.ai
  %i.al = load <2 x double>, ptr %i.ak, align 8, !tbaa !19
  %i.am = fsub <2 x double> %i.al, %i.aj          ; 3 uses
  %i.an = fcmp une <2 x double> %i.am, zeroinitializer
  %i.ao = bitcast <2 x i1> %i.an to i2
  %or.cond.i.peel = icmp eq i2 %i.ao, 0
  br i1 %or.cond.i.peel, label %myatan.exit.peel, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.ap = extractelement <2 x double> %i.am, i64 0
  %i.aq = extractelement <2 x double> %i.am, i64 1
  %i.ar = call double @atan2(double noundef %i.aq, double noundef %i.ap) #12 ; 3 uses
  %i.as = fcmp ult double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.e, label %myatan.exit.peel

bb.e:                                             ; preds = %bb.d
  %i.at = fadd double %i.ar, f0x401921FB54442D18
  br label %myatan.exit.peel

myatan.exit.peel:                                 ; preds = %bb.e, %bb.d, %.lr.ph.preheader
  %.0.i.peel = phi double [ %i.at, %bb.e ], [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ar, %bb.d ]
  %i.au = getelementptr i8, ptr %i.ae, i64 -64
  %i.av = load <2 x double>, ptr %i.au, align 8, !tbaa !19
  %i.aw = fsub <2 x double> %i.av, %i.aj          ; 3 uses
  %i.ax = fcmp une <2 x double> %i.aw, zeroinitializer
  %i.ay = bitcast <2 x i1> %i.ax to i2
  %or.cond.i166.peel = icmp eq i2 %i.ay, 0
  br i1 %or.cond.i166.peel, label %mymod.exit173.peel, label %bb.f

bb.f:                                             ; preds = %myatan.exit.peel
  %i.az = extractelement <2 x double> %i.aw, i64 0
  %i.ba = extractelement <2 x double> %i.aw, i64 1
  %i.bb = call double @atan2(double noundef %i.ba, double noundef %i.az) #12 ; 0 uses
  br label %mymod.exit173.peel

mymod.exit173.peel:                               ; preds = %bb.f, %myatan.exit.peel
  %i.bc = call double %1(double noundef %.sroa.11.0.copyload.peel, double noundef %i.ag, double noundef %2) #12 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %i.bd = fadd double %.0.i.peel, f0x3FF921FB54442D18 ; 3 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !28  ; 9 uses
  store <2 x double> %i.aj, ptr %i.be, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store double %.sroa.11.0.copyload.peel, ptr %i.bf, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i8 108, ptr %i.bg, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store double %i.bd, ptr %i.bh, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store double %i.bc, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i8 0, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store double %i.bd, ptr %i.bk, align 8, !tbaa !36
  %i.bl = icmp ugt i64 %.pre, 1
  %i.bm = extractelement <2 x double> %i.aj, i64 0
  %i.bn = extractelement <2 x double> %i.aj, i64 1
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %mymod.exit173
  %i.bo = extractelement <2 x double> %i.ct, i64 1
  %i.bp = extractelement <2 x double> %i.ct, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %mymod.exit173.peel
  %i.bq = phi ptr [ %i.be, %mymod.exit173.peel ], [ %i.es, %._crit_edge.loopexit ] ; 5 uses
  %i.br = phi i64 [ %.pre, %mymod.exit173.peel ], [ %i.dp, %._crit_edge.loopexit ]
  %.2155.lcssa = phi double [ %i.bc, %mymod.exit173.peel ], [ %.2155, %._crit_edge.loopexit ]
  %.2.lcssa = phi double [ %i.bd, %mymod.exit173.peel ], [ %.2, %._crit_edge.loopexit ]
  %.sroa.084.0.copyload.lcssa = phi double [ %i.bm, %mymod.exit173.peel ], [ %i.bp, %._crit_edge.loopexit ]
  %.sroa.8.0.copyload.lcssa = phi double [ %i.bn, %mymod.exit173.peel ], [ %i.bo, %._crit_edge.loopexit ]
  %i.bs = icmp eq i64 %i.br, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br i1 %i.bs, label %._crit_edge181, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.sroa.12103.0..sroa_idx104.peel = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.sroa.12103.0.copyload105.peel = load double, ptr %.sroa.12103.0..sroa_idx104.peel, align 8, !tbaa !19 ; 3 uses
  %.sroa.14.0..sroa_idx109.peel = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.14.0.copyload110.peel = load double, ptr %.sroa.14.0..sroa_idx109.peel, align 8, !tbaa !19 ; 4 uses
  %.sroa.16.0..sroa_idx114.peel = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.16.0.copyload115.peel = load i8, ptr %.sroa.16.0..sroa_idx114.peel, align 8, !tbaa !22
  %.sroa.18121.0..sroa_idx122.peel = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %.sroa.18121.0.copyload123.peel = load double, ptr %.sroa.18121.0..sroa_idx122.peel, align 8, !tbaa !19 ; 2 uses
  %i.bt = trunc i8 %.sroa.16.0.copyload115.peel to i1
  %i.bu = call double @cos(double noundef %.sroa.12103.0.copyload105.peel) #12
  %i.bv = call double @sin(double noundef %.sroa.12103.0.copyload105.peel) #12
  %i.bw = load <2 x double>, ptr %i.bq, align 8, !tbaa !19 ; 4 uses
  %i.bx = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bv, i64 1
  %i.bz = insertelement <2 x double> poison, double %.sroa.14.0.copyload110.peel, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.ca, <2 x double> %i.bw) ; 2 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = extractelement <2 x double> %i.cb, i64 1
  call fastcc void @addto(ptr noundef %4, double noundef %i.cc, double noundef %i.cd)
  br i1 %i.bt, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ce = call double @cos(double noundef %.sroa.18121.0.copyload123.peel) #12
  %i.cf = extractelement <2 x double> %i.bw, i64 0 ; 2 uses
  %i.cg = call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload110.peel, double %i.ce, double %i.cf)
  %i.ch = call double @sin(double noundef %.sroa.18121.0.copyload123.peel) #12
  %i.ci = call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload110.peel, double %i.ch, double %i.cf)
  call fastcc void @addto(ptr noundef nonnull %4, double noundef %i.cg, double noundef %i.ci)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ck = icmp ugt i64 %i.cj, 1
  %i.cl = extractelement <2 x double> %i.bw, i64 0
  %i.cm = extractelement <2 x double> %i.bw, i64 1
  br i1 %i.ck, label %.lr.ph180.peel.next, label %._crit_edge181

.lr.ph:                                           ; preds = %mymod.exit173.peel, %mymod.exit173
  %i.cn = phi ptr [ %i.es, %mymod.exit173 ], [ %i.be, %mymod.exit173.peel ] ; 2 uses
  %i.co = phi i64 [ %i.dp, %mymod.exit173 ], [ %.pre, %mymod.exit173.peel ]
  %.0151174 = phi i64 [ %i.cp, %mymod.exit173 ], [ 1, %mymod.exit173.peel ] ; 4 uses
  %i.cp = add nuw i64 %.0151174, 1                ; 4 uses
  %i.cq = icmp eq i64 %i.cp, %i.co
  %i.cr = select i1 %i.cq, i64 0, i64 %i.cp
  %i.cs = getelementptr [64 x i8], ptr %i.cn, i64 %.0151174 ; 3 uses
  %i.ct = load <2 x double>, ptr %i.cs, align 8, !tbaa !19 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.sroa.11.0.copyload = load double, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %i.cu = getelementptr inbounds nuw [64 x i8], ptr %i.cn, i64 %i.cr
  %i.cv = load <2 x double>, ptr %i.cu, align 8, !tbaa !19
  %i.cw = fsub <2 x double> %i.cv, %i.ct          ; 3 uses
  %i.cx = fcmp une <2 x double> %i.cw, zeroinitializer
  %i.cy = bitcast <2 x i1> %i.cx to i2
  %or.cond.i = icmp eq i2 %i.cy, 0
  br i1 %or.cond.i, label %myatan.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.cz = extractelement <2 x double> %i.cw, i64 0
  %i.da = extractelement <2 x double> %i.cw, i64 1
  %i.db = call double @atan2(double noundef %i.da, double noundef %i.cz) #12 ; 3 uses
  %i.dc = fcmp ult double %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.k, label %myatan.exit

bb.k:                                             ; preds = %bb.j
  %i.dd = fadd double %i.db, f0x401921FB54442D18
  br label %myatan.exit

myatan.exit:                                      ; preds = %.lr.ph, %bb.j, %bb.k
  %.0.i = phi double [ %i.dd, %bb.k ], [ 0.000000e+00, %.lr.ph ], [ %i.db, %bb.j ] ; 2 uses
  %i.de = getelementptr i8, ptr %i.cs, i64 -64
  %i.df = load <2 x double>, ptr %i.de, align 8, !tbaa !19
  %i.dg = fsub <2 x double> %i.df, %i.ct          ; 3 uses
  %i.dh = fcmp une <2 x double> %i.dg, zeroinitializer
  %i.di = bitcast <2 x i1> %i.dh to i2
  %or.cond.i166 = icmp eq i2 %i.di, 0
  br i1 %or.cond.i166, label %bb.n, label %bb.l

bb.l:                                             ; preds = %myatan.exit
  %i.dj = extractelement <2 x double> %i.dg, i64 0
  %i.dk = extractelement <2 x double> %i.dg, i64 1
  %i.dl = call double @atan2(double noundef %i.dk, double noundef %i.dj) #12 ; 3 uses
  %i.dm = fcmp ult double %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dn = fadd double %i.dl, f0x401921FB54442D18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %myatan.exit
  %.0.i167 = phi double [ %i.dn, %bb.m ], [ 0.000000e+00, %myatan.exit ], [ %i.dl, %bb.l ] ; 3 uses
  %i.do = call double %1(double noundef %.sroa.11.0.copyload, double noundef %i.ag, double noundef %2) #12 ; 5 uses
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !29  ; 4 uses
  %i.dq = add i64 %i.dp, -1
  %i.dr = icmp eq i64 %.0151174, %i.dq
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = fadd double %.0.i167, f0xBFF921FB54442D18 ; 2 uses
  br label %mymod.exit173

bb.p:                                             ; preds = %bb.n
  %i.dt = fsub double %.0.i, %.0.i167             ; 3 uses
  %i.du = fcmp olt double %i.dt, 0.000000e+00
  %i.dv = fadd nnan double %i.dt, f0x401921FB54442D18
  %.0152 = select i1 %i.du, double %i.dv, double %i.dt
  %i.dw = fmul double %.0152, 5.000000e-01
  %i.dx = fsub double f0x3FF921FB54442D18, %i.dw  ; 2 uses
  %i.dy = call double @cos(double noundef %i.dx) #12 ; 2 uses
  %i.dz = fcmp oeq double %i.dy, 0.000000e+00
  %i.ea = fdiv double %i.do, %i.dy
  %.1154 = select i1 %i.dz, double 0.000000e+00, double %i.ea ; 2 uses
  %i.eb = fadd double %.0.i, f0x3FF921FB54442D18  ; 6 uses
  %i.ec = fmul double %i.do, 1.000000e+01
  %i.ed = fcmp ogt double %.1154, %i.ec
  br i1 %i.ed, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ee = fadd double %.0.i167, f0xBFF921FB54442D18 ; 5 uses
  %i.ef = fcmp uge double %i.ee, 0.000000e+00
  %i.eg = fcmp ult double %i.ee, f0x401921FB54442D18
  %or.cond.i169 = and i1 %i.ef, %i.eg
  br i1 %or.cond.i169, label %mymod.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = fdiv double %i.ee, f0x401921FB54442D18
  %i.ei = call double @llvm.floor.f64(double %i.eh)
  %i.ej = fneg double %i.ei
  %i.ek = call double @llvm.fmuladd.f64(double %i.ej, double f0x401921FB54442D18, double %i.ee)
  br label %mymod.exit

mymod.exit:                                       ; preds = %bb.q, %bb.r
  %.0.i170 = phi double [ %i.ek, %bb.r ], [ %i.ee, %bb.q ] ; 2 uses
  %i.el = fcmp uge double %i.eb, 0.000000e+00
  %i.em = fcmp ult double %i.eb, f0x401921FB54442D18
  %or.cond.i171 = and i1 %i.el, %i.em
  br i1 %or.cond.i171, label %mymod.exit173, label %bb.s

bb.s:                                             ; preds = %mymod.exit
  %i.en = fdiv double %i.eb, f0x401921FB54442D18
  %i.eo = call double @llvm.floor.f64(double %i.en)
  %i.ep = fneg double %i.eo
  %i.eq = call double @llvm.fmuladd.f64(double %i.ep, double f0x401921FB54442D18, double %i.eb)
  br label %mymod.exit173

bb.t:                                             ; preds = %bb.p
  %i.er = fadd double %i.eb, %i.dx                ; 2 uses
  br label %mymod.exit173

mymod.exit173:                                    ; preds = %bb.s, %mymod.exit, %bb.o, %bb.t
  %.2155 = phi double [ %.1154, %bb.t ], [ %i.do, %bb.s ], [ %i.do, %bb.o ], [ %i.do, %mymod.exit ] ; 2 uses
  %.0150 = phi i8 [ 0, %bb.t ], [ 1, %bb.s ], [ 0, %bb.o ], [ 1, %mymod.exit ]
  %.0148.a = phi double [ %i.er, %bb.t ], [ %i.eq, %bb.s ], [ %i.ds, %bb.o ], [ %i.eb, %mymod.exit ]
  %.2 = phi double [ %i.er, %bb.t ], [ %.0.i170, %bb.s ], [ %i.ds, %bb.o ], [ %.0.i170, %mymod.exit ] ; 2 uses
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !28  ; 3 uses
  %i.et = getelementptr inbounds nuw [64 x i8], ptr %i.es, i64 %.0151174 ; 7 uses
  store <2 x double> %i.ct, ptr %i.et, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store double %.sroa.11.0.copyload, ptr %i.eu, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i8 108, ptr %i.ev, align 8, !tbaa !32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store double %.2, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store double %.2155, ptr %i.ex, align 8, !tbaa !34
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store i8 %.0150, ptr %i.ey, align 8, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store double %.0148.a, ptr %i.ez, align 8, !tbaa !36
  %i.fa = icmp ult i64 %i.cp, %i.dp
  br i1 %i.fa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !37

._crit_edge181.loopexit:                          ; preds = %bb.v
  %i.fb = extractelement <2 x double> %i.fp, i64 1
  %i.fc = extractelement <2 x double> %i.fp, i64 0
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %._crit_edge181.loopexit, %bb.i, %._crit_edge.thread, %._crit_edge
  %.1160.lcssa = phi double [ %.sroa.8.0.copyload.lcssa, %._crit_edge ], [ 0.000000e+00, %._crit_edge.thread ], [ %i.cm, %bb.i ], [ %i.fb, %._crit_edge181.loopexit ]
  %.1158.lcssa = phi double [ %.sroa.084.0.copyload.lcssa, %._crit_edge ], [ 0.000000e+00, %._crit_edge.thread ], [ %i.cl, %bb.i ], [ %i.fc, %._crit_edge181.loopexit ]
  %.3156.lcssa = phi double [ %.2155.lcssa, %._crit_edge ], [ 0.000000e+00, %._crit_edge.thread ], [ %.sroa.14.0.copyload110.peel, %bb.i ], [ %.sroa.14.0.copyload110, %._crit_edge181.loopexit ] ; 2 uses
  %.3.lcssa = phi double [ %.2.lcssa, %._crit_edge ], [ 0.000000e+00, %._crit_edge.thread ], [ %.sroa.12103.0.copyload105.peel, %bb.i ], [ %.sroa.12103.0.copyload105, %._crit_edge181.loopexit ]
  %i.fd = fadd double %.3.lcssa, f0x400921FB54442D18 ; 2 uses
  %i.fe = call double @cos(double noundef %i.fd) #12
  %i.ff = call double @llvm.fmuladd.f64(double %i.fe, double %.3156.lcssa, double %.1158.lcssa)
  %i.fg = call double @sin(double noundef %i.fd) #12
  %i.fh = call double @llvm.fmuladd.f64(double %i.fg, double %.3156.lcssa, double %.1160.lcssa)
  call fastcc void @addto(ptr noundef %4, double noundef %i.ff, double noundef %i.fh)
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !29
  %i.fj = add i64 %i.fi, -2                       ; 2 uses
  %.not186 = icmp eq i64 %i.fj, -1
  br i1 %.not186, label %._crit_edge190, label %.lr.ph189

.lr.ph180.peel.next:                              ; preds = %bb.i, %bb.v
  %.0149178 = phi i64 [ %i.gc, %bb.v ], [ 1, %bb.i ] ; 2 uses
  %i.fk = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %i.fk, i64 %.0149178 ; 5 uses
  %.sroa.12103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %.sroa.12103.0.copyload105 = load double, ptr %.sroa.12103.0..sroa_idx104, align 8, !tbaa !19 ; 3 uses
  %.sroa.14.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %.sroa.14.0.copyload110 = load double, ptr %.sroa.14.0..sroa_idx109, align 8, !tbaa !19 ; 4 uses
  %.sroa.16.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %.sroa.16.0.copyload115 = load i8, ptr %.sroa.16.0..sroa_idx114, align 8, !tbaa !22
  %.sroa.18121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %.sroa.18121.0.copyload123 = load double, ptr %.sroa.18121.0..sroa_idx122, align 8, !tbaa !19 ; 2 uses
  %i.fm = trunc i8 %.sroa.16.0.copyload115 to i1
  %i.fn = call double @cos(double noundef %.sroa.12103.0.copyload105) #12
  %i.fo = call double @sin(double noundef %.sroa.12103.0.copyload105) #12
  %i.fp = load <2 x double>, ptr %i.fl, align 8, !tbaa !19 ; 4 uses
  %i.fq = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fo, i64 1
  %i.fs = insertelement <2 x double> poison, double %.sroa.14.0.copyload110, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> %i.ft, <2 x double> %i.fp) ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0
  %i.fw = extractelement <2 x double> %i.fu, i64 1
  call fastcc void @addto(ptr noundef %4, double noundef %i.fv, double noundef %i.fw)
  br i1 %i.fm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph180.peel.next
  %i.fx = call double @cos(double noundef %.sroa.18121.0.copyload123) #12
  %i.fy = extractelement <2 x double> %i.fp, i64 0 ; 2 uses
  %i.fz = call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload110, double %i.fx, double %i.fy)
  %i.ga = call double @sin(double noundef %.sroa.18121.0.copyload123) #12
  %i.gb = call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload110, double %i.ga, double %i.fy)
  call fastcc void @addto(ptr noundef nonnull %4, double noundef %i.fz, double noundef %i.gb)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph180.peel.next
  %i.gc = add nuw i64 %.0149178, 1                ; 2 uses
  %i.gd = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ge = icmp ult i64 %i.gc, %i.gd
  br i1 %i.ge, label %.lr.ph180.peel.next, label %._crit_edge181.loopexit, !llvm.loop !39

._crit_edge190:                                   ; preds = %bb.x, %._crit_edge181
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !28
  call void @free(ptr noundef %i.gf) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.fca.0.load = load i64, ptr %4, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert

.lr.ph189:                                        ; preds = %._crit_edge181, %bb.x
  %.0147187 = phi i64 [ %i.ha, %bb.x ], [ %i.fj, %._crit_edge181 ] ; 3 uses
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.gh = getelementptr inbounds nuw [64 x i8], ptr %i.gg, i64 %.0147187 ; 5 uses
  %.sroa.12103.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %.sroa.12103.0.copyload107 = load double, ptr %.sroa.12103.0..sroa_idx106, align 8, !tbaa !19
  %.sroa.14.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  %.sroa.14.0.copyload112 = load double, ptr %.sroa.14.0..sroa_idx111, align 8, !tbaa !19 ; 3 uses
  %.sroa.16.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  %.sroa.16.0.copyload117 = load i8, ptr %.sroa.16.0..sroa_idx116, align 8, !tbaa !22
  %.sroa.18121.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %.sroa.18121.0.copyload125 = load double, ptr %.sroa.18121.0..sroa_idx124, align 8, !tbaa !19
  %i.gi = trunc i8 %.sroa.16.0.copyload117 to i1
  %i.gj = fadd double %.sroa.18121.0.copyload125, f0x400921FB54442D18 ; 2 uses
  %i.gk = call double @cos(double noundef %i.gj) #12
  %i.gl = call double @sin(double noundef %i.gj) #12
  %i.gm = load <2 x double>, ptr %i.gh, align 8, !tbaa !19 ; 2 uses
  %i.gn = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gl, i64 1
  %i.gp = insertelement <2 x double> poison, double %.sroa.14.0.copyload112, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gq, <2 x double> %i.gm) ; 2 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0
  %i.gt = extractelement <2 x double> %i.gr, i64 1
  call fastcc void @addto(ptr noundef %4, double noundef %i.gs, double noundef %i.gt)
  br i1 %i.gi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph189
  %i.gu = fadd double %.sroa.12103.0.copyload107, f0x400921FB54442D18 ; 2 uses
  %i.gv = call double @cos(double noundef %i.gu) #12
  %i.gw = extractelement <2 x double> %i.gm, i64 0 ; 2 uses
  %i.gx = call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload112, double %i.gv, double %i.gw)
  %i.gy = call double @sin(double noundef %i.gu) #12
  %i.gz = call double @llvm.fmuladd.f64(double %.sroa.14.0.copyload112, double %i.gy, double %i.gw)
  call fastcc void @addto(ptr noundef nonnull %4, double noundef %i.gx, double noundef %i.gz)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph189
  %i.ha = add i64 %.0147187, -1
  %.not = icmp eq i64 %.0147187, 0
  br i1 %.not, label %._crit_edge190, label %.lr.ph189, !llvm.loop !40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden void @gv_list_detach_(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @addto(ptr nofree noundef nonnull captures(none) %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 4 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str, i64 noundef %i.d, i64 noundef 16) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = shl nuw i64 %i.c, 4                      ; 2 uses
  %i.i = shl nuw i64 %i.d, 4                      ; 3 uses
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.b) #12
  br label %gv_recalloc.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call ptr @realloc(ptr noundef %i.b, i64 noundef range(i64 0, -15) %i.i) #15 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.1, i64 noundef range(i64 0, -15) %i.i) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %i.i, %i.h
  br i1 %i.o, label %bb.h, label %gv_recalloc.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.d, %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.k, %bb.h ], [ %i.k, %bb.g ] ; 2 uses
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !41
  %i.q = load i64, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %0, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i, i64 %i.q ; 2 uses
  store double %1, ptr %i.s, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store double %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare { double, double } @Bezier(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5
end_hunk_0
