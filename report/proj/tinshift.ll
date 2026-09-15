Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/tinshift?download=true
inline.NumInlined: 3866
inline.NumDeleted: 1338
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8TINShiftL13BuildQuadTreeERKNS_12TINShiftFileEb:bb.a
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !92 ; 4 uses
  %i.bp = mul i32 %i.bc, %i.e                     ; 2 uses
  %i.bq = add i32 %i.bp, %i.aq
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !92 ; 4 uses
  %i.bu = add i32 %i.bp, %i.ar
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !92 ; 4 uses
  %i.by = mul i32 %i.be, %i.e                     ; 2 uses
  %i.bz = add i32 %i.by, %i.aq
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !92 ; 4 uses
  %i.cd = add i32 %i.by, %i.ar
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !92 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.ch = fcmp olt double %i.bt, %i.bk
  %.sroa.speculated85 = select i1 %i.ch, double %i.bt, double %i.bk ; 2 uses
  %i.ci = fcmp olt double %i.bx, %i.bo
  %.sroa.speculated77 = select i1 %i.ci, double %i.bx, double %i.bo ; 2 uses
  %i.cj = fcmp olt double %i.bk, %i.bt
  %.sroa.speculated82 = select i1 %i.cj, double %i.bt, double %i.bk ; 2 uses
  %i.ck = fcmp olt double %i.bo, %i.bx
  %.sroa.speculated74 = select i1 %i.ck, double %i.bx, double %i.bo ; 2 uses
  %i.cl = fcmp olt double %i.cc, %.sroa.speculated85
  %.sroa.speculated69 = select i1 %i.cl, double %i.cc, double %.sroa.speculated85
  store double %.sroa.speculated69, ptr %3, align 8, !tbaa !144
  %i.cm = fcmp olt double %i.cg, %.sroa.speculated77
  %.sroa.speculated63 = select i1 %i.cm, double %i.cg, double %.sroa.speculated77
  store double %.sroa.speculated63, ptr %i.av, align 8, !tbaa !145
  %i.cn = fcmp olt double %.sroa.speculated82, %i.cc
  %.sroa.speculated66 = select i1 %i.cn, double %i.cc, double %.sroa.speculated82
  store double %.sroa.speculated66, ptr %i.aw, align 8, !tbaa !146
  %i.co = fcmp olt double %.sroa.speculated74, %i.cg
  %.sroa.speculated = select i1 %i.co, double %i.cg, double %.sroa.speculated74
  store double %.sroa.speculated, ptr %i.ax, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cp = trunc i64 %.088 to i32
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !96
  invoke void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERNS3_4NodeERKjRKNS1_7RectObjE(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERKjRKNS1_7RectObjE.exit unwind label %bb.d

_ZN5osgeo4proj8QuadTree8QuadTreeIjE6insertERKjRKNS1_7RectObjE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cq = add nuw i64 %.088, 1                    ; 2 uses
  %i.cr = load ptr, ptr %i.as, align 8, !tbaa !95
  %i.cs = load ptr, ptr %i.ap, align 8, !tbaa !94 ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 12
  %i.cx = icmp ult i64 %i.cq, %i.cw
  br i1 %i.cx, label %bb.c, label %._crit_edge, !llvm.loop !384

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.c, ptr noundef %i.e)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i unwind label %bb.c, !inline_history !2

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #29, !inline_history !2
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31, !inline_history !124
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31, !inline_history !124
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
  %i.a = load ptr, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !151
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  tail call void @_ZN5osgeo4proj8QuadTree8QuadTreeIjE6searchERKNS3_4NodeEddRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(96) %1, double noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.g = load i8, ptr %i.f, align 8, !tbaa !79, !range !85, !noundef !86
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %5, true
  %i.j = and i1 %i.i, %i.h                        ; 2 uses
  %i.k = select i1 %i.j, i32 2, i32 0             ; 9 uses
  %i.l = select i1 %i.j, i32 3, i32 1             ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.n = load i32, ptr %i.m, align 4, !tbaa !87   ; 9 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !387    ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !387  ; 2 uses
  %.not346 = icmp eq ptr %i.o, %i.p
  br i1 %.not346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !89   ; 6 uses
  %i.s = insertelement <2 x double> poison, double %3, i64 0
  %i.t = insertelement <2 x double> poison, double %4, i64 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0327.0347 = phi ptr [ %i.o, %.lr.ph ], [ %i.ce, %bb.d ] ; 2 uses
  %i.u = load i32, ptr %.sroa.0327.0347, align 4, !tbaa !96
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.q, i64 %i.v ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ac = mul i32 %i.x, %i.n                      ; 2 uses
  %i.ad = add i32 %i.ac, %i.k
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !92
  %i.ah = add i32 %i.ac, %i.l
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !92 ; 2 uses
  %i.al = mul i32 %i.z, %i.n                      ; 2 uses
  %i.am = add i32 %i.al, %i.k
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !92
  %i.aq = add i32 %i.al, %i.l
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !92
  %i.au = mul i32 %i.ab, %i.n                     ; 2 uses
  %i.av = add i32 %i.au, %i.k
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !92 ; 2 uses
  %i.az = add i32 %i.au, %i.l
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !92 ; 3 uses
  %9 = fsub double %i.ay, %i.ap
  %10 = fsub double %i.at, %i.bc
  %i.bd = insertelement <2 x double> %i.s, double %i.ag, i64 1
  %i.be = insertelement <2 x double> poison, double %i.ay, i64 0
  %11 = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x double> %i.bd, %11            ; 3 uses
  %12 = insertelement <2 x double> %i.t, double %i.ak, i64 1
  %i.bg = insertelement <2 x double> poison, double %i.bc, i64 0
  %13 = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fsub <2 x double> %12, %13              ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %9, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x double> %i.bj, %i.bh
  %15 = insertelement <2 x double> poison, double %10, i64 0
  %i.bk = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bf, <2 x double> %14) ; 2 uses
  %i.bm = fsub double %i.bc, %i.ak
  %shift = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.bh
  %i.bn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bo = extractelement <2 x double> %i.bf, i64 0
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.bo, double %i.bn)
  %i.bq = insertelement <2 x double> %i.bl, double %i.bp, i64 1
  %i.br = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fdiv <2 x double> %i.bq, %i.br          ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 1 ; 4 uses
  %i.bu = extractelement <2 x double> %i.bs, i64 0
  store double %i.bu, ptr %6, align 8, !tbaa !92
  store double %i.bt, ptr %7, align 8, !tbaa !92
  %i.bv = load double, ptr %6, align 8, !tbaa !92 ; 3 uses
  %i.bw = fcmp ult double %i.bv, -1.000000e-10
  %i.bx = fcmp ugt double %i.bv, f0x3FF000000006DF38
  %or.cond263 = or i1 %i.bw, %i.bx
  %i.by = fcmp ult double %i.bt, -1.000000e-10
  %i.bz = fcmp ugt double %i.bt, f0x3FF000000006DF38
  %i.ca = or i1 %i.by, %i.bz
  %or.cond265 = select i1 %or.cond263, i1 true, i1 %i.ca
  br i1 %or.cond265, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cb = fsub double 1.000000e+00, %i.bv
  %i.cc = fsub double %i.cb, %i.bt                ; 2 uses
  store double %i.cc, ptr %8, align 8, !tbaa !92
  %i.cd = fcmp ult double %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.d, label %.thread333

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0327.0347, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.p
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !388 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread333, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !95 ; 2 uses
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !94  ; 4 uses
  %.not356 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not356, label %.thread333, label %.lr.ph352

