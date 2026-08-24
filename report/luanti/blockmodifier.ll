Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/blockmodifier?download=true
inline.NumInlined: 2159
inline.NumDeleted: 1045
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10ABMHandler12countObjectsEP8MapBlockP9ServerMapRj:bb.a

bb.e:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !163
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !165
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 48
  %i.z = add i64 %i.y, %i.r
  %i.aa = load i32, ptr %2, align 4, !tbaa !162
  %i.ab = trunc i64 %i.z to i32
  %i.ac = add i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %2, align 4, !tbaa !162
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3 = phi i32 [ %.133, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i48, ptr %i.a, align 2 ; 3 uses
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
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !168
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48
  %i.aq = add i64 %i.ap, %i.ai
  %i.ar = load i32, ptr %2, align 4, !tbaa !162
  %i.as = trunc i64 %i.aq to i32
  %i.at = add i32 %i.ar, %i.as
  store i32 %i.at, ptr %2, align 4, !tbaa !162
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = add i32 %.3, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.1 = phi i32 [ %.3, %bb.g ], [ %i.au, %bb.h ] ; 2 uses
  %.sroa.0.0.copyload.i.2 = load i48, ptr %i.a, align 2 ; 3 uses
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
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !163
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !165
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !168
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 48
  %i.bj = add i64 %i.bi, %i.bb
  %i.bk = load i32, ptr %2, align 4, !tbaa !162
  %i.bl = trunc i64 %i.bj to i32
  %i.bm = add i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %2, align 4, !tbaa !162
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = add i32 %.3.1, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3.2 = phi i32 [ %.3.1, %bb.j ], [ %i.bn, %bb.k ] ; 4 uses
  %i.bo = add nsw i16 %.02432, 1                  ; 2 uses
  %exitcond.not = icmp eq i16 %i.bo, 2
  br i1 %exitcond.not, label %bb.c, label %.preheader, !llvm.loop !169
}

declare noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144), i48) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ABMHandler5applyEP8MapBlockRiS2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit379, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.thread329, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %4, align 4, !tbaa !162
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %4, align 4, !tbaa !162
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.f
  %.sroa.0322.0394 = phi ptr [ %i.h, %bb.c ], [ %i.w, %bb.f ] ; 2 uses
  %i.r = load i16, ptr %.sroa.0322.0394, align 2, !tbaa !141
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !150
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %.thread329

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0322.0394, i64 2 ; 2 uses
  %.not371 = icmp eq ptr %i.w, %i.j
  br i1 %.not371, label %.loopexit379, label %bb.d

.thread329:                                       ; preds = %bb.e, %bb.b
  %i.x = load i32, ptr %2, align 4, !tbaa !162
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %2, align 4, !tbaa !162
  %i.z = load ptr, ptr %0, align 8, !tbaa !17
  %i.aa = tail call noundef nonnull align 8 dereferenceable(608) ptr @_ZN17ServerEnvironment12getServerMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.z) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ab = call noundef i32 @_ZN10ABMHandler12countObjectsEP8MapBlockP9ServerMapRj(ptr noundef %1, ptr noundef nonnull %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ac = load ptr, ptr %0, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !170
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !140
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !140
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread329
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !171, !range !196, !noundef !197
  %i.aj = xor i8 %i.ai, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread329
  %i.ak = phi i8 [ 0, %.thread329 ], [ %i.aj, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.preheader377

.preheader377:                                    ; preds = %bb.h, %bb.bd
  %indvars.iv493 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next494, %bb.bd ] ; 6 uses
  %.0113473 = phi i32 [ %i.ab, %bb.h ], [ %.8.ph, %bb.bd ]
  %.0121472 = phi i8 [ %i.ak, %bb.h ], [ %.3124, %bb.bd ]
  %i.aq = shl nuw nsw i64 %indvars.iv493, 8
  %i.ar = add nsw i64 %indvars.iv493, -1          ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv493 to i32
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  %i.au = trunc nsw i64 %i.ar to i32
  %.not144419 = icmp slt i32 %i.at, %i.au
  %i.av = trunc nsw i64 %i.ar to i16
  %i.aw = trunc nuw nsw i64 %indvars.iv493 to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader377, %bb.bc
  %indvars.iv490 = phi i64 [ 0, %.preheader377 ], [ %indvars.iv.next491, %bb.bc ] ; 6 uses
  %.1114470 = phi i32 [ %.0113473, %.preheader377 ], [ %.8.ph, %bb.bc ]
  %.1122469 = phi i8 [ %.0121472, %.preheader377 ], [ %.3124, %bb.bc ]
  %i.ax = shl nuw nsw i64 %indvars.iv490, 4
  %i.ay = add nuw nsw i64 %i.ax, %i.aq
  %i.az = add nsw i64 %indvars.iv490, -1          ; 2 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv490 to i32
  %i.bb = add nsw i32 %i.ba, 1                    ; 2 uses
  %i.bc = trunc nsw i64 %i.az to i32
  %.not142425 = icmp slt i32 %i.bb, %i.bc
  %i.bd = trunc nsw i64 %i.az to i16
  %i.be = trunc nuw nsw i64 %indvars.iv490 to i16
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.2115467 = phi i32 [ %.1114470, %.preheader ], [ %.8.ph, %.loopexit ] ; 4 uses
  %.2123466 = phi i8 [ %.1122469, %.preheader ], [ %.3124, %.loopexit ]
  %i.bf = load ptr, ptr %i.al, align 8, !tbaa !198
  %i.bg = load i8, ptr %i.am, align 4, !tbaa !199, !range !196, !noundef !197
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = add nuw nsw i64 %i.ay, %indvars.iv      ; 2 uses
  %i.bj = select i1 %i.bh, i64 0, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bj
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bk, align 4 ; 4 uses
  %.sroa.0283.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i.i to i16 ; 10 uses
  %.sroa.8289.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.8289.0.extract.trunc = trunc nuw i32 %.sroa.8289.0.extract.shift to i16
  %i.bl = trunc nuw i8 %.2123466 to i1
  br i1 %i.bl, label %bb.i, label %_ZNSt6vectorItSaItEED2Ev.exit

bb.i:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !140 ; 9 uses
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !140 ; 6 uses
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 8 uses
  %i.br = ashr i64 %i.bq, 3                       ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.bt = and i64 %i.bq, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.bm, i64 %i.bt ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i ], [ %i.cg, %bb.n ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %i.cf, %bb.n ] ; 9 uses
  %i.bu = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !141
  %i.bv = icmp eq i16 %i.bu, %.sroa.0283.0.extract.trunc
  br i1 %i.bv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !141
  %i.by = icmp eq i16 %i.bx, %.sroa.0283.0.extract.trunc
  br i1 %i.by, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !141
  %i.cb = icmp eq i16 %i.ca, %.sroa.0283.0.extract.trunc
  br i1 %i.cb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit518, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !141
  %i.ce = icmp eq i16 %i.cd, %.sroa.0283.0.extract.trunc
  br i1 %i.ce, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit520, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.cg = add nsw i64 %.052.i.i.i, -1
  %i.ch = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ch, label %bb.j, label %._crit_edge.loopexit.i.i.i, !llvm.loop !200

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.n
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bo, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bq, %bb.i ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bm, %bb.i ] ; 5 uses
  %i.ci = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.ci, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cj = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !141
  %i.ck = icmp eq i16 %i.cj, %.sroa.0283.0.extract.trunc
  br i1 %i.ck, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.p
  %.sroa.032.1.i.i.i = phi ptr [ %i.cl, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cm = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !141
  %i.cn = icmp eq i16 %i.cm, %.sroa.0283.0.extract.trunc
  br i1 %i.cn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.q
  %.sroa.032.2.i.i.i = phi ptr [ %i.co, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.cp = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !141
  %i.cq = icmp eq i16 %i.cp, %.sroa.0283.0.extract.trunc
  %spec.select.i.i.i = select i1 %i.cq, ptr %.sroa.032.2.i.i.i, ptr %i.bn
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit518: ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit520: ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit518, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit520, %bb.o, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.o ], [ %i.ct, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit520 ], [ %i.cs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit518 ], [ %i.cr, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.j ]
  %.not372 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bn
  br i1 %.not372, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %_ZNSt6vectorItSaItEED2Ev.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %i.cu = ashr exact i64 %i.bq, 1                 ; 3 uses
  %i.cv = icmp ugt i64 %i.cu, 63
  br i1 %i.cv, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  store i8 1, ptr %i.ao, align 1, !tbaa !171
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !147
  %.not.i.i.i = icmp eq ptr %i.bm, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cy) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %i.cz = load ptr, ptr %i.an, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.bn, %i.cz
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 %.sroa.0283.0.extract.trunc, ptr %i.bn, align 2, !tbaa !141
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store ptr %i.da, ptr %i.i, align 8, !tbaa !145
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.db = icmp eq i64 %i.bq, 9223372036854775806
  br i1 %i.db, label %bb.w, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #28
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.dc = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.cu ; 2 uses
  %i.dd = shl nuw nsw i64 %i.dc, 1
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #27 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.bq ; 2 uses
  store i16 %.sroa.0283.0.extract.trunc, ptr %i.df, align 2, !tbaa !141
  %i.dg = icmp sgt i64 %i.bq, 0
  br i1 %i.dg, label %bb.x, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.de, ptr align 2 %i.bm, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %.not.i17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.di = load ptr, ptr %i.an, align 8, !tbaa !147
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.dk) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.de, ptr %i.g, align 8, !tbaa !146
  store ptr %i.dh, ptr %i.i, align 8, !tbaa !145
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dl, ptr %i.an, align 8, !tbaa !147
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.u, %bb.s, %bb.r, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.3124 = phi i8 [ 1, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ 0, %bb.s ], [ 1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit ], [ 0, %bb.r ], [ 1, %bb.u ], [ 0, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ] ; 3 uses
  %.sroa.0283.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.dm = zext nneg i32 %.sroa.0283.0.extract.trunc.mask to i64 ; 2 uses
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !148
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !149 ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 3
  %.not135 = icmp ugt i64 %i.ds, %i.dm
  br i1 %.not135, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !150 ; 3 uses
  %.not136 = icmp eq ptr %i.du, null
  br i1 %.not136, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i = load i48, ptr %i.ap, align 8 ; 3 uses
  %.sroa.0265.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.4266.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.4266.0.extract.trunc = trunc i48 %.sroa.4266.0.extract.shift to i16
  %.sroa.5267.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.5267.0.extract.trunc = trunc nuw i48 %.sroa.5267.0.extract.shift to i16
  %i.dv = trunc nuw nsw i64 %indvars.iv to i16
  %i.dw = add i16 %i.dv, %.sroa.0265.0.extract.trunc
  %i.dx = add i16 %i.be, %.sroa.4266.0.extract.trunc ; 3 uses
  %i.dy = add i16 %i.aw, %.sroa.5267.0.extract.trunc
  %.sroa.3.0.insert.ext.i = zext i16 %i.dy to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.dx to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.dw to i48
  %i.dz = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.dz, %.sroa.2.0.insert.shift.i ; 2 uses
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !201 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !201 ; 2 uses
  %.not373446 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not373446, label %.loopexit, label %.lr.ph461

