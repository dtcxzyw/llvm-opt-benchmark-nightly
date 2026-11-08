Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/blockmodifier?download=true
inline.NumInlined: 2159
inline.NumDeleted: 1045
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10ABMHandler12countObjectsEP8MapBlockP9ServerMapRj:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3 = phi i32 [ %.133, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i48, ptr %i.a, align 2, !tbaa !153 ; 3 uses
  %.sroa.027.0.extract.trunc.1 = trunc i48 %.sroa.0.0.copyload.i.1 to i16
  %.sroa.428.0.extract.shift.1 = lshr i48 %.sroa.0.0.copyload.i.1, 16
  %.sroa.428.0.extract.trunc.1 = trunc i48 %.sroa.428.0.extract.shift.1 to i16
  %.sroa.5.0.extract.shift.1 = and i48 %.sroa.0.0.copyload.i.1, -4294967296
  %i.ad = add i16 %.02334, %.sroa.027.0.extract.trunc.1
  %i.ae = add i16 %.02432, %.sroa.428.0.extract.trunc.1
  %.sroa.2.0.insert.ext.i.1 = zext i16 %i.ae to i48
  %.sroa.2.0.insert.shift.i.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.1, 16
  %.sroa.2.0.insert.insert.i.1 = or disjoint i48 %.sroa.5.0.extract.shift.1, %.sroa.2.0.insert.shift.i.1
  %.sroa.0.0.insert.ext.i.1 = zext i16 %i.ad to i48
  %.sroa.0.0.insert.insert.i.1 = or disjoint i48 %.sroa.2.0.insert.insert.i.1, %.sroa.0.0.insert.ext.i.1
  %i.af = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i.1) ; 4 uses
  %.not.1 = icmp eq ptr %i.af, null
  br i1 %.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !332
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !333
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48
  %i.aq = add i64 %i.ap, %i.ai
  %i.ar = load i32, ptr %2, align 4, !tbaa !171
  %i.as = trunc i64 %i.aq to i32
  %i.at = add i32 %i.ar, %i.as
  store i32 %i.at, ptr %2, align 4, !tbaa !171
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = add i32 %.3, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.1 = phi i32 [ %.3, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %.sroa.0.0.copyload.i.2 = load i48, ptr %i.a, align 2, !tbaa !153 ; 3 uses
  %.sroa.027.0.extract.trunc.2 = trunc i48 %.sroa.0.0.copyload.i.2 to i16
  %.sroa.428.0.extract.shift.2 = lshr i48 %.sroa.0.0.copyload.i.2, 16
  %.sroa.428.0.extract.trunc.2 = trunc i48 %.sroa.428.0.extract.shift.2 to i16
  %.sroa.5.0.extract.shift.2 = lshr i48 %.sroa.0.0.copyload.i.2, 32
  %.sroa.5.0.extract.trunc.2 = trunc nuw i48 %.sroa.5.0.extract.shift.2 to i16
  %i.av = add i16 %.02334, %.sroa.027.0.extract.trunc.2
  %i.aw = add i16 %.02432, %.sroa.428.0.extract.trunc.2
  %i.ax = add i16 %.sroa.5.0.extract.trunc.2, 1
  %.sroa.3.0.insert.ext.i.2 = zext i16 %i.ax to i48
  %.sroa.3.0.insert.shift.i.2 = shl nuw i48 %.sroa.3.0.insert.ext.i.2, 32
  %.sroa.2.0.insert.ext.i.2 = zext i16 %i.aw to i48
  %.sroa.2.0.insert.shift.i.2 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.2, 16
  %.sroa.2.0.insert.insert.i.2 = or disjoint i48 %.sroa.3.0.insert.shift.i.2, %.sroa.2.0.insert.shift.i.2
  %.sroa.0.0.insert.ext.i.2 = zext i16 %i.av to i48
  %.sroa.0.0.insert.insert.i.2 = or disjoint i48 %.sroa.2.0.insert.insert.i.2, %.sroa.0.0.insert.ext.i.2
  %i.ay = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i.2) ; 4 uses
  %.not.2 = icmp eq ptr %i.ay, null
  br i1 %.not.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !172
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !332
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !333
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 48
  %i.bj = add i64 %i.bi, %i.bb
  %i.bk = load i32, ptr %2, align 4, !tbaa !171
  %i.bl = trunc i64 %i.bj to i32
  %i.bm = add i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %2, align 4, !tbaa !171
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = add i32 %.3.1, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3.2 = phi i32 [ %.3.1, %bb.j ], [ %i.bn, %bb.k ] ; 4 uses
  %i.bo = add nsw i16 %.02432, 1                  ; 2 uses
  %exitcond.not = icmp eq i16 %i.bo, 2
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !331
}

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ABMHandler5applyEP8MapBlockRiS2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit372, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.thread322, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !171
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %4, align 4, !tbaa !171
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  %.sroa.0315.0387 = phi ptr [ %i.h, %bb.c ], [ %i.w, %bb.f ] ; 2 uses
  %i.r = load i16, ptr %.sroa.0315.0387, align 2, !tbaa !153
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %.thread322

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0315.0387, i64 2 ; 2 uses
  %.not364 = icmp eq ptr %i.w, %i.j
  br i1 %.not364, label %.loopexit372, label %bb.d

