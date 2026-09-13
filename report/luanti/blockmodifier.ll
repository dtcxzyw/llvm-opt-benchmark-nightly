Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/blockmodifier?download=true
inline.NumInlined: 2159
inline.NumDeleted: 1045
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10ABMHandler12countObjectsEP8MapBlockP9ServerMapRj:bb.a
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.j to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.m = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0.0.insert.insert.i) ; 4 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.l
  %i.n = add nsw i16 %.02334, 1                   ; 2 uses
  %exitcond36.not = icmp eq i16 %i.n, 2
  br i1 %exitcond36.not, label %bb.b, label %.preheader29, !llvm.loop !330

bb.d:                                             ; preds = %.preheader
  %i.o = add i32 %.133, 1
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.r = load i64, ptr %i.q, align 8, !tbaa !172
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !332
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !333
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 48
  %i.z = add i64 %i.y, %i.r
  %i.aa = load i32, ptr %2, align 4, !tbaa !171
  %i.ab = trunc i64 %i.z to i32
  %i.ac = add i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %2, align 4, !tbaa !171
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
  br i1 %i.f, label %.loopexit379, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !152  ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.thread329, label %bb.c

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
  %.sroa.0322.0394 = phi ptr [ %i.h, %bb.c ], [ %i.w, %bb.f ] ; 2 uses
  %i.r = load i16, ptr %.sroa.0322.0394, align 2, !tbaa !153
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.f, label %.thread329

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0322.0394, i64 2 ; 2 uses
  %.not371 = icmp eq ptr %i.w, %i.j
  br i1 %.not371, label %.loopexit379, label %bb.d

.thread329:                                       ; preds = %bb.e, %bb.b
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

bb.g:                                             ; preds = %.thread329
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !342, !range !199, !noundef !200
  %i.aj = xor i8 %i.ai, 1
  br label %bb.h

