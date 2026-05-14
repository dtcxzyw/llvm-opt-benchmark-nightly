inline.NumInlined: 326
inline.NumDeleted: 113
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btAlignedObjectArray.0 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%struct.btDbvtAabbMm = type { %class.btVector3, %class.btVector3 }
%struct.btDbvtNodeEnumerator = type { %"struct.btDbvt::ICollide", %class.btAlignedObjectArray.2 }
%"struct.btDbvt::ICollide" = type { ptr }
%class.btAlignedObjectArray.2 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE = comdat any

$_ZN20btDbvtNodeEnumeratorD2Ev = comdat any

$_ZN20btDbvtNodeEnumeratorD0Ev = comdat any

$_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_ = comdat any

$_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode = comdat any

$_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef = comdat any

$_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode = comdat any

$_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode = comdat any

$_ZTV20btDbvtNodeEnumerator = comdat any

$_ZTI20btDbvtNodeEnumerator = comdat any

$_ZTS20btDbvtNodeEnumerator = comdat any

$_ZTIN6btDbvt8ICollideE = comdat any

$_ZTSN6btDbvt8ICollideE = comdat any

@_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis = internal global [3 x %class.btVector3] zeroinitializer, align 16
@_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis = internal global i64 0, align 8
@_ZTV20btDbvtNodeEnumerator = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI20btDbvtNodeEnumerator, ptr @_ZN20btDbvtNodeEnumeratorD2Ev, ptr @_ZN20btDbvtNodeEnumeratorD0Ev, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_, ptr @_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef, ptr @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode] }, comdat, align 8
@_ZTI20btDbvtNodeEnumerator = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20btDbvtNodeEnumerator, ptr @_ZTIN6btDbvt8ICollideE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS20btDbvtNodeEnumerator = linkonce_odr dso_local constant [23 x i8] c"20btDbvtNodeEnumerator\00", comdat, align 1
@_ZTIN6btDbvt8ICollideE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6btDbvt8ICollideE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6btDbvt8ICollideE = linkonce_odr dso_local constant [19 x i8] c"N6btDbvt8ICollideE\00", comdat, align 1

@_ZN6btDbvtC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6btDbvtC2Ev
@_ZN6btDbvtD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6btDbvtD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6btDbvtC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 28), (36, 44), (48, 57)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.c, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !21
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6btDbvtD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %.noexc
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !24
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit

bb.c:                                             ; preds = %.noexc2
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit unwind label %bb.d

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit: ; preds = %bb.c, %.noexc2
  ret void

bb.d:                                             ; preds = %bb.c, %.noexc, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %.not.i.i.i6 = icmp ne ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i8, ptr %i.m, align 8, !range !24
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i7 = select i1 %.not.i.i.i6, i1 %i.o, i1 false
  br i1 %or.cond.i.i7, label %bb.e, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit9

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.l)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit9 unwind label %bb.f

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit9: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #16
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !24
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE5clearEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
  br label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE5clearEv.exit

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE5clearEv.exit: ; preds = %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.g, align 8, !tbaa !8
  store ptr null, ptr %i.e, align 8, !tbaa !14
  store i32 0, ptr %i.j, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !21
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: uwtable
define internal fastcc void @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  tail call fastcc void @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %i.e)
end_hunk_0
begin_hunk_1_@_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi:bb.a
  store i8 1, ptr %i.qv, align 8, !tbaa !26
  store ptr %.0.i.i.i, ptr %i.ps, align 16, !tbaa !31
  store i32 %i.pl, ptr %i.ph, align 8, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i, %bb.ao, %.lr.ph211
  %i.qw = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i ], [ %i.pg, %bb.ao ], [ %i.pg, %.lr.ph211 ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.qy = load ptr, ptr %i.qx, align 16, !tbaa !31
  %i.qz = sext i32 %i.qw to i64
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.qy, i64 %i.qz
  %i.rb = load ptr, ptr %i.pe, align 8, !tbaa !34
  store ptr %i.rb, ptr %i.ra, align 8, !tbaa !34
  %i.rc = add nsw i32 %i.qw, 1
  store i32 %i.rc, ptr %i.pf, align 4, !tbaa !32
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %_ZL5splitRK20btAlignedObjectArrayIP10btDbvtNodeERS2_S5_RK9btVector3S8_.exit, label %.lr.ph211

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZL5splitRK20btAlignedObjectArrayIP10btDbvtNodeERS2_S5_RK9btVector3S8_.exit: ; preds = %bb.as, %bb.ai, %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit153, %_ZN20btAlignedObjectArrayIP10btDbvtNodeE6resizeEiRKS1_.exit33.i
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !23 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i158, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZL5splitRK20btAlignedObjectArrayIP10btDbvtNodeERS2_S5_RK9btVector3S8_.exit
  store ptr null, ptr %i.re, align 8, !tbaa !23
  br label %bb.aw

bb.av:                                            ; preds = %_ZL5splitRK20btAlignedObjectArrayIP10btDbvtNodeERS2_S5_RK9btVector3S8_.exit
  %i.rg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16)
          to label %.noexc160 unwind label %bb.az ; 2 uses

