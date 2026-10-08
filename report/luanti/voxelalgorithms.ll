Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxelalgorithms?download=true
inline.NumInlined: 679
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0
$_ZSt19piecewise_construct = comdat any

@_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights = internal thread_local global %"struct.voxalgo::LightQueue" zeroinitializer, align 8
@_ZGVZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights = internal thread_local unnamed_addr global i1 false, align 1
@__dso_handle = external hidden global i8
@_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources = internal thread_local global %"struct.voxalgo::LightQueue" zeroinitializer, align 8
@_ZGVZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources = internal thread_local unnamed_addr global i1 false, align 1
@_ZN7voxalgoL5banksE = internal unnamed_addr constant [2 x i32] [i32 0, i32 1], align 4
@_ZN7voxalgoL13neighbor_dirsE = internal unnamed_addr constant [6 x %"class.core::vector3d"] [%"class.core::vector3d" { i16 1, i16 0, i16 0 }, %"class.core::vector3d" { i16 0, i16 1, i16 0 }, %"class.core::vector3d" { i16 0, i16 0, i16 1 }, %"class.core::vector3d" { i16 0, i16 0, i16 -1 }, %"class.core::vector3d" { i16 0, i16 -1, i16 0 }, %"class.core::vector3d" { i16 -1, i16 0, i16 0 }], align 16
@_ZN7voxalgoL13block_bordersE = internal global [6 x %class.VoxelArea] zeroinitializer, align 16
@_ZN7voxalgoL9block_padE = internal global [6 x %class.VoxelArea] zeroinitializer, align 16
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_voxelalgorithms.cpp, ptr null }]