.thread322:                                       ; preds = %bb.e, %bb.b
  %i.x = load i32, ptr %2, align 4, !tbaa !171
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %2, align 4, !tbaa !171
  %i.z = load ptr, ptr %0, align 8, !tbaa !40
  %i.aa = tail call noundef nonnull align 8 dereferenceable(608) ptr @_ZN17ServerEnvironment12getServerMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.z) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ab = call noundef i32 @_ZN10ABMHandler12countObjectsEP8MapBlockP9ServerMapRj(ptr noundef %1, ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !341
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !152
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread322
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !342, !range !199, !noundef !200
  %i.aj = xor i8 %i.ai, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread322
  %i.ak = phi i8 [ 0, %.thread322 ], [ %i.aj, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.preheader370

.preheader370:                                    ; preds = %bb.h, %bb.bd
  %indvars.iv506 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next507, %bb.bd ] ; 5 uses
  %.0113466 = phi i32 [ %i.ab, %bb.h ], [ %.8.ph, %bb.bd ]
  %.0121465 = phi i8 [ %i.ak, %bb.h ], [ %.3124, %bb.bd ]
  %i.aq = shl nuw nsw i64 %indvars.iv506, 8
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 3 uses
  %i.ar = trunc i64 %indvars.iv506 to i16
  %i.as = add i16 %i.ar, -1
  %i.at = trunc nuw nsw i64 %indvars.iv506 to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader370, %bb.bc
  %indvars.iv503 = phi i64 [ 0, %.preheader370 ], [ %indvars.iv.next504, %bb.bc ] ; 5 uses
  %.1114463 = phi i32 [ %.0113466, %.preheader370 ], [ %.8.ph, %bb.bc ]
  %.1122462 = phi i8 [ %.0121465, %.preheader370 ], [ %.3124, %bb.bc ]
  %sext.i = shl nuw nsw i64 %indvars.iv503, 4
  %i.au = add nuw nsw i64 %sext.i, %i.aq
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 3 uses
  %i.av = trunc i64 %indvars.iv503 to i16
  %i.aw = add i16 %i.av, -1
  %i.ax = trunc nuw nsw i64 %indvars.iv503 to i16
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %.preheader, %.loopexit
  %indvars.iv.a = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.2115460 = phi i32 [ %.1114463, %.preheader ], [ %.8.ph, %.loopexit ] ; 4 uses
  %.2123459 = phi i8 [ %.1122462, %.preheader ], [ %.3124, %.loopexit ]
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.az = load i8, ptr %i.am, align 4, !tbaa !202, !range !199, !noundef !200
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = add nuw nsw i64 %i.au, %indvars.iv.a    ; 2 uses
  %i.bc = select i1 %i.ba, i64 0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bd, align 4 ; 4 uses
  %.sroa.0276.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i.i to i16 ; 10 uses
  %.sroa.8282.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.8282.0.extract.trunc = trunc nuw i32 %.sroa.8282.0.extract.shift to i16
  %i.be = trunc nuw i8 %.2123459 to i1
  br i1 %i.be, label %bb.i, label %_ZNSt6vectorItSaItEED2Ev.exit

bb.i:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !152 ; 9 uses
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !152 ; 6 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 8 uses
  %i.bk = ashr i64 %i.bj, 3                       ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.bm = and i64 %i.bj, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.bf, i64 %i.bm ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i ], [ %i.bz, %bb.n ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %i.by, %bb.n ] ; 9 uses
  %i.bn = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !153
  %i.bo = icmp eq i16 %i.bn, %.sroa.0276.0.extract.trunc
  br i1 %i.bo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = icmp eq i16 %i.bq, %.sroa.0276.0.extract.trunc
  br i1 %i.br, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !153
  %i.bu = icmp eq i16 %i.bt, %.sroa.0276.0.extract.trunc
  br i1 %i.bu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit531, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !153
  %i.bx = icmp eq i16 %i.bw, %.sroa.0276.0.extract.trunc
  br i1 %i.bx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit533, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.bz = add nsw i64 %.052.i.i.i, -1
  %i.ca = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ca, label %bb.j, label %._crit_edge.loopexit.i.i.i, !llvm.loop !334

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.n
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bh, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bj, %bb.i ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bf, %bb.i ] ; 5 uses
  %i.cb = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.cb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !153
  %i.cd = icmp eq i16 %i.cc, %.sroa.0276.0.extract.trunc
  br i1 %i.cd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.p
  %.sroa.032.1.i.i.i = phi ptr [ %i.ce, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cf = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !153
  %i.cg = icmp eq i16 %i.cf, %.sroa.0276.0.extract.trunc
  br i1 %i.cg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.q
  %.sroa.032.2.i.i.i = phi ptr [ %i.ch, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ci = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !153
  %i.cj = icmp eq i16 %i.ci, %.sroa.0276.0.extract.trunc
  %spec.select.i.i.i = select i1 %i.cj, ptr %.sroa.032.2.i.i.i, ptr %i.bg
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit531: ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit533: ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit531, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit533, %bb.o, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.o ], [ %i.cm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit533 ], [ %i.cl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit531 ], [ %i.ck, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.j ]
  %.not365 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bg
  br i1 %.not365, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %_ZNSt6vectorItSaItEED2Ev.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %i.cn = ashr exact i64 %i.bj, 1                 ; 3 uses
  %i.co = icmp ugt i64 %i.cn, 63
  br i1 %i.co, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  store i8 1, ptr %i.ao, align 1, !tbaa !342
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !157
  %.not.i.i.i = icmp eq ptr %i.bf, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cr) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.bg, %i.cs
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 %.sroa.0276.0.extract.trunc, ptr %i.bg, align 2, !tbaa !153
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store ptr %i.ct, ptr %i.i, align 8, !tbaa !155
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.cu = icmp eq i64 %i.bj, 9223372036854775806
  br i1 %i.cu, label %bb.w, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.cv = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.cn ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #27 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.bj ; 2 uses
  store i16 %.sroa.0276.0.extract.trunc, ptr %i.cy, align 2, !tbaa !153
  %i.cz = icmp sgt i64 %i.bj, 0
  br i1 %i.cz, label %bb.x, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cx, ptr align 2 %i.bf, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %.not.i17.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.db = load ptr, ptr %i.an, align 8, !tbaa !157
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.dd) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.cx, ptr %i.g, align 8, !tbaa !156
  store ptr %i.da, ptr %i.i, align 8, !tbaa !155
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.de, ptr %i.an, align 8, !tbaa !157
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.u, %bb.s, %bb.r, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.3124 = phi i8 [ 1, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ 0, %bb.s ], [ 1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit ], [ 0, %bb.r ], [ 1, %bb.u ], [ 0, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ] ; 3 uses
  %.sroa.0276.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.df = zext nneg i32 %.sroa.0276.0.extract.trunc.mask to i64 ; 2 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !159 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3
  %.not135 = icmp ugt i64 %i.dl, %i.df
  br i1 %.not135, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !161 ; 3 uses
  %.not136 = icmp eq ptr %i.dn, null
  br i1 %.not136, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i = load i48, ptr %i.ap, align 8, !tbaa !153 ; 3 uses
  %.sroa.0258.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.4259.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.4259.0.extract.trunc = trunc i48 %.sroa.4259.0.extract.shift to i16
  %.sroa.5260.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.5260.0.extract.trunc = trunc nuw i48 %.sroa.5260.0.extract.shift to i16
  %i.do = trunc nuw nsw i64 %indvars.iv.a to i16
  %i.dp = add i16 %i.do, %.sroa.0258.0.extract.trunc
  %i.dq = add i16 %i.ax, %.sroa.4259.0.extract.trunc ; 3 uses
  %i.dr = add i16 %i.at, %.sroa.5260.0.extract.trunc
  %.sroa.3.0.insert.ext.i = zext i16 %i.dr to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.dq to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.dp to i48
  %i.ds = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.ds, %.sroa.2.0.insert.shift.i ; 2 uses
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !343 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !343 ; 2 uses
  %.not366439 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not366439, label %.loopexit, label %.lr.ph454