.lr.ph461:                                        ; preds = %bb.aa
  %i.ed = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv to i32
  %i.ef = add nsw i32 %i.ee, 1                    ; 2 uses
  %i.eg = trunc nsw i64 %i.ed to i32
  %.not140432 = icmp slt i32 %i.ef, %i.eg
  %i.eh = trunc nsw i64 %i.ed to i16
  %.sroa.0283.0.insert.ext286 = and i32 %.sroa.0.0.copyload.i.i, 65535
  %brmerge = select i1 %.not140432, i1 true, i1 %.not142425
  %brmerge542 = select i1 %brmerge, i1 true, i1 %.not144419
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph461, %select.unfold
  %.3116456 = phi i32 [ %.2115467, %.lr.ph461 ], [ %.6119.ph, %select.unfold ] ; 7 uses
  %.sroa.8289.sroa.0.0452 = phi i16 [ %.sroa.8289.0.extract.trunc, %.lr.ph461 ], [ %.sroa.8289.sroa.0.1.ph, %select.unfold ] ; 6 uses
  %.sroa.0262.0447 = phi ptr [ %i.ea, %.lr.ph461 ], [ %i.jw, %select.unfold ] ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 60
  %i.ej = load i16, ptr %i.ei, align 4, !tbaa !136
  %i.ek = icmp sgt i16 %i.ej, %i.dx
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 62
  %i.em = load i16, ptr %i.el, align 2
  %i.en = icmp slt i16 %i.em, %i.dx
  %or.cond = select i1 %i.ek, i1 true, i1 %i.en
  br i1 %or.cond, label %select.unfold, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = tail call noundef i32 @_Z6myrandv()
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 56
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !135
  %i.er = urem i32 %i.eo, %i.eq
  %.not137 = icmp eq i32 %i.er, 0
  br i1 %.not137, label %bb.ad, label %select.unfold

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !140
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !140
  %i.ew = icmp eq ptr %i.et, %i.ev                ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 32 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !140
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 40 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !140
  %i.fb = icmp eq ptr %i.ey, %i.fa                ; 3 uses
  %or.cond.not = and i1 %i.ew, %i.fb
  br i1 %or.cond.not, label %.thread345, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %brmerge542, label %._crit_edge438, label %.lr.ph429

.lr.ph429:                                        ; preds = %bb.ae, %._crit_edge430.split
  %.0125435 = phi i8 [ %.5130, %._crit_edge430.split ], [ 0, %bb.ae ]
  %storemerge139433 = phi i16 [ %i.it, %._crit_edge430.split ], [ %i.eh, %bb.ae ] ; 5 uses
  %i.fc = zext i16 %storemerge139433 to i64
  %i.fd = icmp eq i64 %indvars.iv, %i.fc
  %i.fe = sext i16 %storemerge139433 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph429, %._crit_edge
  %.1126427 = phi i8 [ %.0125435, %.lr.ph429 ], [ %.5130, %._crit_edge ]
  %storemerge141426 = phi i16 [ %i.bd, %.lr.ph429 ], [ %i.ir, %._crit_edge ] ; 4 uses
  %i.ff = zext i16 %storemerge141426 to i64       ; 2 uses
  %i.fg = icmp eq i64 %indvars.iv490, %i.ff
  %or.cond369 = and i1 %i.fd, %i.fg
  %i.fh = or i16 %storemerge141426, %storemerge139433
  %sext2.i160 = shl nuw i64 %i.ff, 48
  %i.fi = ashr exact i64 %sext2.i160, 44
  %invariant.op = add nsw i64 %i.fi, %i.fe
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %.thread342
  %.2127423 = phi i8 [ %.1126427, %.lr.ph ], [ %.5130, %.thread342 ] ; 3 uses
  %storemerge143420 = phi i16 [ %i.av, %.lr.ph ], [ %i.ip, %.thread342 ] ; 5 uses
  %i.fj = zext i16 %storemerge143420 to i64
  %i.fk = icmp eq i64 %indvars.iv493, %i.fj
  %or.cond370 = and i1 %or.cond369, %i.fk
  br i1 %or.cond370, label %.thread342, label %_ZNK4core8vector3dIsEeqERKS1_.exit.thread

