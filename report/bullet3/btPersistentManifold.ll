inline.NumInlined: 129
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@gContactBreakingThreshold = dso_local local_unnamed_addr global float 2.000000e-02, align 4
@gContactDestroyedCallback = dso_local local_unnamed_addr global ptr null, align 8
@gContactProcessedCallback = dso_local local_unnamed_addr global ptr null, align 8
@gContactStartedCallback = dso_local local_unnamed_addr global ptr null, align 8
@gContactEndedCallback = dso_local local_unnamed_addr global ptr null, align 8
@gContactCalcArea3Points = dso_local local_unnamed_addr global i8 1, align 1
@.str = private unnamed_addr constant [30 x i8] c"btPersistentManifoldFloatData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN20btPersistentManifoldC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN20btPersistentManifoldC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN20btPersistentManifoldC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(880) initializes((0, 4), (128, 180), (336, 388), (544, 596), (752, 804), (840, 860), (868, 880)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 1025, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.a, i8 0, i64 52, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.c, i8 0, i64 52, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.d, i8 0, i64 52, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 868
  store i32 0, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i32 0, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i32 0, ptr %i.h, align 4, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(880) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @gContactDestroyedCallback, align 8 ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %i.b) ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -1, 4) i32 @_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint(ptr nofree noundef nonnull readonly align 8 dereferenceable(880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load float, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load float, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.e = fcmp uge float %i.d, %i.b                ; 2 uses
  %.126 = select i1 %i.e, float %i.b, float %i.d  ; 2 uses
  %.1 = sext i1 %i.e to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load float, ptr %i.f, align 8, !tbaa !21 ; 2 uses
  %i.h = fcmp olt float %i.g, %.126               ; 2 uses
  %.126.1 = select i1 %i.h, float %i.g, float %.126 ; 2 uses
  %.1.1 = select i1 %i.h, i32 1, i32 %.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.j = load float, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  %i.k = fcmp olt float %i.j, %.126.1             ; 4 uses
  %.126.2 = select i1 %i.k, float %i.j, float %.126.1
  %.1.2 = select i1 %i.k, i32 2, i32 %.1.1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.m = load float, ptr %i.l, align 8, !tbaa !21
  %i.n = fcmp uge float %i.m, %.126.2             ; 5 uses
  %.1.3 = select i1 %i.n, i32 %.1.2, i32 3        ; 3 uses
  %i.o = load i8, ptr @gContactCalcArea3Points, align 1, !tbaa !22, !range !24, !noundef !25
  %i.p = trunc nuw i8 %i.o to i1
  %cond = icmp eq i32 %.1.3, 0                    ; 2 uses
  %.pre177 = load float, ptr %1, align 8, !tbaa !26 ; 10 uses
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %cond, label %._crit_edge178, label %bb.c

._crit_edge178:                                   ; preds = %bb.b
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre180 = load float, ptr %.phi.trans.insert179, align 4, !tbaa !26
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre182 = load float, ptr %.phi.trans.insert181, align 8, !tbaa !26
  %.phi.trans.insert183 = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre184 = load float, ptr %.phi.trans.insert183, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert185 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.pre186 = load float, ptr %.phi.trans.insert185, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert187 = getelementptr inbounds nuw i8, ptr %0, i64 636
  %.pre188 = load float, ptr %.phi.trans.insert187, align 4, !tbaa !26 ; 2 uses
  %.phi.trans.insert189 = getelementptr inbounds nuw i8, ptr %0, i64 428
  %.pre190 = load float, ptr %.phi.trans.insert189, align 4, !tbaa !26 ; 2 uses
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.pre192 = load float, ptr %.phi.trans.insert191, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert193 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.pre194 = load float, ptr %.phi.trans.insert193, align 8, !tbaa !26 ; 2 uses
  %.pre216 = fsub float %.pre184, %.pre186        ; 2 uses
  %.pre217 = fsub float %.pre188, %.pre190        ; 2 uses
  %.pre219 = fsub float %.pre192, %.pre194        ; 2 uses
  %.pre221 = fneg float %.pre217
  %.pre223 = fneg float %.pre219
  %.pre225 = fneg float %.pre216
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load float, ptr %i.q, align 8, !tbaa !26 ; 2 uses
  %i.s = fsub float %.pre177, %i.r                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !26 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.w = load float, ptr %i.v, align 4, !tbaa !26 ; 2 uses
  %i.x = fsub float %i.u, %i.w                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !26 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.ac = fsub float %i.z, %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.af = load float, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %i.ag = load float, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.ah = fsub float %i.af, %i.ag                 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !26 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.al = load float, ptr %i.ak, align 4, !tbaa !26 ; 3 uses
  %i.am = fsub float %i.aj, %i.al                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ao = load float, ptr %i.an, align 8, !tbaa !26 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !26 ; 3 uses
  %i.ar = fsub float %i.ao, %i.aq                 ; 3 uses
  %i.as = fneg float %i.am                        ; 2 uses
  %i.at = fmul float %i.ac, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.x, float %i.ar, float %i.at) ; 2 uses
  %i.av = fneg float %i.ar                        ; 2 uses
  %i.aw = fmul float %i.s, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ah, float %i.aw) ; 2 uses
  %i.ay = fneg float %i.ah                        ; 2 uses
  %i.az = fmul float %i.x, %i.ay
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.s, float %i.am, float %i.az) ; 2 uses
  %i.bb = fmul float %i.ax, %i.ax
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.bb)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bc) ; 2 uses
  %cond34 = icmp eq i32 %.1.3, 1
  br i1 %cond34, label %._crit_edge195, label %bb.d

._crit_edge195:                                   ; preds = %bb.c
  %.phi.trans.insert196 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre197 = load float, ptr %.phi.trans.insert196, align 8, !tbaa !26
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre199 = load float, ptr %.phi.trans.insert198, align 4, !tbaa !26
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre201 = load float, ptr %.phi.trans.insert200, align 8, !tbaa !26
  %.pre230 = fsub float %.pre177, %.pre197
  %.pre232 = fsub float %i.u, %.pre199
  %.pre234 = fsub float %i.z, %.pre201
  br label %._crit_edge202