.lr.ph454:                                        ; preds = %bb.aa
  %5 = add nsw i64 %indvars.iv.a, -1              ; 2 uses
  %i.dw = trunc i64 %indvars.iv.a to i32
  %i.dx = add i32 %i.dw, 1                        ; 2 uses
  %i.dy = trunc nsw i64 %5 to i32
  %.not140425 = icmp slt i32 %i.dx, %i.dy
  %.sroa.0276.0.insert.ext279 = and i32 %.sroa.0.0.copyload.i.i, 65535
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph454, %select.unfold
  %.3116449 = phi i32 [ %.2115460, %.lr.ph454 ], [ %.6119.ph, %select.unfold ] ; 7 uses
  %.sroa.8282.sroa.0.0445 = phi i16 [ %.sroa.8282.0.extract.trunc, %.lr.ph454 ], [ %.sroa.8282.sroa.0.1.ph, %select.unfold ] ; 6 uses
  %.sroa.0255.0440 = phi ptr [ %i.dt, %.lr.ph454 ], [ %i.jm, %select.unfold ] ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 60
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !149
  %i.eb = icmp sgt i16 %i.ea, %i.dq
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 62
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = icmp slt i16 %i.ed, %i.dq
  %or.cond = select i1 %i.eb, i1 true, i1 %i.ee
  br i1 %or.cond, label %select.unfold, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ef = tail call noundef i32 @_Z6myrandv()
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !148
  %i.ei = urem i32 %i.ef, %i.eh
  %.not137 = icmp eq i32 %i.ei, 0
  br i1 %.not137, label %bb.ad, label %select.unfold

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !152
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !152
  %i.en = icmp eq ptr %i.ek, %i.em                ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 32 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !152
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 40 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !152
  %i.es = icmp eq ptr %i.ep, %i.er                ; 3 uses
  %or.cond.not = and i1 %i.en, %i.es
  br i1 %or.cond.not, label %.thread338, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not140425, label %._crit_edge431, label %.lr.ph422

