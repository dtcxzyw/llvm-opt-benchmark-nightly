Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_morton?download=true
inline.NumInlined: 2981
inline.NumDeleted: 348
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZN6embreeL11radixsort32INS_4sse216BVHBuilderMorton9BuildPrimEEEvPT_mj:.preheader88
._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06292.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06292.epil.init
  %i.f = load i32, ptr %i.e, align 8
  %i.g = lshr i32 %i.f, %2
  %i.h = and i32 %i.g, 255
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.b, align 64
  br label %bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06292 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06292
  %i.n = load i32, ptr %i.m, align 8
  %i.o = lshr i32 %i.n, %2
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06292
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.w, %2
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = add nuw nsw i64 %.06292, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !257

bb.a:                                             ; preds = %bb.a, %._crit_edge
  %i.ae = phi i32 [ 0, %._crit_edge ], [ %i.bg, %bb.a ]
  %.06193 = phi i64 [ 1, %._crit_edge ], [ %i.bi, %bb.a ] ; 7 uses
  %i.af = getelementptr [4 x i8], ptr %i.a, i64 %.06193
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.06193
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = add nuw nsw i64 %.06193, 1              ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.a, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, %i.ai                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add nuw nsw i64 %.06193, 2              ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add i32 %i.at, %i.ao                    ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aq
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %.06193, 3              ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.a, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = add i32 %i.az, %i.au                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = add nuw nsw i64 %.06193, 4              ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.a, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, %i.ba                    ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bc
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = add nuw nsw i64 %.06193, 5              ; 2 uses
  %exitcond117.not.4 = icmp eq i64 %i.bi, 256
  br i1 %exitcond117.not.4, label %.preheader87.preheader, label %bb.a, !llvm.loop !258