.lr.ph352:                                        ; preds = %.preheader
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 12
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !89  ; 6 uses
  %i.cq = insertelement <2 x double> poison, double %3, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %4, i64 1 ; 7 uses
  br label %bb.e

._crit_edge353:                                   ; preds = %bb.aa
  %i.cs = tail call double @llvm.fabs.f64(double %.6245)
  %i.ct = fcmp oeq double %i.cs, +inf
  br i1 %i.ct, label %.thread333, label %bb.ab

bb.e:                                             ; preds = %.lr.ph352, %bb.aa
  %.0351 = phi i64 [ 0, %.lr.ph352 ], [ %i.iw, %bb.aa ] ; 5 uses
  %.0231350 = phi i64 [ 0, %.lr.ph352 ], [ %.6, %bb.aa ] ; 8 uses
  %.0232349 = phi double [ +inf, %.lr.ph352 ], [ %.6238, %bb.aa ] ; 10 uses
  %.0239348 = phi double [ +inf, %.lr.ph352 ], [ %.6245, %bb.aa ] ; 12 uses
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.0351 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !130
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !131
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !132
  %i.da = mul i32 %i.cv, %i.n                     ; 2 uses
  %i.db = add i32 %i.da, %i.k
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !92 ; 9 uses
  %i.df = add i32 %i.da, %i.l
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !92 ; 9 uses
  %i.dj = mul i32 %i.cx, %i.n                     ; 2 uses
  %i.dk = add i32 %i.dj, %i.k
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !92 ; 9 uses
  %i.do = add i32 %i.dj, %i.l
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !92 ; 9 uses
  %i.ds = mul i32 %i.cz, %i.n                     ; 2 uses
  %i.dt = add i32 %i.ds, %i.k
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !92 ; 8 uses
  %i.dx = add i32 %i.ds, %i.l
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dy
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !92 ; 8 uses
  %i.eb = fadd double %3, %.0239348
  %i.ec = fcmp olt double %i.dw, %i.dn
  %i.ed = select i1 %i.ec, double %i.dw, double %i.dn ; 2 uses
  %i.ee = fcmp olt double %i.ed, %i.de
  %.sroa.speculated325 = select i1 %i.ee, double %i.ed, double %i.de
  %i.ef = fcmp olt double %i.eb, %.sroa.speculated325
  br i1 %i.ef, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = fsub double %3, %.0239348
  %i.eh = fcmp olt double %i.dn, %i.dw
  %i.ei = select i1 %i.eh, double %i.dw, double %i.dn ; 2 uses
  %i.ej = fcmp olt double %i.de, %i.ei
  %.sroa.speculated322 = select i1 %i.ej, double %i.ei, double %i.de
  %i.ek = fcmp ogt double %i.eg, %.sroa.speculated322
  br i1 %i.ek, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.el = fadd double %4, %.0239348
  %i.em = fcmp olt double %i.ea, %i.dr
  %i.en = select i1 %i.em, double %i.ea, double %i.dr ; 2 uses
  %i.eo = fcmp olt double %i.en, %i.di
  %.sroa.speculated313 = select i1 %i.eo, double %i.en, double %i.di
  %i.ep = fcmp olt double %i.el, %.sroa.speculated313
  br i1 %i.ep, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eq = fsub double %4, %.0239348
  %i.er = fcmp olt double %i.dr, %i.ea
  %i.es = select i1 %i.er, double %i.ea, double %i.dr ; 2 uses
  %i.et = fcmp olt double %i.di, %i.es
  %.sroa.speculated = select i1 %i.et, double %i.es, double %i.di
  %i.eu = fcmp ogt double %i.eq, %.sroa.speculated
  br i1 %i.eu, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ev = fsub double %i.de, %i.dn                ; 2 uses
  %i.ew = fmul double %i.ev, %i.ev
  %i.ex = fsub double %i.di, %i.dr                ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = fadd double %i.ew, %i.ey                ; 2 uses
  %i.fa = fsub double %i.dn, %i.dw                ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  %i.fc = fsub double %i.dr, %i.ea                ; 2 uses
  %i.fd = fmul double %i.fc, %i.fc
  %i.fe = fadd double %i.fb, %i.fd                ; 2 uses
  %i.ff = fsub double %i.de, %i.dw                ; 2 uses
  %i.fg = fmul double %i.ff, %i.ff
  %i.fh = fsub double %i.di, %i.ea                ; 2 uses
  %i.fi = fmul double %i.fh, %i.fh
  %i.fj = fadd double %i.fg, %i.fi                ; 2 uses
  %i.fk = fcmp olt double %i.ez, 1.000000e-10
  %i.fl = fcmp olt double %i.fe, 1.000000e-10
  %or.cond = or i1 %i.fk, %i.fl
  %i.fm = fcmp olt double %i.fj, 1.000000e-10
  %or.cond5 = or i1 %i.fm, %or.cond
  br i1 %or.cond5, label %bb.aa, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.cg, label %bb.aa [
    i32 1, label %bb.k
    i32 2, label %bb.y
  ]