.lr.ph422:                                        ; preds = %bb.ae, %._crit_edge423.split
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %._crit_edge423.split ], [ %5, %bb.ae ] ; 4 uses
  %.0125428 = phi i8 [ %.5130, %._crit_edge423.split ], [ 0, %bb.ae ]
  %i.et = icmp eq i64 %indvars.iv485, %indvars.iv.a
  %i.eu = trunc nsw i64 %indvars.iv485 to i16     ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph422, %._crit_edge
  %.1126420 = phi i8 [ %.0125428, %.lr.ph422 ], [ %.5130, %._crit_edge ]
  %storemerge141419 = phi i16 [ %i.aw, %.lr.ph422 ], [ %i.ii, %._crit_edge ] ; 4 uses
  %i.ev = zext i16 %storemerge141419 to i64       ; 2 uses
  %i.ew = icmp eq i64 %indvars.iv503, %i.ev
  %or.cond362 = and i1 %i.et, %i.ew
  %i.ex = or i16 %storemerge141419, %i.eu
  %sext.i156 = shl nuw i64 %i.ev, 48
  %i.ey = ashr exact i64 %sext.i156, 44
  %invariant.op = add i64 %indvars.iv485, %i.ey
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.thread335
  %.2127416 = phi i8 [ %.1126420, %.lr.ph ], [ %.5130, %.thread335 ] ; 3 uses
  %storemerge143413 = phi i16 [ %i.as, %.lr.ph ], [ %i.ig, %.thread335 ] ; 5 uses
  %i.ez = zext i16 %storemerge143413 to i64
  %i.fa = icmp eq i64 %indvars.iv506, %i.ez
  %or.cond363 = and i1 %or.cond362, %i.fa
  br i1 %or.cond363, label %.thread335, label %_ZNK4core8vector3dIsEeqERKS1_.exit.thread

_ZNK4core8vector3dIsEeqERKS1_.exit.thread:        ; preds = %bb.af
  %i.fb = or i16 %i.ex, %storemerge143413
  %i.fc = icmp ult i16 %i.fb, 16
  br i1 %i.fc, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit159, label %bb.ag

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit159: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %i.fd = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.fe = load i8, ptr %i.am, align 4, !tbaa !202, !range !199, !noundef !200
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = shl nuw nsw i16 %storemerge143413, 8
  %i.fh = zext nneg i16 %i.fg to i64
  %.reass = add i64 %invariant.op, %i.fh
  %i.fi = and i64 %.reass, 4294967295
  %i.fj = select i1 %i.ff, i64 0, i64 %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fj
  %.sroa.0.0.copyload.i.i158 = load i32, ptr %i.fk, align 4
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %.sroa.0.0.copyload.i160 = load i48, ptr %i.ap, align 8, !tbaa !153 ; 3 uses
  %.sroa.0222.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i160 to i16
  %.sroa.4.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i160, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %.sroa.5.0.extract.shift223 = lshr i48 %.sroa.0.0.copyload.i160, 32
  %.sroa.5.0.extract.trunc224 = trunc nuw i48 %.sroa.5.0.extract.shift223 to i16
  %i.fl = add i16 %i.eu, %.sroa.0222.0.extract.trunc
  %i.fm = add i16 %storemerge141419, %.sroa.4.0.extract.trunc
  %i.fn = add i16 %storemerge143413, %.sroa.5.0.extract.trunc224
  %.sroa.3.0.insert.ext.i161 = zext i16 %i.fn to i48
  %.sroa.3.0.insert.shift.i162 = shl nuw i48 %.sroa.3.0.insert.ext.i161, 32
  %.sroa.2.0.insert.ext.i163 = zext i16 %i.fm to i48
  %.sroa.2.0.insert.shift.i164 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i163, 16
  %.sroa.2.0.insert.insert.i165 = or disjoint i48 %.sroa.3.0.insert.shift.i162, %.sroa.2.0.insert.shift.i164
  %.sroa.0.0.insert.ext.i166 = zext i16 %i.fl to i48
  %.sroa.0.0.insert.insert.i167 = or disjoint i48 %.sroa.2.0.insert.insert.i165, %.sroa.0.0.insert.ext.i166
  %i.fo = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, i48 %.sroa.0.0.insert.insert.i167, ptr noundef null)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit159
  %.0318.in = phi i32 [ %.sroa.0.0.copyload.i.i158, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit159 ], [ %i.fo, %bb.ag ]
  %.0318 = trunc i32 %.0318.in to i16             ; 14 uses
  %i.fp = trunc nuw i8 %.2127416 to i1
  %or.cond6 = select i1 %i.en, i1 true, i1 %i.fp
  br i1 %or.cond6, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = load ptr, ptr %i.ej, align 8, !tbaa !152 ; 4 uses
  %i.fr = load ptr, ptr %i.el, align 8, !tbaa !152 ; 3 uses
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = ashr i64 %i.fu, 3                       ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i179, label %._crit_edge.i.i.i168