_ZNK4core8vector3dIsEeqERKS1_.exit.thread:        ; preds = %bb.af
  %i.fl = or i16 %i.fh, %storemerge143420
  %i.fm = icmp ult i16 %i.fl, 16
  br i1 %i.fm, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163, label %bb.ag

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %i.fn = load ptr, ptr %i.al, align 8, !tbaa !198
  %i.fo = load i8, ptr %i.am, align 4, !tbaa !199, !range !196, !noundef !197
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = shl nuw nsw i16 %storemerge143420, 8
  %sext.i159 = zext nneg i16 %i.fq to i64
  %.reass = add nsw i64 %invariant.op, %sext.i159
  %i.fr = and i64 %.reass, 4294967295
  %i.fs = select i1 %i.fp, i64 0, i64 %i.fr
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fs
  %.sroa.0.0.copyload.i.i162 = load i32, ptr %i.ft, align 4
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %.sroa.0.0.copyload.i164 = load i48, ptr %i.ap, align 8 ; 3 uses
  %.sroa.0229.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i164 to i16
  %.sroa.4.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i164, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %.sroa.5.0.extract.shift230 = lshr i48 %.sroa.0.0.copyload.i164, 32
  %.sroa.5.0.extract.trunc231 = trunc nuw i48 %.sroa.5.0.extract.shift230 to i16
  %i.fu = add i16 %storemerge139433, %.sroa.0229.0.extract.trunc
  %i.fv = add i16 %storemerge141426, %.sroa.4.0.extract.trunc
  %i.fw = add i16 %storemerge143420, %.sroa.5.0.extract.trunc231
  %.sroa.3.0.insert.ext.i165 = zext i16 %i.fw to i48
  %.sroa.3.0.insert.shift.i166 = shl nuw i48 %.sroa.3.0.insert.ext.i165, 32
  %.sroa.2.0.insert.ext.i167 = zext i16 %i.fv to i48
  %.sroa.2.0.insert.shift.i168 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i167, 16
  %.sroa.2.0.insert.insert.i169 = or disjoint i48 %.sroa.3.0.insert.shift.i166, %.sroa.2.0.insert.shift.i168
  %.sroa.0.0.insert.ext.i170 = zext i16 %i.fu to i48
  %.sroa.0.0.insert.insert.i171 = or disjoint i48 %.sroa.2.0.insert.insert.i169, %.sroa.0.0.insert.ext.i170
  %i.fx = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, i48 %.sroa.0.0.insert.insert.i171, ptr noundef null)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163
  %.0325.in = phi i32 [ %.sroa.0.0.copyload.i.i162, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163 ], [ %i.fx, %bb.ag ]
  %.0325 = trunc i32 %.0325.in to i16             ; 14 uses
  %i.fy = trunc nuw i8 %.2127423 to i1
  %or.cond6 = select i1 %i.ew, i1 true, i1 %i.fy
  br i1 %or.cond6, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = load ptr, ptr %i.es, align 8, !tbaa !140 ; 4 uses
  %i.ga = load ptr, ptr %i.eu, align 8, !tbaa !140 ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64               ; 2 uses
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 3 uses
  %i.ge = ashr i64 %i.gd, 3                       ; 2 uses
  %i.gf = icmp sgt i64 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i.i183, label %._crit_edge.i.i.i172

.lr.ph.i.i.i183:                                  ; preds = %bb.ai
  %i.gg = and i64 %i.gd, -8
  %scevgep.i.i.i184 = getelementptr i8, ptr %i.fz, i64 %i.gg ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.an, %.lr.ph.i.i.i183
  %.052.i.i.i185 = phi i64 [ %i.ge, %.lr.ph.i.i.i183 ], [ %i.gt, %bb.an ] ; 2 uses
  %.sroa.032.051.i.i.i186 = phi ptr [ %i.fz, %.lr.ph.i.i.i183 ], [ %i.gs, %bb.an ] ; 9 uses
  %i.gh = load i16, ptr %.sroa.032.051.i.i.i186, align 2, !tbaa !141
  %i.gi = icmp eq i16 %i.gh, %.0325
  br i1 %i.gi, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i186, i64 2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !141
  %i.gl = icmp eq i16 %i.gk, %.0325
  br i1 %i.gl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193.loopexit.split.loop.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i186, i64 4
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !141
  %i.go = icmp eq i16 %i.gn, %.0325
  br i1 %i.go, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193.loopexit.split.loop.exit526, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i186, i64 6
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !141
  %i.gr = icmp eq i16 %i.gq, %.0325
  br i1 %i.gr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193.loopexit.split.loop.exit528, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i186, i64 8
  %i.gt = add nsw i64 %.052.i.i.i185, -1
  %i.gu = icmp sgt i64 %.052.i.i.i185, 1
  br i1 %i.gu, label %bb.aj, label %._crit_edge.loopexit.i.i.i187, !llvm.loop !200

._crit_edge.loopexit.i.i.i187:                    ; preds = %bb.an
  %.pre59.i.i.i188 = ptrtoint ptr %scevgep.i.i.i184 to i64
  %.pre60.i.i.i189 = sub i64 %i.gb, %.pre59.i.i.i188
  br label %._crit_edge.i.i.i172

._crit_edge.i.i.i172:                             ; preds = %._crit_edge.loopexit.i.i.i187, %bb.ai
  %.pre-phi61.i.i.i173 = phi i64 [ %.pre60.i.i.i189, %._crit_edge.loopexit.i.i.i187 ], [ %i.gd, %bb.ai ]
  %.sroa.032.0.lcssa.i.i.i174 = phi ptr [ %scevgep.i.i.i184, %._crit_edge.loopexit.i.i.i187 ], [ %i.fz, %bb.ai ] ; 5 uses
  %i.gv = ashr exact i64 %.pre-phi61.i.i.i173, 1
  switch i64 %i.gv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193.thread [
    i64 3, label %bb.ao
    i64 2, label %._crit_edge._crit_edge.i.i.i180
    i64 1, label %._crit_edge._crit_edge57.i.i.i175
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i172
  %i.gw = load i16, ptr %.sroa.032.0.lcssa.i.i.i174, align 2, !tbaa !141
  %i.gx = icmp eq i16 %i.gw, %.0325
  br i1 %i.gx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i174, i64 2
  br label %._crit_edge._crit_edge.i.i.i180

._crit_edge._crit_edge.i.i.i180:                  ; preds = %._crit_edge.i.i.i172, %bb.ap
  %.sroa.032.1.i.i.i182 = phi ptr [ %i.gy, %bb.ap ], [ %.sroa.032.0.lcssa.i.i.i174, %._crit_edge.i.i.i172 ] ; 3 uses
  %i.gz = load i16, ptr %.sroa.032.1.i.i.i182, align 2, !tbaa !141
  %i.ha = icmp eq i16 %i.gz, %.0325
  br i1 %i.ha, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge._crit_edge.i.i.i180
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i182, i64 2
  br label %._crit_edge._crit_edge57.i.i.i175

._crit_edge._crit_edge57.i.i.i175:                ; preds = %._crit_edge.i.i.i172, %bb.aq
end_hunk_0
begin_hunk_1_@_ZN13BaseExceptionD2Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !291
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.28) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !295
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !249
  %i.g = load i64, ptr %i.a, align 8, !tbaa !295
  store i64 %i.g, ptr %i.b, align 8, !tbaa !264
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !264
  store i8 %i.i, ptr %i.h, align 1, !tbaa !264
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !295  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !252
  %i.l = load ptr, ptr %0, align 8, !tbaa !249
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !328    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !327  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !249 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !264
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !331

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !328
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !332
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10LBMManager9applyLBMsEP17ServerEnvironmentP8MapBlockjf(ptr nofree noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, float noundef %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::unordered_map.527", align 8 ; 16 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %i.e = load i8, ptr %0, align 8, !tbaa !289, !range !196, !noundef !197
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 470, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN10LBMManager9applyLBMsEP17ServerEnvironmentP8MapBlockjf) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !347
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 1, ptr %i.h, align 8, !tbaa !349
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !323
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %.loopexit226, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !162
  %i.q = icmp ult i32 %i.p, %3                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.q, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN10LBMManager22getLBMsIntroducedAfterEj.exit, label %.lr.ph.i.i.i.i, !llvm.loop !299

_ZN10LBMManager22getLBMsIntroducedAfterEj.exit:   ; preds = %.lr.ph.i.i.i.i
  %.not221349 = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %.not221349, label %.loopexit226, label %.preheader249.lr.ph

.preheader249.lr.ph:                              ; preds = %_ZN10LBMManager22getLBMsIntroducedAfterEj.exit
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  br label %.preheader249

.preheader249:                                    ; preds = %.preheader249.lr.ph, %bb.bk
  %.sroa.0191.0350 = phi ptr [ %.19.i.i.i.i, %.preheader249.lr.ph ], [ %i.iz, %bb.bk ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0191.0350, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0191.0350, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0191.0350, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0191.0350, i64 80
  br label %.preheader248

._crit_edge:                                      ; preds = %bb.bk
  %.val.pre = load ptr, ptr %i.i, align 8, !tbaa !350 ; 2 uses
  %.not222361 = icmp eq ptr %.val.pre, null
  br i1 %.not222361, label %.loopexit226, label %.lr.ph365

.lr.ph365:                                        ; preds = %._crit_edge
  %.not.i109 = icmp eq ptr @_ZTH11tracestream, null ; 2 uses
  %i.y = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tracestream) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  br label %bb.bl