bb.k:                                             ; preds = %bb.j
  %i.fn = fsub double %3, %i.de                   ; 6 uses
  %i.fo = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.dr, i64 1 ; 4 uses
  %i.fq = insertelement <2 x double> poison, double %i.de, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.di, i64 1 ; 4 uses
  %i.fs = fsub <2 x double> %i.fp, %i.fr          ; 3 uses
  %i.ft = fsub double %4, %i.di                   ; 6 uses
  %i.fu = extractelement <2 x double> %i.fs, i64 1
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = extractelement <2 x double> %i.fs, i64 0
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fw, double %i.fv)
  %i.fy = fdiv double %i.fx, %i.ez                ; 3 uses
  %i.fz = fcmp ugt double %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ga = fmul double %i.fn, %i.fn
  %i.gb = fmul double %i.ft, %i.ft
  %i.gc = fadd double %i.ga, %i.gb
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit

bb.m:                                             ; preds = %bb.k
  %i.gd = fcmp ult double %i.fy, 1.000000e+00
  br i1 %i.gd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ge = fsub <2 x double> %i.cr, %i.fp          ; 2 uses
  %i.gf = fmul <2 x double> %i.ge, %i.ge
  %i.gg = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gf)
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit

bb.o:                                             ; preds = %bb.m
  %i.gh = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.fs, <2 x double> %i.fr)
  %i.gk = fsub <2 x double> %i.cr, %i.gj          ; 2 uses
  %i.gl = fmul <2 x double> %i.gk, %i.gk
  %i.gm = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gl)
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit

_ZN8TINShiftL22distance_point_segmentEddddddd.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.0.i = phi double [ %i.gc, %bb.l ], [ %i.gg, %bb.n ], [ %i.gm, %bb.o ] ; 3 uses
  %i.gn = fcmp olt double %.0.i, %.0232349        ; 3 uses
  %sqrt = tail call double @llvm.sqrt.f64(double %.0.i)
  %.1240 = select i1 %i.gn, double %sqrt, double %.0239348
  %.1233 = select i1 %i.gn, double %.0.i, double %.0232349 ; 2 uses
  %i.go = fsub double %3, %i.dn                   ; 3 uses
  %i.gp = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.ea, i64 1 ; 4 uses
  %i.gr = fsub <2 x double> %i.gq, %i.fp          ; 3 uses
  %i.gs = fsub double %4, %i.dr                   ; 3 uses
  %i.gt = extractelement <2 x double> %i.gr, i64 1
  %i.gu = fmul double %i.gs, %i.gt
  %i.gv = extractelement <2 x double> %i.gr, i64 0
  %i.gw = tail call double @llvm.fmuladd.f64(double %i.go, double %i.gv, double %i.gu)
  %i.gx = fdiv double %i.gw, %i.fe                ; 3 uses
  %i.gy = fcmp ugt double %i.gx, 0.000000e+00
  br i1 %i.gy, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN8TINShiftL22distance_point_segmentEddddddd.exit
  %i.gz = fmul double %i.go, %i.go
  %i.ha = fmul double %i.gs, %i.gs
  %i.hb = fadd double %i.gz, %i.ha
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit274

bb.q:                                             ; preds = %_ZN8TINShiftL22distance_point_segmentEddddddd.exit
  %i.hc = fcmp ult double %i.gx, 1.000000e+00
  br i1 %i.hc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hd = fsub <2 x double> %i.cr, %i.gq          ; 2 uses
  %i.he = fmul <2 x double> %i.hd, %i.hd
  %i.hf = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.he)
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit274