@_ZN7voxalgo17VoxelLineIteratorC1ERKN4core8vector3dIfEES5_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN7voxalgo17VoxelLineIteratorC2ERKN4core8vector3dIfEES5_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_(i8 noundef zeroext %0, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #0 {
bb.a:
  switch i8 %0, label %bb.t [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.n
    i8 5, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2, !tbaa !19     ; 2 uses
  %i.b = icmp slt i16 %i.a, 15
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i16 %i.a, 1
  store i16 %i.c, ptr %1, align 2, !tbaa !19
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  store i16 0, ptr %1, align 2, !tbaa !19
  %i.d = load i16, ptr %2, align 2, !tbaa !19
  %i.e = add i16 %i.d, 1
  store i16 %i.e, ptr %2, align 2, !tbaa !19
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !20   ; 2 uses
  %i.h = icmp slt i16 %i.g, 15
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i16 %i.g, 1
  store i16 %i.i, ptr %i.f, align 2, !tbaa !20
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  store i16 0, ptr %i.f, align 2, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !20
  %i.l = add i16 %i.k, 1
  store i16 %i.l, ptr %i.j, align 2, !tbaa !20
  br label %bb.t

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !21   ; 2 uses
  %i.o = icmp slt i16 %i.n, 15
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = add nsw i16 %i.n, 1
  store i16 %i.p, ptr %i.m, align 2, !tbaa !21
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  store i16 0, ptr %i.m, align 2, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !21
  %i.s = add i16 %i.r, 1
  store i16 %i.s, ptr %i.q, align 2, !tbaa !21
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !21   ; 2 uses
  %i.v = icmp sgt i16 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i16 %i.u, -1
  store i16 %i.w, ptr %i.t, align 2, !tbaa !21
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  store i16 15, ptr %i.t, align 2, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !21
  %i.z = add i16 %i.y, -1
  store i16 %i.z, ptr %i.x, align 2, !tbaa !21
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !20 ; 2 uses
  %i.ac = icmp sgt i16 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i16 %i.ab, -1
  store i16 %i.ad, ptr %i.aa, align 2, !tbaa !20
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  store i16 15, ptr %i.aa, align 2, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !20
  %i.ag = add i16 %i.af, -1
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !20
  br label %bb.t

bb.q:                                             ; preds = %bb.a
  %i.ah = load i16, ptr %1, align 2, !tbaa !19    ; 2 uses
  %i.ai = icmp sgt i16 %i.ah, 0
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = add nsw i16 %i.ah, -1
  store i16 %i.aj, ptr %1, align 2, !tbaa !19
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i16 15, ptr %1, align 2, !tbaa !19
  %i.ak = load i16, ptr %2, align 2, !tbaa !19
  %i.al = add i16 %i.ak, -1
  store i16 %i.al, ptr %2, align 2, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.i, %bb.l, %bb.o, %bb.r, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d
  %.0 = phi i1 [ true, %bb.s ], [ true, %bb.d ], [ true, %bb.g ], [ true, %bb.j ], [ true, %bb.m ], [ true, %bb.p ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo14unspread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueES7_RSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(385) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.c = icmp eq i32 %2, 1
  %i.d = icmp eq i32 %2, 0                        ; 2 uses
  %.sink.i.v = select i1 %i.d, i32 240, i32 15
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115: ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115.backedge, %bb.a
  %.promoted.i = load i8, ptr %i.a, align 8, !tbaa !24 ; 3 uses
  %i.h = zext i8 %.promoted.i to i64              ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115
  %i.m = icmp eq i8 %.promoted.i, 0
  br i1 %i.m, label %_ZN7voxalgo10LightQueue4nextERhRNS_13ChangingLightE.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.n = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %i.n, label %_ZN7voxalgo10LightQueue4nextERhRNS_13ChangingLightE.exit.loopexit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i256 = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i256, -1 ; 5 uses
  %indvars.i = trunc nuw i64 %indvars.iv.next.i to i8 ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not11.i = icmp eq ptr %i.p, %i.r
  br i1 %.not11.i, label %.lr.ph.i, label %.loopexit.loopexit, !llvm.loop !0

.loopexit.loopexit:                               ; preds = %.lr.ph
  store i8 %indvars.i, ptr %i.a, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115
  %.pre-phi = phi i64 [ %i.h, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115 ], [ %indvars.iv.next.i, %.loopexit.loopexit ]
  %i.s = phi ptr [ %i.l, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115 ], [ %i.r, %.loopexit.loopexit ] ; 4 uses
  %i.t = phi i8 [ %.promoted.i, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115 ], [ %indvars.i, %.loopexit.loopexit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.pre-phi
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -24 ; 2 uses
  %.sroa.0145.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !30 ; 16 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %i.s, i64 -16
  %.sroa.9.0.copyload = load i48, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !31 ; 8 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %i.s, i64 -10
  %.sroa.14.0.copyload = load i48, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !31 ; 5 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %i.s, i64 -4
  %.sroa.16.0.copyload = load i8, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !32
  store ptr %i.w, ptr %i.v, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 36
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !78, !range !79, !noundef !80
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.loopexit._ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit_crit_edge, label %bb.b

.loopexit._ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit_crit_edge: ; preds = %.loopexit
  %.pre217 = lshr i48 %.sroa.9.0.copyload, 16
  %.pre218 = lshr i48 %.sroa.9.0.copyload, 32
  %extract.t = trunc nuw i48 %.pre218 to i16
  %extract.t258 = trunc i48 %.pre217 to i16
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

bb.b:                                             ; preds = %.loopexit
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.9.0.copyload, 32 ; 2 uses
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.9.0.copyload, 16 ; 2 uses
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.9.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %6 = ashr exact i64 %sext.i, 40
  %sext2.i.a = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.ac = ashr exact i64 %sext2.i.a, 44
  %sext3.i = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.ad = ashr exact i64 %sext3.i, 48
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = add nsw i64 %i.ae, %6
  %i.ag = and i64 %i.af, 4294967295
  %extract.t257 = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %extract.t259 = trunc i48 %.sroa.2.0.extract.shift.i to i16
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %.loopexit._ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit_crit_edge, %bb.b
  %.pre218.sink.off0 = phi i16 [ %extract.t, %.loopexit._ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit_crit_edge ], [ %extract.t257, %bb.b ] ; 12 uses
  %.pre217.sink.off0 = phi i16 [ %extract.t258, %.loopexit._ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit_crit_edge ], [ %extract.t259, %bb.b ] ; 12 uses
  %7 = phi i64 [ 0, %.loopexit._ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit_crit_edge ], [ %i.ag, %bb.b ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %7
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ah, align 4
  %i.ai = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj
  %.sroa.0.0.copyload.i.i79 = load i8, ptr %i.ak, align 1, !tbaa !32 ; 2 uses
  %i.al = and i8 %.sroa.0.0.copyload.i.i79, 15
  %narrow = add nuw nsw i8 %i.al, 1
  %i.am = zext i8 %.sroa.16.0.copyload to i32
  %.sroa.9.0.extract.trunc = trunc i48 %.sroa.9.0.copyload to i16 ; 12 uses
  %i.an = icmp sgt i16 %.sroa.9.0.extract.trunc, 0
  %i.ao = add nsw i16 %.sroa.9.0.extract.trunc, -1
  %i.ap = icmp sgt i16 %.pre217.sink.off0, 0
  %i.aq = add nsw i16 %.pre217.sink.off0, -1
  %i.ar = icmp sgt i16 %.pre218.sink.off0, 0
  %i.as = add nsw i16 %.pre218.sink.off0, -1
  %i.at = icmp slt i16 %.pre218.sink.off0, 15
  %i.au = add nsw i16 %.pre218.sink.off0, 1
  %i.av = icmp slt i16 %.pre217.sink.off0, 15
  %i.aw = add nsw i16 %.pre217.sink.off0, 1
  %i.ax = icmp slt i16 %.sroa.9.0.extract.trunc, 15
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 66 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 68 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 76
  %i.bd = add nsw i16 %.sroa.9.0.extract.trunc, 1
  %i.be = icmp ne i8 %i.t, 0
  %.sroa.0.0.extract.trunc = trunc i48 %.sroa.14.0.copyload to i16 ; 12 uses
  %.sroa.12.0.extract.shift = lshr i48 %.sroa.14.0.copyload, 16
  %.sroa.12.0.extract.trunc = trunc i48 %.sroa.12.0.extract.shift to i16 ; 12 uses
  %.sroa.18.0.extract.shift = lshr i48 %.sroa.14.0.copyload, 32
  %.sroa.18.0.extract.trunc = trunc nuw i48 %.sroa.18.0.extract.shift to i16 ; 12 uses
  %i.bf = add i16 %.sroa.0.0.extract.trunc, -1
  %i.bg = add i16 %.sroa.12.0.extract.trunc, -1
  %i.bh = add i16 %.sroa.18.0.extract.trunc, -1
  %i.bi = add i16 %.sroa.18.0.extract.trunc, 1
  %i.bj = add i16 %.sroa.12.0.extract.trunc, 1
  %i.bk = add i16 %.sroa.0.0.extract.trunc, 1
  br label %bb.d

bb.c:                                             ; preds = %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  %i.bl = icmp ult i8 %.365, 2
  %i.bm = and i8 %.sroa.0.0.copyload.i.i79, 32
  %.not = icmp eq i8 %i.bm, 0
  %or.cond76 = select i1 %i.bl, i1 true, i1 %.not
  br i1 %or.cond76, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit115.backedge, label %bb.as

bb.d:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  %indvars.iv = phi i32 [ 0, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ], [ %indvars.iv.next, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit ] ; 5 uses
  %.0195 = phi i8 [ 6, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ], [ %.3, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit ] ; 10 uses
  %.062194 = phi i8 [ %narrow, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit ], [ %.365, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit ] ; 11 uses
  %indvars198 = trunc i32 %indvars.iv to i8       ; 4 uses
  %i.bn = add nuw nsw i32 %indvars.iv, %i.am
  %i.bo = icmp eq i32 %i.bn, 5
  br i1 %i.bo, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %indvars198, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  br i1 %i.ax, label %bb.q, label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.q, label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.h:                                             ; preds = %bb.e
  br i1 %i.at, label %bb.q, label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.i:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.q, label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.j:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.q, label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.k:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.q, label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.18.0 = phi i16 [ %.sroa.18.0.extract.trunc, %bb.j ], [ %.sroa.18.0.extract.trunc, %bb.f ], [ %.sroa.18.0.extract.trunc, %bb.g ], [ %i.bi, %bb.h ], [ %i.bh, %bb.i ], [ %.sroa.18.0.extract.trunc, %bb.k ] ; 2 uses
  %.sroa.12.0 = phi i16 [ %i.bg, %bb.j ], [ %.sroa.12.0.extract.trunc, %bb.f ], [ %i.bj, %bb.g ], [ %.sroa.12.0.extract.trunc, %bb.h ], [ %.sroa.12.0.extract.trunc, %bb.i ], [ %.sroa.12.0.extract.trunc, %bb.k ] ; 2 uses
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.extract.trunc, %bb.j ], [ %i.bk, %bb.f ], [ %.sroa.0.0.extract.trunc, %bb.g ], [ %.sroa.0.0.extract.trunc, %bb.h ], [ %.sroa.0.0.extract.trunc, %bb.i ], [ %i.bf, %bb.k ] ; 2 uses
  %.sroa.20.0 = phi i16 [ %.pre218.sink.off0, %bb.j ], [ %.pre218.sink.off0, %bb.f ], [ %.pre218.sink.off0, %bb.g ], [ 0, %bb.h ], [ 15, %bb.i ], [ %.pre218.sink.off0, %bb.k ]
  %.sroa.13.0 = phi i16 [ 15, %bb.j ], [ %.pre217.sink.off0, %bb.f ], [ 0, %bb.g ], [ %.pre217.sink.off0, %bb.h ], [ %.pre217.sink.off0, %bb.i ], [ %.pre217.sink.off0, %bb.k ]
  %.sroa.0119.0 = phi i16 [ %.sroa.9.0.extract.trunc, %bb.j ], [ 0, %bb.f ], [ %.sroa.9.0.extract.trunc, %bb.g ], [ %.sroa.9.0.extract.trunc, %bb.h ], [ %.sroa.9.0.extract.trunc, %bb.i ], [ 15, %bb.k ]
  %.sroa.18.0.insert.ext211 = zext i16 %.sroa.18.0 to i48
  %.sroa.18.0.insert.shift212 = shl nuw i48 %.sroa.18.0.insert.ext211, 32
  %.sroa.12.0.insert.ext205 = zext i16 %.sroa.12.0 to i48
  %.sroa.12.0.insert.shift206 = shl nuw nsw i48 %.sroa.12.0.insert.ext205, 16
  %.sroa.12.0.insert.insert208 = or disjoint i48 %.sroa.18.0.insert.shift212, %.sroa.12.0.insert.shift206
  %.sroa.0.0.insert.ext202 = zext i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert204 = or disjoint i48 %.sroa.12.0.insert.insert208, %.sroa.0.0.insert.ext202
  %i.bp = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert204) ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit
  %i.br = add nuw i32 %indvars.iv, 6
  %spec.select.i = select i1 %i.c, i32 %i.br, i32 %indvars.iv
  %i.bs = load i16, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  %i.bt = and i32 %spec.select.i, 255
  %i.bu = shl nuw nsw i32 1, %i.bt
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  %i.bw = xor i16 %i.bv, -1
  %i.bx = and i16 %i.bs, %i.bw                    ; 2 uses
  %.not.i.i = icmp eq i16 %i.bx, %i.bs
  br i1 %.not.i.i, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i16 %i.bx, ptr %i.ay, align 8, !tbaa !81
  %i.by = load i16, ptr %i.az, align 2, !tbaa !82 ; 2 uses
  %i.bz = icmp ult i16 %i.by, 2
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i16 2, ptr %i.az, align 2, !tbaa !82
  store i32 4, ptr %i.ba, align 4, !tbaa !83
  %i.ca = load i32, ptr %i.bb, align 8, !tbaa !84
  store i32 %i.ca, ptr %i.bc, align 4, !tbaa !85
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.o:                                             ; preds = %bb.m
  %i.cb = icmp eq i16 %i.by, 2
  br i1 %i.cb, label %bb.p, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.p:                                             ; preds = %bb.o
  %i.cc = load i32, ptr %i.ba, align 4, !tbaa !83
  %i.cd = or i32 %i.cc, 4
  store i32 %i.cd, ptr %i.ba, align 4, !tbaa !83
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit
  %.sroa.18.1 = phi i16 [ %.sroa.18.0.extract.trunc, %bb.f ], [ %.sroa.18.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.18.0.extract.trunc, %bb.g ], [ %.sroa.18.0.extract.trunc, %bb.h ], [ %.sroa.18.0.extract.trunc, %bb.i ], [ %.sroa.18.0.extract.trunc, %bb.j ], [ %.sroa.18.0.extract.trunc, %bb.k ] ; 4 uses
  %.sroa.12.1 = phi i16 [ %.sroa.12.0.extract.trunc, %bb.f ], [ %.sroa.12.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.12.0.extract.trunc, %bb.g ], [ %.sroa.12.0.extract.trunc, %bb.h ], [ %.sroa.12.0.extract.trunc, %bb.i ], [ %.sroa.12.0.extract.trunc, %bb.j ], [ %.sroa.12.0.extract.trunc, %bb.k ] ; 6 uses
  %.sroa.0.1 = phi i16 [ %.sroa.0.0.extract.trunc, %bb.f ], [ %.sroa.0.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.0.0.extract.trunc, %bb.g ], [ %.sroa.0.0.extract.trunc, %bb.h ], [ %.sroa.0.0.extract.trunc, %bb.i ], [ %.sroa.0.0.extract.trunc, %bb.j ], [ %.sroa.0.0.extract.trunc, %bb.k ] ; 6 uses
  %.sroa.0119.0175 = phi i16 [ %i.bd, %bb.f ], [ %.sroa.0119.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.9.0.extract.trunc, %bb.g ], [ %.sroa.9.0.extract.trunc, %bb.h ], [ %.sroa.9.0.extract.trunc, %bb.i ], [ %.sroa.9.0.extract.trunc, %bb.j ], [ %i.ao, %bb.k ] ; 3 uses
  %.sroa.13.0173 = phi i16 [ %.pre217.sink.off0, %bb.f ], [ %.sroa.13.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %i.aw, %bb.g ], [ %.pre217.sink.off0, %bb.h ], [ %.pre217.sink.off0, %bb.i ], [ %i.aq, %bb.j ], [ %.pre217.sink.off0, %bb.k ] ; 3 uses
  %.sroa.20.0171 = phi i16 [ %.pre218.sink.off0, %bb.f ], [ %.sroa.20.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.pre218.sink.off0, %bb.g ], [ %i.au, %bb.h ], [ %i.as, %bb.i ], [ %.pre218.sink.off0, %bb.j ], [ %.pre218.sink.off0, %bb.k ] ; 3 uses
  %.067 = phi ptr [ %.sroa.0145.0.copyload, %bb.f ], [ %i.bp, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.0145.0.copyload, %bb.g ], [ %.sroa.0145.0.copyload, %bb.h ], [ %.sroa.0145.0.copyload, %bb.i ], [ %.sroa.0145.0.copyload, %bb.j ], [ %.sroa.0145.0.copyload, %bb.k ] ; 14 uses
  %.sroa.20.0.insert.ext140 = zext i16 %.sroa.20.0171 to i48
  %.sroa.20.0.insert.shift141 = shl nuw i48 %.sroa.20.0.insert.ext140, 32
  %.sroa.13.0.insert.ext131 = zext i16 %.sroa.13.0173 to i48
  %.sroa.13.0.insert.shift132 = shl nuw nsw i48 %.sroa.13.0.insert.ext131, 16
  %.sroa.0119.0.insert.ext124 = zext i16 %.sroa.0119.0175 to i48
  %i.ce = or disjoint i48 %.sroa.20.0.insert.shift141, %.sroa.13.0.insert.shift132
  %.sroa.0119.0.insert.insert126 = or disjoint i48 %i.ce, %.sroa.0119.0.insert.ext124 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.067, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %.067, i64 36
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !78, !range !79, !noundef !80
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit90, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.3.0.extract.trunc.i82 = zext i16 %.sroa.20.0171 to i64
  %.sroa.2.0.extract.trunc.i84 = zext i16 %.sroa.13.0173 to i64
  %sext.i86 = shl nuw i64 %.sroa.3.0.extract.trunc.i82, 48
  %8 = ashr exact i64 %sext.i86, 40
  %sext2.i87 = shl nuw i64 %.sroa.2.0.extract.trunc.i84, 48
  %i.ck = ashr exact i64 %sext2.i87, 44
  %i.cl = sext i16 %.sroa.0119.0175 to i64
  %i.cm = add nsw i64 %i.ck, %i.cl
  %i.cn = add nsw i64 %i.cm, %8
  %i.co = and i64 %i.cn, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit90

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit90: ; preds = %bb.q, %bb.r
  %i.cp = phi i64 [ %i.co, %bb.r ], [ 0, %bb.q ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cp
  %.sroa.0.0.copyload.i.i89 = load i32, ptr %i.cq, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i89, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i89, 65535
  %i.cr = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr
  %.sroa.0.0.copyload.i = load i8, ptr %i.cs, align 1, !tbaa !32 ; 4 uses
  %i.ct = and i8 %.sroa.0.0.copyload.i, 16
  %.not.i91 = icmp eq i8 %i.ct, 0
  br i1 %.not.i91, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit90
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.cu = and i8 %.sroa.5.0.extract.trunc, 15
  %i.cv = lshr i8 %.sroa.5.0.extract.trunc, 4
  %.in.i = select i1 %i.d, i8 %i.cu, i8 %i.cv     ; 4 uses
  %i.cw = and i8 %.sroa.0.0.copyload.i, 32
  %.not72 = icmp ne i8 %i.cw, 0
  %i.cx = icmp ult i8 %.in.i, %i.t
  %or.cond = select i1 %.not72, i1 %i.cx, i1 false
  br i1 %or.cond, label %bb.s, label %bb.ar

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit90
  %i.cy = and i8 %.sroa.0.0.copyload.i, 32
  %.not72178 = icmp ne i8 %i.cy, 0
  %or.cond179 = select i1 %.not72178, i1 %i.be, i1 false
  br i1 %or.cond179, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.ar

bb.s:                                             ; preds = %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit
  %.not73 = icmp eq i8 %.in.i, 0
  br i1 %.not73, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit: ; preds = %bb.s
  %.sink.i = and i32 %.sroa.5.0.extract.shift, %.sink.i.v
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sink.i, 16
  %i.cz = and i32 %.sroa.0.0.copyload.i.i89, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.cz
  %.sroa.2.0.extract.trunc.i95 = zext i16 %.sroa.13.0173 to i64
  %.sroa.3.0.extract.trunc.i97 = zext i16 %.sroa.20.0171 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %.067)
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !77
  %sext.i98 = shl nuw i64 %.sroa.3.0.extract.trunc.i97, 48
  %9 = ashr exact i64 %sext.i98, 40
  %sext3.i99 = shl nuw i64 %.sroa.2.0.extract.trunc.i95, 48
  %i.db = ashr exact i64 %sext3.i99, 44
  %i.dc = sext i16 %.sroa.0119.0175 to i64
  %i.dd = add nsw i64 %i.db, %i.dc
  %i.de = add nsw i64 %i.dd, %9
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.df
  store i32 %.sroa.0.0.insert.insert, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.067, i64 66 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !82 ; 2 uses
  %i.dj = icmp ult i16 %i.di, 4
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  store i16 4, ptr %i.dh, align 2, !tbaa !82
  %i.dk = getelementptr inbounds nuw i8, ptr %.067, i64 68
  store i32 16, ptr %i.dk, align 4, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %.067, i64 72
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw i8, ptr %.067, i64 76
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !85
  br label %bb.w

bb.u:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  %i.do = icmp eq i16 %i.di, 4
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %.067, i64 68 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !83
  %i.dr = or i32 %i.dq, 16
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %.067, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !86 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.067, i64 48 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.dv, %i.dt
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.w
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.w, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %.sroa.18.0.insert.ext = zext i16 %.sroa.18.1 to i48
  %.sroa.18.0.insert.shift = shl nuw i48 %.sroa.18.0.insert.ext, 32
  %.sroa.12.0.insert.ext = zext i16 %.sroa.12.1 to i48
  %.sroa.12.0.insert.shift = shl nuw nsw i48 %.sroa.12.0.insert.ext, 16
  %.sroa.12.0.insert.insert = or disjoint i48 %.sroa.18.0.insert.shift, %.sroa.12.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.1 to i48
  %.sroa.0.0.insert.insert201 = or disjoint i48 %.sroa.12.0.insert.insert, %.sroa.0.0.insert.ext ; 2 uses
  %i.dw = zext nneg i8 %.in.i to i64
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !34 ; 9 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !88
  %.not.i.i100 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not.i.i100, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  store ptr %.067, ptr %i.dz, align 8, !tbaa !90
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i48 %.sroa.0119.0.insert.insert126, ptr %i.ec, align 8, !tbaa !31
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 14
  store i48 %.sroa.0.0.insert.insert201, ptr %i.ed, align 2, !tbaa !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  store i8 %indvars198, ptr %i.ee, align 4, !tbaa !91
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store ptr %i.ef, ptr %i.dy, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.y:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !92 ; 5 uses
  %i.eh = ptrtoint ptr %i.dz to i64
  %i.ei = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ej = sub i64 %i.eh, %i.ei                    ; 3 uses
  %i.ek = icmp eq i64 %i.ej, 9223372036854775800
  br i1 %i.ek, label %bb.z, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.el = sdiv exact i64 %i.ej, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.em = add nsw i64 %.sroa.speculated.i.i.i.i, %i.el ; 2 uses
  %i.en = icmp ult i64 %i.em, %i.el
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.em, i64 384307168202282325)
  %i.ep = select i1 %i.en, i64 384307168202282325, i64 %i.eo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ep, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.eq = mul nuw nsw i64 %i.ep, 24
  %i.er = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #21 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ej ; 4 uses
  store ptr %.067, ptr %i.es, align 8, !tbaa !90
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i48 %.sroa.0119.0.insert.insert126, ptr %i.et, align 8, !tbaa !31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 14
  store i48 %.sroa.0.0.insert.insert201, ptr %i.eu, align 2, !tbaa !31
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  store i8 %indvars198, ptr %i.ev, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.dz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i ], [ %i.er, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i ], [ %i.eg, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !180
  %i.ew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ew, %i.dz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.er, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ex, %.lr.ph.i.i.i.i.i.i ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.ez = load ptr, ptr %i.ea, align 8, !tbaa !88
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.fa, %i.ei
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.fb) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.er, ptr %i.dx, align 8, !tbaa !92
  store ptr %i.ey, ptr %i.dy, align 8, !tbaa !34
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.ep
  store ptr %i.fc, ptr %i.ea, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %bb.x, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.not74 = icmp eq ptr %.sroa.0145.0.copyload, %.067
  br i1 %.not74, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.fd = load ptr, ptr %i.e, align 8, !tbaa !94  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.fd, %bb.ab ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.f, %bb.ab ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !19 ; 2 uses
  %i.fg = icmp slt i16 %i.ff, %.sroa.0.1
  br i1 %i.fg, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fh = icmp eq i16 %i.ff, %.sroa.0.1
  br i1 %i.fh, label %bb.ad, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !20 ; 2 uses
  %i.fk = icmp slt i16 %i.fj, %.sroa.12.1
  br i1 %i.fk, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = icmp eq i16 %i.fj, %.sroa.12.1
  br i1 %i.fl, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.ae
  %i.fm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !21
  %i.fo = icmp slt i16 %i.fn, %.sroa.18.1
  br i1 %i.fo, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ad, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.ae, %bb.ac
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.ae ], [ 16, %bb.ac ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.ae ], [ %.014.i.i.i.i, %bb.ac ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.fp, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i101 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i101, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.fq = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.fq, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !19 ; 2 uses
  %i.ft = icmp slt i16 %.sroa.0.1, %i.fs
  br i1 %i.ft, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fu = icmp eq i16 %.sroa.0.1, %i.fs
  br i1 %i.fu, label %bb.ah, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !20 ; 2 uses
  %i.fx = icmp slt i16 %.sroa.12.1, %i.fw
  br i1 %i.fx, label %.critedge.i, label %bb.ai
end_hunk_0
begin_hunk_1_@_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE:bb.a
  %indvars.iv.i136 = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.i, %.lr.ph.i.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i136, -1 ; 5 uses
  %indvars.i = trunc nuw i64 %indvars.iv.next.i to i8 ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv.next.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not11.i = icmp eq ptr %i.q, %i.s
  br i1 %.not11.i, label %.lr.ph.i, label %.loopexit112.loopexit, !llvm.loop !0

.loopexit112.loopexit:                            ; preds = %.lr.ph
  store i8 %indvars.i, ptr %i.c, align 8, !tbaa !24
  br label %.loopexit112

.loopexit112:                                     ; preds = %.loopexit112.loopexit, %bb.b
  %.pre-phi = phi i64 [ %i.i, %bb.b ], [ %indvars.iv.next.i, %.loopexit112.loopexit ]
  %i.t = phi ptr [ %i.m, %bb.b ], [ %i.s, %.loopexit112.loopexit ] ; 6 uses
  %i.u = phi i8 [ %.promoted.i, %bb.b ], [ %indvars.i, %.loopexit112.loopexit ]
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.pre-phi
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 2 uses
  %.sroa.080.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !30 ; 12 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %i.t, i64 -16
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !31 ; 12 uses
  %.sroa.883.0..sroa_idx = getelementptr inbounds i8, ptr %i.t, i64 -14
  %.sroa.883.0.copyload = load i16, ptr %.sroa.883.0..sroa_idx, align 2, !tbaa !31 ; 12 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %i.t, i64 -12
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !31 ; 12 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %i.t, i64 -10
  %.sroa.10.sroa.0.0.copyload = load <3 x i16>, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !31
  %.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %i.t, i64 -4
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !32
  store ptr %i.x, ptr %i.w, align 8, !tbaa !34
  %i.y = add i8 %i.u, -1                          ; 5 uses
  %i.z = zext i8 %.sroa.11.0.copyload to i32
  %i.aa = icmp sgt i16 %.sroa.7.0.copyload, 0
  %i.ab = add nsw i16 %.sroa.7.0.copyload, -1
  %i.ac = icmp sgt i16 %.sroa.883.0.copyload, 0
  %i.ad = add nsw i16 %.sroa.883.0.copyload, -1
  %i.ae = icmp sgt i16 %.sroa.9.0.copyload, 0
  %i.af = add nsw i16 %.sroa.9.0.copyload, -1
  %i.ag = icmp slt i16 %.sroa.9.0.copyload, 15
  %i.ah = add nsw i16 %.sroa.9.0.copyload, 1
  %i.ai = icmp slt i16 %.sroa.883.0.copyload, 15
  %i.aj = add nsw i16 %.sroa.883.0.copyload, 1
  %i.ak = icmp slt i16 %.sroa.7.0.copyload, 15
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload, i64 80 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload, i64 66 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload, i64 68 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.080.0.copyload, i64 76
  %i.aq = add nsw i16 %.sroa.7.0.copyload, 1
  %i.ar = shl i8 %i.y, 4
  %i.as = and i8 %i.y, 15
  %.not111 = icmp eq i8 %i.y, 0
  %i.at = zext i8 %i.y to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit112, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit
  %indvars.iv = phi i32 [ 0, %.loopexit112 ], [ %indvars.iv.next, %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit ] ; 5 uses
  %indvars115 = trunc i32 %indvars.iv to i8       ; 3 uses
  %i.ax = add nuw nsw i32 %indvars.iv, %i.z
  %i.ay = icmp eq i32 %i.ax, 5
  br i1 %i.ay, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <3 x i16> %.sroa.10.sroa.0.0.copyload, ptr %7, align 8, !tbaa !31
  switch i8 %indvars115, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.g
    i8 2, label %bb.i
    i8 3, label %bb.k
    i8 4, label %bb.m
    i8 5, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.ak, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load i16, ptr %7, align 8, !tbaa !19
  %i.ba = add i16 %i.az, 1
  store i16 %i.ba, ptr %7, align 8, !tbaa !19
  br label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.g:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i16, ptr %i.a, align 2, !tbaa !20
  %i.bc = add i16 %i.bb, 1
  store i16 %i.bc, ptr %i.a, align 2, !tbaa !20
  br label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.i:                                             ; preds = %bb.d
  br i1 %i.ag, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i16, ptr %i.b, align 4, !tbaa !21
  %i.be = add i16 %i.bd, 1
  store i16 %i.be, ptr %i.b, align 4, !tbaa !21
  br label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.k:                                             ; preds = %bb.d
  br i1 %i.ae, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i16, ptr %i.b, align 4, !tbaa !21
  %i.bg = add i16 %i.bf, -1
  store i16 %i.bg, ptr %i.b, align 4, !tbaa !21
  br label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.m:                                             ; preds = %bb.d
  br i1 %i.ac, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i16, ptr %i.a, align 2, !tbaa !20
  %i.bi = add i16 %i.bh, -1
  store i16 %i.bi, ptr %i.a, align 2, !tbaa !20
  br label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

bb.o:                                             ; preds = %bb.d
  br i1 %i.aa, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i16, ptr %7, align 8, !tbaa !19
  %i.bk = add i16 %i.bj, -1
  store i16 %i.bk, ptr %7, align 8, !tbaa !19
  br label %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit

_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit: ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f
  %.sroa.20.0 = phi i16 [ 0, %bb.j ], [ %.sroa.9.0.copyload, %bb.n ], [ %.sroa.9.0.copyload, %bb.f ], [ 15, %bb.l ], [ %.sroa.9.0.copyload, %bb.h ], [ %.sroa.9.0.copyload, %bb.p ]
  %.sroa.13.0 = phi i16 [ %.sroa.883.0.copyload, %bb.j ], [ 15, %bb.n ], [ %.sroa.883.0.copyload, %bb.f ], [ %.sroa.883.0.copyload, %bb.l ], [ 0, %bb.h ], [ %.sroa.883.0.copyload, %bb.p ]
  %.sroa.054.0 = phi i16 [ %.sroa.7.0.copyload, %bb.j ], [ %.sroa.7.0.copyload, %bb.n ], [ 0, %bb.f ], [ %.sroa.7.0.copyload, %bb.l ], [ %.sroa.7.0.copyload, %bb.h ], [ 15, %bb.p ]
  %.sroa.016.0.copyload = load i48, ptr %7, align 8, !tbaa !31
  %i.bl = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.016.0.copyload) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit
  %i.bn = add nuw i32 %indvars.iv, 6
  %spec.select.i = select i1 %i.d, i32 %i.bn, i32 %indvars.iv
  %i.bo = load i16, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.bp = and i32 %spec.select.i, 255
  %i.bq = shl nuw nsw i32 1, %i.bp
  %i.br = trunc nuw nsw i32 %i.bq to i16
  %i.bs = xor i16 %i.br, -1
  %i.bt = and i16 %i.bo, %i.bs                    ; 2 uses
  %.not.i.i = icmp eq i16 %i.bt, %i.bo
  br i1 %.not.i.i, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 %i.bt, ptr %i.al, align 8, !tbaa !81
  %i.bu = load i16, ptr %i.am, align 2, !tbaa !82 ; 2 uses
  %i.bv = icmp ult i16 %i.bu, 2
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i16 2, ptr %i.am, align 2, !tbaa !82
  store i32 4, ptr %i.an, align 4, !tbaa !83
  %i.bw = load i32, ptr %i.ao, align 8, !tbaa !84
  store i32 %i.bw, ptr %i.ap, align 4, !tbaa !85
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.t:                                             ; preds = %bb.r
  %i.bx = icmp eq i16 %i.bu, 2
  br i1 %i.bx, label %bb.u, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.u:                                             ; preds = %bb.t
  %i.by = load i32, ptr %i.an, align 4, !tbaa !83
  %i.bz = or i32 %i.by, 4
  store i32 %i.bz, ptr %i.an, align 4, !tbaa !83
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.v:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit
  %.sroa.054.0108 = phi i16 [ %.sroa.054.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.7.0.copyload, %bb.m ], [ %.sroa.7.0.copyload, %bb.k ], [ %.sroa.7.0.copyload, %bb.i ], [ %.sroa.7.0.copyload, %bb.g ], [ %i.aq, %bb.e ], [ %i.ab, %bb.o ] ; 3 uses
  %.sroa.13.0106 = phi i16 [ %.sroa.13.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %i.ad, %bb.m ], [ %.sroa.883.0.copyload, %bb.k ], [ %.sroa.883.0.copyload, %bb.i ], [ %i.aj, %bb.g ], [ %.sroa.883.0.copyload, %bb.e ], [ %.sroa.883.0.copyload, %bb.o ] ; 3 uses
  %.sroa.20.0104 = phi i16 [ %.sroa.20.0, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.9.0.copyload, %bb.m ], [ %i.af, %bb.k ], [ %i.ah, %bb.i ], [ %.sroa.9.0.copyload, %bb.g ], [ %.sroa.9.0.copyload, %bb.e ], [ %.sroa.9.0.copyload, %bb.o ] ; 3 uses
  %.036 = phi ptr [ %i.bl, %_ZN7voxalgo18step_rel_block_posEhRN4core8vector3dIsEES3_.exit ], [ %.sroa.080.0.copyload, %bb.m ], [ %.sroa.080.0.copyload, %bb.k ], [ %.sroa.080.0.copyload, %bb.i ], [ %.sroa.080.0.copyload, %bb.g ], [ %.sroa.080.0.copyload, %bb.e ], [ %.sroa.080.0.copyload, %bb.o ] ; 14 uses
  %.sroa.20.0.insert.ext75 = zext i16 %.sroa.20.0104 to i48
  %.sroa.20.0.insert.shift76 = shl nuw i48 %.sroa.20.0.insert.ext75, 32
  %.sroa.13.0.insert.ext66 = zext i16 %.sroa.13.0106 to i48
  %.sroa.13.0.insert.shift67 = shl nuw nsw i48 %.sroa.13.0.insert.ext66, 16
  %.sroa.054.0.insert.ext59 = zext i16 %.sroa.054.0108 to i48
  %i.ca = or disjoint i48 %.sroa.20.0.insert.shift76, %.sroa.13.0.insert.shift67
  %.sroa.054.0.insert.insert61 = or disjoint i48 %i.ca, %.sroa.054.0.insert.ext59 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !77
  %i.cd = getelementptr inbounds nuw i8, ptr %.036, i64 36
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !78, !range !79, !noundef !80
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.3.0.extract.trunc.i = zext i16 %.sroa.20.0104 to i64
  %.sroa.2.0.extract.trunc.i = zext i16 %.sroa.13.0106 to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %8 = ashr exact i64 %sext.i, 40
  %sext2.i = shl nuw i64 %.sroa.2.0.extract.trunc.i, 48
  %i.cg = ashr exact i64 %sext2.i, 44
  %i.ch = sext i16 %.sroa.054.0108 to i64
  %i.ci = add nsw i64 %i.cg, %i.ch
  %i.cj = add nsw i64 %i.ci, %8
  %i.ck = and i64 %i.cj, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.v, %bb.w
  %i.cl = phi i64 [ %i.ck, %bb.w ], [ 0, %bb.v ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cl
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cm, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 4 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.cn = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cn
  %.sroa.0.0.copyload.i.i41 = load i8, ptr %i.co, align 1, !tbaa !32 ; 2 uses
  %i.cp = and i8 %.sroa.0.0.copyload.i.i41, 32
  %.not = icmp eq i8 %i.cp, 0
  br i1 %.not, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.x

bb.x:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.cq = and i8 %.sroa.0.0.copyload.i.i41, 16
  %.not.i42 = icmp eq i8 %i.cq, 0
  br i1 %.not.i42, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit: ; preds = %bb.x
  br i1 %.not111, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread: ; preds = %bb.x
  %i.cr = and i8 %.sroa.5.0.extract.trunc, 15     ; 2 uses
  %i.cs = lshr i8 %.sroa.5.0.extract.trunc, 4
  %.in.i = select i1 %i.f, i8 %i.cr, i8 %i.cs
  %i.ct = icmp ult i8 %.in.i, %i.y
  br i1 %i.ct, label %bb.y, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

bb.y:                                             ; preds = %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread
  br i1 %i.f, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = and i8 %.sroa.5.0.extract.trunc, -16
  %i.cv = or disjoint i8 %i.cu, %i.as
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

bb.aa:                                            ; preds = %bb.y
  %i.cw = or disjoint i8 %i.cr, %i.ar
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit: ; preds = %bb.z, %bb.aa, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit
  %.sroa.5.0 = phi i8 [ %.sroa.5.0.extract.trunc, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit ], [ %i.cw, %bb.aa ], [ %i.cv, %bb.z ]
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0 to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %i.cx = and i32 %.sroa.0.0.copyload.i.i, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.cx
  %.sroa.2.0.extract.trunc.i46 = zext i16 %.sroa.13.0106 to i64
  %.sroa.3.0.extract.trunc.i48 = zext i16 %.sroa.20.0104 to i64
  call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %.036)
  %i.cy = load ptr, ptr %i.cb, align 8, !tbaa !77
  %sext.i49 = shl nuw i64 %.sroa.3.0.extract.trunc.i48, 48
  %9 = ashr exact i64 %sext.i49, 40
  %sext3.i50 = shl nuw i64 %.sroa.2.0.extract.trunc.i46, 48
  %i.cz = ashr exact i64 %sext3.i50, 44
  %i.da = sext i16 %.sroa.054.0108 to i64
  %i.db = add nsw i64 %i.cz, %i.da
  %i.dc = add nsw i64 %i.db, %9
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dd
  store i32 %.sroa.0.0.insert.insert, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.036, i64 66 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !82 ; 2 uses
  %i.dh = icmp ult i16 %i.dg, 4
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  store i16 4, ptr %i.df, align 2, !tbaa !82
  %i.di = getelementptr inbounds nuw i8, ptr %.036, i64 68
  store i32 16, ptr %i.di, align 4, !tbaa !83
  %i.dj = getelementptr inbounds nuw i8, ptr %.036, i64 72
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !84
  %i.dl = getelementptr inbounds nuw i8, ptr %.036, i64 76
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !85
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  %i.dm = icmp eq i16 %i.dg, 4
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %.036, i64 68 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !83
  %i.dp = or i32 %i.do, 16
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !83
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %.036, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !86 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.036, i64 48 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, %i.dr
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.ae
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.ae, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %.sroa.0.0.copyload = load i48, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.du = load ptr, ptr %i.av, align 8, !tbaa !34 ; 9 uses
  %i.dv = load ptr, ptr %i.aw, align 8, !tbaa !88
  %.not.i.i51 = icmp eq ptr %i.du, %i.dv
  br i1 %.not.i.i51, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  store ptr %.036, ptr %i.du, align 8, !tbaa !90
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i48 %.sroa.054.0.insert.insert61, ptr %i.dw, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 14
  store i48 %.sroa.0.0.copyload, ptr %i.dx, align 2, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  store i8 %indvars115, ptr %i.dy, align 4, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store ptr %i.dz, ptr %i.av, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.ag:                                            ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %i.ea = load ptr, ptr %i.au, align 8, !tbaa !92 ; 5 uses
  %i.eb = ptrtoint ptr %i.du to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775800
  br i1 %i.ee, label %bb.ah, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ag
  %i.ef = sdiv exact i64 %i.ed, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eg, i64 384307168202282325)
  %i.ej = select i1 %i.eh, i64 384307168202282325, i64 %i.ei ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ek = mul nuw nsw i64 %i.ej, 24
  %i.el = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #21 ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed ; 4 uses
  store ptr %.036, ptr %i.em, align 8, !tbaa !90
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i48 %.sroa.054.0.insert.insert61, ptr %i.en, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  store i48 %.sroa.0.0.copyload, ptr %i.eo, align 2, !tbaa !31
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  store i8 %indvars115, ptr %i.ep, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.du
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i ], [ %i.ea, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !187
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eq, %i.du
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.el, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.er, %.lr.ph.i.i.i.i.i.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.et = load ptr, ptr %i.aw, align 8, !tbaa !88
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.eu, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ev) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.el, ptr %i.au, align 8, !tbaa !92
  store ptr %i.es, ptr %i.av, align 8, !tbaa !34
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.ew, ptr %i.aw, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %bb.af, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.not39 = icmp eq ptr %.sroa.080.0.copyload, %.036
  br i1 %.not39, label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj
  %i.ey = load i16, ptr %7, align 8, !tbaa !19    ; 4 uses
  %i.ez = load i16, ptr %i.a, align 2             ; 4 uses
  %i.fa = load i16, ptr %i.b, align 4             ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !19 ; 2 uses
  %i.fd = icmp slt i16 %i.fc, %i.ey
  br i1 %i.fd, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = icmp eq i16 %i.fc, %i.ey
  br i1 %i.fe, label %bb.am, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !20 ; 2 uses
  %i.fh = icmp slt i16 %i.fg, %i.ez
  br i1 %i.fh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fi = icmp eq i16 %i.fg, %i.ez
  br i1 %i.fi, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.an
  %i.fj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !21
  %i.fl = icmp slt i16 %i.fk, %i.fa
  br i1 %i.fl, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.am, %bb.ak
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.an, %bb.al
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.an ], [ 16, %bb.al ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.an ], [ %.014.i.i.i.i, %bb.al ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.fm, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i52, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %bb.ak, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.fn = icmp eq ptr %.19.i.i.i.i, %i.h
  br i1 %i.fn, label %.critedge.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !19 ; 2 uses
  %i.fq = icmp slt i16 %i.ey, %i.fp
  br i1 %i.fq, label %.critedge.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fr = icmp eq i16 %i.ey, %i.fp
  br i1 %i.fr, label %bb.aq, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !20 ; 2 uses
  %i.fu = icmp slt i16 %i.ez, %i.ft
  br i1 %i.fu, label %.critedge.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = icmp eq i16 %i.ez, %i.ft
  br i1 %i.fv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !21
  %i.fy = icmp slt i16 %i.fa, %i.fx
  br i1 %i.fy, label %.critedge.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.aq, %bb.ao, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.aj
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.h, %bb.aj ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.aq ], [ %.19.i.i.i.i, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr %7, ptr %5, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.fz = call ptr @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.ap, %bb.ar, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.fz, %.critedge.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.ap ], [ %.19.i.i.i.i, %bb.ar ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %.036, ptr %i.ga, align 8, !tbaa !30
  br label %_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit

_ZN8MapBlock19setLightingCompleteE9LightBankhb.exit: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread, %bb.u, %bb.t, %bb.s, %bb.q, %bb.c
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !186

_ZN7voxalgo10LightQueue4nextERhRNS_13ChangingLightE.exit.loopexit: ; preds = %.lr.ph.i
  store i8 %indvars.i, ptr %i.c, align 8, !tbaa !24
  br label %_ZN7voxalgo10LightQueue4nextERhRNS_13ChangingLightE.exit

_ZN7voxalgo10LightQueue4nextERhRNS_13ChangingLightE.exit: ; preds = %.lr.ph.i.preheader, %_ZN7voxalgo10LightQueue4nextERhRNS_13ChangingLightE.exit.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager(ptr noundef nonnull %0, i48 %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i48 %1, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16 ; 3 uses
  %i.a = add i16 %.sroa.3.0.extract.trunc, 1      ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %1 to i16 ; 2 uses
  %i.b = sext i16 %.sroa.0.0.extract.trunc.i to i32 ; 2 uses
  %i.c = add nsw i32 %i.b, -15
  %i.d = icmp slt i16 %.sroa.0.0.extract.trunc.i, 0
  %i.e = select i1 %i.d, i32 %i.c, i32 %i.b
  %i.f = sdiv i32 %i.e, 16
  %i.g = sext i16 %i.a to i32                     ; 2 uses
  %i.h = add nsw i32 %i.g, -15
  %i.i = icmp slt i16 %i.a, 0
  %i.j = select i1 %i.i, i32 %i.h, i32 %i.g
  %i.k = sdiv i32 %i.j, 16
  %i.l = ashr i48 %1, 32
  %i.m = trunc nsw i48 %i.l to i32                ; 2 uses
  %i.n = add nsw i32 %i.m, -15
  %i.o = icmp slt i48 %1, 0
  %i.p = select i1 %i.o, i32 %i.n, i32 %i.m
  %i.q = sdiv i32 %i.p, 16
  %.mask = and i32 %i.q, 65535
  %.sroa.735.0.insert.ext = zext nneg i32 %.mask to i48
  %.sroa.735.0.insert.shift = shl nuw i48 %.sroa.735.0.insert.ext, 32 ; 2 uses
  %i.r = shl nsw i32 %i.k, 16
  %.sroa.534.0.insert.shift = zext i32 %i.r to i48
  %.sroa.534.0.insert.insert = or disjoint i48 %.sroa.735.0.insert.shift, %.sroa.534.0.insert.shift
  %.mask40 = and i32 %i.f, 65535
  %.sroa.033.0.insert.ext = zext nneg i32 %.mask40 to i48 ; 2 uses
  %.sroa.033.0.insert.insert = or disjoint i48 %.sroa.534.0.insert.insert, %.sroa.033.0.insert.ext
  %i.s = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.033.0.insert.insert) ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = sext i16 %.sroa.3.0.extract.trunc to i32 ; 2 uses
  %i.v = add nsw i32 %i.u, -15
  %i.w = icmp slt i16 %.sroa.3.0.extract.trunc, 0
  %i.x = select i1 %i.w, i32 %i.v, i32 %i.u
  %i.y = sdiv i32 %i.x, 16
  %i.z = shl nsw i32 %i.y, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.z to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.735.0.insert.shift, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.033.0.insert.ext
  %i.aa = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i) ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 83
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !101, !range !79, !noundef !80
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = xor i1 %i.ae, true
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !78, !range !79, !noundef !80
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = lshr i48 %1, 24
  %.sroa.3.0.extract.shift.i22 = and i48 %i.al, 3840
  %i.am = shl i16 %i.a, 4
  %i.an = and i16 %i.am, 240
  %i.ao = and i48 %1, 15
  %3 = zext nneg i16 %i.an to i48
  %4 = or disjoint i48 %.sroa.3.0.extract.shift.i22, %i.ao
  %i.ap = or disjoint i48 %4, %3
  %i.aq = zext nneg i48 %i.ap to i64
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.d, %bb.e
  %i.ar = phi i64 [ %i.aq, %bb.e ], [ 0, %bb.d ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ar
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.as, align 4 ; 2 uses
  %i.at = and i32 %.sroa.0.0.copyload.i.i, 65535  ; 2 uses
  %i.au = icmp eq i32 %i.at, 127
  br i1 %i.au, label %bb.f, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

bb.f:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 83
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !101, !range !79, !noundef !80
  %i.ax = trunc nuw i8 %i.aw to i1
  %not. = xor i1 %i.ax, true
  br label %bb.g

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.az = zext nneg i32 %i.at to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %.sroa.0.0.copyload.i.i27 = load i8, ptr %i.ba, align 1, !tbaa !32 ; 2 uses
  %i.bb = and i8 %.sroa.0.0.copyload.i.i27, 16
  %.not.i.i = icmp eq i8 %i.bb, 0
  %i.bc = and i8 %.sroa.5.0.extract.trunc, 15
  %i.bd = and i8 %.sroa.0.0.copyload.i.i27, 15    ; 2 uses
  %i.be = tail call i8 @llvm.umax.i8(i8 %i.bd, i8 %i.bc)
  %i.bf = select i1 %.not.i.i, i8 %i.bd, i8 %i.be
  %.not = icmp eq i8 %i.bf, 15
  br label %bb.g

bb.g:                                             ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, %bb.f, %bb.c, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ %i.af, %bb.c ], [ %.not, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ], [ %not., %bb.f ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.b = load i1, ptr @_ZGVZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights, align 1
  br i1 %.b, label %bb.c, label %bb.b, !prof !206

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7voxalgo10LightQueueC2Em(ptr noundef nonnull align 8 dereferenceable(385) @_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights, i64 noundef 1)
  %i.d = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN7voxalgo10LightQueueD2Ev, ptr nonnull @_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights, ptr nonnull @__dso_handle) #5 ; 0 uses
  store i1 true, ptr @_ZGVZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.b180 = load i1, ptr @_ZGVZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources, align 1
  br i1 %.b180, label %bb.e, label %bb.d, !prof !206

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7voxalgo10LightQueueC2Em(ptr noundef nonnull align 8 dereferenceable(385) @_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources, i64 noundef 4)
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN7voxalgo10LightQueueD2Ev, ptr nonnull @_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources, ptr nonnull @__dso_handle) #5 ; 0 uses
  store i1 true, ptr @_ZGVZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE19disappearing_lights) ; 6 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEEE13light_sources) ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 360 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 376 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 360 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 368 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 376 ; 3 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void