.preheader248:                                    ; preds = %.preheader249, %bb.bj
  %indvars.iv397 = phi i64 [ 0, %.preheader249 ], [ %indvars.iv.next398, %bb.bj ] ; 7 uses
  %.064348 = phi i16 [ 127, %.preheader249 ], [ %.367204, %bb.bj ]
  %.068347 = phi ptr [ null, %.preheader249 ], [ %.371203, %bb.bj ]
  %.073346 = phi ptr [ null, %.preheader249 ], [ %.477202, %bb.bj ]
  %i.ad = shl nuw nsw i64 %indvars.iv397, 8
  %i.ae = trunc nuw nsw i64 %indvars.iv397 to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader248, %bb.bi
  %indvars.iv393 = phi i64 [ 0, %.preheader248 ], [ %indvars.iv.next394, %bb.bi ] ; 7 uses
  %.165344 = phi i16 [ %.064348, %.preheader248 ], [ %.367204, %bb.bi ]
  %.169343 = phi ptr [ %.068347, %.preheader248 ], [ %.371203, %bb.bi ]
  %.174342 = phi ptr [ %.073346, %.preheader248 ], [ %.477202, %bb.bi ]
  %i.af = shl nuw nsw i64 %indvars.iv393, 4
  %i.ag = add nuw nsw i64 %i.af, %i.ad
  %7 = call i64 @llvm.fshl.i64(i64 %indvars.iv393, i64 %indvars.iv393, i64 16) ; 2 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv393 to i16
  %invariant.op = xor i64 %indvars.iv397, %7
  %invariant.op574 = xor i64 %indvars.iv397, %7
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit ] ; 9 uses
  %.266340 = phi i16 [ %.165344, %.preheader ], [ %.367204, %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit ] ; 3 uses
  %.270339 = phi ptr [ %.169343, %.preheader ], [ %.371203, %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit ] ; 2 uses
  %.275338 = phi ptr [ %.174342, %.preheader ], [ %.477202, %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit ] ; 6 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !198
  %i.aj = load i8, ptr %i.s, align 4, !tbaa !199, !range !196, !noundef !197
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = add nuw nsw i64 %i.ag, %indvars.iv
  %i.am = select i1 %i.ak, i64 0, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.an, align 4 ; 3 uses
  %.sroa.0177.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i.i to i16 ; 12 uses
  %.not87.not = icmp eq i16 %.266340, %.sroa.0177.0.extract.trunc ; 2 uses
  br i1 %.not87.not, label %bb.ai, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !278
  %.not.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.not.i.i.i, label %.preheader368, label %bb.g

.preheader368:                                    ; preds = %bb.e, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.f ], [ %i.x, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !211 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, label %bb.f

bb.f:                                             ; preds = %.preheader368
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !141
  %i.ar = icmp eq i16 %i.aq, %.sroa.0177.0.extract.trunc
  br i1 %i.ar, label %.loopexit237.loopexit, label %.preheader368, !llvm.loop !279

bb.g:                                             ; preds = %bb.e
  %.sroa.0177.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.as = zext nneg i32 %.sroa.0177.0.extract.trunc.mask to i64 ; 3 uses
  %i.at = load i64, ptr %i.w, align 8, !tbaa !218 ; 2 uses
  %i.au = urem i64 %i.as, %i.at                   ; 2 uses
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !217
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !211 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !141
  %i.bb = icmp eq i16 %i.ba, %.sroa.0177.0.extract.trunc
  br i1 %i.bb, label %.loopexit237, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.bc = icmp eq i16 %i.bf, %.sroa.0177.0.extract.trunc
  br i1 %i.bc, label %.loopexit237, label %.lr.ph.i.i.i.i.i, !llvm.loop !267

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i = phi ptr [ %i.bd, %bb.i ], [ %i.ay, %bb.h ]
  %i.bd = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !211 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not18.i.i.i.i.i, label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !141 ; 2 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.at
  %.not19.i.i.i.i.i = icmp eq i64 %i.bh, %i.au
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !267

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.j
  br label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, !llvm.loop !267

.loopexit237.loopexit:                            ; preds = %bb.f
  %.pre403 = and i32 %.sroa.0.0.copyload.i.i, 65535
  %.pre404 = zext nneg i32 %.pre403 to i64
  br label %.loopexit237

.loopexit237:                                     ; preds = %bb.i, %.loopexit237.loopexit, %bb.h
  %.pre-phi = phi i64 [ %i.as, %bb.h ], [ %.pre404, %.loopexit237.loopexit ], [ %i.as, %bb.i ] ; 2 uses
  %.sroa.06.1.i.i.i = phi ptr [ %i.ay, %bb.h ], [ %.sroa.06.0.i.i.i, %.loopexit237.loopexit ], [ %i.bd, %bb.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %.val21.i.i = load i64, ptr %i.h, align 8, !tbaa !349 ; 2 uses
  %i.bj = urem i64 %.pre-phi, %.val21.i.i         ; 3 uses
  %.val22.i.i = load ptr, ptr %5, align 8, !tbaa !347
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val22.i.i, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i100, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %.loopexit237
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !211 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val204.i.i.i.i = load i16, ptr %i.bn, align 2, !tbaa !141
  %i.bo = icmp eq i16 %.val204.i.i.i.i, %.sroa.0177.0.extract.trunc
  br i1 %i.bo, label %.thread205, label %.lr.ph.i.i.i.i101

bb.l:                                             ; preds = %bb.m
  %i.bp = icmp eq i16 %.val23.i.i.i.i, %.sroa.0177.0.extract.trunc
  br i1 %i.bp, label %.thread205, label %.lr.ph.i.i.i.i101, !llvm.loop !351

.lr.ph.i.i.i.i101:                                ; preds = %bb.k, %bb.l
  %.05.i.i.i.i = phi ptr [ %i.bq, %bb.l ], [ %i.bm, %bb.k ]
  %i.bq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !211 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i101
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.val23.i.i.i.i = load i16, ptr %i.br, align 2, !tbaa !141 ; 2 uses
  %i.bs = zext i16 %.val23.i.i.i.i to i64
  %i.bt = urem i64 %i.bs, %.val21.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.bt, %i.bj
  br i1 %.not19.i.i.i.i, label %bb.l, label %..loopexit_crit_edge6.i.i.i.i, !llvm.loop !351

..loopexit_crit_edge6.i.i.i.i:                    ; preds = %bb.m
  br label %.loopexit.i.i, !llvm.loop !351

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i101, %..loopexit_crit_edge6.i.i.i.i, %.loopexit237
  %i.bu = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27
          to label %.noexc unwind label %.loopexit.split-lp230.loopexit ; 20 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bu, align 8, !tbaa !211
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i16 %.sroa.0177.0.extract.trunc, ptr %i.bv, align 8, !tbaa !352
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48 ; 2 uses
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !355
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i64 1, ptr %i.bz, align 8, !tbaa !356
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bx, align 8, !tbaa !323
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i8 0, i64 40, i1 false)
  %i.cc = load i64, ptr %i.k, align 8, !tbaa !357
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !349
  %i.ce = load i64, ptr %i.t, align 8, !tbaa !358
  %i.cf = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.cd, i64 noundef %i.ce, i64 noundef 1)
          to label %.noexc.i.i unwind label %bb.af ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc
  %i.cg = extractvalue { i8, i64 } %i.cf, 0
  %i.ch = trunc i8 %i.cg to i1
  br i1 %i.ch, label %bb.n, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !347
  br label %bb.aa

bb.n:                                             ; preds = %.noexc.i.i
  %i.ci = extractvalue { i8, i64 } %i.cf, 1       ; 7 uses
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.o, label %bb.p, !prof !156

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.g, align 8, !tbaa !359
  br label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ck = icmp ugt i64 %i.ci, 1152921504606846975
  br i1 %i.ck, label %bb.q, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN12_GLOBAL__N_18LBMToRunEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i, !prof !156

bb.q:                                             ; preds = %bb.p
  %i.cl = icmp ugt i64 %i.ci, 2305843009213693951
  br i1 %i.cl, label %.noexc.i.i.i.i.i.i.i, label %.noexc7.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp244

.noexc.i.i.i.i:                                   ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

.noexc7.i.i.i.i.i.i.i:                            ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc5.i.i.i.i unwind label %.loopexit.split-lp244

.noexc5.i.i.i.i:                                  ; preds = %.noexc7.i.i.i.i.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN12_GLOBAL__N_18LBMToRunEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i: ; preds = %bb.p
  %i.cm = shl nuw nsw i64 %i.ci, 3                ; 2 uses
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #27
          to label %.noexc6.i.i.i.i unwind label %.loopexit243 ; 2 uses