bb.h:                                             ; preds = %.thread329, %bb.g
  %i.ak = phi i8 [ 0, %.thread329 ], [ %i.aj, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.preheader377

.preheader377:                                    ; preds = %bb.h, %bb.bb
  %indvars.iv513 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next514, %bb.bb ] ; 5 uses
  %.0113473 = phi i32 [ %i.ab, %bb.h ], [ %.8.ph, %bb.bb ]
  %.0121472 = phi i8 [ %i.ak, %bb.h ], [ %.3124, %bb.bb ]
  %sext.i = shl nuw nsw i64 %indvars.iv513, 8
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 3 uses
  %i.aq = trunc i64 %indvars.iv513 to i16
  %i.ar = add i16 %i.aq, -1
  %i.as = trunc nuw nsw i64 %indvars.iv513 to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader377, %bb.ba
  %indvars.iv510 = phi i64 [ 0, %.preheader377 ], [ %indvars.iv.next511, %bb.ba ] ; 5 uses
  %.1114470 = phi i32 [ %.0113473, %.preheader377 ], [ %.8.ph, %bb.ba ]
  %.1122469 = phi i8 [ %.0121472, %.preheader377 ], [ %.3124, %bb.ba ]
  %sext2.i = shl nuw nsw i64 %indvars.iv510, 4
  %i.at = add nuw nsw i64 %sext2.i, %sext.i
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 3 uses
  %i.au = trunc i64 %indvars.iv510 to i16
  %i.av = add i16 %i.au, -1
  %i.aw = trunc nuw nsw i64 %indvars.iv510 to i16
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %.preheader, %.loopexit
  %indvars.iv507 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next508, %.loopexit ] ; 6 uses
  %indvars.iv = phi i64 [ -1, %.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.2115467 = phi i32 [ %.1114470, %.preheader ], [ %.8.ph, %.loopexit ] ; 4 uses
  %.2123466 = phi i8 [ %.1122469, %.preheader ], [ %.3124, %.loopexit ]
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.ay = load i8, ptr %i.am, align 4, !tbaa !202, !range !199, !noundef !200
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = add nuw nsw i64 %i.at, %indvars.iv507   ; 2 uses
  %i.bb = select i1 %i.az, i64 0, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bb
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bc, align 4 ; 4 uses
  %.sroa.0283.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i.i to i16 ; 10 uses
  %.sroa.8289.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.8289.0.extract.trunc = trunc nuw i32 %.sroa.8289.0.extract.shift to i16
  %i.bd = trunc nuw i8 %.2123466 to i1
  br i1 %i.bd, label %bb.i, label %_ZNSt6vectorItSaItEED2Ev.exit

bb.i:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !152 ; 9 uses
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !152 ; 6 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = ptrtoint ptr %i.be to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 7 uses
  %i.bj = ashr i64 %i.bi, 3                       ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.bl = and i64 %i.bi, -8
  %scevgep.i.i.i = getelementptr i8, ptr %i.be, i64 %i.bl ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i ], [ %i.by, %bb.n ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i ], [ %i.bx, %bb.n ] ; 9 uses
  %i.bm = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !153
  %i.bn = icmp eq i16 %i.bm, %.sroa.0283.0.extract.trunc
  br i1 %i.bn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !153
  %i.bq = icmp eq i16 %i.bp, %.sroa.0283.0.extract.trunc
  br i1 %i.bq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !153
  %i.bt = icmp eq i16 %i.bs, %.sroa.0283.0.extract.trunc
  br i1 %i.bt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit538, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !153
  %i.bw = icmp eq i16 %i.bv, %.sroa.0283.0.extract.trunc
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit540, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.by = add nsw i64 %.052.i.i.i, -1
  %i.bz = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bz, label %bb.j, label %._crit_edge.loopexit.i.i.i, !llvm.loop !334

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.n
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bg, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bi, %bb.i ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.be, %bb.i ] ; 5 uses
  %i.ca = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.ca, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread [
    i64 3, label %bb.o
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.cb = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !153
  %i.cc = icmp eq i16 %i.cb, %.sroa.0283.0.extract.trunc
  br i1 %i.cc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.p
  %.sroa.032.1.i.i.i = phi ptr [ %i.cd, %bb.p ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ce = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !153
  %i.cf = icmp eq i16 %i.ce, %.sroa.0283.0.extract.trunc
  br i1 %i.cf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.q
  %.sroa.032.2.i.i.i = phi ptr [ %i.cg, %bb.q ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ch = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !153
  %i.ci = icmp eq i16 %i.ch, %.sroa.0283.0.extract.trunc
  %spec.select.i.i.i = select i1 %i.ci, ptr %.sroa.032.2.i.i.i, ptr %i.bf
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit538: ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit540: ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit: ; preds = %bb.j, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit538, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit540, %bb.o, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.o ], [ %i.cl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit540 ], [ %i.ck, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit538 ], [ %i.cj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.j ]
  %.not372 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.bf
  br i1 %.not372, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread, label %_ZNSt6vectorItSaItEED2Ev.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %i.cm = ashr exact i64 %i.bi, 1                 ; 3 uses
  %i.cn = icmp ugt i64 %i.cm, 63
  br i1 %i.cn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  store i8 1, ptr %i.ao, align 1, !tbaa !342
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !157
  %.not.i.i.i = icmp eq ptr %i.be, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.cq) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.t:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit.thread
  %i.cr = load ptr, ptr %i.an, align 8, !tbaa !157
  %.not.i = icmp eq ptr %i.bf, %i.cr
  br i1 %.not.i, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i16 %.sroa.0283.0.extract.trunc, ptr %i.bf, align 2, !tbaa !153
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !155
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.ct = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.cm ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #27 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.bi ; 2 uses
  store i16 %.sroa.0283.0.extract.trunc, ptr %i.cw, align 2, !tbaa !153
  %i.cx = icmp sgt i64 %i.bi, 0
  br i1 %i.cx, label %bb.v, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cv, ptr align 2 %i.be, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %.not.i17.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.cz = load ptr, ptr %i.an, align 8, !tbaa !157
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.db) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.cv, ptr %i.g, align 8, !tbaa !156
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !155
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dc, ptr %i.an, align 8, !tbaa !157
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.u, %bb.s, %bb.r, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit
  %.3124 = phi i8 [ 1, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ 0, %bb.s ], [ 1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit ], [ 0, %bb.r ], [ 1, %bb.u ], [ 0, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ] ; 3 uses
  %.sroa.0283.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.dd = zext nneg i32 %.sroa.0283.0.extract.trunc.mask to i64 ; 2 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !158
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !159 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %.not135 = icmp ugt i64 %i.dj, %i.dd
  br i1 %.not135, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !161 ; 3 uses
  %.not136 = icmp eq ptr %i.dl, null
  br i1 %.not136, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload.i = load i48, ptr %i.ap, align 8 ; 3 uses
  %.sroa.0265.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.4266.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.4266.0.extract.trunc = trunc i48 %.sroa.4266.0.extract.shift to i16
  %.sroa.5267.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.5267.0.extract.trunc = trunc nuw i48 %.sroa.5267.0.extract.shift to i16
  %i.dm = trunc nuw nsw i64 %indvars.iv507 to i16
  %i.dn = add i16 %i.dm, %.sroa.0265.0.extract.trunc
  %i.do = add i16 %i.aw, %.sroa.4266.0.extract.trunc ; 3 uses
  %i.dp = add i16 %i.as, %.sroa.5267.0.extract.trunc
  %.sroa.3.0.insert.ext.i = zext i16 %i.dp to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.do to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.dn to i48
  %i.dq = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.dq, %.sroa.2.0.insert.shift.i ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !343 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !343 ; 2 uses
  %.not373446 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not373446, label %.loopexit, label %.lr.ph461

