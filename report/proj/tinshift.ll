begin_hunk_0_@_ZN8TINShiftL13BuildQuadTreeERKNS_12TINShiftFileEb:bb.a
  %.sroa.speculated85 = select i1 %i.ch, double %i.bt, double %i.bk ; 2 uses
  %i.ci = fcmp olt double %i.bx, %i.bo
  %.sroa.speculated77 = select i1 %i.ci, double %i.bx, double %i.bo ; 2 uses
  %i.cj = fcmp olt double %i.bk, %i.bt
  %.sroa.speculated82 = select i1 %i.cj, double %i.bt, double %i.bk ; 2 uses
  %i.ck = fcmp olt double %i.bo, %i.bx
  %.sroa.speculated74 = select i1 %i.ck, double %i.bx, double %i.bo ; 2 uses
  %i.cl = fcmp olt double %i.cc, %.sroa.speculated85
  %.sroa.speculated69 = select i1 %i.cl, double %i.cc, double %.sroa.speculated85
  store double %.sroa.speculated69, ptr %3, align 8, !tbaa !257
  %i.cm = fcmp olt double %i.cg, %.sroa.speculated77
  %.sroa.speculated63 = select i1 %i.cm, double %i.cg, double %.sroa.speculated77
  store double %.sroa.speculated63, ptr %i.av, align 8, !tbaa !258
  %i.cn = fcmp olt double %.sroa.speculated82, %i.cc
  %.sroa.speculated66 = select i1 %i.cn, double %i.cc, double %.sroa.speculated82
  store double %.sroa.speculated66, ptr %i.aw, align 8, !tbaa !259
  %i.co = fcmp olt double %.sroa.speculated74, %i.cg
  %.sroa.speculated = select i1 %i.co, double %i.cg, double %.sroa.speculated74
  store double %.sroa.speculated, ptr %i.ax, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cp = trunc i64 %.05188 to i32
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !181
  invoke void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERNS3_4NodeERKjRKNS1_7RectObjE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERKjRKNS1_7RectObjE.exit unwind label %bb.d

_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERKjRKNS1_7RectObjE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cq = add nuw i64 %.05188, 1                  ; 2 uses
  %i.cr = load ptr, ptr %i.as, align 8, !tbaa !159
  %i.cs = load ptr, ptr %i.ap, align 8, !tbaa !158 ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 12
  %i.cx = icmp ult i64 %i.cq, %i.cw
  br i1 %i.cx, label %bb.c, label %._crit_edge, !llvm.loop !261

bb.d:                                             ; preds = %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  resume { ptr, i32 } %i.cy

._crit_edge:                                      ; preds = %_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERKjRKNS1_7RectObjE.exit, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !230
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.c, ptr noundef %i.e)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i unwind label %bb.c, !inline_history !231

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29, !inline_history !231
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !227  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31, !inline_history !233
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !237
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31, !inline_history !233
  br label %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit

_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit: ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN8TINShiftL12FindTriangleERKNS_12TINShiftFileERKN5osgeo4proj8QuadTree8QuadTreeIjEERSt6vectorIjSaIjEEddbRdSE_SE_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3, double noundef %4, i1 noundef zeroext %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %8) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !262    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !265
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !265
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  tail call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6searchERKNS3_4NodeEddRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, double noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.g = load i8, ptr %i.f, align 8, !tbaa !107, !range !117, !noundef !118
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %5, true
  %i.j = and i1 %i.i, %i.h                        ; 2 uses
  %i.k = select i1 %i.j, i32 2, i32 0             ; 9 uses
  %i.l = select i1 %i.j, i32 3, i32 1             ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.n = load i32, ptr %i.m, align 4, !tbaa !123  ; 9 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !266    ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !266  ; 2 uses
  %.not346 = icmp eq ptr %i.o, %i.p
  br i1 %.not346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !125  ; 6 uses
  %i.s = insertelement <2 x double> poison, double %3, i64 0
  %i.t = insertelement <2 x double> poison, double %4, i64 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0327.0347 = phi ptr [ %i.o, %.lr.ph ], [ %i.cd, %bb.d ] ; 2 uses
  %i.u = load i32, ptr %.sroa.0327.0347, align 4, !tbaa !181
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %i.v ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !238
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !241
  %i.ac = mul i32 %i.x, %i.n                      ; 2 uses
  %i.ad = add i32 %i.ac, %i.k
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !150
  %i.ah = add i32 %i.ac, %i.l
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !150 ; 2 uses
  %i.al = mul i32 %i.z, %i.n                      ; 2 uses
  %i.am = add i32 %i.al, %i.k
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !150
  %i.aq = add i32 %i.al, %i.l
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !150
  %i.au = mul i32 %i.ab, %i.n                     ; 2 uses
  %i.av = add i32 %i.au, %i.k
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !150 ; 2 uses
  %i.az = add i32 %i.au, %i.l
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !150 ; 3 uses
  %i.bd = fsub double %i.at, %i.bc
  %i.be = fsub double %i.ay, %i.ap
  %i.bf = insertelement <2 x double> %i.s, double %i.ag, i64 1
  %i.bg = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fsub <2 x double> %i.bf, %i.bh          ; 3 uses
  %i.bj = insertelement <2 x double> %i.t, double %i.ak, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fsub <2 x double> %i.bj, %i.bl          ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bo, %i.bm
  %i.bq = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bi, <2 x double> %i.bp) ; 2 uses
  %9 = extractelement <2 x double> %i.bs, i64 0
  %10 = extractelement <2 x double> %i.bs, i64 1  ; 2 uses
  %11 = fdiv double %9, %10
  store double %11, ptr %6, align 8, !tbaa !150
  %12 = fsub double %i.bc, %i.ak
  %shift = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.bm
  %13 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bt = extractelement <2 x double> %i.bi, i64 0
  %14 = tail call double @llvm.fmuladd.f64(double %12, double %i.bt, double %13)
  %15 = fdiv double %14, %10                      ; 4 uses
  store double %15, ptr %7, align 8, !tbaa !150
  %i.bu = load double, ptr %6, align 8, !tbaa !150 ; 3 uses
  %i.bv = fcmp ult double %i.bu, -1.000000e-10
  %i.bw = fcmp ugt double %i.bu, f0x3FF000000006DF38
  %or.cond263 = or i1 %i.bv, %i.bw
  %i.bx = fcmp ult double %15, -1.000000e-10
  %i.by = fcmp ugt double %15, f0x3FF000000006DF38
  %i.bz = or i1 %i.bx, %i.by
  %or.cond265 = select i1 %or.cond263, i1 true, i1 %i.bz
  br i1 %or.cond265, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ca = fsub double 1.000000e+00, %i.bu
  %i.cb = fsub double %i.ca, %15                  ; 2 uses
  store double %i.cb, ptr %8, align 8, !tbaa !150
  %i.cc = fcmp ult double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.d, label %.thread333

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0327.0347, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.p
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !267 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread333, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !159 ; 2 uses
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !158 ; 4 uses
  %.not356 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not356, label %.thread333, label %.lr.ph352