.noexc160:                                        ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.rg, i8 0, i64 56, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc160, %bb.au
  %.0.i.i159 = phi ptr [ %i.rf, %bb.au ], [ %i.rg, %.noexc160 ] ; 12 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 32
  %i.ri = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 40 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rh, i8 0, i64 24, i1 false)
  store <2 x float> %i.u, ptr %.0.i.i159, align 8
  %.sroa.8185.0..0.i.i159.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 8
  store float %.sink28.i.i, ptr %.sroa.8185.0..0.i.i159.sroa_idx, align 8
  %.sroa.10.0..0.i.i159.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 12
  store i32 %.sroa.10.0.copyload.i, ptr %.sroa.10.0..0.i.i159.sroa_idx, align 4, !tbaa !25
  %.sroa.11.0..0.i.i159.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 16
  store <2 x float> %i.x, ptr %.sroa.11.0..0.i.i159.sroa_idx, align 8
  %.sroa.15.0..0.i.i159.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 24
  store float %.sink42.i.i, ptr %.sroa.15.0..0.i.i159.sroa_idx, align 8
  %.sroa.17.0..0.i.i159.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i159, i64 28
  store i32 %.sroa.16.0.copyload.i, ptr %.sroa.17.0..0.i.i159.sroa_idx, align 4, !tbaa !25
  %i.rk = invoke fastcc noundef ptr @_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef %2)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.rk, ptr %i.ri, align 8, !tbaa !25
  %i.rl = invoke fastcc noundef ptr @_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %.ptr.1, i32 noundef %2)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.rl, ptr %i.rj, align 8, !tbaa !25
  %i.rm = load ptr, ptr %i.ri, align 8, !tbaa !25
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  store ptr %.0.i.i159, ptr %i.rn, align 8, !tbaa !44
  %i.ro = load ptr, ptr %i.rj, align 8, !tbaa !25
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  store ptr %.0.i.i159, ptr %i.rp, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.rq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rr = load ptr, ptr %i.rq, align 16, !tbaa !31 ; 2 uses
  %.not.i.i.i161 = icmp ne ptr %i.rr, null
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.rt = load i8, ptr %i.rs, align 8, !range !24
  %i.ru = trunc nuw i8 %i.rt to i1
  %or.cond.i.i162 = select i1 %.not.i.i.i161, i1 %i.ru, i1 false
  br i1 %or.cond.i.i162, label %bb.bb, label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164

bb.az:                                            ; preds = %bb.av, %bb.ax, %bb.aw
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit197, %.loopexit.split-lp198, %bb.az, %bb.at
  %.pn.pn = phi { ptr, i32 } [ %i.rd, %bb.at ], [ %i.rv, %bb.az ], [ %lpad.loopexit199, %.loopexit197 ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp198 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.rw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.rx = load ptr, ptr %i.rw, align 16, !tbaa !31 ; 2 uses
  %.not.i.i.i169 = icmp ne ptr %i.rx, null
  %i.ry = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.rz = load i8, ptr %i.ry, align 8, !range !24
  %i.sa = trunc nuw i8 %i.rz to i1
  %or.cond.i.i170 = select i1 %.not.i.i.i169, i1 %i.sa, i1 false
  br i1 %or.cond.i.i170, label %bb.be, label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit172

bb.bb:                                            ; preds = %bb.ay
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.rr)
          to label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164 unwind label %.preheader.preheader

_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164: ; preds = %bb.ay, %bb.bb
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sc = load ptr, ptr %i.sb, align 16, !tbaa !31 ; 2 uses
  %.not.i.i.i161.1 = icmp ne ptr %i.sc, null
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.se = load i8, ptr %i.sd, align 8, !range !24
  %i.sf = trunc nuw i8 %i.se to i1
  %or.cond.i.i162.1 = select i1 %.not.i.i.i161.1, i1 %i.sf, i1 false
  br i1 %or.cond.i.i162.1, label %bb.bc, label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164.1