bb.d:                                             ; preds = %._crit_edge178, %bb.c
  %.pre-phi226 = phi float [ %.pre225, %._crit_edge178 ], [ %i.ay, %bb.c ]
  %.pre-phi224 = phi float [ %.pre223, %._crit_edge178 ], [ %i.av, %bb.c ]
  %.pre-phi222 = phi float [ %.pre221, %._crit_edge178 ], [ %i.as, %bb.c ]
  %.pre-phi220 = phi float [ %.pre219, %._crit_edge178 ], [ %i.ar, %bb.c ]
  %.pre-phi218 = phi float [ %.pre217, %._crit_edge178 ], [ %i.am, %bb.c ]
  %.pre-phi = phi float [ %.pre216, %._crit_edge178 ], [ %i.ah, %bb.c ]
  %i.be = phi float [ %.pre194, %._crit_edge178 ], [ %i.aq, %bb.c ] ; 2 uses
  %i.bf = phi float [ %.pre192, %._crit_edge178 ], [ %i.ao, %bb.c ]
  %i.bg = phi float [ %.pre190, %._crit_edge178 ], [ %i.al, %bb.c ] ; 2 uses
  %i.bh = phi float [ %.pre188, %._crit_edge178 ], [ %i.aj, %bb.c ]
  %i.bi = phi float [ %.pre186, %._crit_edge178 ], [ %i.ag, %bb.c ] ; 2 uses
  %i.bj = phi float [ %.pre184, %._crit_edge178 ], [ %i.af, %bb.c ]
  %i.bk = phi float [ %.pre182, %._crit_edge178 ], [ %i.z, %bb.c ]
  %i.bl = phi float [ %.pre180, %._crit_edge178 ], [ %i.u, %bb.c ]
  %.0126 = phi float [ 0.000000e+00, %._crit_edge178 ], [ %i.bd, %bb.c ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !26
  %i.bo = fsub float %.pre177, %i.bn              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !26
  %i.br = fsub float %i.bl, %i.bq                 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !26
  %i.bu = fsub float %i.bk, %i.bt                 ; 4 uses
  %i.bv = fmul float %i.bu, %.pre-phi222
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.br, float %.pre-phi220, float %i.bv) ; 2 uses
  %i.bx = fmul float %i.bo, %.pre-phi224
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float %.pre-phi, float %i.bx) ; 2 uses
  %i.bz = fmul float %i.br, %.pre-phi226
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bo, float %.pre-phi218, float %i.bz) ; 2 uses
  %i.cb = fmul float %i.by, %i.by
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.cb)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.cc) ; 2 uses
  %cond35 = and i1 %i.n, %i.k
  %.phi.trans.insert210 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre211 = load float, ptr %.phi.trans.insert210, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert212 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.pre213 = load float, ptr %.phi.trans.insert212, align 4, !tbaa !26 ; 2 uses
  %.phi.trans.insert214 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pre215 = load float, ptr %.phi.trans.insert214, align 8, !tbaa !26 ; 2 uses
  br i1 %cond35, label %._crit_edge209, label %._crit_edge202

._crit_edge202:                                   ; preds = %bb.d, %._crit_edge195
  %.pre-phi235 = phi float [ %.pre234, %._crit_edge195 ], [ %i.bu, %bb.d ] ; 3 uses
  %.pre-phi233 = phi float [ %.pre232, %._crit_edge195 ], [ %i.br, %bb.d ] ; 3 uses
  %.pre-phi231 = phi float [ %.pre230, %._crit_edge195 ], [ %i.bo, %bb.d ] ; 3 uses
  %i.ce = phi float [ %i.aq, %._crit_edge195 ], [ %i.be, %bb.d ]
  %i.cf = phi float [ %i.al, %._crit_edge195 ], [ %i.bg, %bb.d ]
  %i.cg = phi float [ %i.ag, %._crit_edge195 ], [ %i.bi, %bb.d ]
  %i.ch = phi float [ %i.ab, %._crit_edge195 ], [ %.pre215, %bb.d ] ; 2 uses
  %i.ci = phi float [ %i.ao, %._crit_edge195 ], [ %i.bf, %bb.d ]
  %i.cj = phi float [ %i.w, %._crit_edge195 ], [ %.pre213, %bb.d ] ; 2 uses
  %i.ck = phi float [ %i.aj, %._crit_edge195 ], [ %i.bh, %bb.d ]
  %i.cl = phi float [ %i.r, %._crit_edge195 ], [ %.pre211, %bb.d ] ; 2 uses
  %i.cm = phi float [ %i.af, %._crit_edge195 ], [ %i.bj, %bb.d ]
  %.0128 = phi float [ 0.000000e+00, %._crit_edge195 ], [ %i.cd, %bb.d ] ; 2 uses
  %.1127 = phi float [ %i.bd, %._crit_edge195 ], [ %.0126, %bb.d ] ; 2 uses
  %i.cn = fsub float %i.cm, %i.cl                 ; 2 uses
  %i.co = fsub float %i.ck, %i.cj                 ; 2 uses
  %i.cp = fsub float %i.ci, %i.ch                 ; 2 uses
  %i.cq = fneg float %i.co
  %i.cr = fmul float %.pre-phi235, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %.pre-phi233, float %i.cp, float %i.cr) ; 2 uses
  %i.ct = fneg float %i.cp
  %i.cu = fmul float %.pre-phi231, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %.pre-phi235, float %i.cn, float %i.cu) ; 2 uses
  %i.cw = fneg float %i.cn
  %i.cx = fmul float %.pre-phi233, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %.pre-phi231, float %i.co, float %i.cx) ; 2 uses
  %i.cz = fmul float %i.cv, %i.cv
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cs, float %i.cz)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.da) ; 2 uses
  br i1 %i.n, label %._crit_edge209, label %bb.j