.lr.ph.i.i.i179:                                  ; preds = %bb.ai
  %i.fx = and i64 %i.fu, -8
  %scevgep.i.i.i180 = getelementptr i8, ptr %i.fq, i64 %i.fx ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.an, %.lr.ph.i.i.i179
  %.052.i.i.i181 = phi i64 [ %i.fv, %.lr.ph.i.i.i179 ], [ %i.gk, %bb.an ] ; 2 uses
  %.sroa.032.051.i.i.i182 = phi ptr [ %i.fq, %.lr.ph.i.i.i179 ], [ %i.gj, %bb.an ] ; 9 uses
  %i.fy = load i16, ptr %.sroa.032.051.i.i.i182, align 2, !tbaa !153
  %i.fz = icmp eq i16 %i.fy, %.0318
  br i1 %i.fz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !153
  %i.gc = icmp eq i16 %i.gb, %.0318
  br i1 %i.gc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 4
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !153
  %i.gf = icmp eq i16 %i.ge, %.0318
  br i1 %i.gf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit539, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 6
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !153
  %i.gi = icmp eq i16 %i.gh, %.0318
  br i1 %i.gi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit541, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 8
  %i.gk = add nsw i64 %.052.i.i.i181, -1
  %i.gl = icmp sgt i64 %.052.i.i.i181, 1
  br i1 %i.gl, label %bb.aj, label %._crit_edge.loopexit.i.i.i183, !llvm.loop !334

._crit_edge.loopexit.i.i.i183:                    ; preds = %bb.an
  %.pre59.i.i.i184 = ptrtoint ptr %scevgep.i.i.i180 to i64
  %.pre60.i.i.i185 = sub i64 %i.fs, %.pre59.i.i.i184
  br label %._crit_edge.i.i.i168