.lr.ph461:                                        ; preds = %bb.y
  %i.du = trunc i64 %indvars.iv507 to i32
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  %i.dw = trunc i64 %indvars.iv507 to i32
  %i.dx = add i32 %i.dw, -1
  %.not140432 = icmp slt i32 %i.dv, %i.dx
  %.sroa.0283.0.insert.ext286 = and i32 %.sroa.0.0.copyload.i.i, 65535
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph461, %select.unfold
  %.3116456 = phi i32 [ %.2115467, %.lr.ph461 ], [ %.6119.ph, %select.unfold ] ; 7 uses
  %.sroa.8289.sroa.0.0452 = phi i16 [ %.sroa.8289.0.extract.trunc, %.lr.ph461 ], [ %.sroa.8289.sroa.0.1.ph, %select.unfold ] ; 6 uses
  %.sroa.0262.0447 = phi ptr [ %i.dr, %.lr.ph461 ], [ %i.jk, %select.unfold ] ; 10 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 60
  %i.dz = load i16, ptr %i.dy, align 4, !tbaa !149
  %i.ea = icmp sgt i16 %i.dz, %i.do
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 62
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = icmp slt i16 %i.ec, %i.do
  %or.cond = select i1 %i.ea, i1 true, i1 %i.ed
  br i1 %or.cond, label %select.unfold, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = tail call noundef i32 @_Z6myrandv()
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 56
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !148
  %i.eh = urem i32 %i.ee, %i.eg
  %.not137 = icmp eq i32 %i.eh, 0
  br i1 %.not137, label %bb.ab, label %select.unfold

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !152
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !152
  %i.em = icmp eq ptr %i.ej, %i.el                ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !152
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0262.0447, i64 40 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !152
  %i.er = icmp eq ptr %i.eo, %i.eq                ; 3 uses
  %or.cond.not = and i1 %i.em, %i.er
  br i1 %or.cond.not, label %.thread345, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not140432, label %._crit_edge438, label %.lr.ph429