.lr.ph352:                                        ; preds = %.preheader
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 12
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !125 ; 6 uses
  %i.cp = insertelement <2 x double> poison, double %3, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %4, i64 1 ; 4 uses
  br label %bb.e

._crit_edge353:                                   ; preds = %bb.aa
  %i.cr = tail call double @llvm.fabs.f64(double %.6)
  %i.cs = fcmp oeq double %i.cr, +inf
  br i1 %i.cs, label %.thread333, label %bb.ab

bb.e:                                             ; preds = %.lr.ph352, %bb.aa
  %.0233351 = phi double [ +inf, %.lr.ph352 ], [ %.6, %bb.aa ] ; 12 uses
  %.0239350 = phi double [ +inf, %.lr.ph352 ], [ %.6245, %bb.aa ] ; 10 uses
  %.0246349 = phi i64 [ 0, %.lr.ph352 ], [ %.6252, %bb.aa ] ; 8 uses
  %.0253348 = phi i64 [ 0, %.lr.ph352 ], [ %i.jb, %bb.aa ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %.0253348 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !238
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !240
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !241
  %i.cz = mul i32 %i.cu, %i.n                     ; 2 uses
  %i.da = add i32 %i.cz, %i.k
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !150 ; 9 uses
  %i.de = add i32 %i.cz, %i.l
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !150 ; 9 uses
  %i.di = mul i32 %i.cw, %i.n                     ; 2 uses
  %i.dj = add i32 %i.di, %i.k
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !150 ; 10 uses
  %i.dn = add i32 %i.di, %i.l
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !150 ; 10 uses
  %i.dr = mul i32 %i.cy, %i.n                     ; 2 uses
  %i.ds = add i32 %i.dr, %i.k
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !150 ; 10 uses
  %i.dw = add i32 %i.dr, %i.l
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dx
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !150 ; 10 uses
  %i.ea = fadd double %3, %.0233351
  %i.eb = fcmp olt double %i.dv, %i.dm
  %i.ec = select i1 %i.eb, double %i.dv, double %i.dm ; 2 uses
  %i.ed = fcmp olt double %i.ec, %i.dd
  %.sroa.speculated325 = select i1 %i.ed, double %i.ec, double %i.dd
  %i.ee = fcmp olt double %i.ea, %.sroa.speculated325
  br i1 %i.ee, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ef = fsub double %3, %.0233351
  %i.eg = fcmp olt double %i.dm, %i.dv
  %i.eh = select i1 %i.eg, double %i.dv, double %i.dm ; 2 uses
  %i.ei = fcmp olt double %i.dd, %i.eh
  %.sroa.speculated322 = select i1 %i.ei, double %i.eh, double %i.dd
  %i.ej = fcmp ogt double %i.ef, %.sroa.speculated322
  br i1 %i.ej, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ek = fadd double %4, %.0233351
  %i.el = fcmp olt double %i.dz, %i.dq
  %i.em = select i1 %i.el, double %i.dz, double %i.dq ; 2 uses
  %i.en = fcmp olt double %i.em, %i.dh
  %.sroa.speculated313 = select i1 %i.en, double %i.em, double %i.dh
  %i.eo = fcmp olt double %i.ek, %.sroa.speculated313
  br i1 %i.eo, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ep = fsub double %4, %.0233351
  %i.eq = fcmp olt double %i.dq, %i.dz
  %i.er = select i1 %i.eq, double %i.dz, double %i.dq ; 2 uses
  %i.es = fcmp olt double %i.dh, %i.er
  %.sroa.speculated = select i1 %i.es, double %i.er, double %i.dh
  %i.et = fcmp ogt double %i.ep, %.sroa.speculated
  br i1 %i.et, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eu = fsub double %i.dd, %i.dm                ; 2 uses
  %i.ev = fmul double %i.eu, %i.eu
  %i.ew = fsub double %i.dh, %i.dq                ; 2 uses
  %i.ex = fmul double %i.ew, %i.ew
  %i.ey = fadd double %i.ev, %i.ex                ; 2 uses
  %i.ez = fsub double %i.dm, %i.dv                ; 2 uses
  %i.fa = fmul double %i.ez, %i.ez
  %i.fb = fsub double %i.dq, %i.dz                ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = fadd double %i.fa, %i.fc                ; 2 uses
  %i.fe = fsub double %i.dd, %i.dv                ; 2 uses
  %i.ff = fmul double %i.fe, %i.fe
  %i.fg = fsub double %i.dh, %i.dz                ; 2 uses
  %i.fh = fmul double %i.fg, %i.fg
  %i.fi = fadd double %i.ff, %i.fh                ; 2 uses
  %i.fj = fcmp olt double %i.ey, 1.000000e-10
  %i.fk = fcmp olt double %i.fd, 1.000000e-10
  %or.cond = or i1 %i.fj, %i.fk
  %i.fl = fcmp olt double %i.fi, 1.000000e-10
  %or.cond5 = or i1 %i.fl, %or.cond
  br i1 %or.cond5, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.cf, label %bb.aa [
    i32 1, label %bb.k
    i32 2, label %bb.y
  ]

bb.k:                                             ; preds = %bb.j
  %i.fm = fsub double %3, %i.dd                   ; 6 uses
  %i.fn = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.dq, i64 1 ; 3 uses
  %i.fp = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.dh, i64 1 ; 4 uses
  %i.fr = fsub <2 x double> %i.fo, %i.fq          ; 3 uses
  %i.fs = fsub double %4, %i.dh                   ; 6 uses
  %i.ft = extractelement <2 x double> %i.fr, i64 1
  %i.fu = fmul double %i.fs, %i.ft
  %i.fv = extractelement <2 x double> %i.fr, i64 0
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fv, double %i.fu)
  %i.fx = fdiv double %i.fw, %i.ey                ; 3 uses
  %i.fy = fcmp ugt double %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fz = fmul double %i.fm, %i.fm
  %i.ga = fmul double %i.fs, %i.fs
  %i.gb = fadd double %i.fz, %i.ga
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit

bb.m:                                             ; preds = %bb.k
  %i.gc = fcmp ult double %i.fx, 1.000000e+00
  br i1 %i.gc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gd = fsub double %3, %i.dm                   ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fsub double %4, %i.dq                   ; 2 uses
  %i.gg = fmul double %i.gf, %i.gf
  %i.gh = fadd double %i.ge, %i.gg
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit

bb.o:                                             ; preds = %bb.m
  %i.gi = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.fr, <2 x double> %i.fq)
  %i.gl = fsub <2 x double> %i.cq, %i.gk          ; 2 uses
  %i.gm = fmul <2 x double> %i.gl, %i.gl          ; 2 uses
  %shift378 = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fadd <2 x double> %i.gm, %shift378
  %i.gn = extractelement <2 x double> %foldExtExtBinop379, i64 0
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit

_ZN8TINShiftL22distance_point_segmentEddddddd.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i = phi double [ %i.gb, %bb.l ], [ %i.gh, %bb.n ], [ %i.gn, %bb.o ] ; 3 uses
  %i.go = fcmp olt double %.0.i, %.0239350        ; 3 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %.0.i)
  %.1240 = select i1 %i.go, double %.0.i, double %.0239350 ; 2 uses
  %.1234 = select i1 %i.go, double %sqrt, double %.0233351
  %i.gp = fsub double %3, %i.dm                   ; 3 uses
  %i.gq = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.dz, i64 1 ; 2 uses
  %i.gs = fsub <2 x double> %i.gr, %i.fo          ; 3 uses
  %i.gt = fsub double %4, %i.dq                   ; 3 uses
  %i.gu = extractelement <2 x double> %i.gs, i64 1
  %i.gv = fmul double %i.gt, %i.gu
  %i.gw = extractelement <2 x double> %i.gs, i64 0
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gw, double %i.gv)
  %i.gy = fdiv double %i.gx, %i.fd                ; 3 uses
end_hunk_0