._crit_edge209:                                   ; preds = %bb.d, %._crit_edge202
  %.pre-phi229 = phi float [ %.pre-phi235, %._crit_edge202 ], [ %i.bu, %bb.d ] ; 2 uses
  %.pre-phi228 = phi float [ %.pre-phi233, %._crit_edge202 ], [ %i.br, %bb.d ] ; 2 uses
  %.pre-phi227 = phi float [ %.pre-phi231, %._crit_edge202 ], [ %i.bo, %bb.d ] ; 2 uses
  %i.dc = phi float [ %i.ch, %._crit_edge202 ], [ %.pre215, %bb.d ]
  %i.dd = phi float [ %i.ce, %._crit_edge202 ], [ %i.be, %bb.d ]
  %i.de = phi float [ %i.cj, %._crit_edge202 ], [ %.pre213, %bb.d ]
  %i.df = phi float [ %i.cf, %._crit_edge202 ], [ %i.bg, %bb.d ]
  %i.dg = phi float [ %i.cl, %._crit_edge202 ], [ %.pre211, %bb.d ]
  %i.dh = phi float [ %i.cg, %._crit_edge202 ], [ %i.bi, %bb.d ]
  %.0133 = phi float [ %i.db, %._crit_edge202 ], [ 0.000000e+00, %bb.d ]
  %.1129 = phi float [ %.0128, %._crit_edge202 ], [ %i.cd, %bb.d ]
  %.2 = phi float [ %.1127, %._crit_edge202 ], [ %.0126, %bb.d ]
  %i.di = fsub float %i.dh, %i.dg                 ; 2 uses
  %i.dj = fsub float %i.df, %i.de                 ; 2 uses
  %i.dk = fsub float %i.dd, %i.dc                 ; 2 uses
  %i.dl = fneg float %i.dj
  %i.dm = fmul float %.pre-phi229, %i.dl
  %i.dn = tail call float @llvm.fmuladd.f32(float %.pre-phi228, float %i.dk, float %i.dm) ; 2 uses
  %i.do = fneg float %i.dk
  %i.dp = fmul float %.pre-phi227, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %.pre-phi229, float %i.di, float %i.dp) ; 2 uses
  %i.dr = fneg float %i.di
  %i.ds = fmul float %.pre-phi228, %i.dr
  %i.dt = tail call float @llvm.fmuladd.f32(float %.pre-phi227, float %i.dj, float %i.ds) ; 2 uses
  %i.du = fmul float %i.dq, %i.dq
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.du)
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.dv)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br i1 %cond, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre141 = load float, ptr %.phi.trans.insert, align 4, !tbaa !26 ; 3 uses
  %.phi.trans.insert142 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre143 = load float, ptr %.phi.trans.insert142, align 8, !tbaa !26 ; 3 uses
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.pre145 = load float, ptr %.phi.trans.insert144, align 8, !tbaa !26 ; 3 uses
  %.phi.trans.insert146 = getelementptr inbounds nuw i8, ptr %0, i64 428
  %.pre147 = load float, ptr %.phi.trans.insert146, align 4, !tbaa !26 ; 3 uses
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %.pre149 = load float, ptr %.phi.trans.insert148, align 8, !tbaa !26 ; 3 uses
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.pre151 = load float, ptr %.phi.trans.insert150, align 8, !tbaa !26 ; 3 uses
  %.phi.trans.insert152 = getelementptr inbounds nuw i8, ptr %0, i64 636
  %.pre153 = load float, ptr %.phi.trans.insert152, align 4, !tbaa !26 ; 3 uses
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.pre155 = load float, ptr %.phi.trans.insert154, align 8, !tbaa !26 ; 3 uses
  %.pre238 = fsub float %.pre141, %.pre147
  %.pre240 = fsub float %.pre143, %.pre149
  %.pre246 = fsub float %.pre143, %.pre155
  %.pre248 = fsub float %.pre145, %.pre151        ; 2 uses
  %.pre250 = fsub float %.pre147, %.pre153        ; 2 uses
  %.pre252 = fsub float %.pre149, %.pre155        ; 2 uses
  %.pre236 = fsub float %.pre177, %.pre145
  %.pre242 = fsub float %.pre177, %.pre151
  %.pre244 = fsub float %.pre141, %.pre153
  %.pre254 = fneg float %.pre250
  %.pre256 = fneg float %.pre252
  %.pre258 = fneg float %.pre248
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %3 = load float, ptr %2, align 8, !tbaa !26     ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !26 ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 636
  %5 = load float, ptr %i.ec, align 8, !tbaa !26  ; 5 uses
  %6 = load float, ptr %i.ea, align 4, !tbaa !26  ; 5 uses
  %i.eg = load float, ptr %4, align 4, !tbaa !26  ; 4 uses
  %i.eh = load float, ptr %i.dz, align 8, !tbaa !26 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ei = load float, ptr %7, align 8, !tbaa !26  ; 4 uses
  %8 = fsub float %5, %i.ei                       ; 4 uses
  %i.ej = fsub float %3, %i.ef                    ; 2 uses
  %i.ek = fsub float %.pre177, %i.eh              ; 4 uses
  %i.el = fsub float %6, %i.eg                    ; 4 uses
  %i.em = fneg float %i.ej
  %i.en = fmul float %i.ek, %i.em
  %i.eo = load <2 x float>, ptr %i.dx, align 8, !tbaa !26 ; 4 uses
  %i.ep = load float, ptr %i.eb, align 4, !tbaa !26 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.dy, align 8, !tbaa !26 ; 4 uses
  %i.er = load float, ptr %i.ed, align 4, !tbaa !26 ; 3 uses
  %9 = insertelement <2 x float> poison, float %6, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %i.eq, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.es = fsub <2 x float> %10, %11               ; 4 uses
  %i.et = insertelement <2 x float> poison, float %5, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %3, i64 1 ; 2 uses
  %i.ex = fsub <2 x float> %i.eu, %i.ew           ; 4 uses
  %12 = shufflevector <2 x float> %i.eo, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fsub <2 x float> %12, %i.ez             ; 4 uses
  %13 = insertelement <2 x float> poison, float %i.eg, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fsub <2 x float> %11, %14                 ; 3 uses
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %17 = insertelement <2 x float> poison, float %i.ei, i64 0
  %18 = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fb = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fsub <2 x float> %18, %i.fb             ; 4 uses
  %i.fd = extractelement <2 x float> %i.eq, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.eo, %i.eq
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ff = fsub float %i.ep, %i.er                 ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %.pre177, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fsub <2 x float> %i.fh, %12             ; 2 uses
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.fk = fneg <2 x float> %16                    ; 3 uses
  %i.fl = fmul <2 x float> %i.ex, %i.fk
  %i.fm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.fc, <2 x float> %i.fl) ; 2 uses
  %i.fn = fneg <2 x float> %i.fc                  ; 3 uses
  %i.fo = fmul <2 x float> %i.fj, %i.fn
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.fa, <2 x float> %i.fo) ; 2 uses
  %i.fq = fneg <2 x float> %i.fa                  ; 3 uses
  %i.fr = fmul <2 x float> %i.es, %i.fq
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %16, <2 x float> %i.fr) ; 2 uses
  %i.ft = fneg float %i.ff
  %i.fu = fmul float %8, %i.ft
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.el, float %i.ej, float %i.fu) ; 2 uses
  %i.fw = tail call float @llvm.fmuladd.f32(float %8, float %i.fe, float %i.en) ; 2 uses
  %i.fx = fneg float %i.fe
  %i.fy = fmul float %i.el, %i.fx
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ff, float %i.fy) ; 2 uses
  %i.ga = fmul <2 x float> %i.fp, %i.fp
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fm, <2 x float> %i.ga)
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fs, <2 x float> %i.gb) ; 2 uses
  %i.gd = extractelement <2 x float> %i.gc, i64 0 ; 2 uses
  %i.ge = extractelement <2 x float> %i.gc, i64 1 ; 2 uses
  %i.gf = fcmp ogt float %i.ge, %i.gd
  %i.gg = fmul float %i.fw, %i.fw
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.gg)
  %i.gi = tail call noundef float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %i.gh) ; 2 uses
  %.sroa.speculated67.i = select i1 %i.gf, float %i.ge, float %i.gd ; 2 uses
  %i.gj = fcmp ogt float %.sroa.speculated67.i, %i.gi
  %.sroa.speculated.i = select i1 %i.gj, float %.sroa.speculated67.i, float %i.gi ; 2 uses
  %cond37 = icmp eq i32 %.1.3, 1
  %i.gk = extractelement <2 x float> %i.fi, i64 1
  %i.gl = extractelement <2 x float> %15, i64 0
  %i.gm = extractelement <2 x float> %i.es, i64 0
  %i.gn = extractelement <2 x float> %i.fq, i64 1
  %i.go = extractelement <2 x float> %i.fa, i64 1
  %i.gp = extractelement <2 x float> %i.fc, i64 1
  %i.gq = extractelement <2 x float> %i.ex, i64 0
  %i.gr = extractelement <2 x float> %i.fk, i64 1
  %i.gs = extractelement <2 x float> %i.fn, i64 1
  br i1 %cond37, label %._crit_edge156, label %bb.g