._crit_edge.i.i.i168:                             ; preds = %._crit_edge.loopexit.i.i.i183, %bb.ai
  %.pre-phi61.i.i.i169 = phi i64 [ %.pre60.i.i.i185, %._crit_edge.loopexit.i.i.i183 ], [ %i.fu, %bb.ai ]
  %.sroa.032.0.lcssa.i.i.i170 = phi ptr [ %scevgep.i.i.i180, %._crit_edge.loopexit.i.i.i183 ], [ %i.fq, %bb.ai ] ; 5 uses
  %i.gm = ashr exact i64 %.pre-phi61.i.i.i169, 1
  switch i64 %i.gm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread [
    i64 3, label %bb.ao
    i64 2, label %._crit_edge._crit_edge.i.i.i176
    i64 1, label %._crit_edge._crit_edge57.i.i.i171
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i168
  %i.gn = load i16, ptr %.sroa.032.0.lcssa.i.i.i170, align 2, !tbaa !153
  %i.go = icmp eq i16 %i.gn, %.0318
  br i1 %i.go, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i170, i64 2
  br label %._crit_edge._crit_edge.i.i.i176

._crit_edge._crit_edge.i.i.i176:                  ; preds = %._crit_edge.i.i.i168, %bb.ap
  %.sroa.032.1.i.i.i178 = phi ptr [ %i.gp, %bb.ap ], [ %.sroa.032.0.lcssa.i.i.i170, %._crit_edge.i.i.i168 ] ; 3 uses
  %i.gq = load i16, ptr %.sroa.032.1.i.i.i178, align 2, !tbaa !153
  %i.gr = icmp eq i16 %i.gq, %.0318
  br i1 %i.gr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge._crit_edge.i.i.i176
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i178, i64 2
  br label %._crit_edge._crit_edge57.i.i.i171

._crit_edge._crit_edge57.i.i.i171:                ; preds = %._crit_edge.i.i.i168, %bb.aq
  %.sroa.032.2.i.i.i173 = phi ptr [ %i.gs, %bb.aq ], [ %.sroa.032.0.lcssa.i.i.i170, %._crit_edge.i.i.i168 ] ; 2 uses
  %i.gt = load i16, ptr %.sroa.032.2.i.i.i173, align 2, !tbaa !153
  %i.gu = icmp eq i16 %i.gt, %.0318
  %spec.select.i.i.i174 = select i1 %i.gu, ptr %.sroa.032.2.i.i.i173, ptr %i.fr
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit: ; preds = %bb.ak
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit539: ; preds = %bb.al
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit541: ; preds = %bb.am
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i182, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189: ; preds = %bb.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit539, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit541, %bb.ao, %._crit_edge._crit_edge.i.i.i176, %._crit_edge._crit_edge57.i.i.i171
  %.sroa.08.0.in.sroa.speculated.i.i.i175 = phi ptr [ %.sroa.032.1.i.i.i178, %._crit_edge._crit_edge.i.i.i176 ], [ %spec.select.i.i.i174, %._crit_edge._crit_edge57.i.i.i171 ], [ %.sroa.032.0.lcssa.i.i.i170, %bb.ao ], [ %i.gx, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit541 ], [ %i.gw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit539 ], [ %i.gv, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i182, %bb.aj ]
  %.not367 = icmp ne ptr %.sroa.08.0.in.sroa.speculated.i.i.i175, %i.fr ; 2 uses
  %brmerge.not = and i1 %i.es, %.not367
  %.2127.mux = zext i1 %.not367 to i8
  br i1 %brmerge.not, label %.thread338, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread: ; preds = %._crit_edge.i.i.i168, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189, %bb.ah
  %.3128 = phi i8 [ %.2127416, %bb.ah ], [ %.2127.mux, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189 ], [ 0, %._crit_edge.i.i.i168 ] ; 3 uses
  br i1 %i.es, label %.thread335, label %bb.ar

bb.ar:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread
  %i.gy = load ptr, ptr %i.eo, align 8, !tbaa !152 ; 4 uses
  %i.gz = load ptr, ptr %i.eq, align 8, !tbaa !152 ; 3 uses
  %i.ha = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hb = ptrtoint ptr %i.gy to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 3 uses
  %i.hd = ashr i64 %i.hc, 3                       ; 2 uses
  %i.he = icmp sgt i64 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i.i.i201, label %._crit_edge.i.i.i190

.lr.ph.i.i.i201:                                  ; preds = %bb.ar
  %i.hf = and i64 %i.hc, -8
  %scevgep.i.i.i202 = getelementptr i8, ptr %i.gy, i64 %i.hf ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aw, %.lr.ph.i.i.i201
  %.052.i.i.i203 = phi i64 [ %i.hd, %.lr.ph.i.i.i201 ], [ %i.hs, %bb.aw ] ; 2 uses
  %.sroa.032.051.i.i.i204 = phi ptr [ %i.gy, %.lr.ph.i.i.i201 ], [ %i.hr, %bb.aw ] ; 9 uses
  %i.hg = load i16, ptr %.sroa.032.051.i.i.i204, align 2, !tbaa !153
  %i.hh = icmp eq i16 %i.hg, %.0318
  br i1 %i.hh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !153
  %i.hk = icmp eq i16 %i.hj, %.0318
  br i1 %i.hk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 4
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !153
  %i.hn = icmp eq i16 %i.hm, %.0318
  br i1 %i.hn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit547, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 6
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !153
  %i.hq = icmp eq i16 %i.hp, %.0318
  br i1 %i.hq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit549, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 8
  %i.hs = add nsw i64 %.052.i.i.i203, -1
  %i.ht = icmp sgt i64 %.052.i.i.i203, 1
  br i1 %i.ht, label %bb.as, label %._crit_edge.loopexit.i.i.i205, !llvm.loop !334

._crit_edge.loopexit.i.i.i205:                    ; preds = %bb.aw
  %.pre59.i.i.i206 = ptrtoint ptr %scevgep.i.i.i202 to i64
  %.pre60.i.i.i207 = sub i64 %i.ha, %.pre59.i.i.i206
  br label %._crit_edge.i.i.i190

._crit_edge.i.i.i190:                             ; preds = %._crit_edge.loopexit.i.i.i205, %bb.ar
  %.pre-phi61.i.i.i191 = phi i64 [ %.pre60.i.i.i207, %._crit_edge.loopexit.i.i.i205 ], [ %i.hc, %bb.ar ]
  %.sroa.032.0.lcssa.i.i.i192 = phi ptr [ %scevgep.i.i.i202, %._crit_edge.loopexit.i.i.i205 ], [ %i.gy, %bb.ar ] ; 5 uses
  %i.hu = ashr exact i64 %.pre-phi61.i.i.i191, 1
  switch i64 %i.hu, label %.thread335 [
    i64 3, label %bb.ax
    i64 2, label %._crit_edge._crit_edge.i.i.i198
    i64 1, label %._crit_edge._crit_edge57.i.i.i193
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i190
  %i.hv = load i16, ptr %.sroa.032.0.lcssa.i.i.i192, align 2, !tbaa !153
  %i.hw = icmp eq i16 %i.hv, %.0318
  br i1 %i.hw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i192, i64 2
  br label %._crit_edge._crit_edge.i.i.i198

._crit_edge._crit_edge.i.i.i198:                  ; preds = %._crit_edge.i.i.i190, %bb.ay
  %.sroa.032.1.i.i.i200 = phi ptr [ %i.hx, %bb.ay ], [ %.sroa.032.0.lcssa.i.i.i192, %._crit_edge.i.i.i190 ] ; 3 uses
  %i.hy = load i16, ptr %.sroa.032.1.i.i.i200, align 2, !tbaa !153
  %i.hz = icmp eq i16 %i.hy, %.0318
  br i1 %i.hz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211, label %bb.az

bb.az:                                            ; preds = %._crit_edge._crit_edge.i.i.i198
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i200, i64 2
  br label %._crit_edge._crit_edge57.i.i.i193

._crit_edge._crit_edge57.i.i.i193:                ; preds = %._crit_edge.i.i.i190, %bb.az
  %.sroa.032.2.i.i.i195 = phi ptr [ %i.ia, %bb.az ], [ %.sroa.032.0.lcssa.i.i.i192, %._crit_edge.i.i.i190 ] ; 2 uses
  %i.ib = load i16, ptr %.sroa.032.2.i.i.i195, align 2, !tbaa !153
  %i.ic = icmp eq i16 %i.ib, %.0318
  %spec.select.i.i.i196 = select i1 %i.ic, ptr %.sroa.032.2.i.i.i195, ptr %i.gz
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit: ; preds = %bb.at
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit547: ; preds = %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit549: ; preds = %bb.av
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i204, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211: ; preds = %bb.as, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit547, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit549, %bb.ax, %._crit_edge._crit_edge.i.i.i198, %._crit_edge._crit_edge57.i.i.i193
  %.sroa.08.0.in.sroa.speculated.i.i.i197 = phi ptr [ %.sroa.032.1.i.i.i200, %._crit_edge._crit_edge.i.i.i198 ], [ %spec.select.i.i.i196, %._crit_edge._crit_edge57.i.i.i193 ], [ %.sroa.032.0.lcssa.i.i.i192, %bb.ax ], [ %i.if, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit549 ], [ %i.ie, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit547 ], [ %i.id, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i204, %bb.as ]
  %.not368 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i197, %i.gz
  br i1 %.not368, label %.thread335, label %select.unfold

.thread335:                                       ; preds = %bb.af, %._crit_edge.i.i.i190, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread
  %.5130 = phi i8 [ %.2127416, %bb.af ], [ %.3128, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189.thread ], [ %.3128, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211 ], [ %.3128, %._crit_edge.i.i.i190 ] ; 4 uses
  %i.ig = add nsw i16 %storemerge143413, 1        ; 2 uses
  %i.ih = sext i16 %i.ig to i64
  %.not144 = icmp slt i64 %indvars.iv.next507, %i.ih
  br i1 %.not144, label %._crit_edge, label %bb.af, !llvm.loop !335

._crit_edge:                                      ; preds = %.thread335
  %i.ii = add nsw i16 %storemerge141419, 1        ; 2 uses
  %i.ij = sext i16 %i.ii to i64
  %.not142 = icmp slt i64 %indvars.iv.next504, %i.ij
  br i1 %.not142, label %._crit_edge423.split, label %.lr.ph, !llvm.loop !336

._crit_edge423.split:                             ; preds = %._crit_edge
  %indvars.iv.next486 = add nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.ik = trunc nsw i64 %indvars.iv.next486 to i32
  %.not140 = icmp slt i32 %i.dx, %i.ik
  br i1 %.not140, label %._crit_edge431.loopexit470, label %.lr.ph422, !llvm.loop !337

._crit_edge431.loopexit470:                       ; preds = %._crit_edge423.split
  %i.il = trunc nuw i8 %.5130 to i1
  %i.im = or i1 %i.en, %i.il
  br i1 %i.im, label %.thread338, label %select.unfold

._crit_edge431:                                   ; preds = %bb.ae
  br i1 %i.en, label %.thread338, label %select.unfold

.thread338:                                       ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit189, %._crit_edge431.loopexit470, %._crit_edge431, %bb.ad
  %i.in = load i32, ptr %3, align 4, !tbaa !171
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %3, align 4, !tbaa !171
  %i.ip = load ptr, ptr %.sroa.0255.0440, align 8, !tbaa !147 ; 2 uses
  %i.iq = load ptr, ptr %0, align 8, !tbaa !40
  %.sroa.8282.0.insert.ext285 = zext i16 %.sroa.8282.sroa.0.0445 to i32
  %.sroa.8282.0.insert.shift286 = shl nuw i32 %.sroa.8282.0.insert.ext285, 16
  %.sroa.0276.0.insert.insert281 = or disjoint i32 %.sroa.8282.0.insert.shift286, %.sroa.0276.0.insert.ext279 ; 2 uses
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !31
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 80
  %i.it = load ptr, ptr %i.is, align 8
  tail call void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef %i.iq, i48 %.sroa.0.0.insert.insert.i, i32 %.sroa.0276.0.insert.insert281)
  %i.iu = load ptr, ptr %.sroa.0255.0440, align 8, !tbaa !147 ; 2 uses
  %i.iv = load ptr, ptr %0, align 8, !tbaa !40
  %i.iw = load i32, ptr %i.a, align 4, !tbaa !171
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !31
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 88
  %i.iz = load ptr, ptr %i.iy, align 8
  tail call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef %i.iv, i48 %.sroa.0.0.insert.insert.i, i32 %.sroa.0276.0.insert.insert281, i32 noundef %.3116449, i32 noundef %i.iw)
  %i.ja = load i8, ptr %1, align 8, !tbaa !203, !range !199, !noundef !200
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %.loopexit369, label %bb.ba