bb.g:                                             ; preds = %bb.e, %bb.bp
  %.0.idx532 = phi i64 [ 0, %bb.e ], [ %.0.add, %bb.bp ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @_ZN7voxalgoL5banksE, i64 %.0.idx532
  %i.s = load i32, ptr %.0.ptr, align 4, !tbaa !120 ; 5 uses
  call void @_ZN7voxalgo10LightQueue5clearEv(ptr noundef nonnull align 8 dereferenceable(385) %i.f)
  call void @_ZN7voxalgo10LightQueue5clearEv(ptr noundef nonnull align 8 dereferenceable(385) %i.g)
  %i.t = load ptr, ptr %1, align 8, !tbaa !208    ; 4 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !208  ; 3 uses
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge526

.lr.ph:                                           ; preds = %bb.g
  %i.w = icmp eq i32 %i.s, 0
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 12
  %i.ab = icmp ugt i64 %i.aa, 1
  %i.ac = zext i1 %i.ab to i8
  %spec.select = add nuw nsw i8 %spec.select188, %i.ac ; 6 uses
  %i.ad = icmp eq i32 %i.s, 0                     ; 11 uses
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %.0165497 = phi i8 [ 0, %.lr.ph ], [ %spec.select188, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ]
  %.sroa.0468.0496 = phi ptr [ %i.t, %.lr.ph ], [ %i.ap, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0468.0496, i64 8
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !122
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ag
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ah, align 1, !tbaa !32 ; 2 uses
  %i.ai = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0468.0496, i64 10
  %i.ak = load i8, ptr %i.aj, align 2             ; 2 uses
  %i.al = and i8 %i.ak, 15
  %i.am = lshr i8 %i.ak, 4
  %.in.i.i = select i1 %i.w, i8 %i.al, i8 %i.am
  br label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi i8 [ %.in.i.i, %bb.i ], [ 0, %bb.h ]
  %i.an = and i8 %.sroa.0.0.copyload.i.i, 15
  %i.ao = call noundef i8 @llvm.umax.i8(i8 %i.an, i8 %.0.i.i)
  %spec.select188 = call i8 @llvm.umax.i8(i8 %i.ao, i8 %.0165497) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0468.0496, i64 12 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.u
  br i1 %i.aq, label %bb.h, label %._crit_edge, !llvm.loop !188

._crit_edge526:                                   ; preds = %.critedge, %bb.g
  call void @_ZN7voxalgo14unspread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueES7_RSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(385) %i.f, ptr noundef nonnull align 8 dereferenceable(385) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.ar = icmp eq i32 %i.s, 0
  br label %bb.bq

bb.j:                                             ; preds = %._crit_edge, %.critedge
  %.sroa.0462.0522 = phi ptr [ %i.t, %._crit_edge ], [ %i.rs, %.critedge ] ; 6 uses
  %.sroa.0442.0.copyload = load i16, ptr %.sroa.0462.0522, align 4, !tbaa !31 ; 6 uses
  %.sroa.8448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0462.0522, i64 2
  %.sroa.8448.0.copyload = load i16, ptr %.sroa.8448.0..sroa_idx, align 2, !tbaa !31 ; 9 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0462.0522, i64 4
  %.sroa.11.0.copyload = load i16, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !31 ; 5 uses
  %.sroa.11.0.insert.ext455 = zext i16 %.sroa.11.0.copyload to i48 ; 2 uses
  %.sroa.11.0.insert.shift456 = shl nuw i48 %.sroa.11.0.insert.ext455, 32 ; 6 uses
  %.sroa.0442.0.insert.ext445 = zext i16 %.sroa.0442.0.copyload to i48 ; 7 uses
  %i.as = sext i16 %.sroa.0442.0.copyload to i32  ; 2 uses
  %i.at = add nsw i32 %i.as, -15
  %i.au = icmp slt i16 %.sroa.0442.0.copyload, 0
  %i.av = select i1 %i.au, i32 %i.at, i32 %i.as
  %i.aw = sdiv i32 %i.av, 16                      ; 5 uses
  %i.ax = trunc nsw i32 %i.aw to i16              ; 5 uses
  %i.ay = sext i16 %.sroa.8448.0.copyload to i32  ; 2 uses
  %i.az = add nsw i32 %i.ay, -15
  %i.ba = icmp slt i16 %.sroa.8448.0.copyload, 0
  %i.bb = select i1 %i.ba, i32 %i.az, i32 %i.ay
  %i.bc = sdiv i32 %i.bb, 16                      ; 3 uses
  %i.bd = trunc nsw i32 %i.bc to i16              ; 5 uses
  %i.be = sext i16 %.sroa.11.0.copyload to i32    ; 2 uses
  %i.bf = add nsw i32 %i.be, -15
  %i.bg = icmp slt i48 %.sroa.11.0.insert.shift456, 0
  %i.bh = select i1 %i.bg, i32 %i.bf, i32 %i.be
  %i.bi = sdiv i32 %i.bh, 16                      ; 5 uses
  %i.bj = trunc nsw i32 %i.bi to i16              ; 3 uses
  %.mask613 = and i32 %i.bi, 65535
  %.sroa.12.0.insert.ext560 = zext nneg i32 %.mask613 to i48
  %.sroa.12.0.insert.shift561 = shl nuw i48 %.sroa.12.0.insert.ext560, 32
  %i.bk = shl nsw i32 %i.bc, 16
  %.sroa.9.0.insert.shift553 = zext i32 %i.bk to i48
  %.sroa.9.0.insert.insert555 = or disjoint i48 %.sroa.12.0.insert.shift561, %.sroa.9.0.insert.shift553
  %.mask615 = and i32 %i.aw, 65535
  %.sroa.0.0.insert.ext545 = zext nneg i32 %.mask615 to i48
  %.sroa.0.0.insert.insert547 = or disjoint i48 %.sroa.9.0.insert.insert555, %.sroa.0.0.insert.ext545 ; 5 uses
  %i.bl = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert547) ; 16 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = and i16 %.sroa.11.0.copyload, 15        ; 3 uses
  %i.bo = and i16 %.sroa.8448.0.copyload, 15      ; 3 uses
  %i.bp = and i16 %.sroa.0442.0.copyload, 15      ; 3 uses
  %.sroa.10429.0.insert.ext438 = zext nneg i16 %i.bn to i48
  %.sroa.10429.0.insert.shift439 = shl nuw nsw i48 %.sroa.10429.0.insert.ext438, 32 ; 3 uses
  %.sroa.8416.0.insert.ext425 = zext nneg i16 %i.bo to i48
  %.sroa.8416.0.insert.shift426 = shl nuw nsw i48 %.sroa.8416.0.insert.ext425, 16
  %.sroa.0406.0.insert.ext413 = zext nneg i16 %i.bp to i48 ; 3 uses
  %i.bq = or disjoint i48 %.sroa.10429.0.insert.shift439, %.sroa.8416.0.insert.shift426
  %.sroa.0406.0.insert.insert415 = or disjoint i48 %i.bq, %.sroa.0406.0.insert.ext413 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
end_hunk_1
begin_hunk_2_@_ZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEE:bb.a
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !19 ; 2 uses
  %i.cr = icmp slt i16 %i.cq, %i.ax
  br i1 %i.cr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cs = icmp eq i16 %i.cq, %i.ax
  br i1 %i.cs, label %bb.o, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !20 ; 2 uses
  %i.cv = icmp slt i16 %i.cu, %i.bd
  br i1 %i.cv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = icmp eq i16 %i.cu, %i.bd
  br i1 %i.cw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !21
  %i.cz = icmp slt i16 %i.cy, %i.bj
  br i1 %i.cz, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.o, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.p, %bb.n
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.p ], [ %.014.i.i.i.i, %bb.n ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.da, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.db = icmp eq ptr %.19.i.i.i.i, %i.k
  br i1 %i.db, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !19 ; 2 uses
  %i.de = icmp sgt i16 %i.dd, %i.ax
  br i1 %i.de, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = icmp eq i16 %i.dd, %i.ax
  br i1 %i.df, label %bb.s, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !20 ; 2 uses
  %i.di = icmp sgt i16 %i.dh, %i.bd
  br i1 %i.di, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp eq i16 %i.dh, %i.bd
  br i1 %i.dj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !21
  %i.dm = icmp sgt i16 %i.dl, %i.bj
  br i1 %i.dm, label %.critedge.i, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit206
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.k, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit206 ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.s ], [ %.19.i.i.i.i, %bb.q ]
  %i.dn = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 3 uses
  store i16 %i.ax, ptr %i.do, align 8, !tbaa !31
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 34
  store i16 %i.bd, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !31
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  store i16 %i.bj, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store ptr null, ptr %i.dp, align 8, !tbaa !97
  %i.dq = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 2 dereferenceable(6) %i.do)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.dr = extractvalue { ptr, ptr } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { ptr, ptr } %i.dq, 1      ; 6 uses
  %.not.i316 = icmp eq ptr %i.ds, null
  br i1 %.not.i316, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i317 = icmp ne ptr %i.dr, null
  %i.dt = icmp eq ptr %i.ds, %i.k
  %or.cond.i.i.i = select i1 %.not.i.i.i317, i1 true, i1 %i.dt
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dv = load i16, ptr %i.do, align 8, !tbaa !19 ; 2 uses
  %i.dw = load i16, ptr %i.du, align 2, !tbaa !19 ; 2 uses
  %i.dx = icmp slt i16 %i.dv, %i.dw
  br i1 %i.dx, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = icmp eq i16 %i.dv, %i.dw
  br i1 %i.dy, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 34
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !20 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 34
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !20 ; 2 uses
  %i.ed = icmp slt i16 %i.ea, %i.ec
  br i1 %i.ed, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = icmp eq i16 %i.ea, %i.ec
  br i1 %i.ee, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %i.eg = load i16, ptr %i.ef, align 4, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !21
  %i.ej = icmp slt i16 %i.eg, %i.ei
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ek = phi i1 [ false, %bb.x ], [ true, %bb.v ], [ true, %bb.y ], [ true, %bb.w ], [ false, %bb.z ], [ %i.ej, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ek, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #5
  %i.el = load i64, ptr %i.l, align 8, !tbaa !98
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.l, align 8, !tbaa !98
  br label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 48) #22
  resume { ptr, i32 } %i.en

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 48) #22
  br label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.ab, %.thread.i, %bb.r, %bb.t, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.t ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.r ], [ %i.dn, %.thread.i ], [ %i.dr, %bb.ab ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %i.bl, ptr %i.eo, align 8, !tbaa !30
  %.sroa.0403.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i201, 65535
  %i.ep = zext nneg i32 %.sroa.0403.0.extract.trunc.mask to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ep
  %.sroa.0.0.copyload.i.i207 = load i8, ptr %i.eq, align 1, !tbaa !32 ; 5 uses
  %i.er = and i8 %.sroa.0.0.copyload.i.i207, 32
  %.not181 = icmp eq i8 %i.er, 0
  br i1 %.not181, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %i.es = and i8 %.sroa.0.0.copyload.i.i207, 64
  %.not182 = icmp ne i8 %i.es, 0
  %or.cond189.not = and i1 %.not182, %i.ad
  br i1 %or.cond189.not, label %bb.ad, label %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.et = add i16 %.sroa.8448.0.copyload, 1       ; 3 uses
  %i.eu = sext i16 %i.et to i32                   ; 2 uses
  %i.ev = add nsw i32 %i.eu, -15
  %i.ew = icmp slt i16 %i.et, 0
  %i.ex = select i1 %i.ew, i32 %i.ev, i32 %i.eu
  %i.ey = sdiv i32 %i.ex, 16
  %.mask.i = and i32 %i.bi, 65535
  %.sroa.735.0.insert.ext.i = zext nneg i32 %.mask.i to i48
  %.sroa.735.0.insert.shift.i = shl nuw i48 %.sroa.735.0.insert.ext.i, 32 ; 2 uses
  %i.ez = shl nsw i32 %i.ey, 16
  %.mask40.i = and i32 %i.aw, 65535               ; 2 uses
  %i.fa = or disjoint i32 %.mask40.i, %i.ez
  %i.fb = zext i32 %i.fa to i48
  %.sroa.033.0.insert.insert.i = or disjoint i48 %.sroa.735.0.insert.shift.i, %i.fb
  %i.fc = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.033.0.insert.insert.i) ; 4 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = shl nsw i32 %i.bc, 16
  %.sroa.2.0.insert.insert.i.i.i534 = or disjoint i32 %i.fe, %.mask40.i
  %.sroa.2.0.insert.insert.i.i.i = zext i32 %.sroa.2.0.insert.insert.i.i.i534 to i48
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i48 %.sroa.735.0.insert.shift.i, %.sroa.2.0.insert.insert.i.i.i
  %i.ff = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i.i) ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread, label %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit

bb.af:                                            ; preds = %bb.ad
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 36
  %i.fk = load i8, ptr %i.fj, align 4, !tbaa !78, !range !79, !noundef !80
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fm = shl nuw nsw i48 %.sroa.11.0.insert.ext455, 8
  %.sroa.3.0.extract.shift.i22.i = and i48 %i.fm, 3840
  %i.fn = shl i16 %i.et, 4
  %i.fo = and i16 %i.fn, 240
  %i.fp = and i48 %.sroa.0442.0.insert.ext445, 15
  %3 = zext nneg i16 %i.fo to i48
  %4 = or disjoint i48 %.sroa.3.0.extract.shift.i22.i, %i.fp
  %i.fq = or disjoint i48 %4, %3
  %i.fr = zext nneg i48 %i.fq to i64
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.i

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.i: ; preds = %bb.ag, %bb.af
  %i.fs = phi i64 [ %i.fr, %bb.ag ], [ 0, %bb.af ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ft, align 4 ; 2 uses
  %i.fu = and i32 %.sroa.0.0.copyload.i.i.i, 65535 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 127
  br i1 %i.fv, label %.split, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.i

.split:                                           ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fc, i64 83
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !101, !range !79, !noundef !80
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread, label %.thread

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.i: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.i
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload.i.i.i, 16
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %i.fz = zext nneg i32 %i.fu to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fz
  %.sroa.0.0.copyload.i.i27.i = load i8, ptr %i.ga, align 1, !tbaa !32 ; 2 uses
  %i.gb = and i8 %.sroa.0.0.copyload.i.i27.i, 16
  %.not.i.i.i = icmp eq i8 %i.gb, 0
  %i.gc = and i8 %.sroa.5.0.extract.trunc.i, 15
  %i.gd = and i8 %.sroa.0.0.copyload.i.i27.i, 15  ; 2 uses
  %i.ge = call i8 @llvm.umax.i8(i8 %i.gd, i8 %i.gc)
  %i.gf = select i1 %.not.i.i.i, i8 %i.gd, i8 %i.ge
  %.not.i = icmp eq i8 %i.gf, 15
  br i1 %.not.i, label %.thread, label %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread

_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit: ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ff, i64 83
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !101, !range !79, !noundef !80
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread, label %.thread

_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread: ; preds = %bb.ae, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit.i, %.split, %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit, %bb.ac
  %i.gj = and i8 %.sroa.0.0.copyload.i.i207, 15   ; 3 uses
  %i.gk = add i16 %.sroa.0442.0.copyload, 1
  %.sroa.2.0.insert.ext.i = zext i16 %.sroa.8448.0.copyload to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16 ; 3 uses
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.11.0.insert.shift456, %.sroa.2.0.insert.shift.i ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i16 %i.gk to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  %i.gl = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, ptr noundef nonnull %i.a) ; 2 uses
  %i.gm = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214, label %bb.ah

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214: ; preds = %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread
  %.sroa.4.0.extract.shift = lshr i32 %i.gl, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8 ; 2 uses
  %i.go = and i32 %i.gl, 65535
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.gp
  %.sroa.0.0.copyload.i.i210 = load i8, ptr %i.gq, align 1, !tbaa !32 ; 2 uses
  %i.gr = and i8 %.sroa.0.0.copyload.i.i210, 16
  %.not.i.i211 = icmp eq i8 %i.gr, 0
  %i.gs = and i8 %.sroa.4.0.extract.trunc, 15
  %i.gt = lshr i8 %.sroa.4.0.extract.trunc, 4
  %.in.i.i212 = select i1 %i.ad, i8 %i.gs, i8 %i.gt
  %i.gu = and i8 %.sroa.0.0.copyload.i.i210, 15   ; 2 uses
  %i.gv = call i8 @llvm.umax.i8(i8 %i.gu, i8 %.in.i.i212)
  %i.gw = select i1 %.not.i.i211, i8 %i.gu, i8 %i.gv ; 3 uses
  %i.gx = icmp samesign ule i8 %i.gw, %i.gj
  %.not184 = icmp ult i8 %i.gw, %spec.select
  %or.cond190 = select i1 %i.gx, i1 true, i1 %.not184
  %i.gy = add nsw i8 %i.gw, -1
  %.1169 = select i1 %or.cond190, i8 %i.gj, i8 %i.gy
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214, %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread
  %.2170 = phi i8 [ %.1169, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214 ], [ %i.gj, %_ZN7voxalgo17is_sunlight_aboveEP3MapN4core8vector3dIsEEPK14NodeDefManager.exit.thread ] ; 3 uses
  %i.gz = add i16 %.sroa.8448.0.copyload, 1
  %.sroa.2.0.insert.ext.i.1 = zext i16 %i.gz to i48
  %.sroa.2.0.insert.shift.i.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.1, 16
  %.sroa.2.0.insert.insert.i.1 = or disjoint i48 %.sroa.11.0.insert.shift456, %.sroa.2.0.insert.shift.i.1
  %.sroa.0.0.insert.insert.i.1 = or disjoint i48 %.sroa.2.0.insert.insert.i.1, %.sroa.0442.0.insert.ext445
  %i.ha = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.1, ptr noundef nonnull %i.a) ; 2 uses
  %i.hb = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.1, label %bb.ai

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.1: ; preds = %bb.ah
  %.sroa.4.0.extract.shift.1 = lshr i32 %i.ha, 16
  %.sroa.4.0.extract.trunc.1 = trunc i32 %.sroa.4.0.extract.shift.1 to i8 ; 2 uses
  %i.hd = and i32 %i.ha, 65535
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.he
  %.sroa.0.0.copyload.i.i210.1 = load i8, ptr %i.hf, align 1, !tbaa !32 ; 2 uses
  %i.hg = and i8 %.sroa.0.0.copyload.i.i210.1, 16
  %.not.i.i211.1 = icmp eq i8 %i.hg, 0
  %i.hh = and i8 %.sroa.4.0.extract.trunc.1, 15
  %i.hi = lshr i8 %.sroa.4.0.extract.trunc.1, 4
  %.in.i.i212.1 = select i1 %i.ad, i8 %i.hh, i8 %i.hi
  %i.hj = and i8 %.sroa.0.0.copyload.i.i210.1, 15 ; 2 uses
  %i.hk = call i8 @llvm.umax.i8(i8 %i.hj, i8 %.in.i.i212.1)
  %i.hl = select i1 %.not.i.i211.1, i8 %i.hj, i8 %i.hk ; 3 uses
  %i.hm = icmp ule i8 %i.hl, %.2170
  %.not184.1 = icmp ult i8 %i.hl, %spec.select
  %or.cond190.1 = select i1 %i.hm, i1 true, i1 %.not184.1
  %i.hn = add nsw i8 %i.hl, -1
  %.1169.1 = select i1 %or.cond190.1, i8 %.2170, i8 %i.hn
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.1, %bb.ah
  %.2170.1 = phi i8 [ %.1169.1, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.1 ], [ %.2170, %bb.ah ] ; 3 uses
  %i.ho = add i16 %.sroa.11.0.copyload, 1
  %.sroa.3.0.insert.ext.i.2 = zext i16 %i.ho to i48
  %.sroa.3.0.insert.shift.i.2 = shl nuw i48 %.sroa.3.0.insert.ext.i.2, 32
  %.sroa.2.0.insert.insert.i.2 = or disjoint i48 %.sroa.3.0.insert.shift.i.2, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i.2 = or disjoint i48 %.sroa.2.0.insert.insert.i.2, %.sroa.0442.0.insert.ext445
  %i.hp = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.2, ptr noundef nonnull %i.a) ; 2 uses
  %i.hq = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.2, label %bb.aj

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.2: ; preds = %bb.ai
  %.sroa.4.0.extract.shift.2 = lshr i32 %i.hp, 16
  %.sroa.4.0.extract.trunc.2 = trunc i32 %.sroa.4.0.extract.shift.2 to i8 ; 2 uses
  %i.hs = and i32 %i.hp, 65535
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ht
  %.sroa.0.0.copyload.i.i210.2 = load i8, ptr %i.hu, align 1, !tbaa !32 ; 2 uses
  %i.hv = and i8 %.sroa.0.0.copyload.i.i210.2, 16
  %.not.i.i211.2 = icmp eq i8 %i.hv, 0
  %i.hw = and i8 %.sroa.4.0.extract.trunc.2, 15
  %i.hx = lshr i8 %.sroa.4.0.extract.trunc.2, 4
  %.in.i.i212.2 = select i1 %i.ad, i8 %i.hw, i8 %i.hx
  %i.hy = and i8 %.sroa.0.0.copyload.i.i210.2, 15 ; 2 uses
  %i.hz = call i8 @llvm.umax.i8(i8 %i.hy, i8 %.in.i.i212.2)
  %i.ia = select i1 %.not.i.i211.2, i8 %i.hy, i8 %i.hz ; 3 uses
  %i.ib = icmp ule i8 %i.ia, %.2170.1
  %.not184.2 = icmp ult i8 %i.ia, %spec.select
  %or.cond190.2 = select i1 %i.ib, i1 true, i1 %.not184.2
  %i.ic = add nsw i8 %i.ia, -1
  %.1169.2 = select i1 %or.cond190.2, i8 %.2170.1, i8 %i.ic
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.2, %bb.ai
  %.2170.2 = phi i8 [ %.1169.2, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.2 ], [ %.2170.1, %bb.ai ] ; 3 uses
  %i.id = add i16 %.sroa.11.0.copyload, -1
  %.sroa.3.0.insert.ext.i.3 = zext i16 %i.id to i48
  %.sroa.3.0.insert.shift.i.3 = shl nuw i48 %.sroa.3.0.insert.ext.i.3, 32
  %.sroa.2.0.insert.insert.i.3 = or disjoint i48 %.sroa.3.0.insert.shift.i.3, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.insert.i.3 = or disjoint i48 %.sroa.2.0.insert.insert.i.3, %.sroa.0442.0.insert.ext445
  %i.ie = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.3, ptr noundef nonnull %i.a) ; 2 uses
  %i.if = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.3, label %bb.ak

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.3: ; preds = %bb.aj
  %.sroa.4.0.extract.shift.3 = lshr i32 %i.ie, 16
  %.sroa.4.0.extract.trunc.3 = trunc i32 %.sroa.4.0.extract.shift.3 to i8 ; 2 uses
  %i.ih = and i32 %i.ie, 65535
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ii
  %.sroa.0.0.copyload.i.i210.3 = load i8, ptr %i.ij, align 1, !tbaa !32 ; 2 uses
  %i.ik = and i8 %.sroa.0.0.copyload.i.i210.3, 16
  %.not.i.i211.3 = icmp eq i8 %i.ik, 0
  %i.il = and i8 %.sroa.4.0.extract.trunc.3, 15
  %i.im = lshr i8 %.sroa.4.0.extract.trunc.3, 4
  %.in.i.i212.3 = select i1 %i.ad, i8 %i.il, i8 %i.im
  %i.in = and i8 %.sroa.0.0.copyload.i.i210.3, 15 ; 2 uses
  %i.io = call i8 @llvm.umax.i8(i8 %i.in, i8 %.in.i.i212.3)
  %i.ip = select i1 %.not.i.i211.3, i8 %i.in, i8 %i.io ; 3 uses
  %i.iq = icmp ule i8 %i.ip, %.2170.2
  %.not184.3 = icmp ult i8 %i.ip, %spec.select
  %or.cond190.3 = select i1 %i.iq, i1 true, i1 %.not184.3
  %i.ir = add nsw i8 %i.ip, -1
  %.1169.3 = select i1 %or.cond190.3, i8 %.2170.2, i8 %i.ir
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.3, %bb.aj
  %.2170.3 = phi i8 [ %.1169.3, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.3 ], [ %.2170.2, %bb.aj ] ; 3 uses
  %i.is = add i16 %.sroa.8448.0.copyload, -1
  %.sroa.2.0.insert.ext.i.4 = zext i16 %i.is to i48
  %.sroa.2.0.insert.shift.i.4 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.4, 16
  %.sroa.2.0.insert.insert.i.4 = or disjoint i48 %.sroa.11.0.insert.shift456, %.sroa.2.0.insert.shift.i.4
  %.sroa.0.0.insert.insert.i.4 = or disjoint i48 %.sroa.2.0.insert.insert.i.4, %.sroa.0442.0.insert.ext445
  %i.it = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.4, ptr noundef nonnull %i.a) ; 2 uses
  %i.iu = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.4, label %bb.al

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit214.4: ; preds = %bb.ak
  %.sroa.4.0.extract.shift.4 = lshr i32 %i.it, 16
  %.sroa.4.0.extract.trunc.4 = trunc i32 %.sroa.4.0.extract.shift.4 to i8 ; 2 uses
  %i.iw = and i32 %i.it, 65535
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ix
  %.sroa.0.0.copyload.i.i210.4 = load i8, ptr %i.iy, align 1, !tbaa !32 ; 2 uses
  %i.iz = and i8 %.sroa.0.0.copyload.i.i210.4, 16
  %.not.i.i211.4 = icmp eq i8 %i.iz, 0
  %i.ja = and i8 %.sroa.4.0.extract.trunc.4, 15
  %i.jb = lshr i8 %.sroa.4.0.extract.trunc.4, 4
  %.in.i.i212.4 = select i1 %i.ad, i8 %i.ja, i8 %i.jb
  %i.jc = and i8 %.sroa.0.0.copyload.i.i210.4, 15 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7voxalgo21update_lighting_nodesEP3MapRKSt6vectorISt4pairIN4core8vector3dIsEE7MapNodeESaIS8_EERSt3mapIS6_P8MapBlockSt4lessIS6_ESaIS3_IKS6_SF_EEE:bb.a
  br i1 %i.pn, label %bb.bd, label %.critedge, !llvm.loop !198

bb.bj:                                            ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.po = icmp ugt i8 %.3171478, %i.cn
  %i.pp = icmp eq i8 %.3171478, 15
  %or.cond6 = and i1 %i.ad, %i.pp
  %or.cond533 = select i1 %i.po, i1 %or.cond6, i1 false
  br i1 %or.cond533, label %.preheader488, label %.critedge

.preheader488:                                    ; preds = %bb.bj
  %invariant.op = or disjoint i48 %.sroa.11.0.insert.shift456, %.sroa.0442.0.insert.ext445 ; 2 uses
  %.0174501 = add i16 %.sroa.8448.0.copyload, -1  ; 2 uses
  %.sroa.6347.0.insert.ext348502 = zext i16 %.0174501 to i48
  %.sroa.6347.0.insert.shift349503 = shl nuw nsw i48 %.sroa.6347.0.insert.ext348502, 16
  %.sroa.0343.0.insert.insert346.reass504 = or disjoint i48 %.sroa.6347.0.insert.shift349503, %invariant.op
  %i.pq = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0343.0.insert.insert346.reass504, ptr noundef nonnull %i.a)
  %i.pr = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph, label %.critedge

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph: ; preds = %.preheader488
  %.mask = and i32 %i.bi, 65535
  %.sroa.8.0.insert.ext333 = zext nneg i32 %.mask to i48
  %.sroa.8.0.insert.shift334 = shl nuw i48 %.sroa.8.0.insert.ext333, 32
  %.mask484 = and i32 %i.aw, 65535
  %.sroa.0325.0.insert.ext326 = zext nneg i32 %.mask484 to i48
  %invariant.op506 = or disjoint i48 %.sroa.8.0.insert.shift334, %.sroa.0325.0.insert.ext326
  %invariant.op639 = or disjoint i48 %.sroa.0406.0.insert.ext413, %.sroa.10429.0.insert.shift439
  br label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270: ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289
  %i.pt = phi i32 [ %i.pq, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph ], [ %i.rp, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289 ] ; 2 uses
  %.0174505 = phi i16 [ %.0174501, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270.lr.ph ], [ %.0174, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289 ] ; 4 uses
  %.sroa.5341.0.extract.shift = lshr i32 %i.pt, 16
  %.sroa.5341.0.extract.trunc = trunc i32 %.sroa.5341.0.extract.shift to i8
  %i.pu = and i32 %i.pt, 65535
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.pv
  %.sroa.0.0.copyload.i.i266 = load i8, ptr %i.pw, align 1, !tbaa !32 ; 3 uses
  %i.px = and i8 %.sroa.0.0.copyload.i.i266, 16
  %.not.i.i267 = icmp eq i8 %i.px, 0
  %i.py = and i8 %.sroa.5341.0.extract.trunc, 15
  %i.pz = and i8 %.sroa.0.0.copyload.i.i266, 15   ; 2 uses
  %i.qa = call i8 @llvm.umax.i8(i8 %i.pz, i8 %i.py)
  %i.qb = select i1 %.not.i.i267, i8 %i.pz, i8 %i.qa
  %i.qc = icmp eq i8 %i.qb, 15
  %i.qd = and i8 %.sroa.0.0.copyload.i.i266, 64
  %.not186 = icmp eq i8 %i.qd, 0
  %or.cond195 = or i1 %.not186, %i.qc
  br i1 %or.cond195, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270
  %i.qe = sext i16 %.0174505 to i32               ; 2 uses
  %i.qf = add nsw i32 %i.qe, -15
  %i.qg = icmp slt i16 %.0174505, 0
  %i.qh = select i1 %i.qg, i32 %i.qf, i32 %i.qe
  %i.qi = sdiv i32 %i.qh, 16
  %i.qj = and i16 %.0174505, 15
  %i.qk = shl nsw i32 %i.qi, 16
  %.sroa.6.0.insert.shift330 = zext i32 %i.qk to i48
  %.sroa.0325.0.insert.insert328.reass = or disjoint i48 %invariant.op506, %.sroa.6.0.insert.shift330 ; 3 uses
  %i.ql = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0325.0.insert.insert328.reass) ; 2 uses
  %.sroa.5338.0.insert.ext = zext nneg i16 %i.qj to i48
  %.sroa.5338.0.insert.shift = shl nuw nsw i48 %.sroa.5338.0.insert.ext, 16
  %.sroa.0337.0.insert.insert.reass.reass.reass = or disjoint i48 %.sroa.5338.0.insert.shift, %invariant.op639 ; 2 uses
  %i.qm = load ptr, ptr %i.n, align 8, !tbaa !34  ; 9 uses
  %i.qn = load ptr, ptr %i.o, align 8, !tbaa !88
  %.not.i.i276 = icmp eq ptr %i.qm, %i.qn
  br i1 %.not.i.i276, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !90
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store i48 %.sroa.0337.0.insert.insert.reass.reass.reass, ptr %i.qo, align 8, !tbaa !31
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 14
  store i48 %.sroa.0325.0.insert.insert328.reass, ptr %i.qp, align 2, !tbaa !31
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 20
  store i8 4, ptr %i.qq, align 4, !tbaa !91
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  store ptr %i.qr, ptr %i.n, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289

bb.bm:                                            ; preds = %bb.bk
  %i.qs = load ptr, ptr %i.m, align 8, !tbaa !92  ; 5 uses
  %i.qt = ptrtoint ptr %i.qm to i64
  %i.qu = ptrtoint ptr %i.qs to i64               ; 2 uses
  %i.qv = sub i64 %i.qt, %i.qu                    ; 3 uses
  %i.qw = icmp eq i64 %i.qv, 9223372036854775800
  br i1 %i.qw, label %bb.bn, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277: ; preds = %bb.bm
  %i.qx = sdiv exact i64 %i.qv, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i278 = call i64 @llvm.umax.i64(i64 %i.qx, i64 1)
  %i.qy = add nsw i64 %.sroa.speculated.i.i.i.i278, %i.qx ; 2 uses
  %i.qz = icmp ult i64 %i.qy, %i.qx
  %i.ra = call i64 @llvm.umin.i64(i64 %i.qy, i64 384307168202282325)
  %i.rb = select i1 %i.qz, i64 384307168202282325, i64 %i.ra ; 3 uses
  %.not.i.i.i.i279 = icmp ne i64 %i.rb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i279)
  %i.rc = mul nuw nsw i64 %i.rb, 24
  %i.rd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rc) #21 ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.qv ; 4 uses
  store ptr %i.ql, ptr %i.re, align 8, !tbaa !90
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i48 %.sroa.0337.0.insert.insert.reass.reass.reass, ptr %i.rf, align 8, !tbaa !31
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 14
  store i48 %.sroa.0325.0.insert.insert328.reass, ptr %i.rg, align 2, !tbaa !31
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 20
  store i8 4, ptr %i.rh, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i280 = icmp eq ptr %i.qs, %i.qm
  br i1 %.not10.i.i.i.i.i.i280, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285, label %.lr.ph.i.i.i.i.i.i281

.lr.ph.i.i.i.i.i.i281:                            ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277, %.lr.ph.i.i.i.i.i.i281
  %.012.i.i.i.i.i.i282 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i281 ], [ %i.rd, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277 ] ; 2 uses
  %.0911.i.i.i.i.i.i283 = phi ptr [ %i.ri, %.lr.ph.i.i.i.i.i.i281 ], [ %i.qs, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i282, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i283, i64 24, i1 false), !tbaa.struct !93, !alias.scope !212
  %i.ri = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i283, i64 24 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i282, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i284 = icmp eq ptr %i.ri, %i.qm
  br i1 %.not.i.i.i.i.i.i284, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285, label %.lr.ph.i.i.i.i.i.i281, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285: ; preds = %.lr.ph.i.i.i.i.i.i281, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277
  %.0.lcssa.i.i.i.i.i.i286 = phi ptr [ %i.rd, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i277 ], [ %i.rj, %.lr.ph.i.i.i.i.i.i281 ]
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i286, i64 24
  %.not.i36.i.i.i287 = icmp eq ptr %i.qs, null
  br i1 %.not.i36.i.i.i287, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285
  %i.rl = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = sub i64 %i.rm, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.rn) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288: ; preds = %bb.bo, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i285
  store ptr %i.rd, ptr %i.m, align 8, !tbaa !92
  store ptr %i.rk, ptr %i.n, align 8, !tbaa !34
  %i.ro = getelementptr inbounds nuw [24 x i8], ptr %i.rd, i64 %i.rb
  store ptr %i.ro, ptr %i.o, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289: ; preds = %bb.bl, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i288
  %.0174 = add i16 %.0174505, -1                  ; 2 uses
  %.sroa.6347.0.insert.ext348 = zext i16 %.0174 to i48
  %.sroa.6347.0.insert.shift349 = shl nuw nsw i48 %.sroa.6347.0.insert.ext348, 16
  %.sroa.0343.0.insert.insert346.reass = or disjoint i48 %.sroa.6347.0.insert.shift349, %invariant.op
  %i.rp = call i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0343.0.insert.insert346.reass, ptr noundef nonnull %i.a)
  %i.rq = load i8, ptr %i.a, align 1, !tbaa !123, !range !79, !noundef !80
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270, label %.critedge, !llvm.loop !202

.critedge:                                        ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit289, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit270, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit242, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit242.thread, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit265, %.preheader488, %.preheader, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit237, %bb.bj, %bb.j
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0462.0522, i64 12 ; 2 uses
  %i.rt = load ptr, ptr %i.h, align 8, !tbaa !208
  %i.ru = icmp ult ptr %i.rs, %i.rt
  br i1 %i.ru, label %bb.j, label %._crit_edge526, !llvm.loop !203

bb.bp:                                            ; preds = %._crit_edge530
  call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(385) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.0.add = add nuw nsw i64 %.0.idx532, 4         ; 2 uses
  %.not = icmp eq i64 %.0.add, 8
  br i1 %.not, label %bb.f, label %bb.g

bb.bq:                                            ; preds = %._crit_edge526, %._crit_edge530
  %indvars.iv = phi i64 [ 0, %._crit_edge526 ], [ %indvars.iv.next, %._crit_edge530 ] ; 4 uses
  %i.rv = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !27 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !27
  %i.rz = icmp ult ptr %i.rw, %i.ry
  br i1 %i.rz, label %.lr.ph529, label %._crit_edge530

.lr.ph529:                                        ; preds = %bb.bq
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.sa = shl i32 %indvars.iv.tr, 4
  %i.sb = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.br

._crit_edge530:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315, %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.bp, label %bb.bq, !llvm.loop !204

bb.br:                                            ; preds = %.lr.ph529, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315
  %.sroa.0319.0527 = phi ptr [ %i.rw, %.lr.ph529 ], [ %i.tu, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315 ] ; 3 uses
  %i.sc = load ptr, ptr %.sroa.0319.0527, align 8, !tbaa !90 ; 10 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0319.0527, i64 8
  %.sroa.010.0.copyload = load i48, ptr %i.sd, align 8, !tbaa !31 ; 6 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !77
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 36
  %i.sh = load i8, ptr %i.sg, align 4, !tbaa !78, !range !79, !noundef !80
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.sroa.3.0.extract.shift.i290 = lshr i48 %.sroa.010.0.copyload, 32
  %.sroa.3.0.extract.trunc.i291 = zext nneg i48 %.sroa.3.0.extract.shift.i290 to i64
  %.sroa.2.0.extract.shift.i292 = lshr i48 %.sroa.010.0.copyload, 16
  %.sroa.2.0.extract.trunc.i293 = zext nneg i48 %.sroa.2.0.extract.shift.i292 to i64
  %.sroa.0.0.extract.trunc.i294 = zext i48 %.sroa.010.0.copyload to i64
  %sext.i295 = shl nuw i64 %.sroa.3.0.extract.trunc.i291, 48
  %5 = ashr exact i64 %sext.i295, 40
  %sext2.i296 = shl i64 %.sroa.2.0.extract.trunc.i293, 48
  %i.sj = ashr exact i64 %sext2.i296, 44
  %sext3.i297 = shl i64 %.sroa.0.0.extract.trunc.i294, 48
  %i.sk = ashr exact i64 %sext3.i297, 48
  %i.sl = add nsw i64 %i.sj, %i.sk
  %i.sm = add nsw i64 %i.sl, %5
  %i.sn = and i64 %i.sm, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299: ; preds = %bb.br, %bb.bs
  %i.so = phi i64 [ %i.sn, %bb.bs ], [ 0, %bb.br ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.so
  %.sroa.0.0.copyload.i.i298 = load i32, ptr %i.sp, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i298, 16 ; 3 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i298, 65535
  %i.sq = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.sq
  %.sroa.0.0.copyload.i.i300 = load i8, ptr %i.sr, align 1, !tbaa !32
  %i.ss = and i8 %.sroa.0.0.copyload.i.i300, 16
  %.not.i301 = icmp eq i8 %i.ss, 0
  br i1 %.not.i301, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304, label %bb.bt

bb.bt:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299
  br i1 %i.ar, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.st = and i32 %.sroa.5.0.extract.shift, 240
  %i.su = or i32 %i.st, %i.sb
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304

bb.bv:                                            ; preds = %bb.bt
  %i.sv = and i32 %.sroa.5.0.extract.shift, 15
  %i.sw = or disjoint i32 %i.sv, %i.sa
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304: ; preds = %bb.bu, %bb.bv, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.shift, %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit299 ], [ %i.sw, %bb.bv ], [ %i.su, %bb.bu ]
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.sx = and i32 %.sroa.0.0.copyload.i.i298, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.sx
  %.sroa.02.0.extract.trunc.i305 = zext i48 %.sroa.010.0.copyload to i64
  %.sroa.2.0.extract.shift.i306 = lshr i48 %.sroa.010.0.copyload, 16
  %.sroa.2.0.extract.trunc.i307 = zext nneg i48 %.sroa.2.0.extract.shift.i306 to i64
  %.sroa.3.0.extract.shift.i308 = lshr i48 %.sroa.010.0.copyload, 32
  %.sroa.3.0.extract.trunc.i309 = zext nneg i48 %.sroa.3.0.extract.shift.i308 to i64
  call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.sc)
  %i.sy = load ptr, ptr %i.se, align 8, !tbaa !77
  %sext.i310 = shl nuw i64 %.sroa.3.0.extract.trunc.i309, 48
  %6 = ashr exact i64 %sext.i310, 40
  %sext3.i311 = shl i64 %.sroa.2.0.extract.trunc.i307, 48
  %i.sz = ashr exact i64 %sext3.i311, 44
  %sext4.i312 = shl i64 %.sroa.02.0.extract.trunc.i305, 48
  %i.ta = ashr exact i64 %sext4.i312, 48
  %i.tb = add nsw i64 %i.sz, %i.ta
  %i.tc = add nsw i64 %i.tb, %6
  %i.td = and i64 %i.tc, 4294967295
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.td
  store i32 %.sroa.0.0.insert.insert, ptr %i.te, align 4
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sc, i64 66 ; 2 uses
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !82 ; 2 uses
  %i.th = icmp ult i16 %i.tg, 4
  br i1 %i.th, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304
  store i16 4, ptr %i.tf, align 2, !tbaa !82
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sc, i64 68
  store i32 16, ptr %i.ti, align 4, !tbaa !83
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sc, i64 72
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !84
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sc, i64 76
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !85
  br label %bb.bz