bb.s:                                             ; preds = %bb.q
  %i.hg = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %i.gr, <2 x double> %i.fp)
  %i.hj = fsub <2 x double> %i.cr, %i.hi          ; 2 uses
  %i.hk = fmul <2 x double> %i.hj, %i.hj
  %i.hl = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hk)
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit274

_ZN8TINShiftL22distance_point_segmentEddddddd.exit274: ; preds = %bb.p, %bb.r, %bb.s
  %.0.i273 = phi double [ %i.hb, %bb.p ], [ %i.hf, %bb.r ], [ %i.hl, %bb.s ] ; 3 uses
  %i.hm = fcmp olt double %.0.i273, %.1233        ; 3 uses
  %sqrt342 = tail call double @llvm.sqrt.f64(double %.0.i273)
  %.2241 = select i1 %i.hm, double %sqrt342, double %.1240
  %.2234 = select i1 %i.hm, double %.0.i273, double %.1233 ; 2 uses
  %i.hn = or i1 %i.hm, %i.gn
  %.2 = select i1 %i.hn, i64 %.0351, i64 %.0231350
  %i.ho = fsub <2 x double> %i.gq, %i.fr          ; 3 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 1
  %i.hq = fmul double %i.ft, %i.hp
  %i.hr = extractelement <2 x double> %i.ho, i64 0
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.hr, double %i.hq)
  %i.ht = fdiv double %i.hs, %i.fj                ; 3 uses
  %i.hu = fcmp ugt double %i.ht, 0.000000e+00
  br i1 %i.hu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN8TINShiftL22distance_point_segmentEddddddd.exit274
  %i.hv = fmul double %i.fn, %i.fn
  %i.hw = fmul double %i.ft, %i.ft
  %i.hx = fadd double %i.hv, %i.hw
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276

bb.u:                                             ; preds = %_ZN8TINShiftL22distance_point_segmentEddddddd.exit274
  %i.hy = fcmp ult double %i.ht, 1.000000e+00
  br i1 %i.hy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hz = fsub <2 x double> %i.cr, %i.gq          ; 2 uses
  %i.ia = fmul <2 x double> %i.hz, %i.hz
  %i.ib = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ia)
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276

bb.w:                                             ; preds = %bb.u
  %i.ic = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.ho, <2 x double> %i.fr)
  %i.if = fsub <2 x double> %i.cr, %i.ie          ; 2 uses
  %i.ig = fmul <2 x double> %i.if, %i.if
  %i.ih = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ig)
  br label %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276

_ZN8TINShiftL22distance_point_segmentEddddddd.exit276: ; preds = %bb.t, %bb.v, %bb.w
  %.0.i275 = phi double [ %i.hx, %bb.t ], [ %i.ib, %bb.v ], [ %i.ih, %bb.w ] ; 3 uses
  %i.ii = fcmp olt double %.0.i275, %.2234
  br i1 %i.ii, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276
  %sqrt343 = tail call double @llvm.sqrt.f64(double %.0.i275)
  br label %bb.aa