.preheader87.preheader:                           ; preds = %bb.a
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1020) %i.c, ptr noundef nonnull align 4 dereferenceable(1020) %scevgep, i64 1020, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1020
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1020
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 1020
  store i32 %i.bn, ptr %i.bo, align 4
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader87.preheader, %._crit_edge101
  %.059102 = phi i64 [ 0, %.preheader87.preheader ], [ %i.ct, %._crit_edge101 ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.059102 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.059102
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph100, label %._crit_edge101

bb.b:                                             ; preds = %._crit_edge101
  %i.bu = icmp eq i32 %2, 0
  br i1 %i.bu, label %.loopexit85, label %.preheader84

.preheader84:                                     ; preds = %bb.b
  %i.bv = add i32 %2, -8
  br label %bb.c

.lr.ph100:                                        ; preds = %.preheader86, %._crit_edge99
  %i.bw = phi i32 [ %i.cq, %._crit_edge99 ], [ %i.bs, %.preheader86 ] ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %.sroa.0.095 = trunc i64 %i.bz to i32
  %i.ca = lshr i32 %.sroa.0.095, %2
  %i.cb = and i32 %i.ca, 255
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = icmp eq i64 %.059102, %i.cc
  br i1 %i.cd, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph100, %.lr.ph98
  %i.ce = phi i64 [ %i.cn, %.lr.ph98 ], [ %i.cc, %.lr.ph100 ]
  %.sroa.7.0.in.in96 = phi i64 [ %i.ck, %.lr.ph98 ], [ %i.bz, %.lr.ph100 ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ci ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  store i64 %.sroa.7.0.in.in96, ptr %i.cj, align 8
  %.sroa.0.0 = trunc i64 %i.ck to i32
  %i.cl = lshr i32 %.sroa.0.0, %2
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = icmp eq i64 %.059102, %i.cn
  br i1 %i.co, label %._crit_edge99.loopexit, label %.lr.ph98

._crit_edge99.loopexit:                           ; preds = %.lr.ph98
  %.pre = load i32, ptr %i.bp, align 4            ; 2 uses
  %.pre121 = zext i32 %.pre to i64
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %.lr.ph100
  %.pre-phi = phi i64 [ %.pre121, %._crit_edge99.loopexit ], [ %i.bx, %.lr.ph100 ]
  %i.cp = phi i32 [ %.pre, %._crit_edge99.loopexit ], [ %i.bw, %.lr.ph100 ]
  %.sroa.7.0.in.in.lcssa = phi i64 [ %i.ck, %._crit_edge99.loopexit ], [ %i.bz, %.lr.ph100 ]
  %i.cq = add i32 %i.cp, 1                        ; 3 uses
  store i32 %i.cq, ptr %i.bp, align 4
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  store i64 %.sroa.7.0.in.in.lcssa, ptr %i.cr, align 8
  %i.cs = icmp ult i32 %i.cq, %i.br
  br i1 %i.cs, label %.lr.ph100, label %._crit_edge101, !llvm.loop !259

._crit_edge101:                                   ; preds = %._crit_edge99, %.preheader86
  %i.ct = add nuw nsw i64 %.059102, 1             ; 2 uses
  %exitcond118.not = icmp eq i64 %i.ct, 256
  br i1 %exitcond118.not, label %bb.b, label %.preheader86, !llvm.loop !260

bb.c:                                             ; preds = %.preheader84, %.loopexit
  %.056114 = phi i64 [ 0, %.preheader84 ], [ %i.dk, %.loopexit ] ; 2 uses
  %.057113 = phi i64 [ 0, %.preheader84 ], [ %.1, %.loopexit ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.056114
  %i.cv = load i32, ptr %i.cu, align 4            ; 4 uses
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = add i64 %.057113, %i.cw                 ; 3 uses
  %i.cy = icmp ult i32 %i.cv, 16
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.057113 ; 4 uses
  br i1 %i.cy, label %bb.d, label %bb.f, !prof !31

bb.d:                                             ; preds = %.preheader
  %.not116 = icmp eq i32 %i.cv, 1
  br i1 %.not116, label %.loopexit, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %bb.d, %.critedge.i
  %.015.i110 = phi i64 [ %i.dj, %.critedge.i ], [ 1, %bb.d ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.015.i110
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !266 ; 2 uses
  %.sroa.077.0.extract.trunc = trunc i64 %i.db to i32
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %bb.e
  %.0.i104 = phi i64 [ %.015.i110, %.lr.ph106.preheader ], [ %i.dh, %bb.e ] ; 3 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %.0.i104 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !266
  %i.df = icmp ugt i32 %i.de, %.sroa.077.0.extract.trunc
  br i1 %i.df, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph106
  %i.dg = load i64, ptr %i.dd, align 8, !alias.scope !266
  store i64 %i.dg, ptr %i.dc, align 8, !alias.scope !266
  %i.dh = add nsw i64 %.0.i104, -1                ; 2 uses
  %.not.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph106, !llvm.loop !263

.critedge.i:                                      ; preds = %.lr.ph106, %bb.e
  %.0.i.lcssa.ph = phi i64 [ %.0.i104, %.lr.ph106 ], [ 0, %bb.e ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0.i.lcssa.ph
  store i64 %i.db, ptr %i.di, align 8, !alias.scope !266
  %i.dj = add nuw nsw i64 %.015.i110, 1           ; 2 uses
  %exitcond119.not = icmp eq i64 %i.dj, %i.cw
  br i1 %exitcond119.not, label %.loopexit, label %.lr.ph106.preheader, !llvm.loop !264

bb.f:                                             ; preds = %.preheader
  tail call fastcc void @_ZN6embreeL11radixsort32INS_4sse216BVHBuilderMorton9BuildPrimEEEvPT_mj(ptr noundef %i.cz, i64 noundef %i.cw, i32 noundef %i.bv)
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.i, %bb.f, %bb.d, %bb.c
  %.1 = phi i64 [ %.057113, %bb.c ], [ %i.cx, %bb.f ], [ %i.cx, %bb.d ], [ %i.cx, %.critedge.i ]
  %i.dk = add nuw nsw i64 %.056114, 1             ; 2 uses
  %exitcond120.not = icmp eq i64 %i.dk, 256
  br i1 %exitcond120.not, label %.loopexit85, label %bb.c, !llvm.loop !265

.loopexit85:                                      ; preds = %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN6embree4sse216BVHBuilderMorton9BuildPrimElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph34

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEET_S8_S8_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph34, !llvm.loop !267

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.018.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_RT0_(ptr noundef %0, ptr noundef %.018.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i ], [ %.018.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = load i64, ptr %0, align 8
  store i64 %i.i, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.r, align 8
  %i.v = load i32, ptr %i.t, align 8
  %i.w = icmp ult i32 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8
  store i64 %i.aa, ptr %i.z, align 8
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !13

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.k, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.l, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.al = load i64, ptr %i.aj, align 8
  store i64 %i.al, ptr %i.ak, align 8
  br label %.lr.ph.i.i.preheader.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.d, %.thread.i.i.i
  %.1.i13.i.i.i = phi i64 [ %i.ai, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.d ]
  %.sroa.0.0.extract.trunc.i.i14.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.preheader.i.i.i
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.1.i13.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i78.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp ult i32 %i.an, %.sroa.0.0.extract.trunc.i.i14.i.i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  %i.aq = load i64, ptr %i.am, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZSt10__pop_heapIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %i.ar, align 8
  %i.as = icmp sgt i64 %i.k, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit, !llvm.loop !268

.lr.ph34:                                         ; preds = %.lr.ph, %bb.b
  %.0121733 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.01832 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bw, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121733, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 5 uses
  %i.ax = getelementptr inbounds i8, ptr %.01832, i64 -8 ; 5 uses
  %i.ay = load i32, ptr %i.e, align 8             ; 3 uses
  %i.az = load i32, ptr %i.aw, align 8            ; 3 uses
  %i.ba = icmp ult i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 8            ; 4 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph34
  %i.bc = icmp ult i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.bd = load i64, ptr %i.aw, align 8
  store i64 %i.bd, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.aw, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp ult i32 %i.ay, %i.bb
  %.sroa.0.0.copyload.i.i22.i.i = load i64, ptr %0, align 8 ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = load i64, ptr %i.ax, align 8
  store i64 %i.bf, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.ax, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %i.e, align 8
  store i64 %i.bg, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i.i22.i.i, ptr %i.e, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph34
  %i.bh = icmp ult i32 %i.ay, %i.bb
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = load <2 x i64>, ptr %0, align 8
  %i.bj = shufflevector <2 x i64> %i.bi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.bj, ptr %0, align 8
  br label %_ZSt22__move_median_to_firstIPN6embree4sse216BVHBuilderMorton9BuildPrimEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
end_hunk_0