.noexc6.i.i.i.i:                                  ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN12_GLOBAL__N_18LBMToRunEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cn, i8 0, i64 %i.cm, i1 false)
  br label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i

_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %.noexc6.i.i.i.i, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.o ], [ %i.cn, %.noexc6.i.i.i.i ] ; 4 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !350 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !350
  %.not30.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.u
  %.032.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.u ], [ 0, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ] ; 2 uses
  %.02531.i.i.i.i.i = phi ptr [ %.025.val.i.i.i.i.i, %bb.u ], [ %.val.i.i.i.i.i, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ] ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN10LBMManager9applyLBMsEP17ServerEnvironmentP8MapBlockjf:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i, i64 %.032.i.i.i.i.i
  store ptr %.02531.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !266
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i102
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !211
  store ptr %i.cw, ptr %.02531.i.i.i.i.i, align 8, !tbaa !211
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !266
  store ptr %.02531.i.i.i.i.i, ptr %i.cx, align 8, !tbaa !211
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.1.i.i.i.i.i = phi i64 [ %.032.i.i.i.i.i, %bb.t ], [ %i.cq, %bb.s ], [ %i.cq, %bb.r ]
  %.not.i.i.i.i.i103 = icmp eq ptr %.025.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i103, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i102, !llvm.loop !360

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i
  %i.cy = load ptr, ptr %5, align 8, !tbaa !347   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.g
  br i1 %i.cz, label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = load i64, ptr %i.h, align 8, !tbaa !349
  %i.db = shl i64 %i.da, 3
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #26
  br label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i

.loopexit243:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKtN12_GLOBAL__N_18LBMToRunEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i
  %lpad.loopexit245 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

.loopexit.split-lp244:                            ; preds = %.noexc.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp246 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp244, %.loopexit243
  %lpad.phi247 = phi { ptr, i32 } [ %lpad.loopexit245, %.loopexit243 ], [ %lpad.loopexit.split-lp246, %.loopexit.split-lp244 ]
  %i.dc = extractvalue { ptr, i32 } %lpad.phi247, 0
  %i.dd = call ptr @__cxa_begin_catch(ptr %i.dc) #25 ; 0 uses
  store i64 %i.cc, ptr %i.k, align 8, !tbaa !357
  invoke void @__cxa_rethrow() #28
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #29
  unreachable

bb.z:                                             ; preds = %bb.w
  unreachable

_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i: ; preds = %bb.v, %._crit_edge.i.i.i.i.i
  store i64 %i.ci, ptr %i.h, align 8, !tbaa !349
  store ptr %.0.i.i.i.i.i.i, ptr %5, align 8, !tbaa !347
  %i.dh = urem i64 %.pre-phi, %i.ci
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i, %._crit_edge.i.i.i
  %i.di = phi ptr [ %.0.i.i.i.i.i.i, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %.pre.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.0.i28.i.i = phi i64 [ %i.dh, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i ], [ %i.bj, %._crit_edge.i.i.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.0.i28.i.i ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !266 ; 2 uses
  %.not.i.i29.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i29.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !211
  store ptr %i.dl, ptr %i.bu, align 8, !tbaa !211
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !266
  store ptr %i.bu, ptr %i.dm, align 8, !tbaa !211
  br label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !350 ; 3 uses
  store ptr %i.dn, ptr %i.bu, align 8, !tbaa !211
  store ptr %i.bu, ptr %i.i, align 8, !tbaa !350
  %.not11.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not11.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.val12.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !349
  %.val13.i.i.i.i = load i16, ptr %i.do, align 2, !tbaa !141
  %i.dp = zext i16 %.val13.i.i.i.i to i64
  %i.dq = urem i64 %i.dp, %.val12.i.i.i.i
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dq
  store ptr %i.bu, ptr %i.dr, align 8, !tbaa !266
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.i, ptr %i.dj, align 8, !tbaa !266
  br label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i

_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %bb.ae, %bb.ab
  %i.ds = load i64, ptr %i.t, align 8, !tbaa !358
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.t, align 8, !tbaa !358
  br label %.thread205

bb.af:                                            ; preds = %.noexc
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.af, %bb.x
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.du, %bb.af ], [ %i.de, %bb.x ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !212 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.body.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !215
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #26
  br label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.ag, %.body.i.i
  %i.ef = load ptr, ptr %i.ca, align 8, !tbaa !361 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ef, %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i ] ; 2 uses
  %i.eg = load ptr, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !211 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i, i64 noundef 24) #26
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !362

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EED2Ev.exit.i.i.i.i
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !355
  %i.ei = load i64, ptr %i.dv, align 8, !tbaa !356
  %i.ej = shl i64 %i.ei, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.eh, i8 0, i64 %i.ej, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.ek = load ptr, ptr %i.dx, align 8, !tbaa !355 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dw
  br i1 %i.el, label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !356
  %i.en = shl i64 %i.em, 3
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #26
  br label %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i, %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 96) #26
  br label %.body

.thread205:                                       ; preds = %bb.l, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.k
  %.pn.i.i = phi ptr [ %i.bu, %_ZNSt10_HashtableItSt4pairIKtN12_GLOBAL__N_18LBMToRunEESaIS4_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bm, %bb.k ], [ %i.bq, %bb.l ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  br label %bb.aj

.loopexit229:                                     ; preds = %_ZNKSt6vectorIP23LoadingBlockModifierDefSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit231 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp230.loopexit:                   ; preds = %.critedge.i, %.loopexit.i.i
  %lpad.loopexit240 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp230.loopexit.split-lp:          ; preds = %bb.bf
  %lpad.loopexit.split-lp241 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.d
  %.not89 = icmp eq ptr %.270339, null
  br i1 %.not89, label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, label %bb.aj

bb.aj:                                            ; preds = %.thread205, %bb.ai
  %.367212 = phi i16 [ %.sroa.0177.0.extract.trunc, %.thread205 ], [ %.266340, %bb.ai ] ; 3 uses
  %.371211 = phi ptr [ %i.bi, %.thread205 ], [ %.270339, %bb.ai ] ; 5 uses
  %.477210 = phi ptr [ %.1.i.i, %.thread205 ], [ %.275338, %bb.ai ] ; 12 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.477210, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !363
  %.not.not.i = icmp eq i64 %i.ep, 0
  br i1 %.not.not.i, label %bb.ak, label %.thread.i.thread449

.thread.i.thread449:                              ; preds = %bb.aj
  %8 = call i64 @llvm.fshl.i64(i64 %indvars.iv, i64 %indvars.iv, i64 40)
  %.reass.reass = xor i64 %8, %invariant.op       ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.477210, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !356 ; 2 uses
  %i.es = urem i64 %.reass.reass, %i.er           ; 5 uses
  %i.et = load ptr, ptr %.477210, align 8, !tbaa !355
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.es
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i153, label %.critedge.i, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %.477210, i64 16
  %.sroa.028.039.i = load ptr, ptr %i.ew, align 8, !tbaa !211 ; 2 uses
  %.not40.i = icmp eq ptr %.sroa.028.039.i, null
  br i1 %.not40.i, label %.critedge.i.sink.split, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.ak, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i
  %.sroa.028.041.i = phi ptr [ %.sroa.028.0.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i ], [ %.sroa.028.039.i, %bb.ak ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i, i64 8
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !364
  %i.ez = zext i16 %i.ey to i64
  %i.fa = icmp eq i64 %indvars.iv, %i.ez
  br i1 %i.fa, label %bb.al, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i

bb.al:                                            ; preds = %.lr.ph.i155
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i, i64 10
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !365
  %i.fd = zext i16 %i.fc to i64
  %i.fe = icmp eq i64 %indvars.iv393, %i.fd
  br i1 %i.fe, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i: ; preds = %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.028.041.i, i64 12
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !366
  %i.fh = zext i16 %i.fg to i64
  %i.fi = icmp eq i64 %indvars.iv397, %i.fh
  br i1 %i.fi, label %.loopexit234, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i, %bb.al, %.lr.ph.i155
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.041.i, align 8, !tbaa !211 ; 2 uses
  %.not.i156 = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i156, label %.critedge.i.sink.split, label %.lr.ph.i155, !llvm.loop !367

bb.am:                                            ; preds = %.thread.i.thread449
  %i.fj = load ptr, ptr %i.ev, align 8, !tbaa !211 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %.pre.i.i.i154 = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !308
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %bb.am
  %i.fk = phi i64 [ %.pre.i.i.i154, %bb.am ], [ %i.gb, %bb.aq ]
  %i.fl = phi ptr [ %i.fj, %bb.am ], [ %i.fz, %bb.aq ] ; 4 uses
  %i.fm = icmp eq i64 %.reass.reass, %i.fk
  br i1 %i.fm, label %bb.ao, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !364
  %i.fp = zext i16 %i.fo to i64
  %i.fq = icmp eq i64 %indvars.iv, %i.fp
  br i1 %i.fq, label %bb.ap, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 10
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !365
  %i.ft = zext i16 %i.fs to i64
  %i.fu = icmp eq i64 %indvars.iv393, %i.ft
  br i1 %i.fu, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i: ; preds = %bb.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !366
  %i.fx = zext i16 %i.fw to i64
  %i.fy = icmp eq i64 %indvars.iv397, %i.fx
  br i1 %i.fy, label %.loopexit234, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, %bb.ap, %bb.ao, %bb.an
  %i.fz = load ptr, ptr %i.fl, align 8, !tbaa !211 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !308 ; 2 uses
  %i.gc = urem i64 %i.gb, %i.er
  %.not19.i.i.i = icmp eq i64 %i.gc, %i.es
  br i1 %.not19.i.i.i, label %bb.an, label %.critedge.i, !llvm.loop !368

.critedge.i.sink.split:                           ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i, %bb.ak
  %9 = call i64 @llvm.fshl.i64(i64 %indvars.iv, i64 %indvars.iv, i64 40)
  %.reass498.reass = xor i64 %9, %invariant.op574 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.477210, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !356
  %i.gf = urem i64 %.reass498.reass, %i.ge
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.aq, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i, %.critedge.i.sink.split, %.thread.i.thread449
  %i.gg = phi i64 [ %i.es, %.thread.i.thread449 ], [ %i.gf, %.critedge.i.sink.split ], [ %i.es, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i ], [ %i.es, %bb.aq ]
  %i.gh = phi i64 [ %.reass.reass, %.thread.i.thread449 ], [ %.reass498.reass, %.critedge.i.sink.split ], [ %.reass.reass, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i.i ], [ %.reass.reass, %bb.aq ]
  %i.gi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.noexc157 unwind label %.loopexit.split-lp230.loopexit ; 6 uses

.noexc157:                                        ; preds = %.critedge.i
  store ptr null, ptr %i.gi, align 8, !tbaa !211
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = trunc nuw nsw i64 %indvars.iv to i16
  store i16 %i.gk, ptr %i.gj, align 8, !tbaa !141
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 10
  store i16 %i.ah, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !141
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i16 %i.ae, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !141
  %i.gl = invoke ptr @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %.477210, i64 noundef %i.gg, i64 noundef %i.gh, ptr noundef nonnull %i.gi, i64 noundef 1)
          to label %.loopexit234 unwind label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc157
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 24) #26
  br label %.body