.lr.ph429:                                        ; preds = %bb.ac, %._crit_edge430.split
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %._crit_edge430.split ], [ %indvars.iv, %bb.ac ] ; 4 uses
  %.0125435 = phi i8 [ %.5130, %._crit_edge430.split ], [ 0, %bb.ac ]
  %i.es = icmp eq i64 %indvars.iv492, %indvars.iv507
  %i.et = trunc nsw i64 %indvars.iv492 to i16     ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph429, %._crit_edge
  %.1126427 = phi i8 [ %.0125435, %.lr.ph429 ], [ %.5130, %._crit_edge ]
  %storemerge141426 = phi i16 [ %i.av, %.lr.ph429 ], [ %i.ig, %._crit_edge ] ; 4 uses
  %i.eu = zext i16 %storemerge141426 to i64       ; 2 uses
  %i.ev = icmp eq i64 %indvars.iv510, %i.eu
  %or.cond369 = and i1 %i.es, %i.ev
  %i.ew = or i16 %storemerge141426, %i.et
  %sext2.i160 = shl nuw i64 %i.eu, 48
  %i.ex = ashr exact i64 %sext2.i160, 44
  %invariant.op = add i64 %indvars.iv492, %i.ex
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %.thread342
  %.2127423 = phi i8 [ %.1126427, %.lr.ph ], [ %.5130, %.thread342 ] ; 3 uses
  %storemerge143420 = phi i16 [ %i.ar, %.lr.ph ], [ %i.ie, %.thread342 ] ; 5 uses
  %i.ey = zext i16 %storemerge143420 to i64
  %i.ez = icmp eq i64 %indvars.iv513, %i.ey
  %or.cond370 = and i1 %or.cond369, %i.ez
  br i1 %or.cond370, label %.thread342, label %_ZNK4core8vector3dIsEeqERKS1_.exit.thread

_ZNK4core8vector3dIsEeqERKS1_.exit.thread:        ; preds = %bb.ad
  %i.fa = or i16 %i.ew, %storemerge143420
  %i.fb = icmp ult i16 %i.fa, 16
  br i1 %i.fb, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163, label %bb.ae

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %i.fc = load ptr, ptr %i.al, align 8, !tbaa !201
  %i.fd = load i8, ptr %i.am, align 4, !tbaa !202, !range !199, !noundef !200
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = shl nuw nsw i16 %storemerge143420, 8
  %sext.i159 = zext nneg i16 %i.ff to i64
  %.reass = add i64 %invariant.op, %sext.i159
  %i.fg = and i64 %.reass, 4294967295
  %i.fh = select i1 %i.fe, i64 0, i64 %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fh
  %.sroa.0.0.copyload.i.i162 = load i32, ptr %i.fi, align 4
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %.sroa.0.0.copyload.i164 = load i48, ptr %i.ap, align 8 ; 3 uses
  %.sroa.0229.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i164 to i16
  %.sroa.4.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i164, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %.sroa.5.0.extract.shift230 = lshr i48 %.sroa.0.0.copyload.i164, 32
  %.sroa.5.0.extract.trunc231 = trunc nuw i48 %.sroa.5.0.extract.shift230 to i16
  %i.fj = add i16 %i.et, %.sroa.0229.0.extract.trunc
  %i.fk = add i16 %storemerge141426, %.sroa.4.0.extract.trunc
  %i.fl = add i16 %storemerge143420, %.sroa.5.0.extract.trunc231
  %.sroa.3.0.insert.ext.i165 = zext i16 %i.fl to i48
  %.sroa.3.0.insert.shift.i166 = shl nuw i48 %.sroa.3.0.insert.ext.i165, 32
  %.sroa.2.0.insert.ext.i167 = zext i16 %i.fk to i48
  %.sroa.2.0.insert.shift.i168 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i167, 16
  %.sroa.2.0.insert.insert.i169 = or disjoint i48 %.sroa.3.0.insert.shift.i166, %.sroa.2.0.insert.shift.i168
  %.sroa.0.0.insert.ext.i170 = zext i16 %i.fj to i48
  %.sroa.0.0.insert.insert.i171 = or disjoint i48 %.sroa.2.0.insert.insert.i169, %.sroa.0.0.insert.ext.i170
  %i.fm = tail call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %i.aa, i48 %.sroa.0.0.insert.insert.i171, ptr noundef null)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163
  %.0325.in = phi i32 [ %.sroa.0.0.copyload.i.i162, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit163 ], [ %i.fm, %bb.ae ]
  %.0325 = trunc i32 %.0325.in to i16             ; 14 uses
  %i.fn = trunc nuw i8 %.2127423 to i1
  %or.cond6 = select i1 %i.em, i1 true, i1 %i.fn
  br i1 %or.cond6, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtET_S7_S7_RKT0_.exit193.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load ptr, ptr %i.ei, align 8, !tbaa !152 ; 4 uses
  %i.fp = load ptr, ptr %i.ek, align 8, !tbaa !152 ; 3 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
end_hunk_0