._crit_edge156:                                   ; preds = %bb.f
  %i.gt = extractelement <2 x float> %i.eo, i64 0
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.phi.trans.insert159 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre158.a = load float, ptr %.phi.trans.insert161, align 8, !tbaa !26 ; 3 uses
  %.pre160 = load float, ptr %.phi.trans.insert159, align 4, !tbaa !26 ; 3 uses
  %.pre158 = load float, ptr %.phi.trans.insert157, align 8, !tbaa !26 ; 3 uses
  %.pre302 = fsub float %.pre158, %i.eh           ; 2 uses
  %.pre285 = fsub float %5, %.pre158.a            ; 2 uses
  %.pre285.a = fsub float %.pre160, %i.eg         ; 2 uses
  %.pre304 = fsub float %.pre177, %.pre158        ; 2 uses
  %.pre283.a = fsub float %.pre158.a, %i.ei       ; 2 uses
  %.pre306 = fsub float %6, %.pre160              ; 2 uses
  %.pre314 = fneg float %.pre285.a
  %.pre316 = fneg float %.pre283.a
  %.pre318 = fneg float %.pre302
  %i.gu = insertelement <2 x float> %i.fj, float %.pre304, i64 0
  %19 = insertelement <2 x float> %i.es, float %.pre306, i64 0
  %20 = insertelement <2 x float> %i.ex, float %.pre285, i64 0
  %i.gv = extractelement <2 x float> %15, i64 1
  %i.gw = extractelement <2 x float> %i.fq, i64 0
  %i.gx = extractelement <2 x float> %i.fa, i64 0
  %i.gy = extractelement <2 x float> %i.fc, i64 0
  %i.gz = extractelement <2 x float> %i.fk, i64 0
  %i.ha = extractelement <2 x float> %i.fn, i64 0
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi259 = phi float [ %.pre258, %._crit_edge ], [ %i.gn, %bb.f ]
  %.pre-phi257 = phi float [ %.pre256, %._crit_edge ], [ %i.gs, %bb.f ]
  %.pre-phi255 = phi float [ %.pre254, %._crit_edge ], [ %i.gr, %bb.f ]
  %.pre-phi253 = phi float [ %.pre252, %._crit_edge ], [ %i.gp, %bb.f ]
  %.pre-phi251 = phi float [ %.pre250, %._crit_edge ], [ %i.gl, %bb.f ]
  %.pre-phi249 = phi float [ %.pre248, %._crit_edge ], [ %i.go, %bb.f ]
  %.pre-phi247 = phi float [ %.pre246, %._crit_edge ], [ %8, %bb.f ] ; 3 uses
  %.pre-phi245 = phi float [ %.pre244, %._crit_edge ], [ %i.el, %bb.f ] ; 3 uses
  %.pre-phi243 = phi float [ %.pre242, %._crit_edge ], [ %i.ek, %bb.f ] ; 3 uses
  %.pre-phi241 = phi float [ %.pre240, %._crit_edge ], [ %i.gq, %bb.f ] ; 3 uses
  %.pre-phi239 = phi float [ %.pre238, %._crit_edge ], [ %i.gm, %bb.f ] ; 3 uses
  %.pre-phi237 = phi float [ %.pre236, %._crit_edge ], [ %i.gk, %bb.f ] ; 3 uses
  %i.hb = phi float [ %.pre155, %._crit_edge ], [ %i.ei, %bb.f ] ; 2 uses
  %i.hc = phi float [ %.pre153, %._crit_edge ], [ %i.eg, %bb.f ] ; 2 uses
  %i.hd = phi float [ %.pre151, %._crit_edge ], [ %i.eh, %bb.f ] ; 2 uses
  %i.he = phi float [ %.pre149, %._crit_edge ], [ %i.ef, %bb.f ] ; 3 uses
  %i.hf = phi float [ %.pre147, %._crit_edge ], [ %i.er, %bb.f ] ; 3 uses
  %i.hg = phi float [ %.pre145, %._crit_edge ], [ %i.fd, %bb.f ] ; 3 uses
  %i.hh = phi float [ %.pre143, %._crit_edge ], [ %5, %bb.f ] ; 2 uses
  %i.hi = phi float [ %.pre141, %._crit_edge ], [ %6, %bb.f ] ; 2 uses
  %.3 = phi float [ 0.000000e+00, %._crit_edge ], [ %.sroa.speculated.i, %bb.f ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %21 = load float, ptr %i.hl, align 8, !tbaa !26 ; 5 uses
  %22 = fsub float %21, %i.hb                     ; 3 uses
  %23 = fsub float %21, %i.he                     ; 3 uses
  %24 = fneg float %22                            ; 2 uses
  %25 = fneg float %23                            ; 2 uses
  %cond38 = and i1 %i.n, %i.k
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre172 = load float, ptr %.phi.trans.insert171, align 8, !tbaa !26 ; 5 uses
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %26 = load <2 x float>, ptr %i.hj, align 8, !tbaa !26 ; 3 uses
  %27 = load float, ptr %i.hk, align 4, !tbaa !26 ; 4 uses
  %28 = extractelement <2 x float> %26, i64 0     ; 4 uses
  %.pre263 = fsub float %28, %i.hd                ; 3 uses
  %29 = fsub float %27, %i.hc                     ; 3 uses
  %i.hm = fsub float %28, %i.hg                   ; 3 uses
  %30 = load <2 x float>, ptr %.phi.trans.insert173, align 4, !tbaa !26 ; 4 uses
  %i.hn = load float, ptr %.phi.trans.insert175, align 8, !tbaa !26 ; 4 uses
  %31 = insertelement <2 x float> poison, float %i.hh, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = insertelement <2 x float> %30, float %21, i64 0
  %34 = fsub <2 x float> %32, %33                 ; 3 uses
  %35 = extractelement <2 x float> %34, i64 0     ; 3 uses
  %i.ho = insertelement <2 x float> poison, float %i.hi, i64 0
  %36 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = shufflevector <2 x float> %26, <2 x float> %30, <2 x i32> <i32 1, i32 2>
  %38 = fsub <2 x float> %36, %37                 ; 3 uses
  %39 = extractelement <2 x float> %38, i64 0     ; 3 uses
  %40 = insertelement <2 x float> poison, float %.pre177, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = insertelement <2 x float> %26, float %.pre172, i64 1
  %43 = fsub <2 x float> %41, %42                 ; 3 uses
  %44 = extractelement <2 x float> %43, i64 0     ; 3 uses
  %i.hp = fmul float %39, %.pre-phi259
  %i.hq = tail call float @llvm.fmuladd.f32(float %44, float %.pre-phi251, float %i.hp) ; 2 uses
  %i.hr = fneg float %29                          ; 2 uses
  %i.hs = fneg float %.pre263                     ; 2 uses
  %i.ht = fmul float %.pre-phi239, %i.hs
  %i.hu = tail call float @llvm.fmuladd.f32(float %.pre-phi237, float %29, float %i.ht) ; 2 uses
  %i.hv = fsub float %27, %i.hf                   ; 3 uses
  %i.hw = fneg float %i.hv                        ; 2 uses
  %i.hx = fmul float %.pre-phi247, %i.hw
  %i.hy = fmul float %.pre-phi241, %i.hr
  %i.hz = fmul float %35, %.pre-phi255
  %i.ia = tail call float @llvm.fmuladd.f32(float %.pre-phi245, float %23, float %i.hx)
  %i.ib = tail call float @llvm.fmuladd.f32(float %.pre-phi239, float %22, float %i.hy)
  %i.ic = tail call float @llvm.fmuladd.f32(float %39, float %.pre-phi253, float %i.hz)
  %i.id = fneg float %i.hm                        ; 2 uses
  %i.ie = fmul float %.pre-phi243, %25
  %i.if = fmul float %.pre-phi237, %24
  %i.ig = fmul float %44, %.pre-phi257
  %i.ih = tail call float @llvm.fmuladd.f32(float %.pre-phi247, float %i.hm, float %i.ie) ; 2 uses
  %i.ii = tail call float @llvm.fmuladd.f32(float %.pre-phi241, float %.pre263, float %i.if) ; 2 uses
  %i.ij = tail call float @llvm.fmuladd.f32(float %35, float %.pre-phi249, float %i.ig) ; 2 uses
  %i.ik = fmul float %i.ih, %i.ih
  %i.il = fmul float %i.ii, %i.ii
  %i.im = fmul float %i.ij, %i.ij
  %i.in = fmul float %.pre-phi245, %i.id
  %i.io = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ip = insertelement <4 x float> %i.io, float %i.ib, i64 1
  %i.iq = insertelement <4 x float> %i.ip, float %.pre-phi243, i64 2
  %i.ir = insertelement <4 x float> %i.iq, float %i.ia, i64 3 ; 2 uses
  %i.is = insertelement <4 x float> %i.ir, float %i.hv, i64 2
  %i.it = insertelement <4 x float> poison, float %i.im, i64 0
  %i.iu = insertelement <4 x float> %i.it, float %i.il, i64 1
  %i.iv = insertelement <4 x float> %i.iu, float %i.in, i64 2
  %i.iw = insertelement <4 x float> %i.iv, float %i.ik, i64 3
  %i.ix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> %i.is, <4 x float> %i.iw) ; 4 uses
  %i.iy = extractelement <4 x float> %i.ix, i64 0
  %i.iz = tail call noundef float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.iy) ; 2 uses
  %i.ja = extractelement <4 x float> %i.ix, i64 1
  %i.jb = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.ja) ; 2 uses
  %i.jc = fcmp ogt float %i.iz, %i.jb
  %i.jd = extractelement <4 x float> %i.ix, i64 2 ; 2 uses
  %i.je = extractelement <4 x float> %i.ix, i64 3
  %i.jf = tail call noundef float @llvm.fmuladd.f32(float %i.jd, float %i.jd, float %i.je) ; 2 uses
  %.sroa.speculated67.i94 = select i1 %i.jc, float %i.iz, float %i.jb ; 2 uses
  %i.jg = fcmp ogt float %.sroa.speculated67.i94, %i.jf
  %.sroa.speculated.i95 = select i1 %i.jg, float %.sroa.speculated67.i94, float %i.jf ; 2 uses
  br i1 %cond38, label %._crit_edge170, label %._crit_edge163