bb.y:                                             ; preds = %bb.j
  %i.ij = insertelement <2 x double> poison, double %i.de, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.di, i64 1
  %i.il = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.dr, i64 1
  %i.in = fadd <2 x double> %i.ik, %i.im
  %i.io = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.ea, i64 1
  %i.iq = fadd <2 x double> %i.in, %i.ip
  %i.ir = fdiv <2 x double> %i.iq, splat (double 3.000000e+00)
  %i.is = fsub <2 x double> %i.cr, %i.ir          ; 2 uses
  %i.it = fmul <2 x double> %i.is, %i.is
  %i.iu = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.it) ; 3 uses
  %i.iv = fcmp olt double %i.iu, %.0232349
  br i1 %i.iv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %sqrt344 = tail call double @llvm.sqrt.f64(double %i.iu)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.j, %bb.i, %bb.y, %bb.z, %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276, %bb.x, %bb.e, %bb.f, %bb.g, %bb.h
  %.6245 = phi double [ %.0239348, %bb.e ], [ %.0239348, %bb.h ], [ %.0239348, %bb.g ], [ %.0239348, %bb.f ], [ %.0239348, %bb.i ], [ %sqrt343, %bb.x ], [ %.2241, %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276 ], [ %.0239348, %bb.j ], [ %sqrt344, %bb.z ], [ %.0239348, %bb.y ] ; 2 uses
  %.6238 = phi double [ %.0232349, %bb.e ], [ %.0232349, %bb.h ], [ %.0232349, %bb.g ], [ %.0232349, %bb.f ], [ %.0232349, %bb.i ], [ %.0.i275, %bb.x ], [ %.2234, %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276 ], [ %.0232349, %bb.j ], [ %i.iu, %bb.z ], [ %.0232349, %bb.y ]
  %.6 = phi i64 [ %.0231350, %bb.e ], [ %.0231350, %bb.h ], [ %.0231350, %bb.g ], [ %.0231350, %bb.f ], [ %.0231350, %bb.i ], [ %.0351, %bb.x ], [ %.2, %_ZN8TINShiftL22distance_point_segmentEddddddd.exit276 ], [ %.0231350, %bb.j ], [ %.0351, %bb.z ], [ %.0231350, %bb.y ] ; 2 uses
  %i.iw = add nuw i64 %.0351, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.iw, %i.co
  br i1 %exitcond.not, label %._crit_edge353, label %bb.e, !llvm.loop !386

bb.ab:                                            ; preds = %._crit_edge353
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.ck, i64 %.6 ; 4 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !130
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !131
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !132
  %i.jd = mul i32 %i.iy, %i.n                     ; 2 uses
  %i.je = add i32 %i.jd, %i.k
  %i.jf = zext i32 %i.je to i64
  %i.jg = load ptr, ptr %i.e, align 8, !tbaa !89  ; 6 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jf
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !92
  %i.jj = add i32 %i.jd, %i.l
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !92 ; 2 uses
  %i.jn = mul i32 %i.ja, %i.n                     ; 2 uses
  %i.jo = add i32 %i.jn, %i.k
  %i.jp = zext i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !92
  %i.js = add i32 %i.jn, %i.l
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !92
  %i.jw = mul i32 %i.jc, %i.n                     ; 2 uses
  %i.jx = add i32 %i.jw, %i.k
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !92 ; 3 uses
  %i.kb = add i32 %i.jw, %i.l
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !92 ; 4 uses
  %i.kf = fsub double %i.jv, %i.ke                ; 2 uses
  %i.kg = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kh = insertelement <2 x double> %i.kg, double %i.ji, i64 1
  %i.ki = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kj = insertelement <2 x double> %i.ki, double %i.ka, i64 1
  %i.kk = fsub <2 x double> %i.kh, %i.kj          ; 3 uses
  %i.kl = fsub double %i.jm, %i.ke
  %i.km = extractelement <2 x double> %i.kk, i64 0
  %i.kn = fmul double %i.km, %i.kl
  %i.ko = extractelement <2 x double> %i.kk, i64 1
  %i.kp = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.ko, double %i.kn) ; 2 uses
  %i.kq = tail call double @llvm.fabs.f64(double %i.kp)
  %i.kr = fcmp olt double %i.kq, 1.000000e-10
  br i1 %i.kr, label %.thread333, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %16 = fsub double %3, %i.ka
  %17 = fsub double %4, %i.ke
  %i.ks = fsub double %i.ke, %i.jm
  %18 = insertelement <2 x double> poison, double %17, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = fmul <2 x double> %i.kk, %19
  %i.ku = insertelement <2 x double> poison, double %i.kf, i64 0
  %20 = insertelement <2 x double> %i.ku, double %i.ks, i64 1
  %i.kv = insertelement <2 x double> poison, double %16, i64 0
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %i.kw, <2 x double> %i.kt)
  %i.ky = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = fdiv <2 x double> %i.kx, %i.kz          ; 2 uses
  %i.lb = extractelement <2 x double> %i.la, i64 0
  store double %i.lb, ptr %6, align 8, !tbaa !92
  %i.lc = extractelement <2 x double> %i.la, i64 1 ; 2 uses
  store double %i.lc, ptr %7, align 8, !tbaa !92
  %i.ld = load double, ptr %6, align 8, !tbaa !92
  %i.le = fsub double 1.000000e+00, %i.ld
  %i.lf = fsub double %i.le, %i.lc
  store double %i.lf, ptr %8, align 8, !tbaa !92
  br label %.thread333