bb.ba:                                            ; preds = %.thread338
  %i.jc = load ptr, ptr %0, align 8, !tbaa !40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !341
  %.not145 = icmp eq i32 %i.je, 0
  br i1 %.not145, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jf = call noundef i32 @_ZN10ABMHandler12countObjectsEP8MapBlockP9ServerMapRj(ptr noundef nonnull %1, ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.jg = load ptr, ptr %0, align 8, !tbaa !40
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i32 0, ptr %i.jh, align 8, !tbaa !341
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218: ; preds = %bb.bb, %bb.ba
  %.4117 = phi i32 [ %i.jf, %bb.bb ], [ %.3116449, %bb.ba ] ; 2 uses
  %i.ji = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.jj = load i8, ptr %i.am, align 4, !tbaa !202, !range !199, !noundef !200
  %i.jk = trunc nuw i8 %i.jj to i1
  %spec.select = select i1 %i.jk, i64 0, i64 %i.bb
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %spec.select
  %.sroa.0.0.copyload.i.i217 = load i32, ptr %i.jl, align 4 ; 2 uses
  %.sroa.0276.0.extract.trunc278 = trunc i32 %.sroa.0.0.copyload.i.i217 to i16
  %.sroa.8282.0.extract.shift283 = lshr i32 %.sroa.0.0.copyload.i.i217, 16
  %.sroa.8282.0.extract.trunc284 = trunc nuw i32 %.sroa.8282.0.extract.shift283 to i16
  %.not146 = icmp eq i16 %.sroa.0276.0.extract.trunc278, %.sroa.0276.0.extract.trunc
  br i1 %.not146, label %select.unfold, label %.loopexit

select.unfold:                                    ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211, %._crit_edge431.loopexit470, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218, %bb.ac, %bb.ab, %._crit_edge431
  %.sroa.8282.sroa.0.1.ph = phi i16 [ %.sroa.8282.sroa.0.0445, %bb.ab ], [ %.sroa.8282.0.extract.trunc284, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218 ], [ %.sroa.8282.sroa.0.0445, %._crit_edge431 ], [ %.sroa.8282.sroa.0.0445, %bb.ac ], [ %.sroa.8282.sroa.0.0445, %._crit_edge431.loopexit470 ], [ %.sroa.8282.sroa.0.0445, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211 ]
  %.6119.ph = phi i32 [ %.3116449, %bb.ab ], [ %.4117, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218 ], [ %.3116449, %._crit_edge431 ], [ %.3116449, %bb.ac ], [ %.3116449, %._crit_edge431.loopexit470 ], [ %.3116449, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit211 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0255.0440, i64 64 ; 2 uses
  %.not366 = icmp eq ptr %i.jm, %i.dv
  br i1 %.not366, label %.loopexit, label %bb.ab

.loopexit:                                        ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218, %select.unfold, %bb.aa, %_ZNSt6vectorItSaItEED2Ev.exit, %bb.z
  %.8.ph = phi i32 [ %.2115460, %bb.z ], [ %.2115460, %_ZNSt6vectorItSaItEED2Ev.exit ], [ %.2115460, %bb.aa ], [ %.4117, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit218 ], [ %.6119.ph, %select.unfold ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.bc, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, !llvm.loop !338

bb.bc:                                            ; preds = %.loopexit
  %exitcond505.not = icmp eq i64 %indvars.iv.next504, 16
  br i1 %exitcond505.not, label %bb.bd, label %.preheader, !llvm.loop !339

bb.bd:                                            ; preds = %bb.bc
  %exitcond508.not = icmp eq i64 %indvars.iv.next507, 16
  br i1 %exitcond508.not, label %.loopexit369, label %.preheader370, !llvm.loop !340

.loopexit369:                                     ; preds = %bb.bd, %.thread338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit372

.loopexit372:                                     ; preds = %bb.f, %bb.a, %.loopexit369
  ret void
}

declare noundef nonnull align 8 dereferenceable(608) ptr @_ZN17ServerEnvironment12getServerMapEv(ptr noundef nonnull align 8 dereferenceable(3560)) local_unnamed_addr #2

declare noundef i32 @_Z6myrandv() local_unnamed_addr #2

declare i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144), i48, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17LBMContentMappingD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !210
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 40) #26
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !344