bb.bx:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit304
  %i.tm = icmp eq i16 %i.tg, 4
  br i1 %i.tm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sc, i64 68 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !83
  %i.tp = or i32 %i.to, 16
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !83
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !86 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sc, i64 48 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !87
  %.not.i.i.i.i.i313 = icmp eq ptr %i.tt, %i.tr
  br i1 %.not.i.i.i.i.i313, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i314

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i314: ; preds = %bb.bz
  store ptr %i.tr, ptr %i.ts, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit315: ; preds = %bb.bz, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i314
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0319.0527, i64 24 ; 2 uses
  %i.tv = load ptr, ptr %i.rx, align 8, !tbaa !27
  %i.tw = icmp ult ptr %i.tu, %i.tv
  br i1 %i.tw, label %bb.br, label %._crit_edge530, !llvm.loop !205
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7voxalgo10LightQueueC2Em(ptr noundef nonnull align 8 dereferenceable(385) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %0, i8 0, i64 384, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 15, ptr %i.a, align 8, !tbaa !24
  %i.b = icmp ugt i64 %1, 384307168202282325
  %i.c = mul nuw nsw i64 %1, 24
  br i1 %i.b, label %bb.c, label %.split

bb.b:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit
  ret void

.split:                                           ; preds = %bb.a, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit
  %.0.idx11 = phi i64 [ %.0.add, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit ], [ 0, %bb.a ] ; 2 uses
  %.0.ptr12 = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr12, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = load ptr, ptr %.0.ptr12, align 8, !tbaa !92
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = icmp ult i64 %i.j, %1
  br i1 %i.k, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i: ; preds = %.split
  %i.l = getelementptr inbounds nuw i8, ptr %.0.ptr12, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.h
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i
  %i.q = load ptr, ptr %.0.ptr12, align 8, !tbaa !92 ; 5 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc10, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %.noexc10 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !216
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc10
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.p, ptr %.0.ptr12, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.y, ptr %i.l, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %1
  store ptr %i.z, ptr %i.d, align 8, !tbaa !88
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.split
  %.0.add = add nuw nsw i64 %.0.idx11, 24         ; 2 uses
  %.not = icmp eq i64 %.0.add, 384
  br i1 %.not, label %bb.b, label %.split

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #5
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7voxalgo10LightQueueD2Ev(ptr noundef nonnull align 8 dead_on_return(385) dereferenceable(385) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7voxalgo10LightQueue5clearEv(ptr noundef nonnull align 8 dereferenceable(385) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 15, ptr %i.a, align 8, !tbaa !24
  %i.b = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !34
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %.0.ptr.1, align 8, !tbaa !92 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %.not.i.i.1 = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.1, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.1: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.1: ; preds = %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.1, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit
  %.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %.0.ptr.2, align 8, !tbaa !92 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %.not.i.i.2 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.2, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.2, label %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.2: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.1
  store ptr %i.h, ptr %i.i, align 8, !tbaa !34
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.2

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.2: ; preds = %_ZSt8_DestroyIPN7voxalgo13ChangingLightES1_EvT_S3_RSaIT0_E.exit.i.i.2, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE5clearEv.exit.1
  %.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %.0.ptr.3, align 8, !tbaa !92 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7voxalgo28update_block_border_lightingEP3MapP8MapBlockRSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE:_ZN7voxalgo10LightQueueC2Em.exit
  %i.jq = icmp eq i16 %i.jm, %i.jo
  br i1 %i.jq, label %bb.ar, label %.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iz, i64 36
  %i.js = load i16, ptr %i.jr, align 4, !tbaa !21
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 36
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !21
  %i.jv = icmp slt i16 %i.js, %i.ju
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %i.jw = phi i1 [ false, %bb.ao ], [ true, %bb.am ], [ true, %bb.ap ], [ true, %bb.an ], [ false, %bb.aq ], [ %i.jv, %bb.ar ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jw, ptr noundef nonnull %i.iz, ptr noundef nonnull %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.at) #5
  %i.jx = load i64, ptr %i.au, align 8, !tbaa !98
  %i.jy = add i64 %i.jx, 1
  store i64 %i.jy, ptr %i.au, align 8, !tbaa !98
  br label %bb.at

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc235
  %i.jz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 48) #22
  br label %.body

bb.as:                                            ; preds = %bb.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 48) #22
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ak, %bb.ai, %bb.as, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.ak ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.ai ], [ %i.iz, %.thread.i ], [ %i.jd, %bb.as ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.ka, align 8, !tbaa !30
  %.sroa.0.0.copyload.i215 = load i48, ptr %i.gc, align 2, !tbaa !31 ; 2 uses
  %i.kb = shl i32 %i.hg, 16
  %.sroa.2.0.insert.shift = zext i32 %i.kb to i48
  %.sroa.0243.0.insert.insert.reass = or disjoint i48 %invariant.op, %.sroa.2.0.insert.shift ; 2 uses
  %i.kc = zext nneg i8 %i.hf to i64
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %i.kc ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !34 ; 9 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !88
  %.not.i.i216 = icmp eq ptr %i.kf, %i.kh
  br i1 %.not.i.i216, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.kf, align 8, !tbaa !90
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store i48 %.sroa.0243.0.insert.insert.reass, ptr %i.ki, align 8, !tbaa !31
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 14
  store i48 %.sroa.0.0.copyload.i215, ptr %i.kj, align 2, !tbaa !31
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  store i8 6, ptr %i.kk, align 4, !tbaa !91
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store ptr %i.kl, ptr %i.ke, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.av:                                            ; preds = %bb.at
  %i.km = load ptr, ptr %i.kd, align 8, !tbaa !92 ; 5 uses
  %i.kn = ptrtoint ptr %i.kf to i64
  %i.ko = ptrtoint ptr %i.km to i64               ; 2 uses
  %i.kp = sub i64 %i.kn, %i.ko                    ; 3 uses
  %i.kq = icmp eq i64 %i.kp, 9223372036854775800
  br i1 %i.kq, label %bb.aw, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc218 unwind label %.loopexit.split-lp

.noexc218:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.kr = sdiv exact i64 %i.kp, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kr, i64 1)
  %i.ks = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kr ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.kr
  %i.ku = tail call i64 @llvm.umin.i64(i64 %i.ks, i64 384307168202282325)
  %i.kv = select i1 %i.kt, i64 384307168202282325, i64 %i.ku ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.kv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.kw = mul nuw nsw i64 %i.kv, 24
  %i.kx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kw) #21
          to label %.noexc219 unwind label %.loopexit ; 5 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kp ; 4 uses
  store ptr %indvars.iv295.sroa.phi374.sroa.speculated, ptr %i.ky, align 8, !tbaa !90
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i48 %.sroa.0243.0.insert.insert.reass, ptr %i.kz, align 8, !tbaa !31
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 14
  store i48 %.sroa.0.0.copyload.i215, ptr %i.la, align 2, !tbaa !31
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 20
  store i8 6, ptr %i.lb, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.km, %i.kf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc219, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i ], [ %i.kx, %.noexc219 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i.i ], [ %i.km, %.noexc219 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !228
  %i.lc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lc, %i.kf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc219
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kx, %.noexc219 ], [ %i.ld, %.lr.ph.i.i.i.i.i.i ]
  %i.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.km, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.lf = load ptr, ptr %i.kg, align 8, !tbaa !88
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = sub i64 %i.lg, %i.ko
  tail call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.lh) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ax, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.kx, ptr %i.kd, align 8, !tbaa !92
  store ptr %i.le, ptr %i.ke, align 8, !tbaa !34
  %i.li = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.kv
  store ptr %i.li, ptr %i.kg, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.ay:                                            ; preds = %bb.u
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %.critedge.i
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.au, %bb.v, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %i.gd
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit, !llvm.loop !223

.body:                                            ; preds = %bb.az, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i, %.loopexit, %.loopexit.split-lp, %bb.ay
  %.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.lk, %bb.az ], [ %i.jz, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.bn

bb.ba:                                            ; preds = %bb.i, %bb.f, %bb.s
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 3 uses
  %i.ll = trunc nuw nsw i64 %indvars.iv.next299 to i32
  %exitcond301.not = icmp eq i64 %indvars.iv.next299, 6
  br i1 %exitcond301.not, label %bb.c, label %bb.e, !llvm.loop !224

bb.bb:                                            ; preds = %._crit_edge282
  invoke void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN7voxalgo10LightQueueC2Em.exit131 unwind label %bb.d

.preheader:                                       ; preds = %bb.c, %._crit_edge282
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %._crit_edge282 ], [ 0, %bb.c ] ; 4 uses
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv302 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !27 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !27
  %i.lq = icmp ult ptr %i.ln, %i.lp
  br i1 %i.lq, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %.preheader
  %indvars.iv302.tr = trunc nuw i64 %indvars.iv302 to i32
  %i.lr = shl i32 %indvars.iv302.tr, 4
  %i.ls = trunc nuw nsw i64 %indvars.iv302 to i32
  br label %bb.bc

._crit_edge282:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %.preheader
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, 16
  br i1 %exitcond306.not, label %bb.bb, label %.preheader, !llvm.loop !225

bb.bc:                                            ; preds = %.lr.ph281, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.0237.0279 = phi ptr [ %i.ln, %.lr.ph281 ], [ %i.nl, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.lt = load ptr, ptr %.sroa.0237.0279, align 8, !tbaa !90 ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0237.0279, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.lu, align 8, !tbaa !31 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !77
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 36
  %i.ly = load i8, ptr %i.lx, align 4, !tbaa !78, !range !79, !noundef !80
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %6 = ashr exact i64 %sext.i, 40
  %sext2.i.a = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.ma = ashr exact i64 %sext2.i.a, 44
  %sext3.i.a = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.mb = ashr exact i64 %sext3.i.a, 48
  %i.mc = add nsw i64 %i.ma, %i.mb
  %i.md = add nsw i64 %i.mc, %6
  %i.me = and i64 %i.md, 4294967295
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.mf = phi i64 [ %i.me, %bb.bd ], [ 0, %bb.bc ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.mf
  %.sroa.0.0.copyload.i.i220 = load i32, ptr %i.mg, align 4 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i220, 16 ; 3 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i220, 65535
  %i.mh = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mh
  %.sroa.0.0.copyload.i.i221 = load i8, ptr %i.mi, align 1, !tbaa !32
  %i.mj = and i8 %.sroa.0.0.copyload.i.i221, 16
  %.not.i222 = icmp eq i8 %i.mj, 0
  br i1 %.not.i222, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.dj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.mk = and i32 %.sroa.6.0.extract.shift, 240
  %i.ml = or i32 %i.mk, %i.ls
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225

bb.bh:                                            ; preds = %bb.bf
  %i.mm = and i32 %.sroa.6.0.extract.shift, 15
  %i.mn = or disjoint i32 %i.mm, %i.lr
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225: ; preds = %bb.bg, %bb.bh, %bb.be
  %.sroa.6.0 = phi i32 [ %.sroa.6.0.extract.shift, %bb.be ], [ %i.mn, %bb.bh ], [ %i.ml, %bb.bg ]
  invoke void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.lt)
          to label %.noexc232 unwind label %bb.bm

.noexc232:                                        ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225
  %.sroa.3.0.extract.shift.i228 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i229 = zext nneg i48 %.sroa.3.0.extract.shift.i228 to i64
  %.sroa.2.0.extract.shift.i226 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i227 = zext nneg i48 %.sroa.2.0.extract.shift.i226 to i64
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.6.0.insert.ext = shl i32 %.sroa.6.0, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %i.mo = and i32 %.sroa.0.0.copyload.i.i220, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %i.mo
  %i.mp = load ptr, ptr %i.lv, align 8, !tbaa !77
  %sext.i230 = shl nuw i64 %.sroa.3.0.extract.trunc.i229, 48
  %7 = ashr exact i64 %sext.i230, 40
  %sext3.i231 = shl i64 %.sroa.2.0.extract.trunc.i227, 48
  %i.mq = ashr exact i64 %sext3.i231, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.mr = ashr exact i64 %sext4.i, 48
  %i.ms = add nsw i64 %i.mq, %i.mr
  %i.mt = add nsw i64 %i.ms, %7
  %i.mu = and i64 %i.mt, 4294967295
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.mu
  store i32 %.sroa.0.0.insert.insert, ptr %i.mv, align 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lt, i64 66 ; 2 uses
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !82 ; 2 uses
  %i.my = icmp ult i16 %i.mx, 4
  br i1 %i.my, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.noexc232
  store i16 4, ptr %i.mw, align 2, !tbaa !82
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lt, i64 68
  store i32 16, ptr %i.mz, align 4, !tbaa !83
  %i.na = getelementptr inbounds nuw i8, ptr %i.lt, i64 72
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !84
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lt, i64 76
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !85
  br label %bb.bl

bb.bj:                                            ; preds = %.noexc232
  %i.nd = icmp eq i16 %i.mx, 4
  br i1 %i.nd, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lt, i64 68 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !83
  %i.ng = or i32 %i.nf, 16
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !83
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !86 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lt, i64 48 ; 2 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.nk, %i.ni
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.bl
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.bl
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0237.0279, i64 24 ; 2 uses
  %i.nm = load ptr, ptr %i.lo, align 8, !tbaa !27
  %i.nn = icmp ult ptr %i.nl, %i.nm
  br i1 %i.nn, label %bb.bc, label %._crit_edge282, !llvm.loop !226

bb.bm:                                            ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit225
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZN7voxalgo10LightQueueC2Em.exit131:              ; preds = %bb.bb
  %.0108.add = add nuw nsw i64 %.0108.idx284, 4   ; 2 uses
  %.not = icmp eq i64 %.0108.add, 8
  br i1 %.not, label %bb.a, label %bb.b

bb.bn:                                            ; preds = %.body, %bb.g, %bb.bm, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.d ], [ %i.no, %bb.bm ], [ %i.dy, %bb.g ], [ %.pn.pn, %.body ]
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @_ZNSt5arrayISt6vectorIN7voxalgo13ChangingLightESaIS2_EELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(385) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7voxalgo18fill_with_sunlightEP8MMVManipPK14NodeDefManagerN4core8vector2dIsEEPA16_b(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.MapNode, align 4            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !126  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store i32 127, ptr %4, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i16, ptr %i.d, align 4, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !131
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !132
  %i.k = sext i16 %i.e to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.m = load i16, ptr %i.l, align 2, !tbaa !133
  %i.n = sext i16 %i.m to i32
  %invariant.op = sub nsw i32 %i.k, %i.n
  %i.o = load i16, ptr %i.a, align 4, !tbaa !134
  %i.p = sext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 312
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv57 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next58, %bb.c ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv57 to i32
  %i.u = shl i32 %i.t, 16
  %.sroa.2.0.extract.shift63 = add i32 %2, %i.u
  %i.v = ashr i32 %.sroa.2.0.extract.shift63, 16
  %i.w = sub nsw i32 %i.v, %i.h
  %i.x = mul nsw i32 %i.w, %i.j                   ; 2 uses
  %.reass = add i32 %i.x, %invariant.op
  %i.y = mul i32 %.reass, %i.c                    ; 2 uses
  %i.z = mul i32 %i.x, %i.c                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv57
  %.not49 = icmp slt i32 %i.y, %i.z
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  ret void

bb.c:                                             ; preds = %._crit_edge
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next58, 16
  br i1 %exitcond60.not, label %bb.b, label %.preheader, !llvm.loop !3

bb.d:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = add i32 %2, %i.ab
  %sext = shl i32 %i.ac, 16
  %i.ad = ashr exact i32 %sext, 16
  %i.ae = sub nsw i32 %i.ad, %i.p                 ; 2 uses
  %i.af = add nsw i32 %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !123, !range !79, !noundef !80 ; 2 uses
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ai = add nsw i32 %i.y, %i.ae
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !135
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47, %bb.d
  %.042.lcssa = phi i8 [ %i.ah, %bb.d ], [ %.2, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47 ]
  store i8 %.042.lcssa, ptr %i.ag, align 1, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !4

bb.e:                                             ; preds = %.lr.ph, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47
  %.04151 = phi i32 [ %i.ai, %.lr.ph ], [ %i.ba, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47 ] ; 2 uses
  %.04250 = phi i8 [ %i.ah, %.lr.ph ], [ %.2, %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47 ] ; 3 uses
  %i.ak = sext i32 %.04151 to i64                 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !32
  %i.an = and i8 %i.am, 1
  %.not44 = icmp eq i8 %i.an, 0
  br i1 %.not44, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ak
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.040 = phi ptr [ %i.ap, %bb.f ], [ %4, %bb.e ] ; 2 uses
  %i.aq = load i16, ptr %.040, align 4, !tbaa !122 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 127
  br i1 %i.ar, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = zext i16 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.as
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.at, align 1, !tbaa !32 ; 2 uses
  %i.au = trunc nuw i8 %.04250 to i1
  %i.av = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not45 = icmp eq i8 %i.av, 0
  %or.cond = and i1 %.not45, %i.au
  %.1 = select i1 %or.cond, i8 0, i8 %.04250      ; 3 uses
  %i.aw = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw i8 %.1 to i1
  %i.ay = select i1 %i.ax, i8 15, i8 0
  %i.az = getelementptr inbounds nuw i8, ptr %.040, i64 2
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !137
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit47: ; preds = %bb.h, %bb.i, %bb.g
  %.2 = phi i8 [ %.04250, %bb.g ], [ %.1, %bb.i ], [ %.1, %bb.h ] ; 2 uses
  %i.ba = sub nsw i32 %.04151, %i.c               ; 2 uses
  %.not = icmp slt i32 %i.ba, %i.af
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !5
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo23is_sunlight_above_blockEP3MapN4core8vector3dIsEEPK14NodeDefManagerPA16_b(ptr noundef %0, i48 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i48 %1, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %i.a = add i16 %.sroa.3.0.extract.trunc, 1
  %.sroa.2.0.insert.ext.i = zext i16 %i.a to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %i.b = and i48 %1, -4294901761
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.shift.i, %i.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i, i1 noundef zeroext false) ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 82
  %i.i = load i8, ptr %i.h, align 2, !tbaa !140, !range !79, !noundef !80
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.preheader41, label %bb.c

.preheader41:                                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 312
  br label %.preheader40

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 83
  %i.r = load i8, ptr %i.q, align 1, !tbaa !101, !range !79, !noundef !80
  %i.s = xor i8 %i.r, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.c, %bb.d
  %.033 = phi i8 [ %i.s, %bb.d ], [ 0, %bb.c ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 %.033, i64 256, i1 false), !tbaa !123
  br label %.loopexit

.preheader40:                                     ; preds = %.preheader41, %bb.e
  %indvars.iv49 = phi i64 [ 0, %.preheader41 ], [ %indvars.iv.next50, %bb.e ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv49
  %i.u = shl nuw nsw i64 %indvars.iv49, 8
  br label %_ZN8MapBlock14getNodeNoCheckEsss.exit

bb.e:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 16
  br i1 %exitcond52.not, label %.loopexit, label %.preheader40, !llvm.loop !6

_ZN8MapBlock14getNodeNoCheckEsss.exit:            ; preds = %.preheader40, %_ZN8MapBlock14getNodeNoCheckEsss.exit
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next, %_ZN8MapBlock14getNodeNoCheckEsss.exit ] ; 3 uses
  %i.v = load i8, ptr %i.m, align 4, !tbaa !78, !range !79, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = or disjoint i64 %i.u, %indvars.iv
  %i.y = select i1 %i.w, i64 0, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.y
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 4 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.aa = and i32 %.sroa.0.0.copyload.i, 65535
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ab
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.ac, align 1, !tbaa !32 ; 2 uses
  %i.ad = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not.i.i = icmp eq i8 %i.ad, 0
  %i.ae = and i8 %.sroa.4.0.extract.trunc, 15
  %i.af = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %i.ag = tail call i8 @llvm.umax.i8(i8 %i.af, i8 %i.ae)
  %i.ah = select i1 %.not.i.i, i8 %i.af, i8 %i.ag
  %i.ai = icmp eq i8 %i.ah, 15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.ak = zext i1 %i.ai to i8
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.e, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, !llvm.loop !229

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7voxalgo24propagate_block_sunlightEP3MapPK14NodeDefManagerPNS_23SunlightPropagationDataEPNS_10LightQueueES8_(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.sroa.037.0.copyload = load i48, ptr %i.a, align 8, !tbaa !31
  %i.b = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.037.0.copyload) ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader201

.preheader201:                                    ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.f = load ptr, ptr %2, align 8, !tbaa !144    ; 2 uses
  %.not217 = icmp eq ptr %i.e, %i.f
  br i1 %.not217, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader201
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 66 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 368 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 360 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 368 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 376 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !144    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN7voxalgo23SunlightPropagationUnitES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7voxalgo23SunlightPropagationUnitES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.b
  store ptr %i.v, ptr %i.w, align 8, !tbaa !143
  br label %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE5clearEv.exit

bb.c:                                             ; preds = %.lr.ph, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.y = phi ptr [ %i.f, %.lr.ph ], [ %i.eq, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit ]
  %.060216 = phi i1 [ false, %.lr.ph ], [ %.5195, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit ] ; 2 uses
  %.063214 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit ] ; 5 uses
  %i.z = getelementptr inbounds nuw [6 x i8], ptr %i.y, i64 %.063214 ; 3 uses
  %.sroa.028.0.copyload = load i16, ptr %i.z, align 2, !tbaa !31 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !31 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !123
  %i.aa = trunc i8 %.sroa.5.0.copyload to i1
  %.sroa.17.0.insert.ext177 = zext i16 %.sroa.4.0.copyload to i48
  %.sroa.17.0.insert.shift178 = shl nuw i48 %.sroa.17.0.insert.ext177, 32
  %.sroa.0121.0.insert.ext134 = zext i16 %.sroa.028.0.copyload to i48
  %invariant.op211 = or disjoint i48 %.sroa.17.0.insert.shift178, %.sroa.0121.0.insert.ext134 ; 2 uses
  %.sroa.3.0.extract.trunc.i = zext i16 %.sroa.4.0.copyload to i64
  %sext.i.a = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %5 = ashr exact i64 %sext.i.a, 40
  %i.ab = sext i16 %.sroa.028.0.copyload to i64
  %i.ac = add nsw i64 %5, %i.ab                   ; 2 uses
  br i1 %i.aa, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit84

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.c, %bb.m
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.m ], [ 15, %bb.c ] ; 4 uses
  %.1213 = phi i1 [ true, %bb.m ], [ %.060216, %bb.c ] ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv225 to i48
  %.sroa.9.0.insert.shift154 = shl nuw nsw i48 %i.ad, 16
  %.sroa.0121.0.insert.insert136.reass = or disjoint i48 %.sroa.9.0.insert.shift154, %invariant.op211 ; 2 uses
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.af = load i8, ptr %i.h, align 4, !tbaa !78, !range !79, !noundef !80
  %i.ag = trunc nuw i8 %i.af to i1
  %sext2.i = shl nuw nsw i64 %indvars.iv225, 4
  %i.ah = add nsw i64 %i.ac, %sext2.i
  %i.ai = and i64 %i.ah, 4294967295               ; 2 uses
  %i.aj = select i1 %i.ag, i64 0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aj
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ak, align 4 ; 4 uses
  %.sroa.5118.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i, 16 ; 2 uses
  %.sroa.0117.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.al = zext nneg i32 %.sroa.0117.0.extract.trunc.mask to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al
  %.sroa.0.0.copyload.i.i66 = load i8, ptr %i.am, align 1, !tbaa !32 ; 3 uses
  %i.an = and i8 %.sroa.0.0.copyload.i.i66, 16
  %.not.i = icmp eq i8 %i.an, 0
  br i1 %.not.i, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.ao = and i8 %.sroa.0.0.copyload.i.i66, 64
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.ap = and i32 %.sroa.0.0.copyload.i.i, 983040
  %i.aq = icmp eq i32 %i.ap, 983040
  %i.ar = and i8 %.sroa.0.0.copyload.i.i66, 64
  %.not182 = icmp eq i8 %i.ar, 0
  %or.cond183 = or i1 %.not182, %i.aq
  br i1 %or.cond183, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit.thread
  %i.as = or i32 %.sroa.5118.0.extract.shift, 15
  br label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit: ; preds = %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit, %bb.d
  %.sroa.5118.0 = phi i32 [ %i.as, %bb.d ], [ %.sroa.5118.0.extract.shift, %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit ]
  %.sroa.5118.0.insert.ext = shl nuw i32 %.sroa.5118.0, 16
  %.sroa.5118.0.insert.shift = and i32 %.sroa.5118.0.insert.ext, 16711680
  %i.at = and i32 %.sroa.0.0.copyload.i.i, -16711681
  %.sroa.0117.0.insert.insert = or disjoint i32 %.sroa.5118.0.insert.shift, %i.at
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.b)
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ai
  store i32 %.sroa.0117.0.insert.insert, ptr %i.av, align 4
  %i.aw = load i16, ptr %i.j, align 2, !tbaa !82  ; 2 uses
  %i.ax = icmp ult i16 %i.aw, 4
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  store i16 4, ptr %i.j, align 2, !tbaa !82
  store i32 16, ptr %i.k, align 4, !tbaa !83
  %i.ay = load i32, ptr %i.l, align 8, !tbaa !84
  store i32 %i.ay, ptr %i.m, align 4, !tbaa !85
  br label %bb.h