._crit_edge170:                                   ; preds = %bb.g
  %.pre269 = fsub float %28, %.pre172             ; 2 uses
  %45 = extractelement <2 x float> %30, i64 0     ; 2 uses
  %.pre271 = fsub float %27, %45                  ; 2 uses
  %.pre273 = fsub float %21, %i.hn                ; 2 uses
  %.pre275 = fneg float %.pre271
  %.pre277 = fneg float %.pre273
  %.pre279 = fneg float %.pre269
  br label %bb.i

._crit_edge163:                                   ; preds = %bb.g
  %.pre296 = fsub float %.pre172, %i.hd           ; 2 uses
  %46 = extractelement <2 x float> %30, i64 0     ; 2 uses
  %.pre298 = fsub float %46, %i.hc                ; 2 uses
  %.pre300 = fsub float %i.hn, %i.hb              ; 2 uses
  %.pre308 = fneg float %.pre298
  %.pre310 = fneg float %.pre300
  %.pre312 = fneg float %.pre296
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge163, %._crit_edge156
  %.pre-phi319 = phi float [ %i.hs, %._crit_edge163 ], [ %.pre318, %._crit_edge156 ]
  %.pre-phi317 = phi float [ %24, %._crit_edge163 ], [ %.pre316, %._crit_edge156 ]
  %.pre-phi315 = phi float [ %i.hr, %._crit_edge163 ], [ %.pre314, %._crit_edge156 ]
  %.pre-phi313 = phi float [ %.pre312, %._crit_edge163 ], [ %i.gw, %._crit_edge156 ]
  %.pre-phi311 = phi float [ %.pre310, %._crit_edge163 ], [ %i.ha, %._crit_edge156 ]
  %.pre-phi309 = phi float [ %.pre308, %._crit_edge163 ], [ %i.gz, %._crit_edge156 ]
  %.pre-phi307 = phi float [ %22, %._crit_edge163 ], [ %.pre283.a, %._crit_edge156 ]
  %.pre-phi305 = phi float [ %29, %._crit_edge163 ], [ %.pre285.a, %._crit_edge156 ]
  %.pre-phi303 = phi float [ %.pre263, %._crit_edge163 ], [ %.pre302, %._crit_edge156 ]
  %.pre-phi301 = phi float [ %.pre300, %._crit_edge163 ], [ %i.gy, %._crit_edge156 ]
  %.pre-phi299 = phi float [ %.pre298, %._crit_edge163 ], [ %i.gv, %._crit_edge156 ]
  %.pre-phi297 = phi float [ %.pre296, %._crit_edge163 ], [ %i.gx, %._crit_edge156 ]
  %.pre-phi295 = phi float [ %.pre-phi247, %._crit_edge163 ], [ %8, %._crit_edge156 ] ; 2 uses
  %.pre-phi294 = phi float [ %.pre-phi245, %._crit_edge163 ], [ %i.el, %._crit_edge156 ] ; 2 uses
  %.pre-phi293 = phi float [ %.pre-phi243, %._crit_edge163 ], [ %i.ek, %._crit_edge156 ] ; 2 uses
  %.pre-phi288 = phi float [ %35, %._crit_edge163 ], [ %.pre285, %._crit_edge156 ]
  %.pre-phi284 = phi float [ %39, %._crit_edge163 ], [ %.pre306, %._crit_edge156 ] ; 2 uses
  %.pre-phi282 = phi float [ %44, %._crit_edge163 ], [ %.pre304, %._crit_edge156 ]
  %i.jh = phi float [ %i.he, %._crit_edge163 ], [ %i.ef, %._crit_edge156 ] ; 3 uses
  %i.ji = phi float [ %i.hf, %._crit_edge163 ], [ %i.er, %._crit_edge156 ] ; 3 uses
  %i.jj = phi float [ %i.hg, %._crit_edge163 ], [ %i.fd, %._crit_edge156 ] ; 3 uses
  %i.jk = phi float [ %i.hn, %._crit_edge163 ], [ %3, %._crit_edge156 ] ; 2 uses
  %i.jl = phi float [ %46, %._crit_edge163 ], [ %i.ep, %._crit_edge156 ] ; 2 uses
  %i.jm = phi float [ %.pre172, %._crit_edge163 ], [ %i.gt, %._crit_edge156 ] ; 2 uses
  %i.jn = phi float [ %21, %._crit_edge163 ], [ %.pre158.a, %._crit_edge156 ] ; 2 uses
  %i.jo = phi float [ %i.hh, %._crit_edge163 ], [ %5, %._crit_edge156 ]
  %i.jp = phi float [ %27, %._crit_edge163 ], [ %.pre160, %._crit_edge156 ] ; 2 uses
  %i.jq = phi float [ %i.hi, %._crit_edge163 ], [ %6, %._crit_edge156 ]
  %i.jr = phi float [ %28, %._crit_edge163 ], [ %.pre158, %._crit_edge156 ] ; 2 uses
  %.2130 = phi float [ %.sroa.speculated.i95, %._crit_edge163 ], [ 0.000000e+00, %._crit_edge156 ] ; 2 uses
  %.4 = phi float [ %.3, %._crit_edge163 ], [ %.sroa.speculated.i, %._crit_edge156 ] ; 2 uses
  %i.js = phi <2 x float> [ %43, %._crit_edge163 ], [ %i.gu, %._crit_edge156 ] ; 2 uses
  %47 = phi <2 x float> [ %38, %._crit_edge163 ], [ %19, %._crit_edge156 ] ; 2 uses
  %48 = phi <2 x float> [ %34, %._crit_edge163 ], [ %20, %._crit_edge156 ] ; 2 uses
  %i.jt = fsub float %i.jr, %i.jm                 ; 3 uses
  %49 = fsub float %i.jp, %i.jl                   ; 3 uses
  %50 = fsub float %i.jn, %i.jk                   ; 3 uses
  %51 = fneg float %49                            ; 2 uses
  %i.ju = fmul float %.pre-phi295, %51
  %52 = tail call float @llvm.fmuladd.f32(float %.pre-phi294, float %50, float %i.ju) ; 2 uses
  %53 = fneg float %50                            ; 2 uses
  %54 = fmul float %.pre-phi293, %53
  %55 = tail call float @llvm.fmuladd.f32(float %.pre-phi295, float %i.jt, float %54) ; 2 uses
  %i.jv = fneg float %i.jt                        ; 2 uses
  %i.jw = fmul float %.pre-phi294, %i.jv
  %i.jx = tail call float @llvm.fmuladd.f32(float %.pre-phi293, float %49, float %i.jw) ; 2 uses
  %56 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %57 = insertelement <2 x float> %56, float %.pre-phi288, i64 1 ; 2 uses
  %58 = insertelement <2 x float> poison, float %.pre-phi315, i64 0
  %59 = insertelement <2 x float> %58, float %.pre-phi309, i64 1
  %60 = fmul <2 x float> %57, %59
  %61 = shufflevector <2 x float> %47, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.jy = insertelement <2 x float> %61, float %.pre-phi301, i64 1
  %i.jz = insertelement <2 x float> poison, float %.pre-phi307, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %.pre-phi284, i64 1
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> %i.ka, <2 x float> %60) ; 2 uses
  %63 = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %64 = insertelement <2 x float> %63, float %.pre-phi282, i64 1 ; 2 uses
  %i.kb = insertelement <2 x float> poison, float %.pre-phi317, i64 0
  %i.kc = insertelement <2 x float> %i.kb, float %.pre-phi311, i64 1
  %65 = fmul <2 x float> %64, %i.kc
  %i.kd = insertelement <2 x float> %56, float %.pre-phi297, i64 1
  %i.ke = insertelement <2 x float> %57, float %.pre-phi303, i64 0
  %i.kf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.ke, <2 x float> %65) ; 2 uses
  %i.kg = insertelement <2 x float> %61, float %.pre-phi284, i64 1
  %i.kh = insertelement <2 x float> poison, float %.pre-phi319, i64 0
  %i.ki = insertelement <2 x float> %i.kh, float %.pre-phi313, i64 1
  %66 = fmul <2 x float> %i.kg, %i.ki
  %i.kj = insertelement <2 x float> %63, float %.pre-phi299, i64 1
  %67 = insertelement <2 x float> %64, float %.pre-phi305, i64 0
  %68 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %67, <2 x float> %66) ; 2 uses
  %69 = fmul <2 x float> %i.kf, %i.kf
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %62, <2 x float> %62, <2 x float> %69)
  %i.kl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> %68, <2 x float> %i.kk) ; 2 uses
  %i.km = extractelement <2 x float> %i.kl, i64 0 ; 2 uses
  %i.kn = extractelement <2 x float> %i.kl, i64 1 ; 2 uses
  %i.ko = fcmp ogt float %i.kn, %i.km
  %i.kp = fmul float %55, %55
  %i.kq = tail call float @llvm.fmuladd.f32(float %52, float %52, float %i.kp)
  %i.kr = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jx, float %i.kq) ; 2 uses
  %.sroa.speculated67.i96 = select i1 %i.ko, float %i.kn, float %i.km ; 2 uses
  %i.ks = fcmp ogt float %.sroa.speculated67.i96, %i.kr
  %.sroa.speculated.i97 = select i1 %i.ks, float %.sroa.speculated67.i96, float %i.kr ; 2 uses
  br i1 %i.n, label %._crit_edge320, label %bb.j