.loopexit234:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS3_EEbRKT_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector3dIsEES3_NS_9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS3_EEbRKT_RKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i, %.noexc157
  br i1 %.not87.not, label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, label %bb.ar

bb.ar:                                            ; preds = %.loopexit234
  %.371.val = load ptr, ptr %.371211, align 8, !tbaa !219 ; 2 uses
  %i.gn = getelementptr i8, ptr %.371211, i64 8
  %.371.val96 = load ptr, ptr %i.gn, align 8, !tbaa !219 ; 2 uses
  %.not16.i = icmp eq ptr %.371.val, %.371.val96
  br i1 %.not16.i, label %_ZN12_GLOBAL__N_18LBMToRun10insertLBMsISt6vectorIP23LoadingBlockModifierDefSaIS4_EEEEvRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar
  %i.go = getelementptr inbounds nuw i8, ptr %.477210, i64 56 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.477210, i64 64 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.477210, i64 72 ; 3 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !219
  %.pre22.i = load ptr, ptr %i.gp, align 8, !tbaa !219
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EE9push_backERKS1_.exit.i, %.lr.ph.i
  %i.gr = phi ptr [ %.pre22.i, %.lr.ph.i ], [ %i.iw, %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EE9push_backERKS1_.exit.i ] ; 7 uses
  %i.gs = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.ix, %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EE9push_backERKS1_.exit.i ] ; 9 uses
  %.sroa.03.017.i = phi ptr [ %.371.val, %.lr.ph.i ], [ %i.iy, %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EE9push_backERKS1_.exit.i ] ; 7 uses
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = ptrtoint ptr %i.gs to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 8 uses
  %i.gw = ashr i64 %i.gv, 5                       ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i.i.i.i106, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i106:                                ; preds = %bb.as
  %i.gy = load ptr, ptr %.sroa.03.017.i, align 8, !tbaa !220 ; 4 uses
  %i.gz = and i64 %i.gv, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.gs, i64 %i.gz ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i106
  %.052.i.i.i.i = phi i64 [ %i.gw, %.lr.ph.i.i.i.i106 ], [ %i.hm, %bb.ax ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i106 ], [ %i.hl, %bb.ax ] ; 9 uses
  %i.ha = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !220
  %i.hb = icmp eq ptr %i.ha, %i.gy
  br i1 %i.hb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !220
  %i.he = icmp eq ptr %i.hd, %i.gy
  br i1 %i.he, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !220
  %i.hh = icmp eq ptr %i.hg, %i.gy
  br i1 %i.hh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit480, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !220
  %i.hk = icmp eq ptr %i.hj, %i.gy
  br i1 %i.hk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit482, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.hm = add nsw i64 %.052.i.i.i.i, -1
  %i.hn = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.hn, label %bb.at, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !222

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.ax
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.gt, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.as
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.gv, %bb.as ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.gs, %bb.as ] ; 5 uses
  %i.ho = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.ho, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i [
    i64 3, label %bb.ay
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %.pre58.i.i.i.i = load ptr, ptr %.sroa.03.017.i, align 8, !tbaa !220
  br label %bb.bc

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.03.017.i, align 8, !tbaa !220
  br label %bb.ba

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hp = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !220
  %i.hq = load ptr, ptr %.sroa.03.017.i, align 8, !tbaa !220 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge._crit_edge.i.i.i.i
  %i.ht = phi ptr [ %i.hq, %bb.az ], [ %.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.hs, %bb.az ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %i.hu = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !220
  %i.hv = icmp eq ptr %i.hu, %i.ht
  br i1 %i.hv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge._crit_edge57.i.i.i.i
  %i.hx = phi ptr [ %i.ht, %bb.bb ], [ %.pre58.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ]
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.hw, %bb.bb ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ] ; 2 uses
  %i.hy = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !220
  %i.hz = icmp eq ptr %i.hy, %i.hx
  %spec.select.i.i.i.i = select i1 %i.hz, ptr %.sroa.032.2.i.i.i.i, ptr %i.gr
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.au
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit480: ; preds = %bb.av
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit482: ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i: ; preds = %bb.at, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit480, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit482, %bb.bc, %bb.ba, %bb.ay
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %bb.ba ], [ %spec.select.i.i.i.i, %bb.bc ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.ay ], [ %i.ic, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit482 ], [ %i.ia, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.ib, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i.loopexit.split.loop.exit480 ], [ %.sroa.032.051.i.i.i.i, %bb.at ]
  %.not7.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.gr
  br i1 %.not7.i, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i, label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EE9push_backERKS1_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.i, %._crit_edge.i.i.i.i
  %i.id = load ptr, ptr %i.gq, align 8, !tbaa !215
  %.not.i.i = icmp eq ptr %i.gr, %i.id
  br i1 %.not.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i
  %i.ie = load ptr, ptr %.sroa.03.017.i, align 8, !tbaa !220
  store ptr %i.ie, ptr %i.gr, align 8, !tbaa !220
  %i.if = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  store ptr %i.if, ptr %i.gp, align 8, !tbaa !223
  br label %_ZNSt6vectorIP23LoadingBlockModifierDefSaIS1_EE9push_backERKS1_.exit.i