bb.bc:                                            ; preds = %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.sc)
  br label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164.1

_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164.1: ; preds = %bb.bc, %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bi

.preheader.preheader:                             ; preds = %bb.bb
  %i.sg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.si = load ptr, ptr %i.sh, align 16, !tbaa !31 ; 2 uses
  %.not.i.i.i165 = icmp ne ptr %i.si, null
  %i.sj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sk = load i8, ptr %i.sj, align 8, !range !24
  %i.sl = trunc nuw i8 %i.sk to i1
  %or.cond.i.i166 = select i1 %.not.i.i.i165, i1 %i.sl, i1 false
  br i1 %or.cond.i.i166, label %bb.bd, label %.loopexit195

bb.bd:                                            ; preds = %.preheader.preheader
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.si)
          to label %.loopexit195 unwind label %.loopexit

bb.be:                                            ; preds = %bb.ba
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.rx)
          to label %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit172 unwind label %.loopexit.split-lp

_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit172: ; preds = %bb.ba, %bb.be
  %i.sm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sn = load ptr, ptr %i.sm, align 16, !tbaa !31 ; 2 uses
  %.not.i.i.i169.1 = icmp ne ptr %i.sn, null
  %i.so = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sp = load i8, ptr %i.so, align 8, !range !24
  %i.sq = trunc nuw i8 %i.sp to i1
  %or.cond.i.i170.1 = select i1 %.not.i.i.i169.1, i1 %i.sq, i1 false
  br i1 %or.cond.i.i170.1, label %bb.bf, label %.loopexit195

bb.bf:                                            ; preds = %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit172
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.sn)
          to label %.loopexit195 unwind label %.loopexit.split-lp

.loopexit195:                                     ; preds = %.preheader.preheader, %bb.bd, %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit172, %bb.bf
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit172 ], [ %.pn.pn, %bb.bf ], [ %i.sg, %bb.bd ], [ %i.sg, %.preheader.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn.pn.pn

bb.bg:                                            ; preds = %bb.e
  tail call fastcc void @_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !31
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !34
  br label %bb.bi

bb.bh:                                            ; preds = %bb.d
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !31
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !34
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164.1
  %.0 = phi ptr [ %.0.i.i159, %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit164.1 ], [ %i.st, %bb.bg ], [ %i.sw, %bb.bh ]
  ret ptr %.0

.loopexit:                                        ; preds = %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

.loopexit.split-lp:                               ; preds = %bb.bf, %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bj

bb.bj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.sx = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.sx) #16
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN6btDbvt19optimizeIncrementalEi(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 4       ; 4 uses
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %.010 = select i1 %i.a, i32 %i.c, i32 %1        ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !22
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp sgt i32 %.010, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN6btDbvt6updateEP10btDbvtNodei.exit
  %.1 = phi i32 [ %i.bc, %_ZN6btDbvt6updateEP10btDbvtNodei.exit ], [ %.010, %.preheader ]
  %.0915 = load ptr, ptr %0, align 8, !tbaa !25   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0915, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not1416 = icmp eq ptr %i.i, null
  br i1 %.not1416, label %_ZN6btDbvt6updateEP10btDbvtNodei.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZL4sortP10btDbvtNodeRS0_.exit
  %i.j = phi ptr [ %i.aw, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ %i.h, %bb.b ] ; 2 uses
  %.0918 = phi ptr [ %.09, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ %.0915, %bb.b ] ; 11 uses
  %.017 = phi i32 [ %i.av, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0918, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 11 uses
  %i.m = icmp ugt ptr %i.l, %.0918
  br i1 %i.m, label %bb.c, label %_ZL4sortP10btDbvtNodeRS0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = icmp eq ptr %i.o, %.0918                 ; 2 uses
  %i.q = xor i1 %i.p, true
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.s = zext i1 %i.q to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44   ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = icmp eq ptr %i.z, %i.l
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ab
  store ptr %.0918, ptr %i.ac, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %.0918, ptr %0, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %.0918, ptr %i.ad, align 8, !tbaa !44
  store ptr %.0918, ptr %i.v, align 8, !tbaa !44
  store ptr %i.w, ptr %i.k, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %.0918, i64 40 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  store ptr %i.af, ptr %i.r, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !25
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !25
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.l, ptr %i.ai, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !44
  %i.al = zext i1 %i.p to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.al
  store ptr %i.l, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.s
  store ptr %i.u, ptr %i.an, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %i.l, i64 32, i1 false), !tbaa.struct !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.l, ptr noundef nonnull align 4 dereferenceable(32) %.0918, i64 32, i1 false), !tbaa.struct !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.0918, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZL4sortP10btDbvtNodeRS0_.exit