_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i, %bb.a
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !212
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !213    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213  ; 2 uses
  %.not8 = icmp eq ptr %i.p, %i.r
  br i1 %.not8, label %_ZNSt10_HashtableItSt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS4_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !205 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS4_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.s, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i ], [ %.pre, %._crit_edge ] ; 4 uses
  %i.s = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !206 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !210
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #26
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableItSt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS4_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !344

_ZNSt10_HashtableItSt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS4_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS6_EEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i.i, %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEE5clearEv.exit, %._crit_edge
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !212
  %i.ac = shl i64 %i.ab, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ac, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !211 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableItSt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS4_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !212
  %i.ah = shl i64 %i.ag, 3
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEED2Ev.exit

_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableItSt4pairIKtSt6vectorIP23LoadingBlockModifierDefSaIS4_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.ai = load ptr, ptr %0, align 8, !tbaa !209   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #26
  br label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit

_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEED2Ev.exit, %bb.e
  ret void

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEE5clearEv.exit, %bb.g
  %.sroa.05.09 = phi ptr [ %i.at, %bb.g ], [ %i.p, %_ZNSt13unordered_mapItSt6vectorIP23LoadingBlockModifierDefSaIS2_EESt4hashItESt8equal_toItESaISt4pairIKtS4_EEE5clearEv.exit ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.05.09, align 8, !tbaa !215 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(65) %i.ao) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.r
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: uwtable
define dso_local void @_ZN17LBMContentMapping6addLBMEP23LoadingBlockModifierDefP8IGameDef(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<unsigned short, std::pair<const unsigned short, std::vector<LoadingBlockModifierDef *>>, std::allocator<std::pair<const unsigned short, std::vector<LoadingBlockModifierDef *>>>, std::__detail::_Select1st, std::equal_to<unsigned short>, std::hash<unsigned short>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::vector.352", align 8   ; 16 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !0
  %i.h = load ptr, ptr %0, align 8, !tbaa !213    ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !213  ; 6 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 8 uses
  %i.n = ashr i64 %i.m, 5                         ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.p = and i64 %i.m, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.h, i64 %i.p ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.ab, %bb.f ] ; 9 uses
  %i.q = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !215
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !215
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !215
  %i.x = icmp eq ptr %i.w, %1
  br i1 %i.x, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit186, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !215
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.loopexit.split.loop.exit188, label %bb.f

end_hunk_0