bb.f:                                             ; preds = %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit
  %i.az = icmp eq i16 %i.aw, 4
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.k, align 4, !tbaa !83
  %i.bb = or i32 %i.ba, 16
  store i32 %i.bb, ptr %i.k, align 4, !tbaa !83
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bc = load ptr, ptr %i.n, align 8, !tbaa !86  ; 2 uses
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.h
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.h, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %.sroa.016.0.copyload = load i48, ptr %i.a, align 8, !tbaa !31 ; 2 uses
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !34  ; 9 uses
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !88
  %.not.i.i74 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i74, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  store ptr %i.b, ptr %i.be, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i48 %.sroa.0121.0.insert.insert136.reass, ptr %i.bg, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  store i48 %.sroa.016.0.copyload, ptr %i.bh, align 2, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store i8 4, ptr %i.bi, align 4, !tbaa !91
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bj, ptr %i.t, align 8, !tbaa !34
  br label %bb.m

bb.j:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !92  ; 5 uses
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bp = sdiv exact i64 %i.bn, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 384307168202282325)
  %i.bt = select i1 %i.br, i64 384307168202282325, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = mul nuw nsw i64 %i.bt, 24
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #21 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 4 uses
  store ptr %i.b, ptr %i.bw, align 8, !tbaa !90
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i48 %.sroa.0121.0.insert.insert136.reass, ptr %i.bx, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  store i48 %.sroa.016.0.copyload, ptr %i.by, align 2, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store i8 4, ptr %i.bz, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.be
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !239
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.be
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cf) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.bv, ptr %i.s, align 8, !tbaa !92
  store ptr %i.cc, ptr %i.t, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cg, ptr %i.u, align 8, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, -1
  %.not244 = icmp eq i64 %indvars.iv225, 0
  br i1 %.not244, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, !llvm.loop !233

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit84: ; preds = %bb.c, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 15, %bb.c ] ; 4 uses
  %.3210 = phi i1 [ true, %bb.v ], [ %.060216, %bb.c ]
  %i.ch = trunc nuw nsw i64 %indvars.iv to i48
  %.sroa.9.0.insert.shift142 = shl nuw nsw i48 %i.ch, 16
  %.sroa.0121.0.insert.insert127.reass = or disjoint i48 %.sroa.9.0.insert.shift142, %invariant.op211 ; 2 uses
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.cj = load i8, ptr %i.h, align 4, !tbaa !78, !range !79, !noundef !80
  %i.ck = trunc nuw i8 %i.cj to i1
  %sext2.i81 = shl nuw nsw i64 %indvars.iv, 4
  %i.cl = add nsw i64 %i.ac, %sext2.i81
  %i.cm = and i64 %i.cl, 4294967295               ; 2 uses
  %i.cn = select i1 %i.ck, i64 0, i64 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cn
  %.sroa.0.0.copyload.i.i83 = load i32, ptr %i.co, align 4 ; 3 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i83, 65535
  %i.cp = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cp
  %.sroa.0.0.copyload.i.i85 = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cr = and i8 %.sroa.0.0.copyload.i.i85, 16
  %.not.i86 = icmp ne i8 %i.cr, 0
  %i.cs = and i32 %.sroa.0.0.copyload.i.i83, 983040
  %i.ct = icmp eq i32 %i.cs, 983040
  %or.cond = and i1 %.not.i86, %i.ct
  br i1 %or.cond, label %_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit90, label %_ZNK7MapNode11getLightRawE9LightBank20ContentLightingFlags.exit88.thread

_ZN7MapNode8setLightE9LightBankh20ContentLightingFlags.exit90: ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit84
  %.sroa.0.0.insert.insert = and i32 %.sroa.0.0.copyload.i.i83, -983041
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.b)
end_hunk_4
begin_hunk_5_@_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE:.preheader120
_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ax = sdiv exact i64 %i.av, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 384307168202282325)
  %i.bb = select i1 %i.az, i64 384307168202282325, i64 %i.ba ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bc = mul nuw nsw i64 %i.bb, 24
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #21 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.av ; 4 uses
  store ptr %i.j, ptr %i.be, align 8, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.bf, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.bg, align 2, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  store i8 6, ptr %i.bh, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.as, %i.al
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.bd, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !252
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bn) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !92
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !34
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bo, ptr %i.am, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.bp = tail call i8 @llvm.umax.i8(i8 %i.ac, i8 %i.ab)
  %i.bq = select i1 %.not78, i8 %i.ac, i8 %i.bp   ; 2 uses
  %i.br = icmp samesign ugt i8 %i.bq, 1
  br i1 %i.br, label %bb.h, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.h:                                             ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %i.bs = zext nneg i8 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.bs ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 9 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !88
  %.not.i.i79.1 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i79.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %i.bv, align 8, !tbaa !90
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.by, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.bz, align 2, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i8 6, ptr %i.ca, align 4, !tbaa !91
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.cb, ptr %i.bu, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.j:                                             ; preds = %bb.h
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !92 ; 5 uses
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.f, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.j
  %i.ch = sdiv exact i64 %i.cf, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 384307168202282325)
  %i.cl = select i1 %i.cj, i64 384307168202282325, i64 %i.ck ; 3 uses
  %.not.i.i.i.i.1 = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.1)
  %i.cm = mul nuw nsw i64 %i.cl, 24
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #21 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf ; 4 uses
  store ptr %i.j, ptr %i.co, align 8, !tbaa !90
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i48 %.sroa.097.0.insert.insert.reass, ptr %i.cp, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 14
  store i48 %.sroa.0102.0.insert.insert105.reass, ptr %i.cq, align 2, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  store i8 6, ptr %i.cr, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.cc, %i.bv
  br i1 %.not10.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %.lr.ph.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.1 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.cn, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.1 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.1 ], [ %i.cc, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.1, i64 24, i1 false), !tbaa.struct !93, !alias.scope !252
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.1, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.cs, %i.bv
  br i1 %.not.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.1, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %.0.lcssa.i.i.i.i.i.i.1 = phi ptr [ %i.cn, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1 ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.1 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.1, i64 24
  %.not.i36.i.i.i.1 = icmp eq ptr %i.cc, null
  br i1 %.not.i36.i.i.i.1, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !88
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cx) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1: ; preds = %bb.k, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i.1
  store ptr %i.cn, ptr %i.bt, align 8, !tbaa !92
  store ptr %i.cu, ptr %i.bu, align 8, !tbaa !34
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cy, ptr %i.bw, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.1, %bb.i, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.l, label %_ZN8MapBlock14getNodeNoCheckEsss.exit, !llvm.loop !244

bb.l:                                             ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next147, 16
  br i1 %exitcond149.not, label %bb.m, label %.preheader115, !llvm.loop !245

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 16
  br i1 %exitcond153.not, label %.loopexit, label %.preheader116, !llvm.loop !246

.loopexit:                                        ; preds = %bb.m, %bb.a
  %i.cz = add i16 %storemerge72127, 1             ; 2 uses
  %i.da = sext i16 %i.cz to i32
  %.not73 = icmp sgt i32 %i.da, %i.f
  br i1 %.not73, label %._crit_edge, label %bb.a, !llvm.loop !247

._crit_edge:                                      ; preds = %.loopexit
  %i.db = add i16 %storemerge70130, 1             ; 2 uses
  %.not71 = icmp sgt i16 %i.db, %.sroa.2.0.extract.trunc
  br i1 %.not71, label %._crit_edge131.split, label %.preheader118, !llvm.loop !248

._crit_edge131.split:                             ; preds = %._crit_edge
  %i.dc = add i16 %storemerge133, 1               ; 2 uses
  %.not = icmp sgt i16 %i.dc, %.sroa.061.0.extract.trunc
  br i1 %.not, label %.preheader, label %.preheader119, !llvm.loop !249

bb.n:                                             ; preds = %._crit_edge139
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(385) %4, ptr noundef nonnull align 8 dereferenceable(48) %5)
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge139.1, %bb.n
  %indvars.iv154.1 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next155.1, %._crit_edge139.1 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv154.1 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !27 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !27
  %i.dh = icmp ult ptr %i.de, %i.dg
  br i1 %i.dh, label %.lr.ph.1, label %._crit_edge139.1

.lr.ph.1:                                         ; preds = %bb.o
  %indvars.iv154.1.tr = trunc nuw i64 %indvars.iv154.1 to i32
  %i.di = shl i32 %indvars.iv154.1.tr, 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %.lr.ph.1
  %.sroa.089.0137.1 = phi ptr [ %i.de, %.lr.ph.1 ], [ %i.ez, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1 ] ; 3 uses
  %i.dj = load ptr, ptr %.sroa.089.0137.1, align 8, !tbaa !90 ; 10 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 8
  %.sroa.04.0.copyload.1 = load i48, ptr %i.dk, align 8, !tbaa !31 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 36
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !78, !range !79, !noundef !80
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.3.0.extract.shift.i.1 = lshr i48 %.sroa.04.0.copyload.1, 32
  %.sroa.3.0.extract.trunc.i.1 = zext nneg i48 %.sroa.3.0.extract.shift.i.1 to i64
  %.sroa.2.0.extract.shift.i.1 = lshr i48 %.sroa.04.0.copyload.1, 16
  %.sroa.2.0.extract.trunc.i.1 = zext nneg i48 %.sroa.2.0.extract.shift.i.1 to i64
  %.sroa.0.0.extract.trunc.i.1 = zext i48 %.sroa.04.0.copyload.1 to i64
  %sext.i.1 = shl nuw i64 %.sroa.3.0.extract.trunc.i.1, 48
  %6 = ashr exact i64 %sext.i.1, 40
  %sext2.i.1.a = shl i64 %.sroa.2.0.extract.trunc.i.1, 48
  %i.dq = ashr exact i64 %sext2.i.1.a, 44
  %sext3.i.1.a = shl i64 %.sroa.0.0.extract.trunc.i.1, 48
  %i.dr = ashr exact i64 %sext3.i.1.a, 48
  %i.ds = add nsw i64 %i.dq, %i.dr
  %i.dt = add nsw i64 %i.ds, %6
  %i.du = and i64 %i.dt, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1: ; preds = %bb.q, %bb.p
  %i.dv = phi i64 [ %i.du, %bb.q ], [ 0, %bb.p ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dv
  %.sroa.0.0.copyload.i.i80.1 = load i32, ptr %i.dw, align 4 ; 3 uses
  %.sroa.5.0.extract.shift.1 = lshr i32 %.sroa.0.0.copyload.i.i80.1, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask.1 = and i32 %.sroa.0.0.copyload.i.i80.1, 65535
  %i.dx = zext nneg i32 %.sroa.0.0.extract.trunc.mask.1 to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dx
  %.sroa.0.0.copyload.i.i81.1 = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.dz = and i8 %.sroa.0.0.copyload.i.i81.1, 16
  %.not.i.1 = icmp eq i8 %i.dz, 0
  %i.ea = and i32 %.sroa.5.0.extract.shift.1, 15
  %i.eb = or disjoint i32 %i.ea, %i.di
  %.sroa.5.0.1 = select i1 %.not.i.1, i32 %.sroa.5.0.extract.shift.1, i32 %i.eb
  %.sroa.5.0.insert.ext.1 = shl i32 %.sroa.5.0.1, 16
  %.sroa.5.0.insert.shift.1 = and i32 %.sroa.5.0.insert.ext.1, 16711680
  %i.ec = and i32 %.sroa.0.0.copyload.i.i80.1, -16711681
  %.sroa.0.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.shift.1, %i.ec
  %.sroa.02.0.extract.trunc.i.1 = zext i48 %.sroa.04.0.copyload.1 to i64
  %.sroa.2.0.extract.shift.i82.1 = lshr i48 %.sroa.04.0.copyload.1, 16
  %.sroa.2.0.extract.trunc.i83.1 = zext nneg i48 %.sroa.2.0.extract.shift.i82.1 to i64
  %.sroa.3.0.extract.shift.i84.1 = lshr i48 %.sroa.04.0.copyload.1, 32
  %.sroa.3.0.extract.trunc.i85.1 = zext nneg i48 %.sroa.3.0.extract.shift.i84.1 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.dj)
  %i.ed = load ptr, ptr %i.dl, align 8, !tbaa !77
  %sext.i86.1 = shl nuw i64 %.sroa.3.0.extract.trunc.i85.1, 48
  %7 = ashr exact i64 %sext.i86.1, 40
  %sext3.i87.1 = shl i64 %.sroa.2.0.extract.trunc.i83.1, 48
  %i.ee = ashr exact i64 %sext3.i87.1, 44
  %sext4.i.1 = shl i64 %.sroa.02.0.extract.trunc.i.1, 48
  %i.ef = ashr exact i64 %sext4.i.1, 48
  %i.eg = add nsw i64 %i.ee, %i.ef
  %i.eh = add nsw i64 %i.eg, %7
  %i.ei = and i64 %i.eh, 4294967295
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ei
  store i32 %.sroa.0.0.insert.insert.1, ptr %i.ej, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 66 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !82 ; 2 uses
  %i.em = icmp ult i16 %i.el, 4
  br i1 %i.em, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1
  %i.en = icmp eq i16 %i.el, 4
  br i1 %i.en, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dj, i64 68 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !83
  %i.eq = or i32 %i.ep, 16
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !83
  br label %bb.u

bb.t:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit.1
  store i16 4, ptr %i.ek, align 2, !tbaa !82
  %i.er = getelementptr inbounds nuw i8, ptr %i.dj, i64 68
  store i32 16, ptr %i.er, align 4, !tbaa !83
  %i.es = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.et = load i32, ptr %i.es, align 8, !tbaa !84
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dj, i64 76
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !85
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !86 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dj, i64 48 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !87
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.ey, %i.ew
  br i1 %.not.i.i.i.i.i.1, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1: ; preds = %bb.u
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1: ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i.1, %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.089.0137.1, i64 24 ; 2 uses
  %i.fa = load ptr, ptr %i.df, align 8, !tbaa !27
  %i.fb = icmp ult ptr %i.ez, %i.fa
  br i1 %i.fb, label %bb.p, label %._crit_edge139.1, !llvm.loop !250

._crit_edge139.1:                                 ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit.1, %bb.o
  %indvars.iv.next155.1 = add nuw nsw i64 %indvars.iv154.1, 1 ; 2 uses
  %exitcond157.1 = icmp eq i64 %indvars.iv.next155.1, 16
  br i1 %exitcond157.1, label %bb.v, label %bb.o, !llvm.loop !251

bb.v:                                             ; preds = %._crit_edge139.1
  tail call void @_ZN7voxalgo12spread_lightEP3MapPK14NodeDefManager9LightBankRNS_10LightQueueERSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessISB_ESaISt4pairIKSB_SD_EEE(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(385) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %5)
  ret void

bb.w:                                             ; preds = %.preheader, %._crit_edge139
  %indvars.iv154 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next155, %._crit_edge139 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv154 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !27 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fg = icmp ult ptr %i.fd, %i.ff
  br i1 %i.fg, label %.lr.ph, label %._crit_edge139

.lr.ph:                                           ; preds = %bb.w
  %i.fh = trunc nuw nsw i64 %indvars.iv154 to i32
  br label %bb.x

._crit_edge139:                                   ; preds = %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, %bb.w
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond157 = icmp eq i64 %indvars.iv.next155, 15
  br i1 %exitcond157, label %bb.n, label %bb.w, !llvm.loop !251

bb.x:                                             ; preds = %.lr.ph, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit
  %.sroa.089.0137 = phi ptr [ %i.fd, %.lr.ph ], [ %i.gy, %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit ] ; 3 uses
  %i.fi = load ptr, ptr %.sroa.089.0137, align 8, !tbaa !90 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 8
  %.sroa.04.0.copyload = load i48, ptr %i.fj, align 8, !tbaa !31 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !77
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !78, !range !79, !noundef !80
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = zext nneg i48 %.sroa.3.0.extract.shift.i to i64
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = zext nneg i48 %.sroa.2.0.extract.shift.i to i64
  %.sroa.0.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %sext.i = shl nuw i64 %.sroa.3.0.extract.trunc.i, 48
  %8 = ashr exact i64 %sext.i, 40
  %sext2.i.a = shl i64 %.sroa.2.0.extract.trunc.i, 48
  %i.fp = ashr exact i64 %sext2.i.a, 44
  %sext3.i.a = shl i64 %.sroa.0.0.extract.trunc.i, 48
  %i.fq = ashr exact i64 %sext3.i.a, 48
  %i.fr = add nsw i64 %i.fp, %i.fq
  %i.fs = add nsw i64 %i.fr, %8
  %i.ft = and i64 %i.fs, 4294967295
  br label %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit

_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit: ; preds = %bb.x, %bb.y
  %i.fu = phi i64 [ %i.ft, %bb.y ], [ 0, %bb.x ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.fu
  %.sroa.0.0.copyload.i.i80 = load i32, ptr %i.fv, align 4 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i80, 16 ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i32 %.sroa.0.0.copyload.i.i80, 65535
  %i.fw = zext nneg i32 %.sroa.0.0.extract.trunc.mask to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fw
  %.sroa.0.0.copyload.i.i81 = load i8, ptr %i.fx, align 1, !tbaa !32
  %i.fy = and i8 %.sroa.0.0.copyload.i.i81, 16
  %.not.i = icmp eq i8 %i.fy, 0
  %i.fz = and i32 %.sroa.5.0.extract.shift, 240
  %i.ga = or i32 %i.fz, %i.fh
  %.sroa.5.0 = select i1 %.not.i, i32 %.sroa.5.0.extract.shift, i32 %i.ga
  %.sroa.5.0.insert.ext = shl i32 %.sroa.5.0, 16
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 16711680
  %i.gb = and i32 %.sroa.0.0.copyload.i.i80, -16711681
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %i.gb
  %.sroa.02.0.extract.trunc.i = zext i48 %.sroa.04.0.copyload to i64
  %.sroa.2.0.extract.shift.i82 = lshr i48 %.sroa.04.0.copyload, 16
  %.sroa.2.0.extract.trunc.i83 = zext nneg i48 %.sroa.2.0.extract.shift.i82 to i64
  %.sroa.3.0.extract.shift.i84 = lshr i48 %.sroa.04.0.copyload, 32
  %.sroa.3.0.extract.trunc.i85 = zext nneg i48 %.sroa.3.0.extract.shift.i84 to i64
  tail call void @_ZN8MapBlock19expandNodesIfNeededEv(ptr noundef nonnull align 8 dereferenceable(328) %i.fi)
  %i.gc = load ptr, ptr %i.fk, align 8, !tbaa !77
  %sext.i86 = shl nuw i64 %.sroa.3.0.extract.trunc.i85, 48
  %9 = ashr exact i64 %sext.i86, 40
  %sext3.i87 = shl i64 %.sroa.2.0.extract.trunc.i83, 48
  %i.gd = ashr exact i64 %sext3.i87, 44
  %sext4.i = shl i64 %.sroa.02.0.extract.trunc.i, 48
  %i.ge = ashr exact i64 %sext4.i, 48
  %i.gf = add nsw i64 %i.gd, %i.ge
  %i.gg = add nsw i64 %i.gf, %9
  %i.gh = and i64 %i.gg, 4294967295
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gh
  store i32 %.sroa.0.0.insert.insert, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fi, i64 66 ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !82 ; 2 uses
  %i.gl = icmp ult i16 %i.gk, 4
  br i1 %i.gl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  store i16 4, ptr %i.gj, align 2, !tbaa !82
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fi, i64 68
  store i32 16, ptr %i.gm, align 4, !tbaa !83
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fi, i64 72
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !84
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fi, i64 76
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !85
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.gq = icmp eq i16 %i.gk, 4
  br i1 %i.gq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fi, i64 68 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !83
  %i.gt = or i32 %i.gs, 16
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !83
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !86 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fi, i64 48 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !87
  %.not.i.i.i.i.i = icmp eq ptr %i.gx, %i.gv
  br i1 %.not.i.i.i.i.i, label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.ac
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !87
  br label %_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit

_ZN8MapBlock14setNodeNoCheckEN4core8vector3dIsEE7MapNode.exit: ; preds = %bb.ac, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.089.0137, i64 24 ; 2 uses
  %i.gz = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.ha = icmp ult ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.x, label %._crit_edge139, !llvm.loop !250
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.MapNode, align 4            ; 4 uses
  %4 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 15 uses
  %5 = alloca [2 x %"struct.voxalgo::LightQueue"], align 16 ; 14 uses
  %i.a = alloca [16 x [16 x i8]], align 16        ; 7 uses
  %6 = alloca %"struct.voxalgo::SunlightPropagationData", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !282
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not1.i = icmp eq i32 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit

_ZNK9VoxelArea14hasEmptyExtentEv.exit:            ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !283
  %.not2.i = icmp eq i32 %i.j, 0
  br i1 %.not2.i, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK9VoxelArea14hasEmptyExtentEv.exit
  %.sroa.077.0.copyload = load i48, ptr %i.d, align 8, !tbaa !31 ; 4 uses
  %i.k = bitcast i48 %.sroa.077.0.copyload to <3 x i16>
  %i.l = shufflevector <3 x i16> %i.k, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.m = bitcast i48 %.sroa.077.0.copyload to <3 x i16>
  %i.n = shufflevector <3 x i16> %i.m, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.o = sext <2 x i16> %i.n to <2 x i32>         ; 2 uses
  %i.p = add nsw <2 x i32> %i.o, splat (i32 -15)
  %i.q = icmp slt <2 x i16> %i.l, zeroinitializer
  %i.r = select <2 x i1> %i.q, <2 x i32> %i.p, <2 x i32> %i.o
  %i.s = sdiv <2 x i32> %i.r, splat (i32 16)      ; 2 uses
  %i.t = ashr i48 %.sroa.077.0.copyload, 32
  %i.u = trunc nsw i48 %i.t to i32                ; 2 uses
  %i.v = add nsw i32 %i.u, -15
  %i.w = icmp slt i48 %.sroa.077.0.copyload, 0
  %i.x = select i1 %i.w, i32 %i.v, i32 %i.u
  %i.y = sdiv i32 %i.x, 16                        ; 4 uses
  %.mask.i.i = and i32 %i.y, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.z = extractelement <2 x i32> %i.s, i64 1     ; 3 uses
  %i.aa = shl nsw i32 %i.z, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.aa to i48
  %i.ab = extractelement <2 x i32> %i.s, i64 0    ; 3 uses
  %.mask5.i.i = and i32 %i.ab, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.ac = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.ac, %.sroa.2.0.insert.shift.i.i
  %.sroa.078.0.extract.trunc = trunc nsw i32 %i.ab to i16 ; 2 uses
  %.sroa.780.0.extract.trunc = trunc nsw i32 %i.z to i16 ; 2 uses
  %.sroa.982.0.extract.trunc = trunc nsw i32 %i.y to i16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %.sroa.070.0.copyload = load i48, ptr %i.ad, align 2, !tbaa !31 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i155 = trunc i48 %.sroa.070.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i156 = lshr i48 %.sroa.070.0.copyload, 16
  %.sroa.2.0.extract.trunc.i.i157 = trunc i48 %.sroa.2.0.extract.shift.i.i156 to i16 ; 2 uses
  %i.ae = sext i16 %.sroa.0.0.extract.trunc.i.i155 to i32 ; 2 uses
  %i.af = add nsw i32 %i.ae, -15
  %i.ag = icmp slt i16 %.sroa.0.0.extract.trunc.i.i155, 0
  %i.ah = select i1 %i.ag, i32 %i.af, i32 %i.ae
  %i.ai = sdiv i32 %i.ah, 16                      ; 3 uses
  %i.aj = sext i16 %.sroa.2.0.extract.trunc.i.i157 to i32 ; 2 uses
  %i.ak = add nsw i32 %i.aj, -15
  %i.al = icmp slt i16 %.sroa.2.0.extract.trunc.i.i157, 0
  %i.am = select i1 %i.al, i32 %i.ak, i32 %i.aj
  %i.an = sdiv i32 %i.am, 16                      ; 3 uses
  %i.ao = ashr i48 %.sroa.070.0.copyload, 32
  %i.ap = trunc nsw i48 %i.ao to i32              ; 2 uses
  %i.aq = add nsw i32 %i.ap, -15
  %i.ar = icmp slt i48 %.sroa.070.0.copyload, 0
  %i.as = select i1 %i.ar, i32 %i.aq, i32 %i.ap
  %i.at = sdiv i32 %i.as, 16                      ; 4 uses
  %.mask.i.i158 = and i32 %i.at, 65535
  %.sroa.3.0.insert.ext.i.i159 = zext nneg i32 %.mask.i.i158 to i48
  %.sroa.3.0.insert.shift.i.i160 = shl nuw i48 %.sroa.3.0.insert.ext.i.i159, 32
  %i.au = shl nsw i32 %i.an, 16
  %.sroa.2.0.insert.shift.i.i161 = zext i32 %i.au to i48 ; 2 uses
  %.mask5.i.i163 = and i32 %i.ai, 65535
  %.sroa.0.0.insert.ext.i.i164 = zext nneg i32 %.mask5.i.i163 to i48
  %i.av = or disjoint i48 %.sroa.3.0.insert.shift.i.i160, %.sroa.0.0.insert.ext.i.i164
  %.sroa.0.0.insert.insert.i.i165 = or disjoint i48 %i.av, %.sroa.2.0.insert.shift.i.i161
  %.sroa.071.0.extract.trunc = trunc nsw i32 %i.ai to i16 ; 2 uses
  %.sroa.7.0.extract.trunc = trunc nsw i32 %i.an to i16 ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nsw i32 %i.at to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(385) %4, i8 0, i64 384, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i8 15, ptr %i.aw, align 16, !tbaa !24
  br label %.split.i

.split.i:                                         ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i, %bb.b
  %.0.idx11.i = phi i64 [ %.0.add.i, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %4, i64 %.0.idx11.i ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.az = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !92
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 24
  %i.be = icmp ult i64 %i.bd, 256
  br i1 %i.be, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %.split.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.ptr12.i, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.bb
  %i.bj = invoke noalias noundef nonnull dereferenceable(6144) ptr @_Znwm(i64 noundef 6144) #21
          to label %.noexc10.i unwind label %.body.thread ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE11_M_allocateEm.exit.i.i
  %i.bk = load ptr, ptr %.0.ptr12.i, align 8, !tbaa !92 ; 5 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !34 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.bl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bj, %.noexc10.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc10.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !284
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10.i
  %.not.i8.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !88
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bk to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.br) #22
  br label %_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i

_ZNSt12_Vector_baseIN7voxalgo13ChangingLightESaIS1_EE13_M_deallocateEPS1_m.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  store ptr %i.bj, ptr %.0.ptr12.i, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store ptr %i.bs, ptr %i.bf, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 6144
  store ptr %i.bt, ptr %i.ax, align 8, !tbaa !88
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE7reserveEm.exit.i

end_hunk_5
begin_hunk_6_@_ZN7voxalgo20blit_back_with_lightEP3MapP8MMVManipPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS7_ESaISt4pairIKS7_S9_EEE:bb.a
  br i1 %i.nz, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.oa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !19 ; 2 uses
  %i.oc = icmp sgt i16 %i.ob, %i.ng
  br i1 %i.oc, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.od = icmp eq i16 %i.ob, %i.ng
  br i1 %i.od, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.oe = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !20 ; 2 uses
  %i.og = icmp sgt i16 %i.of, %i.ni
  br i1 %i.og, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.oh = icmp eq i16 %i.of, %i.ni
  br i1 %i.oh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.aq

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.ah
  %i.oi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !21
  %i.ok = icmp sgt i16 %i.oj, %i.nk
  br i1 %i.ok, label %.critedge.i, label %bb.aq

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ag, %bb.ae, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.aa
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.fc, %bb.aa ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %.19.i.i.i.i, %bb.ag ], [ %.19.i.i.i.i, %bb.ae ]
  %i.ol = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc277 unwind label %bb.r  ; 8 uses

.noexc277:                                        ; preds = %.critedge.i
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.om, ptr noundef nonnull align 8 dereferenceable(6) %i.ey, i64 6, i1 false), !tbaa.struct !151
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  store ptr null, ptr %i.on, align 8, !tbaa !97
  %i.oo = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 2 dereferenceable(6) %i.om)
          to label %bb.ai unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.ai:                                            ; preds = %.noexc277
  %i.op = extractvalue { ptr, ptr } %i.oo, 0      ; 2 uses
  %i.oq = extractvalue { ptr, ptr } %i.oo, 1      ; 6 uses
  %.not.i275 = icmp eq ptr %i.oq, null
  br i1 %.not.i275, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i276 = icmp ne ptr %i.op, null
  %i.or = icmp eq ptr %i.oq, %i.fc
  %or.cond.i.i.i = select i1 %.not.i.i.i276, i1 true, i1 %i.or
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.ot = load i16, ptr %i.om, align 8, !tbaa !19 ; 2 uses
  %i.ou = load i16, ptr %i.os, align 2, !tbaa !19 ; 2 uses
  %i.ov = icmp slt i16 %i.ot, %i.ou
  br i1 %i.ov, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ow = icmp eq i16 %i.ot, %i.ou
  br i1 %i.ow, label %bb.am, label %.thread.i

bb.am:                                            ; preds = %bb.al
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 34
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !20 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 34
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !20 ; 2 uses
  %i.pb = icmp slt i16 %i.oy, %i.pa
  br i1 %i.pb, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pc = icmp eq i16 %i.oy, %i.pa
  br i1 %i.pc, label %bb.ao, label %.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.pe = load i16, ptr %i.pd, align 4, !tbaa !21
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oq, i64 36
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !21
  %i.ph = icmp slt i16 %i.pe, %i.pg
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.pi = phi i1 [ false, %bb.al ], [ true, %bb.aj ], [ true, %bb.am ], [ true, %bb.ak ], [ false, %bb.an ], [ %i.ph, %bb.ao ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.pi, ptr noundef nonnull %i.ol, ptr noundef nonnull %i.oq, ptr noundef nonnull align 8 dereferenceable(32) %i.fc) #5
  %i.pj = load i64, ptr %i.fd, align 8, !tbaa !98
  %i.pk = add i64 %i.pj, 1
  store i64 %i.pk, ptr %i.fd, align 8, !tbaa !98
  br label %bb.aq

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc277
  %i.pl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef 48) #22
  br label %.body278thread-pre-split

bb.ap:                                            ; preds = %bb.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef 48) #22
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.ah, %bb.af, %bb.ap, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.ah ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.af ], [ %i.ol, %.thread.i ], [ %i.op, %bb.ap ]
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store ptr %i.nl, ptr %i.pm, align 8, !tbaa !30
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.y
  %i.pn = load i16, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !156
  %i.po = add i16 %i.pn, -1
  store i16 %i.po, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !156
  %i.pp = load ptr, ptr %6, align 8, !tbaa !145   ; 2 uses
  %i.pq = load ptr, ptr %i.ez, align 8, !tbaa !145
  %i.pr = icmp eq ptr %i.pp, %i.pq
  br i1 %i.pr, label %._crit_edge, label %.lr.ph, !llvm.loop !271

._crit_edge:                                      ; preds = %bb.ar, %.preheader347
  %i.ps = phi ptr [ %i.nc, %.preheader347 ], [ %i.pp, %bb.ar ]
  %i.pt = add nsw i16 %.0121373, 1
  %exitcond433.a = icmp eq i16 %.0121373, %.sroa.9.0.extract.trunc
  br i1 %exitcond433.a, label %._crit_edge375, label %bb.g, !llvm.loop !272

.preheader339:                                    ; preds = %.preheader339.lr.ph, %._crit_edge403
  %storemerge405 = phi i16 [ %i.wi, %._crit_edge403 ], [ %.sroa.078.0.extract.trunc, %.preheader339.lr.ph ] ; 3 uses
  %.sroa.0302.0.insert.ext303 = zext i16 %storemerge405 to i48
  br label %.preheader

.preheader:                                       ; preds = %.preheader339, %._crit_edge399
  %storemerge127402 = phi i16 [ %.sroa.780.0.extract.trunc, %.preheader339 ], [ %i.wh, %._crit_edge399 ] ; 3 uses
  %.sroa.8.0.insert.ext306 = zext i16 %storemerge127402 to i48
  %.sroa.8.0.insert.shift307 = shl nuw nsw i48 %.sroa.8.0.insert.ext306, 16
  %invariant.op400 = or disjoint i48 %.sroa.8.0.insert.shift307, %.sroa.0302.0.insert.ext303
  br label %bb.as

bb.as:                                            ; preds = %.preheader, %.loopexit338
  %storemerge129397 = phi i16 [ %.sroa.982.0.extract.trunc, %.preheader ], [ %i.wg, %.loopexit338 ] ; 3 uses
  %.sroa.11.0.insert.ext310 = zext i16 %storemerge129397 to i48
  %.sroa.11.0.insert.shift311 = shl nuw i48 %.sroa.11.0.insert.ext310, 32
  %.sroa.0302.0.insert.insert305.reass = or disjoint i48 %.sroa.11.0.insert.shift311, %invariant.op400 ; 5 uses
  %i.pu = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0302.0.insert.insert305.reass)
          to label %bb.at unwind label %bb.av     ; 8 uses

bb.at:                                            ; preds = %bb.as
  %.not131 = icmp eq ptr %i.pu, null
  br i1 %.not131, label %.loopexit338, label %bb.aw

bb.au:                                            ; preds = %bb.bo, %._crit_edge406.split
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

bb.av:                                            ; preds = %bb.as
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body278thread-pre-split

bb.aw:                                            ; preds = %bb.at
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %.sroa.0.0.copyload.i = load i48, ptr %i.px, align 8, !tbaa !31 ; 3 uses
  %.sroa.0284.0.extract.trunc = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.5285.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.5285.0.extract.trunc = trunc i48 %.sroa.5285.0.extract.shift to i16
  %.sroa.6286.0.extract.shift = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.6286.0.extract.trunc = trunc nuw i48 %.sroa.6286.0.extract.shift to i16
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 36
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge393
  %.0119.idx394 = phi i64 [ 0, %bb.aw ], [ %.0119.add, %._crit_edge393 ] ; 2 uses
  %.0119.ptr395 = getelementptr inbounds nuw i8, ptr @_ZN7voxalgoL9block_padE, i64 %.0119.idx394 ; 7 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 4
  %i.qb = load i16, ptr %i.qa, align 4, !tbaa !131 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 6 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 10 ; 2 uses
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !157 ; 2 uses
  %.not134389 = icmp sgt i16 %i.qb, %i.qe
  br i1 %.not134389, label %._crit_edge393, label %.lr.ph392

.lr.ph392:                                        ; preds = %bb.ax
  %i.qf = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 2 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0119.ptr395, i64 8 ; 2 uses
  %i.qh = load i16, ptr %.0119.ptr395, align 8, !tbaa !134
  %i.qi = load i16, ptr %i.qc, align 2, !tbaa !158 ; 3 uses
  %i.qj = icmp sgt i16 %i.qh, %i.qi
  br i1 %i.qj, label %._crit_edge393, label %.lr.ph392.split

.lr.ph392.split:                                  ; preds = %.lr.ph392, %._crit_edge388
  %i.qk = phi i16 [ %i.wc, %._crit_edge388 ], [ %i.qe, %.lr.ph392 ] ; 2 uses
  %i.ql = phi i16 [ %i.wd, %._crit_edge388 ], [ %i.qi, %.lr.ph392 ] ; 3 uses
  %i.qm = phi i16 [ %i.we, %._crit_edge388 ], [ %i.qi, %.lr.ph392 ] ; 3 uses
  %storemerge133390 = phi i16 [ %i.wf, %._crit_edge388 ], [ %i.qb, %.lr.ph392 ] ; 4 uses
  %i.qn = load i16, ptr %.0119.ptr395, align 8, !tbaa !134 ; 2 uses
  %.not136384 = icmp sgt i16 %i.qn, %i.qm
  br i1 %.not136384, label %._crit_edge388, label %.lr.ph387

.lr.ph387:                                        ; preds = %.lr.ph392.split
  %.sroa.13.0.insert.ext297 = zext i16 %storemerge133390 to i48
  %.sroa.13.0.insert.shift298 = shl nuw i48 %.sroa.13.0.insert.ext297, 32
  %.sroa.3.0.extract.trunc.i253 = zext i16 %storemerge133390 to i64
  %sext.i254 = shl nuw i64 %.sroa.3.0.extract.trunc.i253, 48
  %7 = ashr exact i64 %sext.i254, 40
  %i.qo = add i16 %storemerge133390, %.sroa.6286.0.extract.trunc ; 3 uses
  %i.qp = sext i16 %i.qo to i32
  %i.qq = load i16, ptr %i.qf, align 2, !tbaa !133
  %i.qr = load i16, ptr %i.qg, align 8, !tbaa !159 ; 2 uses
  %i.qs = icmp sgt i16 %i.qq, %i.qr
  br i1 %i.qs, label %._crit_edge388, label %.lr.ph387.split

.lr.ph387.split:                                  ; preds = %.lr.ph387, %._crit_edge383
  %i.qt = phi i16 [ %i.vz, %._crit_edge383 ], [ %i.ql, %.lr.ph387 ]
  %i.qu = phi i16 [ %i.wa, %._crit_edge383 ], [ %i.qr, %.lr.ph387 ] ; 2 uses
  %storemerge135385 = phi i16 [ %i.wb, %._crit_edge383 ], [ %i.qn, %.lr.ph387 ] ; 4 uses
  %i.qv = load i16, ptr %i.qf, align 2, !tbaa !133 ; 2 uses
  %.not138379 = icmp sgt i16 %i.qv, %i.qu
  br i1 %.not138379, label %._crit_edge383, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph387.split
  %.sroa.0287.0.insert.ext289 = zext i16 %storemerge135385 to i48
  %invariant.op = or disjoint i48 %.sroa.13.0.insert.shift298, %.sroa.0287.0.insert.ext289
  %i.qw = sext i16 %storemerge135385 to i64
  %i.qx = add nsw i64 %7, %i.qw
  %i.qy = add i16 %storemerge135385, %.sroa.0284.0.extract.trunc ; 3 uses
  %i.qz = sext i16 %i.qy to i32
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph382, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %storemerge137380 = phi i16 [ %i.qv, %.lr.ph382 ], [ %i.vx, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1 ] ; 4 uses
  %.sroa.9.0.insert.ext292 = zext i16 %storemerge137380 to i48
  %.sroa.9.0.insert.shift293 = shl nuw nsw i48 %.sroa.9.0.insert.ext292, 16
  %.sroa.0287.0.insert.insert291.reass = or disjoint i48 %.sroa.9.0.insert.shift293, %invariant.op ; 4 uses
  %i.ra = load ptr, ptr %i.py, align 8, !tbaa !77
  %i.rb = load i8, ptr %i.pz, align 4, !tbaa !78, !range !79, !noundef !80
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.2.0.extract.trunc.i = zext i16 %storemerge137380 to i64
  %sext2.i = shl nuw i64 %.sroa.2.0.extract.trunc.i, 48
  %i.rd = ashr exact i64 %sext2.i, 44
  %i.re = add nsw i64 %i.qx, %i.rd
  %i.rf = and i64 %i.re, 4294967295
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.rg = phi i64 [ %i.rf, %bb.az ], [ 0, %bb.ay ]
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %i.rg
  %.sroa.0.0.copyload.i.i256 = load i32, ptr %i.rh, align 4 ; 2 uses
  %.sroa.5282.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i256, 16
  %.sroa.5282.0.extract.trunc = trunc i32 %.sroa.5282.0.extract.shift to i8 ; 2 uses
  %i.ri = and i32 %.sroa.0.0.copyload.i.i256, 65535
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.rj
  %.sroa.0.0.copyload.i.i257 = load i8, ptr %i.rk, align 1, !tbaa !32 ; 2 uses
  %i.rl = add i16 %storemerge137380, %.sroa.5285.0.extract.trunc ; 3 uses
  %i.rm = load i16, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %.not.i.i259 = icmp sgt i16 %i.rm, %i.qy
  %i.rn = load i16, ptr %i.ad, align 2
  %.not6.i.i = icmp slt i16 %i.rn, %i.qy
  %or.cond.i.i = select i1 %.not.i.i259, i1 true, i1 %.not6.i.i
  %i.ro = load i16, ptr %i.fh, align 2            ; 2 uses
  %.not7.i.i = icmp sgt i16 %i.ro, %i.rl
  %or.cond12.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not7.i.i
  %i.rp = load i16, ptr %i.fi, align 8
  %.not8.i.i = icmp slt i16 %i.rp, %i.rl
  %or.cond14.i.i = select i1 %or.cond12.i.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond14.i.i, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rq = load i16, ptr %i.fj, align 4, !tbaa !131 ; 2 uses
  %.not9.i.i = icmp sge i16 %i.qo, %i.rq
  %i.rr = load i16, ptr %i.fk, align 2
  %i.rs = icmp sle i16 %i.qo, %i.rr
  %or.cond.i260 = select i1 %.not9.i.i, i1 %i.rs, i1 false
  br i1 %or.cond.i260, label %bb.bc, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.rt = sext i16 %i.rq to i32
  %i.ru = sub nsw i32 %i.qp, %i.rt
  %i.rv = load i32, ptr %i.g, align 8, !tbaa !132
  %i.rw = mul nsw i32 %i.rv, %i.ru
  %i.rx = load i32, ptr %i.e, align 4, !tbaa !282
  %i.ry = sext i16 %i.rl to i32
  %i.rz = sext i16 %i.ro to i32
  %i.sa = sub nsw i32 %i.ry, %i.rz
  %i.sb = add i32 %i.sa, %i.rw
  %i.sc = mul i32 %i.sb, %i.rx
  %i.sd = sext i16 %i.rm to i32
  %i.se = sub nsw i32 %i.qz, %i.sd
  %i.sf = add nsw i32 %i.se, %i.sc
  %i.sg = load ptr, ptr %i.fl, align 8, !tbaa !135
  %i.sh = sext i32 %i.sf to i64                   ; 2 uses
  %i.si = getelementptr inbounds i8, ptr %i.sg, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !32
  %i.sk = and i8 %i.sj, 1
  %.not.i261 = icmp eq i8 %i.sk, 0
  br i1 %.not.i261, label %bb.bd, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.bd:                                            ; preds = %bb.bc
  %i.sl = load ptr, ptr %i.fm, align 8, !tbaa !136
  %i.sm = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.sh
  %i.sn = load i32, ptr %i.sm, align 4
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.6.0.i = phi i32 [ %i.sn, %bb.bd ], [ 127, %bb.ba ], [ 127, %bb.bc ], [ 127, %bb.bb ] ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.6.0.i, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.so = and i32 %.sroa.6.0.i, 65535
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.sp
  %.sroa.0.0.copyload.i.i262 = load i8, ptr %i.sq, align 1, !tbaa !32 ; 2 uses
  %i.sr = and i8 %.sroa.0.0.copyload.i.i257, 16
  %.not139 = icmp eq i8 %i.sr, 0                  ; 2 uses
  %i.ss = and i8 %.sroa.0.0.copyload.i.i262, 16
  %.not140 = icmp eq i8 %i.ss, 0                  ; 2 uses
  %i.st = lshr i8 %.sroa.5282.0.extract.trunc, 4
  %i.su = and i8 %.sroa.0.0.copyload.i.i257, 15   ; 2 uses
  %i.sv = and i8 %.sroa.5.0.extract.trunc, 15
  %i.sw = lshr i8 %.sroa.5.0.extract.trunc, 4
  %i.sx = and i8 %.sroa.0.0.copyload.i.i262, 15   ; 4 uses
  br i1 %.not139, label %bb.be, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit
  %i.sy = and i8 %.sroa.5282.0.extract.trunc, 15
  %i.sz = tail call noundef i8 @llvm.umax.i8(i8 %i.su, i8 %i.sy)
  br label %bb.be