bb.be:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPP23LoadingBlockModifierDefSt6vectorIS3_SaIS3_EEEES3_ET_S9_S9_RKT0_.exit.thread.i
  %i.ig = icmp eq i64 %i.gv, 9223372036854775800
  br i1 %i.ig, label %bb.bf, label %_ZNKSt6vectorIP23LoadingBlockModifierDefSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #28
          to label %.noexc107 unwind label %.loopexit.split-lp230.loopexit.split-lp

.noexc107:                                        ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIP23LoadingBlockModifierDefSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.be
  %i.ih = ashr exact i64 %i.gv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.ii = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ih ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.ih
  %i.ik = call i64 @llvm.umin.i64(i64 %i.ii, i64 1152921504606846975)
  %i.il = select i1 %i.ij, i64 1152921504606846975, i64 %i.ik ; 3 uses
  %.not.i.i.i.i105 = icmp ne i64 %i.il, 0
  call void @llvm.assume(i1 %.not.i.i.i.i105)
  %i.im = shl nuw nsw i64 %i.il, 3
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #27
          to label %.noexc108 unwind label %.loopexit229 ; 5 uses

end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb1EEEm:bb.a
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !357
  invoke void @__cxa_rethrow() #28
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !356
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !308
  %i.u = load ptr, ptr %0, align 8, !tbaa !355    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !266  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  store ptr %i.x, ptr %3, align 8, !tbaa !211
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !266
  store ptr %3, ptr %i.y, align 8, !tbaa !211
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !361
  store ptr %i.aa, ptr %3, align 8, !tbaa !211
  store ptr %3, ptr %i.z, align 8, !tbaa !361
  %i.ab = load ptr, ptr %3, align 8, !tbaa !211   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !356
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !308
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !266
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !266
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !363
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !363
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !462
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !156

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #27 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4core8vector3dIsEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !361  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !361
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !211 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !308
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !266  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !361
  store ptr %i.o, ptr %.02530, align 8, !tbaa !211
  store ptr %.02530, ptr %i.g, align 8, !tbaa !361
  store ptr %i.g, ptr %i.m, align 8, !tbaa !266
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !211
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !266
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !211
  store ptr %i.r, ptr %.02530, align 8, !tbaa !211
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !266
  store ptr %.02530, ptr %i.s, align 8, !tbaa !211
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !463

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !355    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !356
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !356
  store ptr %.0.i, ptr %0, align 8, !tbaa !355
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #2

declare extern_weak void @_ZTH13warningstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

declare extern_weak void @_ZTH10infostream() #2