.thread333:                                       ; preds = %bb.c, %.preheader, %._crit_edge353, %bb.ab, %bb.ac, %._crit_edge
  %.5253 = phi ptr [ null, %bb.ab ], [ null, %._crit_edge ], [ null, %._crit_edge353 ], [ %i.ix, %bb.ac ], [ null, %.preheader ], [ %i.w, %bb.c ]
  ret ptr %.5253
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8TINShift9Evaluator7inverseEdddRdS1_S1_(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1, double noundef %2, double noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.20", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.20", align 8 ; 6 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load i8, ptr %i.e, align 8, !tbaa !79, !range !85, !noundef !86
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 449
  %i.i = load i8, ptr %i.h, align 1, !tbaa !50, !range !85, !noundef !86
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %.not69 = icmp eq ptr %i.l, null
  br i1 %.not69, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call fastcc void @_ZN8TINShiftL13BuildQuadTreeERKNS_12TINShiftFileEb(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(504) %i.d, i1 noundef zeroext true)
  %i.m = load ptr, ptr %7, align 8, !tbaa !118
  store ptr null, ptr %7, align 8, !tbaa !118
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !118  ; 7 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !118
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !121
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.p, ptr noundef %i.r)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i unwind label %bb.f, !inline_history !2

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29, !inline_history !2
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !121  ; 3 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #31, !inline_history !124
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt15__uniq_ptr_implIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EEaSEOS7_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !128
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #31, !inline_history !124
  br label %_ZNSt15__uniq_ptr_implIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EEaSEOS7_.exit

_ZNSt15__uniq_ptr_implIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 96) #31
  %.pr = load ptr, ptr %7, align 8, !tbaa !118    ; 7 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt15__uniq_ptr_implIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EEaSEOS7_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.pr, i64 56 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.ai, ptr noundef %i.ak)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i unwind label %bb.j, !inline_history !2

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #29, !inline_history !2
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.i
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.pr, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !123
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #31, !inline_history !124
  br label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i

_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.pr, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #31, !inline_history !124
  br label %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 96) #31
  br label %_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.d, %_ZNSt15__uniq_ptr_implIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EEaSEOS7_.exit, %_ZNKSt14default_deleteIN5osgeo4proj8QuadTree8QuadTreeIjEEEclEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.w

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !118
  %.not70 = icmp eq ptr %i.bb, null
  br i1 %.not70, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call fastcc void @_ZN8TINShiftL13BuildQuadTreeERKNS_12TINShiftFileEb(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(504) %i.d, i1 noundef zeroext false)
  %i.bc = load ptr, ptr %8, align 8, !tbaa !118
  store ptr null, ptr %8, align 8, !tbaa !118
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !118 ; 7 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !118
  %.not.i.i59 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i59, label %_ZNSt10unique_ptrIN5osgeo4proj8QuadTree8QuadTreeIjEESt14default_deleteIS4_EED2Ev.exit57, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !122
  invoke void @_ZSt8_DestroyIPN5osgeo4proj8QuadTree8QuadTreeIjE4NodeEEvT_S7_(ptr noundef %i.bf, ptr noundef %i.bh)
          to label %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i60 unwind label %bb.p, !inline_history !2

bb.p:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #29, !inline_history !2
  unreachable

_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i60: ; preds = %bb.o
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i.i.i.i.i61 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i61, label %_ZNSt12_Vector_baseIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i62, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5osgeo4proj8QuadTree8QuadTreeIjE4NodeESaIS5_EED2Ev.exit.i.i.i.i.i60
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !123
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
end_hunk_0