bb.be:                                            ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %i.ta = phi i8 [ %i.sz, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ], [ 15, %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit ] ; 2 uses
  %i.tb = tail call i8 @llvm.umax.i8(i8 %i.sx, i8 %i.sv)
  %i.tc = select i1 %.not140, i8 %i.sx, i8 %i.tb
  %i.td = icmp samesign ugt i8 %i.ta, %i.tc
  br i1 %i.td, label %bb.bf, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.bf:                                            ; preds = %bb.be
  %i.te = zext nneg i8 %i.ta to i64
  %i.tf = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.te ; 4 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8 ; 3 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !34 ; 9 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 16 ; 3 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !88
  %.not.i.i268 = icmp eq ptr %i.th, %i.tj
  br i1 %.not.i.i268, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.pu, ptr %i.th, align 8, !tbaa !90
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.tk, align 8, !tbaa !31
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.tl, align 2, !tbaa !31
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  store i8 6, ptr %i.tm, align 4, !tbaa !91
  %i.tn = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  store ptr %i.tn, ptr %i.tg, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.bh:                                            ; preds = %bb.bf
  %i.to = load ptr, ptr %i.tf, align 8, !tbaa !92 ; 5 uses
  %i.tp = ptrtoint ptr %i.th to i64
  %i.tq = ptrtoint ptr %i.to to i64               ; 2 uses
  %i.tr = sub i64 %i.tp, %i.tq                    ; 3 uses
  %i.ts = icmp eq i64 %i.tr, 9223372036854775800
  br i1 %i.ts, label %bb.bi, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bi:                                            ; preds = %bb.bm, %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc270 unwind label %.loopexit.split-lp

.noexc270:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bh
  %i.tt = sdiv exact i64 %i.tr, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.tt, i64 1)
  %i.tu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tt ; 2 uses
  %i.tv = icmp ult i64 %i.tu, %i.tt
  %i.tw = tail call i64 @llvm.umin.i64(i64 %i.tu, i64 384307168202282325)
  %i.tx = select i1 %i.tv, i64 384307168202282325, i64 %i.tw ; 3 uses
  %.not.i.i.i.i269 = icmp ne i64 %i.tx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i269)
  %i.ty = mul nuw nsw i64 %i.tx, 24
  %i.tz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ty) #21
          to label %.noexc271 unwind label %.loopexit337 ; 5 uses

.noexc271:                                        ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tr ; 4 uses
  store ptr %i.pu, ptr %i.ua, align 8, !tbaa !90
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i48 %.sroa.0287.0.insert.insert291.reass, ptr %i.ub, align 8, !tbaa !31
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 14
  store i48 %.sroa.0302.0.insert.insert305.reass, ptr %i.uc, align 2, !tbaa !31
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 20
  store i8 6, ptr %i.ud, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.to, %i.th
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc271, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.uf, %.lr.ph.i.i.i.i.i.i ], [ %i.tz, %.noexc271 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ue, %.lr.ph.i.i.i.i.i.i ], [ %i.to, %.noexc271 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !289
  %i.ue = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ue, %i.th
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc271
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.tz, %.noexc271 ], [ %i.uf, %.lr.ph.i.i.i.i.i.i ]
  %i.ug = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.to, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.uh = load ptr, ptr %i.ti, align 8, !tbaa !88
  %i.ui = ptrtoint ptr %i.uh to i64
  %i.uj = sub i64 %i.ui, %i.tq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.to, i64 noundef %i.uj) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.tz, ptr %i.tf, align 8, !tbaa !92
  store ptr %i.ug, ptr %i.tg, align 8, !tbaa !34
end_hunk_6
begin_hunk_7_@_ZN7voxalgo18repair_block_lightEP3MapP8MapBlockPSt3mapIN4core8vector3dIsEES3_St4lessIS7_ESaISt4pairIKS7_S3_EEE:bb.a
  %i.kq = phi ptr [ %i.kk, %_ZNSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE17_M_realloc_insertIJN4core8vector2dIsEERbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.jr, %bb.v ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.t, label %bb.u, !llvm.loop !309

.loopexit234:                                     ; preds = %_ZNKSt6vectorIN7voxalgo23SunlightPropagationUnitESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp235:                            ; preds = %bb.x
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.preheader:                                       ; preds = %bb.al, %.preheader227
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 360 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 368 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %7, i64 376 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %7, i64 752 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %7, i64 760 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 768 ; 3 uses
  br label %bb.an

.lr.ph:                                           ; preds = %.preheader227, %bb.al
  %i.la = invoke noundef zeroext i1 @_ZN7voxalgo24propagate_block_sunlightEP3MapPK14NodeDefManagerPNS_23SunlightPropagationDataEPNS_10LightQueueES8_(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.z unwind label %.loopexit228

bb.z:                                             ; preds = %.lr.ph
  br i1 %i.la, label %bb.aa, label %bb.al

bb.aa:                                            ; preds = %bb.z
  %.sroa.031.0.copyload = load i48, ptr %i.jc, align 8, !tbaa !31
  %i.lb = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.031.0.copyload)
          to label %bb.ab unwind label %.loopexit228

bb.ab:                                            ; preds = %bb.aa
  %i.lc = load ptr, ptr %i.cy, align 8, !tbaa !94 ; 2 uses
  %.not12.i.i.i.i168 = icmp eq ptr %i.lc, null
  br i1 %.not12.i.i.i.i168, label %.critedge.i180, label %.lr.ph.i.i.i.i169

.lr.ph.i.i.i.i169:                                ; preds = %bb.ab
  %i.ld = load i16, ptr %i.jc, align 8, !tbaa !19 ; 4 uses
  %i.le = load i16, ptr %.sroa.4.0..sroa_idx, align 2 ; 4 uses
  %i.lf = load i16, ptr %.sroa.5220.0..sroa_idx, align 4 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172, %.lr.ph.i.i.i.i169
  %.014.i.i.i.i170 = phi ptr [ %i.lc, %.lr.ph.i.i.i.i169 ], [ %.1.i.i.i.i175, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172 ] ; 7 uses
  %.0813.i.i.i.i171 = phi ptr [ %i.da, %.lr.ph.i.i.i.i169 ], [ %.19.i.i.i.i174, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 32
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !19 ; 2 uses
  %i.li = icmp slt i16 %i.lh, %i.ld
  br i1 %i.li, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lj = icmp eq i16 %i.lh, %i.ld
  br i1 %i.lj, label %bb.ae, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

bb.ae:                                            ; preds = %bb.ad
  %i.lk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 34
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !20 ; 2 uses
  %i.lm = icmp slt i16 %i.ll, %i.le
  br i1 %i.lm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ln = icmp eq i16 %i.ll, %i.le
  br i1 %i.ln, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182: ; preds = %bb.af
  %i.lo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 36
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !21
  %i.lq = icmp slt i16 %i.lp, %i.lf
  br i1 %i.lq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182, %bb.ae, %bb.ac
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182, %bb.af, %bb.ad
  %.sink.i.i.i.i173 = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183 ], [ 16, %bb.af ], [ 16, %bb.ad ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182 ]
  %.19.i.i.i.i174 = phi ptr [ %.0813.i.i.i.i171, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i183 ], [ %.014.i.i.i.i170, %bb.af ], [ %.014.i.i.i.i170, %bb.ad ], [ %.014.i.i.i.i170, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i182 ] ; 12 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i170, i64 %.sink.i.i.i.i173
  %.1.i.i.i.i175 = load ptr, ptr %i.lr, align 8, !tbaa !95 ; 2 uses
  %.not.i.i.i.i176 = icmp eq ptr %.1.i.i.i.i175, null
  br i1 %.not.i.i.i.i176, label %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i177, label %bb.ac, !llvm.loop !2

_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i177: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i172
  %i.ls = icmp eq ptr %.19.i.i.i.i174, %i.da
  br i1 %i.ls, label %.critedge.i180, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i177
  %i.lt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i174, i64 32
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !19 ; 2 uses
  %i.lv = icmp slt i16 %i.ld, %i.lu
  br i1 %i.lv, label %.critedge.i180, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lw = icmp eq i16 %i.ld, %i.lu
  br i1 %i.lw, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.lx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i174, i64 34
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !20 ; 2 uses
  %i.lz = icmp slt i16 %i.le, %i.ly
  br i1 %i.lz, label %.critedge.i180, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ma = icmp eq i16 %i.le, %i.ly
  br i1 %i.ma, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i179, label %bb.ak

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i179: ; preds = %bb.aj
  %i.mb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i174, i64 36
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !21
  %i.md = icmp slt i16 %i.lf, %i.mc
  br i1 %i.md, label %.critedge.i180, label %bb.ak

.critedge.i180:                                   ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i179, %bb.ai, %bb.ag, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i177, %bb.ab
  %.08.lcssa.i.i.i11.i181 = phi ptr [ %i.da, %bb.ab ], [ %.19.i.i.i.i174, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i179 ], [ %.19.i.i.i.i174, %_ZNSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i177 ], [ %.19.i.i.i.i174, %bb.ai ], [ %.19.i.i.i.i174, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %i.jc, ptr %3, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.me = invoke ptr @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P8MapBlockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr %.08.lcssa.i.i.i11.i181, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc184 unwind label %.loopexit228

.noexc184:                                        ; preds = %.critedge.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc184, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i179, %bb.aj, %bb.ah
  %.sroa.06.0.i178 = phi ptr [ %i.me, %.noexc184 ], [ %.19.i.i.i.i174, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i179 ], [ %.19.i.i.i.i174, %bb.ah ], [ %.19.i.i.i.i174, %bb.aj ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i178, i64 40
  store ptr %i.lb, ptr %i.mf, align 8, !tbaa !30
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.z
  %i.mg = load i16, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !156
  %i.mh = add i16 %i.mg, -1
  store i16 %i.mh, ptr %.sroa.4.0..sroa_idx, align 2, !tbaa !156
  %i.mi = load ptr, ptr %9, align 8, !tbaa !145
  %i.mj = load ptr, ptr %i.jf, align 8, !tbaa !145
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %.preheader, label %.lr.ph, !llvm.loop !310

bb.am:                                            ; preds = %._crit_edge257
  %.sroa.03.0.copyload = load i48, ptr %10, align 8, !tbaa !31 ; 2 uses
  invoke void @_ZN7voxalgo24finish_bulk_light_updateEP3MapN4core8vector3dIsEES4_PNS_10LightQueueES6_PSt3mapIS4_P8MapBlockSt4lessIS4_ESaISt4pairIKS4_S9_EEE(ptr noundef nonnull %0, i48 %.sroa.03.0.copyload, i48 %.sroa.03.0.copyload, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %2)
          to label %bb.bb unwind label %.loopexit.split-lp229

bb.an:                                            ; preds = %.preheader, %._crit_edge257
  %.075.idx258 = phi i64 [ 0, %.preheader ], [ %.075.add, %._crit_edge257 ] ; 2 uses
  %.075.ptr259 = getelementptr inbounds nuw i8, ptr @_ZN7voxalgoL9block_padE, i64 %.075.idx258 ; 6 uses
  %i.ml = load i16, ptr %.075.ptr259, align 8, !tbaa !134 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.075.ptr259, i64 6 ; 2 uses
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !158 ; 2 uses
  %.not78253 = icmp sgt i16 %i.ml, %i.mn
  br i1 %.not78253, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.an
  %i.mo = getelementptr inbounds nuw i8, ptr %.075.ptr259, i64 4 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.075.ptr259, i64 10 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.075.ptr259, i64 2 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.075.ptr259, i64 8 ; 2 uses
  %i.ms = load i16, ptr %i.mo, align 4, !tbaa !131
  %i.mt = load i16, ptr %i.mp, align 2, !tbaa !157 ; 3 uses
  %i.mu = icmp sgt i16 %i.ms, %i.mt
  br i1 %i.mu, label %._crit_edge257, label %.lr.ph256.split

.lr.ph256.split:                                  ; preds = %.lr.ph256, %._crit_edge252
  %i.mv = phi i16 [ %i.qm, %._crit_edge252 ], [ %i.mn, %.lr.ph256 ] ; 2 uses
  %i.mw = phi i16 [ %i.qn, %._crit_edge252 ], [ %i.mt, %.lr.ph256 ] ; 3 uses
  %i.mx = phi i16 [ %i.qo, %._crit_edge252 ], [ %i.mt, %.lr.ph256 ] ; 3 uses
  %storemerge254 = phi i16 [ %i.qp, %._crit_edge252 ], [ %i.ml, %.lr.ph256 ] ; 3 uses
  %i.my = load i16, ptr %i.mo, align 4, !tbaa !131 ; 2 uses
  %.not80248 = icmp sgt i16 %i.my, %i.mx
  br i1 %.not80248, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %.lr.ph256.split
  %.sroa.0198.0.insert.ext199 = zext i16 %storemerge254 to i48
  %i.mz = sext i16 %storemerge254 to i64
  %i.na = load i16, ptr %i.mq, align 2, !tbaa !133
  %i.nb = load i16, ptr %i.mr, align 8, !tbaa !159 ; 2 uses
  %i.nc = icmp sgt i16 %i.na, %i.nb
  br i1 %i.nc, label %._crit_edge252, label %.lr.ph251.split

.lr.ph251.split:                                  ; preds = %.lr.ph251, %._crit_edge
  %i.nd = phi i16 [ %i.qj, %._crit_edge ], [ %i.mw, %.lr.ph251 ]
  %i.ne = phi i16 [ %i.qk, %._crit_edge ], [ %i.nb, %.lr.ph251 ] ; 2 uses
  %storemerge79249 = phi i16 [ %i.ql, %._crit_edge ], [ %i.my, %.lr.ph251 ] ; 3 uses
  %i.nf = load i16, ptr %i.mq, align 2, !tbaa !133 ; 2 uses
  %.not82245 = icmp sgt i16 %i.nf, %i.ne
  br i1 %.not82245, label %._crit_edge, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph251.split
  %.sroa.11.0.insert.ext206 = zext i16 %storemerge79249 to i48
  %.sroa.11.0.insert.shift207 = shl nuw i48 %.sroa.11.0.insert.ext206, 32
  %invariant.op = or disjoint i48 %.sroa.11.0.insert.shift207, %.sroa.0198.0.insert.ext199
  %.sroa.3.0.extract.trunc.i187 = zext i16 %storemerge79249 to i64
  %sext.i.a = shl nuw i64 %.sroa.3.0.extract.trunc.i187, 48
  %11 = ashr exact i64 %sext.i.a, 40
  %i.ng = add nsw i64 %11, %i.mz
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph247, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1
  %storemerge81246 = phi i16 [ %i.nf, %.lr.ph247 ], [ %i.qh, %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1 ] ; 3 uses
  %.sroa.8.0.insert.ext202 = zext i16 %storemerge81246 to i48
  %.sroa.8.0.insert.shift203 = shl nuw nsw i48 %.sroa.8.0.insert.ext202, 16
  %.sroa.0198.0.insert.insert201.reass = or disjoint i48 %.sroa.8.0.insert.shift203, %invariant.op ; 4 uses
  %i.nh = load ptr, ptr %i.kr, align 8, !tbaa !77
  %i.ni = load i8, ptr %i.ks, align 4, !tbaa !78, !range !79, !noundef !80
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.2.0.extract.trunc.i = zext i16 %storemerge81246 to i64
  %sext2.i = shl nuw i64 %.sroa.2.0.extract.trunc.i, 48
  %i.nk = ashr exact i64 %sext2.i, 44
  %i.nl = add nsw i64 %i.ng, %i.nk
  %i.nm = and i64 %i.nl, 4294967295
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.nn = phi i64 [ %i.nm, %bb.ap ], [ 0, %bb.ao ]
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nn
  %.sroa.0.0.copyload.i.i189 = load i32, ptr %i.no, align 4 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i.i189, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8 ; 2 uses
  %i.np = and i32 %.sroa.0.0.copyload.i.i189, 65535
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.nq
  %.sroa.0.0.copyload.i.i190 = load i8, ptr %i.nr, align 1, !tbaa !32 ; 2 uses
  %i.ns = and i8 %.sroa.0.0.copyload.i.i190, 16
  %.not83 = icmp eq i8 %i.ns, 0                   ; 2 uses
  %i.nt = lshr i8 %.sroa.5.0.extract.trunc, 4
  %i.nu = and i8 %.sroa.0.0.copyload.i.i190, 15   ; 4 uses
  br i1 %.not83, label %bb.ar, label %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit

_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit: ; preds = %bb.aq
  %i.nv = and i8 %.sroa.5.0.extract.trunc, 15
  %i.nw = call noundef i8 @llvm.umax.i8(i8 %i.nu, i8 %i.nv)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit
  %i.nx = phi i8 [ %i.nw, %_ZNK7MapNode8getLightE9LightBank20ContentLightingFlags.exit ], [ %i.nu, %bb.aq ]
  %i.ny = icmp samesign ult i8 %i.nx, 15
  br i1 %i.ny, label %bb.as, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.as:                                            ; preds = %bb.ar
  %.sroa.07.0.copyload = load i48, ptr %10, align 8, !tbaa !31 ; 2 uses
  %i.nz = load ptr, ptr %i.kv, align 16, !tbaa !34 ; 9 uses
  %i.oa = load ptr, ptr %i.kw, align 8, !tbaa !88
  %.not.i.i191 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not.i.i191, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %1, ptr %i.nz, align 8, !tbaa !90
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i48 %.sroa.0198.0.insert.insert201.reass, ptr %i.ob, align 8, !tbaa !31
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nz, i64 14
  store i48 %.sroa.07.0.copyload, ptr %i.oc, align 2, !tbaa !31
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 20
  store i8 6, ptr %i.od, align 4, !tbaa !91
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  store ptr %i.oe, ptr %i.kv, align 16, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

bb.au:                                            ; preds = %bb.as
  %i.of = load ptr, ptr %i.ku, align 8, !tbaa !92 ; 5 uses
  %i.og = ptrtoint ptr %i.nz to i64
  %i.oh = ptrtoint ptr %i.of to i64               ; 2 uses
  %i.oi = sub i64 %i.og, %i.oh                    ; 3 uses
  %i.oj = icmp eq i64 %i.oi, 9223372036854775800
  br i1 %i.oj, label %bb.av, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.av:                                            ; preds = %bb.az, %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
          to label %.noexc193 unwind label %.loopexit.split-lp

.noexc193:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.au
  %i.ok = sdiv exact i64 %i.oi, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ok, i64 1)
  %i.ol = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ok ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.ok
  %i.on = call i64 @llvm.umin.i64(i64 %i.ol, i64 384307168202282325)
  %i.oo = select i1 %i.om, i64 384307168202282325, i64 %i.on ; 3 uses
  %.not.i.i.i.i192 = icmp ne i64 %i.oo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192)
  %i.op = mul nuw nsw i64 %i.oo, 24
  %i.oq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.op) #21
          to label %.noexc194 unwind label %.loopexit226 ; 5 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oi ; 4 uses
  store ptr %1, ptr %i.or, align 8, !tbaa !90
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  store i48 %.sroa.0198.0.insert.insert201.reass, ptr %i.os, align 8, !tbaa !31
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 14
  store i48 %.sroa.07.0.copyload, ptr %i.ot, align 2, !tbaa !31
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  store i8 6, ptr %i.ou, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.of, %i.nz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc194, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i.i ], [ %i.oq, %.noexc194 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ov, %.lr.ph.i.i.i.i.i.i ], [ %i.of, %.noexc194 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !93, !alias.scope !322
  %i.ov = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ov, %i.nz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc194
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.oq, %.noexc194 ], [ %i.ow, %.lr.ph.i.i.i.i.i.i ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i36.i.i.i, label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  %i.oy = load ptr, ptr %i.kw, align 8, !tbaa !88
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = sub i64 %i.oz, %i.oh
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.pa) #22
  br label %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i.i
  store ptr %i.oq, ptr %i.ku, align 8, !tbaa !92
  store ptr %i.ox, ptr %i.kv, align 16, !tbaa !34
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %i.oq, i64 %i.oo
  store ptr %i.pb, ptr %i.kw, align 8, !tbaa !88
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit

.loopexit226:                                     ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1, %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit: ; preds = %_ZNSt6vectorIN7voxalgo13ChangingLightESaIS1_EE17_M_realloc_insertIJRN4core8vector3dIsEES8_RP8MapBlockRhEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.at, %bb.ar
  %i.pc = call i8 @llvm.umax.i8(i8 %i.nu, i8 %i.nt)
  %i.pd = select i1 %.not83, i8 %i.nu, i8 %i.pc
  %.not349 = icmp eq i8 %i.pd, 15
  br i1 %.not349, label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1, label %bb.ax

bb.ax:                                            ; preds = %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit
  %.sroa.07.0.copyload.1 = load i48, ptr %10, align 8, !tbaa !31 ; 2 uses
  %i.pe = load ptr, ptr %i.ky, align 8, !tbaa !34 ; 9 uses
  %i.pf = load ptr, ptr %i.kz, align 16, !tbaa !88
  %.not.i.i191.1 = icmp eq ptr %i.pe, %i.pf
  br i1 %.not.i.i191.1, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %1, ptr %i.pe, align 8, !tbaa !90
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i48 %.sroa.0198.0.insert.insert201.reass, ptr %i.pg, align 8, !tbaa !31
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 14
  store i48 %.sroa.07.0.copyload.1, ptr %i.ph, align 2, !tbaa !31
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 20
  store i8 6, ptr %i.pi, align 4, !tbaa !91
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  store ptr %i.pj, ptr %i.ky, align 8, !tbaa !34
  br label %_ZN7voxalgo10LightQueue4pushEhN4core8vector3dIsEES3_P8MapBlockh.exit.1

bb.az:                                            ; preds = %bb.ax
  %i.pk = load ptr, ptr %i.kx, align 16, !tbaa !92 ; 5 uses
  %i.pl = ptrtoint ptr %i.pe to i64
  %i.pm = ptrtoint ptr %i.pk to i64               ; 2 uses
  %i.pn = sub i64 %i.pl, %i.pm                    ; 3 uses
  %i.po = icmp eq i64 %i.pn, 9223372036854775800
  br i1 %i.po, label %bb.av, label %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1

_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1: ; preds = %bb.az
  %i.pp = sdiv exact i64 %i.pn, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.pp, i64 1)
  %i.pq = add nsw i64 %.sroa.speculated.i.i.i.i.1, %i.pp ; 2 uses
  %i.pr = icmp ult i64 %i.pq, %i.pp
  %i.ps = call i64 @llvm.umin.i64(i64 %i.pq, i64 384307168202282325)
  %i.pt = select i1 %i.pr, i64 384307168202282325, i64 %i.ps ; 3 uses
  %.not.i.i.i.i192.1 = icmp ne i64 %i.pt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i192.1)
  %i.pu = mul nuw nsw i64 %i.pt, 24
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pu) #21
          to label %.noexc194.1 unwind label %.loopexit226 ; 5 uses

.noexc194.1:                                      ; preds = %_ZNKSt6vectorIN7voxalgo13ChangingLightESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.1
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pn ; 4 uses
  store ptr %1, ptr %i.pw, align 8, !tbaa !90
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store i48 %.sroa.0198.0.insert.insert201.reass, ptr %i.px, align 8, !tbaa !31
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 14
  store i48 %.sroa.07.0.copyload.1, ptr %i.py, align 2, !tbaa !31
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 20
  store i8 6, ptr %i.pz, align 4, !tbaa !91
  %.not10.i.i.i.i.i.i.1 = icmp eq ptr %i.pk, %i.pe
end_hunk_7