._crit_edge320:                                   ; preds = %bb.h
  %.pre321 = fsub float %.pre177, %i.jj
  %.pre323 = fsub float %i.jq, %i.ji
  %.pre325 = fsub float %i.jo, %i.jh
  %.pre327 = fsub float %i.jr, %i.jj              ; 2 uses
  %.pre329 = fsub float %i.jp, %i.ji              ; 2 uses
  %.pre331 = fsub float %i.jn, %i.jh              ; 2 uses
  %.pre333 = fneg float %.pre329
  %.pre335 = fneg float %.pre331
  %.pre337 = fneg float %.pre327
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge320, %._crit_edge170
  %.pre-phi338 = phi float [ %.pre337, %._crit_edge320 ], [ %i.id, %._crit_edge170 ]
  %.pre-phi336 = phi float [ %.pre335, %._crit_edge320 ], [ %25, %._crit_edge170 ]
  %.pre-phi334 = phi float [ %.pre333, %._crit_edge320 ], [ %i.hw, %._crit_edge170 ]
  %.pre-phi332 = phi float [ %.pre331, %._crit_edge320 ], [ %23, %._crit_edge170 ]
  %.pre-phi330 = phi float [ %.pre329, %._crit_edge320 ], [ %i.hv, %._crit_edge170 ]
  %.pre-phi328 = phi float [ %.pre327, %._crit_edge320 ], [ %i.hm, %._crit_edge170 ]
  %.pre-phi326 = phi float [ %.pre325, %._crit_edge320 ], [ %.pre-phi241, %._crit_edge170 ] ; 2 uses
  %.pre-phi324 = phi float [ %.pre323, %._crit_edge320 ], [ %.pre-phi239, %._crit_edge170 ] ; 2 uses
  %.pre-phi322 = phi float [ %.pre321, %._crit_edge320 ], [ %.pre-phi237, %._crit_edge170 ] ; 2 uses
  %.pre-phi272.a = phi float [ %i.jv, %._crit_edge320 ], [ %.pre279, %._crit_edge170 ]
  %.pre-phi270.a = phi float [ %53, %._crit_edge320 ], [ %.pre277, %._crit_edge170 ]
  %.pre-phi266 = phi float [ %51, %._crit_edge320 ], [ %.pre275, %._crit_edge170 ]
  %.pre-phi264 = phi float [ %50, %._crit_edge320 ], [ %.pre273, %._crit_edge170 ]
  %.pre-phi261 = phi float [ %49, %._crit_edge320 ], [ %.pre271, %._crit_edge170 ]
  %.pre-phi260 = phi float [ %i.jt, %._crit_edge320 ], [ %.pre269, %._crit_edge170 ]
  %i.kt = phi float [ %i.jh, %._crit_edge320 ], [ %i.he, %._crit_edge170 ]
  %i.ku = phi float [ %i.ji, %._crit_edge320 ], [ %i.hf, %._crit_edge170 ]
  %i.kv = phi float [ %i.jj, %._crit_edge320 ], [ %i.hg, %._crit_edge170 ]
  %i.kw = phi float [ %i.jk, %._crit_edge320 ], [ %i.hn, %._crit_edge170 ]
  %i.kx = phi float [ %i.jl, %._crit_edge320 ], [ %45, %._crit_edge170 ]
  %i.ky = phi float [ %i.jm, %._crit_edge320 ], [ %.pre172, %._crit_edge170 ]
  %.1134 = phi float [ %.sroa.speculated.i97, %._crit_edge320 ], [ 0.000000e+00, %._crit_edge170 ]
  %.3131 = phi float [ %.2130, %._crit_edge320 ], [ %.sroa.speculated.i95, %._crit_edge170 ]
  %.5 = phi float [ %.4, %._crit_edge320 ], [ %.3, %._crit_edge170 ]
  %70 = phi <2 x float> [ %i.js, %._crit_edge320 ], [ %43, %._crit_edge170 ] ; 2 uses
  %71 = phi <2 x float> [ %47, %._crit_edge320 ], [ %38, %._crit_edge170 ] ; 2 uses
  %i.kz = phi <2 x float> [ %48, %._crit_edge320 ], [ %34, %._crit_edge170 ] ; 2 uses
  %i.la = fsub float %i.ky, %i.kv                 ; 2 uses
  %i.lb = fsub float %i.kx, %i.ku                 ; 2 uses
  %i.lc = fsub float %i.kw, %i.kt                 ; 2 uses
  %i.ld = fneg float %i.lb
  %i.le = fneg float %i.lc
  %i.lf = fneg float %i.la
  %i.lg = fmul float %.pre-phi326, %.pre-phi266
  %i.lh = tail call float @llvm.fmuladd.f32(float %.pre-phi324, float %.pre-phi264, float %i.lg) ; 2 uses
  %i.li = fmul float %.pre-phi322, %.pre-phi270.a
  %i.lj = tail call float @llvm.fmuladd.f32(float %.pre-phi326, float %.pre-phi260, float %i.li) ; 2 uses
  %i.lk = fmul float %.pre-phi324, %.pre-phi272.a
  %i.ll = tail call float @llvm.fmuladd.f32(float %.pre-phi322, float %.pre-phi261, float %i.lk) ; 2 uses
  %i.lm = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %.pre-phi334, i64 1
  %i.lo = fmul <2 x float> %i.kz, %i.ln
  %i.lp = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %.pre-phi332, i64 1
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %i.lq, <2 x float> %i.lo) ; 2 uses
  %i.ls = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %.pre-phi336, i64 1
  %i.lu = fmul <2 x float> %70, %i.lt
  %i.lv = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lw = insertelement <2 x float> %i.lv, float %.pre-phi328, i64 1
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.lw, <2 x float> %i.lu) ; 2 uses
  %i.ly = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %.pre-phi338, i64 1
  %i.ma = fmul <2 x float> %71, %i.lz
  %i.mb = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %.pre-phi330, i64 1
  %i.md = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %i.mc, <2 x float> %i.ma) ; 2 uses
  %i.me = fmul <2 x float> %i.lx, %i.lx
  %i.mf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.lr, <2 x float> %i.me)
  %i.mg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> %i.md, <2 x float> %i.mf) ; 2 uses
  %i.mh = extractelement <2 x float> %i.mg, i64 0 ; 2 uses
  %i.mi = extractelement <2 x float> %i.mg, i64 1 ; 2 uses
  %i.mj = fcmp ogt float %i.mh, %i.mi
  %i.mk = fmul float %i.lj, %i.lj
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.lh, float %i.mk)
  %i.mm = tail call noundef float @llvm.fmuladd.f32(float %i.ll, float %i.ll, float %i.ml) ; 2 uses
  %.sroa.speculated67.i98 = select i1 %i.mj, float %i.mh, float %i.mi ; 2 uses
  %i.mn = fcmp ogt float %.sroa.speculated67.i98, %i.mm
  %.sroa.speculated.i99 = select i1 %i.mn, float %.sroa.speculated67.i98, float %i.mm
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %._crit_edge202, %._crit_edge209
  %.0136 = phi float [ %i.dw, %._crit_edge209 ], [ 0.000000e+00, %._crit_edge202 ], [ %.sroa.speculated.i99, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.2135 = phi float [ %.0133, %._crit_edge209 ], [ %i.db, %._crit_edge202 ], [ %.1134, %bb.i ], [ %.sroa.speculated.i97, %bb.h ]
  %.4132 = phi float [ %.1129, %._crit_edge209 ], [ %.0128, %._crit_edge202 ], [ %.3131, %bb.i ], [ %.2130, %bb.h ]
  %.6 = phi float [ %.2, %._crit_edge209 ], [ %.1127, %._crit_edge202 ], [ %.5, %bb.i ], [ %.4, %bb.h ]
  %i.mo = tail call noundef float @llvm.fabs.f32(float %.6) ; 2 uses
  %i.mp = tail call noundef float @llvm.fabs.f32(float %.4132) ; 2 uses
  %i.mq = tail call noundef float @llvm.fabs.f32(float %.2135) ; 2 uses
  %i.mr = tail call noundef float @llvm.fabs.f32(float %.0136)
  %i.ms = fcmp ule float %i.mo, f0xDD5E0B6B       ; 2 uses
  %.05.i.i = sext i1 %i.ms to i32
  %.0.i.i = select i1 %i.ms, float f0xDD5E0B6B, float %i.mo ; 2 uses
  %i.mt = fcmp ogt float %i.mp, %.0.i.i           ; 2 uses
  %.16.i.i = select i1 %i.mt, i32 1, i32 %.05.i.i
  %.1.i.i = select i1 %i.mt, float %i.mp, float %.0.i.i ; 2 uses
  %i.mu = fcmp ogt float %i.mq, %.1.i.i           ; 2 uses
  %.27.i.i = select i1 %i.mu, i32 2, i32 %.16.i.i
  %.2.i.i = select i1 %i.mu, float %i.mq, float %.1.i.i
  %i.mv = fcmp ogt float %i.mr, %.2.i.i
  %.3.i.i = select i1 %i.mv, i32 3, i32 %.27.i.i
  ret i32 %.3.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK20btPersistentManifold13getCacheEntryERK15btManifoldPoint(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.e = load float, ptr %i.d, align 4, !tbaa !28 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %1, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.011.lcssa = phi i32 [ -1, %bb.a ], [ %.112, %bb.b ]
  ret i32 %.011.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.023 = phi float [ %i.f, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %.01122 = phi i32 [ -1, %.lr.ph ], [ %.112, %bb.b ]
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.n = load float, ptr %i.m, align 8, !tbaa !26
  %i.o = fsub float %i.n, %i.h                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !26
  %i.r = fsub float %i.q, %i.j                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !26
  %i.u = fsub float %i.t, %i.l                    ; 2 uses
  %i.v = fmul float %i.r, %i.r
  %i.w = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.w) ; 2 uses
  %i.y = fcmp olt float %i.x, %.023               ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %.112 = select i1 %i.y, i32 %i.z, i32 %.01122   ; 2 uses
  %.1 = select i1 %i.y, float %i.x, float %.023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(880) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.b = load float, ptr %i.a, align 4, !tbaa !28
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZN20btPersistentManifold16addManifoldPointERK15btManifoldPointb(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN20btPersistentManifold16sortCachedPointsERK15btManifoldPoint(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr noundef nonnull align 8 dereferenceable(204) %1) ; 4 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [208 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 128      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @gContactDestroyedCallback, align 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull %i.h), !inline_history !31 ; 0 uses
  store ptr null, ptr %i.g, align 8, !tbaa !18
  br label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit

bb.e:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.b, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !27
  br label %_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit

_ZN20btPersistentManifold14clearUserCacheER15btManifoldPoint.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ %i.b, %bb.e ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.0, i32 0) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = zext nneg i32 %spec.store.select to i64
  %i.n = getelementptr inbounds nuw [208 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.n, ptr noundef nonnull align 8 dereferenceable(204) %1, i64 204, i1 false), !tbaa.struct !32
  ret i32 %spec.store.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = zext nneg i32 %i.d to i64
  br label %bb.b

.lr.ph76:                                         ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ab = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %i.f, i64 %indvars.iv.next ; 15 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %i.ai = load float, ptr %i.i, align 4, !tbaa !26
  %i.aj = load float, ptr %i.j, align 4, !tbaa !26
  %i.ak = load float, ptr %i.h, align 4, !tbaa !26
  %i.al = load float, ptr %i.k, align 4, !tbaa !26
  %i.am = fmul float %i.af, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ak, float %i.am)
  %i.ao = load float, ptr %i.l, align 4, !tbaa !26
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ah, float %i.ao, float %i.an)
  %i.aq = load <2 x float>, ptr %1, align 4, !tbaa !26 ; 2 uses
  %i.ar = load <2 x float>, ptr %i.g, align 4, !tbaa !26 ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.af, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_0