_ZL4sortP10btDbvtNodeRS0_.exit:                   ; preds = %.lr.ph, %bb.f
  %.0.i = phi ptr [ %i.l, %bb.f ], [ %.0918, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !21
  %i.aq = lshr i32 %i.ap, %.017
  %i.ar = and i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = add nuw nsw i32 %.017, 1
  %i.av = and i32 %i.au, 31
  %.09 = load ptr, ptr %i.at, align 8, !tbaa !25  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !25
  %.not14 = icmp eq ptr %i.ax, null
  br i1 %.not14, label %_ZN6btDbvt6updateEP10btDbvtNodei.exit, label %.lr.ph

_ZN6btDbvt6updateEP10btDbvtNodei.exit:            ; preds = %_ZL4sortP10btDbvtNodeRS0_.exit, %bb.b
  %.09.lcssa = phi ptr [ %.0915, %bb.b ], [ %.09, %_ZL4sortP10btDbvtNodeRS0_.exit ] ; 2 uses
  %i.ay = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %.09.lcssa)
  %.not.i13 = icmp eq ptr %i.ay, null
  %i.az = load ptr, ptr %0, align 8
  %spec.select = select i1 %.not.i13, ptr null, ptr %i.az
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %spec.select, ptr noundef nonnull %.09.lcssa)
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !21
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.g, align 8, !tbaa !21
  %i.bc = add nsw i32 %.1, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN6btDbvt6updateEP10btDbvtNodei.exit, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6btDbvt6updateEP10btDbvtNodei(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.017 = phi i32 [ %i.c, %bb.c ], [ 0, %.preheader ]
  %.01016 = phi ptr [ %i.e, %bb.c ], [ %i.a, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01016, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %.critedge, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.f, %bb.d ], [ %i.a, %.preheader ], [ %i.e, %bb.c ], [ %.01016, %.lr.ph ]
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef %0, ptr noundef %.1, ptr noundef %1)
  ret void
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !23
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit

_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !76
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef %0, ptr noundef %i.g, ptr noundef nonnull %.0.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !20
  ret ptr %.0.i.i
}

; Function Attrs: uwtable
define internal fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.b, align 8, !tbaa !44
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit50, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !42
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !42
  %i.i = fadd <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !42
  %i.n = fadd float %i.k, %i.m                    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.o = phi ptr [ %i.ba, %bb.d ], [ %i.d, %.preheader ] ; 4 uses
  %.045 = phi ptr [ %i.ay, %bb.d ], [ %1, %.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.045, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !42
  %i.w = fadd float %i.t, %i.v
  %i.x = fsub float %i.n, %i.w
  %i.y = load <2 x float>, ptr %i.q, align 4, !tbaa !42
  %i.z = load <2 x float>, ptr %i.r, align 4, !tbaa !42
  %i.aa = fadd <2 x float> %i.y, %i.z
  %i.ab = fsub <2 x float> %i.i, %i.aa
  %i.ac = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ab) ; 2 uses
  %shift = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ac, %shift
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ae = tail call noundef float @llvm.fabs.f32(float %i.x)
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !42
  %i.al = fadd float %i.ai, %i.ak
  %i.am = fsub float %i.n, %i.al
  %i.an = load <2 x float>, ptr %i.o, align 4, !tbaa !42
  %i.ao = load <2 x float>, ptr %i.ag, align 4, !tbaa !42
  %i.ap = fadd <2 x float> %i.an, %i.ao
  %i.aq = fsub <2 x float> %i.i, %i.ap
  %i.ar = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aq) ; 2 uses
  %shift56 = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop57 = fadd <2 x float> %i.ar, %shift56
  %i.as = extractelement <2 x float> %foldExtExtBinop57, i64 0
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.au = fadd float %i.as, %i.at
  %i.av = fcmp uge float %i.af, %i.au
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.loopexit50, label %bb.d

.loopexit50:                                      ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %1, %bb.c ], [ %i.ay, %bb.d ]   ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit50
  store ptr null, ptr %i.be, align 8, !tbaa !23
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
end_hunk_1