declare extern_weak void @_ZTH11tracestream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

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
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTS12ABMWithState", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTS19ActiveBlockModifier", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!10, !13, i64 8}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTS10ABMHandler", !19, i64 0, !20, i64 8}
!19 = !{!"p1 _ZTS17ServerEnvironment", !12, i64 0}
!20 = !{!"_ZTSSt6vectorIPS_I9ActiveABMSaIS0_EESaIS3_EE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIPSt6vectorI9ActiveABMSaIS1_EESaIS4_EE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPSt6vectorI9ActiveABMSaIS1_EESaIS4_EE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIPSt6vectorI9ActiveABMSaIS1_EESaIS4_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p2 _ZTSSt6vectorI9ActiveABMSaIS0_EE", !25, i64 0}
!25 = !{!"any p2 pointer", !12, i64 0}
!26 = !{!27, !44, i64 104}
!27 = !{!"_ZTS17ServerEnvironment", !28, i64 0, !36, i64 88, !43, i64 96, !44, i64 104, !45, i64 112, !70, i64 328, !74, i64 400, !78, i64 2920, !13, i64 3000, !86, i64 3004, !87, i64 3008, !6, i64 3152, !86, i64 3156, !86, i64 3160, !86, i64 3164, !30, i64 3168, !30, i64 3169, !6, i64 3172, !13, i64 3176, !6, i64 3180, !93, i64 3184, !98, i64 3208, !13, i64 3320, !13, i64 3324, !13, i64 3328, !13, i64 3332, !13, i64 3336, !13, i64 3340, !106, i64 3344, !111, i64 3368, !112, i64 3376, !86, i64 3384, !113, i64 3392, !6, i64 3448, !115, i64 3456, !117, i64 3512, !122, i64 3528, !122, i64 3544}
!28 = !{!"_ZTS11Environment", !6, i64 8, !29, i64 12, !6, i64 16, !13, i64 20, !13, i64 24, !30, i64 28, !6, i64 32, !31, i64 36, !33, i64 40, !34, i64 48}
!29 = !{!"_ZTSSt6atomicIfE", !13, i64 0}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"_ZTSSt6atomicIjE", !32, i64 0}
!32 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!33 = !{!"p1 _ZTS8IGameDef", !12, i64 0}
!34 = !{!"_ZTSSt5mutex", !35, i64 0}
!35 = !{!"_ZTSSt12__mutex_base", !7, i64 0}
!36 = !{!"_ZTSSt10unique_ptrI9ServerMapSt14default_deleteIS0_EE", !37, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_dataI9ServerMapSt14default_deleteIS0_ELb1ELb1EE", !38, i64 0}
!38 = !{!"_ZTSSt15__uniq_ptr_implI9ServerMapSt14default_deleteIS0_EE", !39, i64 0}
!39 = !{!"_ZTSSt5tupleIJP9ServerMapSt14default_deleteIS0_EEE", !40, i64 0}
!40 = !{!"_ZTSSt11_Tuple_implILm0EJP9ServerMapSt14default_deleteIS0_EEE", !41, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm0EP9ServerMapLb0EE", !42, i64 0}
!42 = !{!"p1 _ZTS9ServerMap", !12, i64 0}
!43 = !{!"p1 _ZTS15ServerScripting", !12, i64 0}
!44 = !{!"p1 _ZTS6Server", !12, i64 0}
!45 = !{!"_ZTSN6server15ActiveObjectMgrE", !46, i64 0, !58, i64 120}
!46 = !{!"_ZTS15ActiveObjectMgrI18ServerActiveObjectE", !47, i64 8}
!47 = !{!"_ZTS13ModifySafeMapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EEE", !48, i64 0, !48, i64 48, !6, i64 96, !57, i64 104}
!48 = !{!"_ZTSSt3mapItSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE", !49, i64 0}
!49 = !{!"_ZTSSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE", !50, i64 0}
!50 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !51, i64 0, !53, i64 8}
!51 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessItEE", !52, i64 0}
!52 = !{!"_ZTSSt4lessItE"}
!53 = !{!"_ZTSSt15_Rb_tree_header", !54, i64 0, !57, i64 32}
!54 = !{!"_ZTSSt18_Rb_tree_node_base", !55, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!55 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!56 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!57 = !{!"long", !7, i64 0}
!58 = !{!"_ZTSN8k_d_tree14DynamicKdTreesILh3EftEE", !59, i64 0, !64, i64 24, !57, i64 80, !57, i64 88}
!59 = !{!"_ZTSSt6vectorIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !60, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE12_Vector_implE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN8k_d_tree6KdTreeILh3EftEESaIS2_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!63 = !{!"p1 _ZTSN8k_d_tree6KdTreeILh3EftEE", !12, i64 0}
!64 = !{!"_ZTSSt13unordered_mapItN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryESt4hashItESt8equal_toItESaISt4pairIKtS3_EEE", !65, i64 0}
!65 = !{!"_ZTSSt10_HashtableItSt4pairIKtN8k_d_tree14DynamicKdTreesILh3EftE8DelEntryEESaIS6_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !66, i64 0, !57, i64 8, !67, i64 16, !57, i64 24, !69, i64 32, !68, i64 48}
!66 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !25, i64 0}
!67 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !68, i64 0}
!68 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!69 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !13, i64 0, !57, i64 8}
!70 = !{!"_ZTS26OnMapblocksChangedReceiver", !71, i64 0, !72, i64 8, !30, i64 64}
!71 = !{!"_ZTS16MapEventReceiver"}
!72 = !{!"_ZTSSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !73, i64 0}
!73 = !{!"_ZTSSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE", !66, i64 0, !57, i64 8, !67, i64 16, !57, i64 24, !69, i64 32, !68, i64 48}
!74 = !{!"_ZTS13GUIDGenerator", !75, i64 0, !76, i64 2504}
!75 = !{!"_ZTSSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EE", !7, i64 0, !57, i64 2496}
!76 = !{!"_ZTSSt24uniform_int_distributionImE", !77, i64 0}
!77 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !57, i64 0, !57, i64 8}
!78 = !{!"_ZTSSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE", !79, i64 0}
!79 = !{!"_ZTSSt5dequeI19ActiveObjectMessageSaIS0_EE", !80, i64 0}
!80 = !{!"_ZTSSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE", !81, i64 0}
!81 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE11_Deque_implE", !82, i64 0}
!82 = !{!"_ZTSNSt11_Deque_baseI19ActiveObjectMessageSaIS0_EE16_Deque_impl_dataE", !83, i64 0, !57, i64 8, !84, i64 16, !84, i64 48}
!83 = !{!"p2 _ZTS19ActiveObjectMessage", !25, i64 0}
!84 = !{!"_ZTSSt15_Deque_iteratorI19ActiveObjectMessageRS0_PS0_E", !85, i64 0, !85, i64 8, !85, i64 16, !83, i64 24}
!85 = !{!"p1 _ZTS19ActiveObjectMessage", !12, i64 0}
!86 = !{!"_ZTS15IntervalLimiter", !13, i64 0}
!87 = !{!"_ZTS15ActiveBlockList", !88, i64 0, !88, i64 48, !88, i64 96}
!88 = !{!"_ZTSSt3setIN4core8vector3dIsEESt4lessIS2_ESaIS2_EE", !89, i64 0}
!89 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !90, i64 0}
!90 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !91, i64 0, !53, i64 8}
!91 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !92, i64 0}
!92 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!93 = !{!"_ZTSSt6vectorI12ABMWithStateSaIS0_EE", !94, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseI12ABMWithStateSaIS0_EE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseI12ABMWithStateSaIS0_EE12_Vector_implE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseI12ABMWithStateSaIS0_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!97 = !{!"p1 _ZTS12ABMWithState", !12, i64 0}
!98 = !{!"_ZTS10LBMManager", !30, i64 0, !99, i64 8, !101, i64 64}
!99 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP23LoadingBlockModifierDefSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE", !100, i64 0}
!100 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P23LoadingBlockModifierDefESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !66, i64 0, !57, i64 8, !67, i64 16, !57, i64 24, !69, i64 32, !68, i64 48}
!101 = !{!"_ZTSSt3mapIj17LBMContentMappingSt4lessIjESaISt4pairIKjS0_EEE", !102, i64 0}
!102 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKj17LBMContentMappingESt10_Select1stIS3_ESt4lessIjESaIS3_EE", !103, i64 0}
!103 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKj17LBMContentMappingESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !104, i64 0, !53, i64 8}
!104 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !105, i64 0}
!105 = !{!"_ZTSSt4lessIjE"}
!106 = !{!"_ZTSSt6vectorIP12RemotePlayerSaIS1_EE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIP12RemotePlayerSaIS1_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIP12RemotePlayerSaIS1_EE12_Vector_implE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIP12RemotePlayerSaIS1_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!110 = !{!"p2 _ZTS12RemotePlayer", !25, i64 0}
!111 = !{!"p1 _ZTS14PlayerDatabase", !12, i64 0}
!112 = !{!"p1 _ZTS12AuthDatabase", !12, i64 0}
!113 = !{!"_ZTSSt13unordered_mapIjfSt4hashIjESt8equal_toIjESaISt4pairIKjfEEE", !114, i64 0}
!114 = !{!"_ZTSSt10_HashtableIjSt4pairIKjfESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !66, i64 0, !57, i64 8, !67, i64 16, !57, i64 24, !69, i64 32, !68, i64 48}
!115 = !{!"_ZTSSt13unordered_mapIjtSt4hashIjESt8equal_toIjESaISt4pairIKjtEEE", !116, i64 0}
!116 = !{!"_ZTSSt10_HashtableIjSt4pairIKjtESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !66, i64 0, !57, i64 8, !67, i64 16, !57, i64 24, !69, i64 32, !68, i64 48}
!117 = !{!"_ZTSSt10shared_ptrI13MetricCounterE", !118, i64 0}
!118 = !{!"_ZTSSt12__shared_ptrI13MetricCounterLN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0, !120, i64 8}
!119 = !{!"p1 _ZTS13MetricCounter", !12, i64 0}
!120 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !121, i64 0}
!121 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!122 = !{!"_ZTSSt10shared_ptrI11MetricGaugeE", !123, i64 0}
!123 = !{!"_ZTSSt12__shared_ptrI11MetricGaugeLN9__gnu_cxx12_Lock_policyE2EE", !124, i64 0, !120, i64 8}
!124 = !{!"p1 _ZTS11MetricGauge", !12, i64 0}
!125 = distinct !{null}
!126 = !{!97, !97, i64 0}
!127 = !{!128, !11, i64 0}
!128 = !{!"_ZTS9ActiveABM", !11, i64 0, !129, i64 8, !129, i64 32, !6, i64 56, !134, i64 60, !134, i64 62}
!129 = !{!"_ZTSSt6vectorItSaItEE", !130, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseItSaItEE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!133 = !{!"p1 short", !12, i64 0}
!134 = !{!"short", !7, i64 0}
!135 = !{!128, !6, i64 56}
!136 = !{!128, !134, i64 60}
!137 = !{!128, !134, i64 62}
!138 = !{!139, !139, i64 0}
!139 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!140 = !{!133, !133, i64 0}
!141 = !{!134, !134, i64 0}
!142 = distinct !{!142, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = distinct !{!144, !143}
!145 = !{!132, !133, i64 8}
!146 = !{!132, !133, i64 0}
!147 = !{!132, !133, i64 16}
!148 = !{!23, !24, i64 8}
!149 = !{!23, !24, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"p1 _ZTSSt6vectorI9ActiveABMSaIS0_EE", !12, i64 0}
!152 = !{!153, !154, i64 8}
!153 = !{!"_ZTSNSt12_Vector_baseI9ActiveABMSaIS0_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!154 = !{!"p1 _ZTS9ActiveABM", !12, i64 0}
!155 = !{!153, !154, i64 16}
!156 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!157 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!158 = !{!23, !24, i64 16}
!159 = !{!24, !24, i64 0}
!160 = !{!153, !154, i64 0}
!161 = distinct !{!161, !143}
!162 = !{!6, !6, i64 0}
!163 = !{!53, !57, i64 32}
!164 = distinct !{!164, !143}
!165 = !{!166, !167, i64 8}
!166 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE17_Vector_impl_dataE", !167, i64 0, !167, i64 8, !167, i64 16}
!167 = !{!"p1 _ZTS12StaticObject", !12, i64 0}
!168 = !{!166, !167, i64 0}
!169 = distinct !{!169, !143}
!170 = !{!28, !6, i64 8}
!171 = !{!172, !30, i64 37}
!172 = !{!"_ZTS8MapBlock", !30, i64 0, !173, i64 2, !173, i64 8, !134, i64 14, !174, i64 16, !33, i64 24, !13, i64 32, !30, i64 36, !30, i64 37, !129, i64 40, !30, i64 64, !30, i64 65, !134, i64 66, !6, i64 68, !6, i64 72, !6, i64 76, !134, i64 80, !30, i64 82, !30, i64 83, !175, i64 88, !179, i64 144, !186, i64 216}
!173 = !{!"_ZTSN4core8vector3dIsEE", !134, i64 0, !134, i64 2, !134, i64 4}
!174 = !{!"p1 _ZTS7MapNode", !12, i64 0}
!175 = !{!"_ZTS16NodeMetadataList", !30, i64 0, !176, i64 8}
!176 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !177, i64 0}
!177 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !178, i64 0}
!178 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !91, i64 0, !53, i64 8}
!179 = !{!"_ZTS16StaticObjectList", !180, i64 0, !183, i64 24}
!180 = !{!"_ZTSSt6vectorI12StaticObjectSaIS0_EE", !181, i64 0}
!181 = !{!"_ZTSSt12_Vector_baseI12StaticObjectSaIS0_EE", !182, i64 0}
!182 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE12_Vector_implE", !166, i64 0}
!183 = !{!"_ZTSSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE", !184, i64 0}
!184 = !{!"_ZTSSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE", !185, i64 0}
!185 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !51, i64 0, !53, i64 8}
!186 = !{!"_ZTS13NodeTimerList", !187, i64 0, !192, i64 48, !195, i64 96, !195, i64 104}
!187 = !{!"_ZTSSt8multimapId9NodeTimerSt4lessIdESaISt4pairIKdS0_EEE", !188, i64 0}
end_hunk_3
