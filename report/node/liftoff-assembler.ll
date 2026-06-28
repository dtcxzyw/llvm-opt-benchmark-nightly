inline.NumInlined: 1729
inline.NumDeleted: 639
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal4wasm16LiftoffAssembler17MergeIntoNewStateEjjj:bb.a
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE(ptr noundef nonnull %0, ptr noundef %i.an, ptr noundef %i.au, i32 noundef %4, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i32 %.sroa.083.4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(356) %5)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %5) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 340
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr noundef nonnull align 8 dereferenceable(356) %5) #20
  br label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit

_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115InitMergeRegionEPNS1_16LiftoffAssembler10CacheStateEPKNS1_15LiftoffVarStateEPS6_jNS2_19MergeKeepStackSlotsENS2_19MergeAllowConstantsENS2_19MergeAllowRegistersENS2_14ReuseRegistersENS1_14LiftoffRegListEiRNS1_12ParallelMoveE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef range(i32 1, 0) %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 %8, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(356) %10) unnamed_addr #0 {
.lr.ph:
  %11 = alloca %"class.v8::internal::wasm::(anonymous namespace)::RegisterReuseMap", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.a, ptr %11, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.d, ptr %i.c, align 8
  %i.e = zext i32 %3 to i64
  %.idx = mul nuw nsw i64 %i.e, 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 340 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 352 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228
  br label %bb.a

._crit_edge:                                      ; preds = %bb.ah
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.ah
  %.0154 = phi ptr [ %1, %.lr.ph ], [ %i.ek, %bb.ah ] ; 21 uses
  %.074153 = phi ptr [ %2, %.lr.ph ], [ %i.el, %bb.ah ] ; 11 uses
  %.075152 = phi i32 [ %9, %.lr.ph ], [ %.2, %bb.ah ] ; 7 uses
  %.sroa.0117.0151 = phi i8 [ undef, %.lr.ph ], [ %.sroa.0117.4, %bb.ah ] ; 6 uses
  %i.n = load i8, ptr %.0154, align 4             ; 4 uses
  %i.o = icmp eq i8 %i.n, 0                       ; 2 uses
  %or.cond = and i1 %4, %i.o
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.074153, ptr noundef nonnull align 4 dereferenceable(12) %.0154, i64 12, i1 false)
  %.not82 = icmp eq i32 %.075152, 0
  br i1 %.not82, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = add i8 %i.q, -9
  %i.s = icmp ult i8 %i.r, 2
  br i1 %i.s, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit: ; preds = %bb.c
  %i.t = zext i8 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = add nsw i32 %.075152, %i.w
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88: ; preds = %bb.c
  %i.y = add i32 %.075152, 15
  %i.z = and i32 %i.y, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88
  %.0.i84 = phi i32 [ %i.z, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit88 ], [ %i.x, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0154, i64 8
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not83 = icmp eq i32 %.0.i84, %i.ab
  br i1 %.not83, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit85
  %i.ad = getelementptr inbounds nuw i8, ptr %.074153, i64 8
  store i32 %.0.i84, ptr %i.ad, align 4
  call void @_ZN2v88internal4wasm12ParallelMove15TransferToStackEiRKNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(356) %10, i32 noundef %.0.i84, ptr noundef nonnull align 4 dereferenceable(12) %.0154) #20
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.ae = icmp eq i8 %i.n, 2
  %or.cond5 = and i1 %5, %i.ae
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.074153, ptr noundef nonnull align 4 dereferenceable(12) %.0154, i64 12, i1 false)
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  br i1 %6, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i8 %i.n, 1
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.0154, i64 4
  %.sroa.0.0.copyload.i89 = load i8, ptr %i.ag, align 4 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 4
  %i.ai = zext nneg i8 %.sroa.0.0.copyload.i89 to i32
  %i.aj = shl nuw i32 1, %i.ai
  %i.ak = and i32 %i.aj, %i.ah
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %.thread133, label %bb.j

.thread133:                                       ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp ult i8 %i.am, 11
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp ne i8 %i.am, 0
  call void @llvm.assume(i1 %i.ao)
  br label %bb.n

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %7, label %bb.k, label %.thread137

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0154, i64 4
  %.sroa.0.0.copyload.i91 = load i8, ptr %i.ap, align 4
  %.val = load ptr, ptr %11, align 8              ; 2 uses
  %.val86 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not7.i = icmp eq ptr %.val, %.val86
  br i1 %.not7.i, label %.thread137, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.08.i = phi ptr [ %i.as, %bb.l ], [ %.val, %bb.k ] ; 3 uses
  %i.aq = load i8, ptr %.08.i, align 1
  %i.ar = icmp eq i8 %i.aq, %.sroa.0.0.copyload.i91
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %.not.i92 = icmp eq ptr %i.as, %.val86
  br i1 %.not.i92, label %.thread137, label %.lr.ph.i, !llvm.loop !5

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.au = load i8, ptr %i.at, align 1
  br label %bb.n

.thread137:                                       ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.0117.2142 = phi i8 [ %.sroa.0117.0151, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.aw = load i8, ptr %i.av, align 1             ; 3 uses
  %i.ax = icmp ult i8 %i.aw, 11
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp ne i8 %i.aw, 0
  call void @llvm.assume(i1 %i.ay)
  %.pn = zext nneg i8 %i.aw to i64
  %.in = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %.pn
  %i.az = load i8, ptr %.in, align 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.ba
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bb, align 4
  %.sroa.0.0.copyload.i3.i = load i32, ptr %i.g, align 8
  %i.bc = or i32 %.sroa.0.0.copyload.i3.i, %8
  %i.bd = xor i32 %i.bc, -1
  %i.be = and i32 %.sroa.0.0.copyload.i.i, %i.bd  ; 2 uses
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.n, label %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94

_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94: ; preds = %.thread137
  %i.bf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.be, i1 true)
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread133, %.thread137, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94, %bb.g
  %.sroa.0117.3 = phi i8 [ %i.au, %bb.m ], [ %i.bg, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ %.sroa.0117.2142, %.thread137 ], [ %.sroa.0117.0151, %bb.g ], [ %.sroa.0.0.copyload.i89, %.thread133 ] ; 14 uses
  %.sroa.9.2 = phi i1 [ true, %bb.m ], [ true, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ false, %.thread137 ], [ false, %bb.g ], [ true, %.thread133 ]
  %.177 = phi i1 [ true, %bb.m ], [ true, %_ZNSt8optionalIN2v88internal4wasm15LiftoffRegisterEEaSIS3_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS3_ES8_IS3_NSt5decayISB_E4typeEEEEESt16is_constructibleIS3_JSB_EESt13is_assignableIRS3_SB_EEERS4_E4typeEOSB_.exit94 ], [ true, %.thread137 ], [ true, %bb.g ], [ false, %.thread133 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0154, i64 8
  %i.bi = load i32, ptr %i.bh, align 4            ; 6 uses
  %i.bj = icmp sgt i32 %i.bi, -1
  call void @llvm.assume(i1 %i.bj)
  %.not81 = icmp eq i32 %.075152, 0
  br i1 %.not81, label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = add i8 %i.bl, -9
  %i.bn = icmp ult i8 %i.bm, 2
  br i1 %i.bn, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96: ; preds = %bb.o
  %i.bo = zext i8 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = add nsw i32 %.075152, %i.br             ; 2 uses
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98: ; preds = %bb.o
  %i.bt = add i32 %.075152, 15
  %i.bu = and i32 %i.bt, -8                       ; 2 uses
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96, %bb.n
  %.078 = phi i32 [ %i.bi, %bb.n ], [ %i.bu, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98 ], [ %i.bs, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96 ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.n ], [ %i.bu, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit98 ], [ %i.bs, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit96 ] ; 2 uses
  br i1 %.sroa.9.2, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit
  br i1 %.177, label %bb.q, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = icmp eq i8 %i.n, 1
  br i1 %i.bv, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %.0154, i64 4
  %.sroa.0.0.copyload.i99 = load i8, ptr %i.bw, align 4 ; 3 uses
  %i.bx = icmp eq i8 %.sroa.0117.3, %.sroa.0.0.copyload.i99
  br i1 %i.bx, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = load i32, ptr %i.k, align 8             ; 2 uses
  %i.cb = zext nneg i8 %.sroa.0117.3 to i32
  %i.cc = shl nuw i32 1, %i.cb                    ; 2 uses
  %i.cd = and i32 %i.ca, %i.cc
  %.not.i101 = icmp eq i32 %i.cd, 0
  br i1 %.not.i101, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = icmp eq i8 %i.bz, 4
  br i1 %i.ce, label %bb.u, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.u:                                             ; preds = %bb.t
  %i.cf = zext i8 %.sroa.0117.3 to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store i8 4, ptr %i.ch, align 1
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.v:                                             ; preds = %bb.s
  %i.ci = or i32 %i.ca, %i.cc
  store i32 %i.ci, ptr %i.k, align 8
  %i.cj = zext i8 %.sroa.0.0.copyload.i99 to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = zext i8 %.sroa.0117.3 to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %10, i64 %i.cn
  %.sroa.4.0.insert.ext.i = zext i8 %i.bz to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.0.copyload.i99 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.co, align 2
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.w:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.0154, i64 1
  %i.cq = load i8, ptr %i.cp, align 1             ; 3 uses
  br i1 %i.o, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cr = icmp ne i32 %i.bi, 0
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ct = zext nneg i8 %.sroa.0117.3 to i32
  %i.cu = shl nuw i32 1, %i.ct                    ; 2 uses
  %i.cv = and i32 %i.cs, %i.cu
  %.not.i102 = icmp eq i32 %i.cv, 0
  br i1 %.not.i102, label %bb.y, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.y:                                             ; preds = %bb.x
  %i.cw = or i32 %i.cs, %i.cu
  store i32 %i.cw, ptr %i.h, align 4
  %i.cx = load i32, ptr %i.j, align 8
  %i.cy = icmp sgt i32 %i.bi, %i.cx
  br i1 %i.cy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.bi, ptr %i.j, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.32.0.insert.ext.i.i = zext nneg i32 %i.bi to i64
  %.sroa.32.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.32.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.cq to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.32.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i, 2
  %i.cz = zext i8 %.sroa.0117.3 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.cz
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.da, align 8
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.ab:                                            ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.0154, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = zext nneg i8 %.sroa.0117.3 to i32
  %i.de = shl nuw i32 1, %i.dd
  %i.df = load i32, ptr %i.h, align 4
  %i.dg = or i32 %i.df, %i.de
  store i32 %i.dg, ptr %i.h, align 4
  %i.dh = add i8 %i.cq, -1
  %i.di = icmp ult i8 %i.dh, 2
  call void @llvm.assume(i1 %i.di)
  %.sroa.34.0.insert.ext.i.i = zext i32 %i.dc to i64
  %.sroa.34.0.insert.shift.i.i = shl nuw i64 %.sroa.34.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i103 = zext nneg i8 %i.cq to i64
  %.sroa.2.0.insert.shift.i.i104 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i103, 8
  %.sroa.2.0.insert.insert.i.i105 = or disjoint i64 %.sroa.2.0.insert.shift.i.i104, %.sroa.34.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i106 = or disjoint i64 %.sroa.2.0.insert.insert.i.i105, 1
  %i.dj = zext i8 %.sroa.0117.3 to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.dj
  store i64 %.sroa.0.0.insert.insert.i.i106, ptr %i.dk, align 8
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit: ; preds = %bb.ab, %bb.r, %bb.t, %bb.u, %bb.v, %bb.x, %bb.aa, %bb.p
  br i1 %7, label %bb.ac, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap3AddENS1_15LiftoffRegisterES4_.exit

bb.ac:                                            ; preds = %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %.0154, i64 4
  %.sroa.0.0.copyload.i107 = load i8, ptr %i.dl, align 4 ; 2 uses
  %.val.i = load ptr, ptr %11, align 8            ; 2 uses
  %.val1.i = load ptr, ptr %i.b, align 8          ; 4 uses
  %.not7.i.i = icmp eq ptr %.val.i, %.val1.i
  br i1 %.not7.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %bb.ad
  %.08.i.i = phi ptr [ %i.do, %bb.ad ], [ %.val.i, %bb.ac ] ; 2 uses
  %i.dm = load i8, ptr %.08.i.i, align 1
  %i.dn = icmp eq i8 %i.dm, %.sroa.0.0.copyload.i107
  br i1 %i.dn, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap3AddENS1_15LiftoffRegisterES4_.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.do, %.val1.i
  br i1 %.not.i.i, label %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !5

_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i: ; preds = %bb.ad, %bb.ac
  %i.dp = load ptr, ptr %i.c, align 8
  %i.dq = icmp eq ptr %.val1.i, %i.dp
  br i1 %i.dq, label %bb.ae, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i, !prof !7

bb.ae:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  %.pre.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i: ; preds = %bb.ae, %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i
  %i.dr = phi ptr [ %.pre.i.i, %bb.ae ], [ %.val1.i, %_ZN2v88internal4wasm12_GLOBAL__N_116RegisterReuseMap6LookupENS1_15LiftoffRegisterE.exit.thread.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  store ptr %i.ds, ptr %i.b, align 8
  store i8 %.sroa.0.0.copyload.i107, ptr %i.dr, align 1
  %i.dt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.du = load ptr, ptr %i.c, align 8
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.af, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit3.i, !prof !7

bb.af:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
  %.pre.i2.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit3.i

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit3.i: ; preds = %bb.af, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i
  %i.dw = phi ptr [ %.pre.i2.i, %bb.af ], [ %i.dt, %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE12emplace_backIJRS4_EEEvDpOT_.exit.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm16LiftoffAssemblerC2EPNS0_4ZoneESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteIS6_EE:bb.a
  store i8 1, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.32.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.a, ptr %3, align 8
  call void @_ZN2v88internal18MacroAssemblerBaseC2EPNS0_7IsolateESt7variantIJPNS0_4ZoneEPNS0_19AccountingAllocatorEEENS0_16AssemblerOptionsENS0_18CodeObjectRequiredESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteISD_EE(ptr noundef nonnull align 8 dereferenceable(436) %0, ptr noundef null, ptr %1, i8 0, ptr noundef nonnull byval(%"struct.v8::internal::AssemblerOptions") align 8 %4, i32 noundef 0, ptr noundef nonnull %3) #20
  %i.b = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20, !inline_history !18
  br label %_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal15AssemblerBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal15AssemblerBufferEEclEPS2_.exit.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = ptrtoint ptr %1 to i64
  store i64 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i8 0, i64 104, i1 false)
  store i8 -1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 788
  store i32 -1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 -1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i32 32, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 804
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 425
  store i8 1, ptr %i.u, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.f)
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(436) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal9AssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit

_ZN2v88internal19JumpTableInfoWriterD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #21
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !19

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  tail call void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(824) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN2v88internal4wasm16LiftoffAssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ugt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @free(ptr noundef %i.e) #20, !inline_history !20
  br label %_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit

_ZN2v88internal4wasm16LiftoffAssemblerD2Ev.exit:  ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(337) %i.f), !inline_history !20
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) #20, !inline_history !20
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal8MalloceddlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i32 %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 9 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8       ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 4 uses
  %i.a = and i64 %.sroa.2.0.extract.shift, 15     ; 2 uses
  %i.b = icmp ult i8 %.sroa.2.0.extract.trunc, 11
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.a
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp ne i8 %.sroa.2.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = zext nneg i8 %i.d to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.g
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4
  %i.i = xor i32 %3, -1
  %i.j = and i32 %.sroa.0.0.copyload.i.i, %i.i    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.k, align 8
  %i.l = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.m = and i32 %i.j, %i.l                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.m, i1 true)
  %i.o = trunc nuw nsw i32 %i.n to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.j)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i = phi i8 [ %i.o, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.sroa.46.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.46.0.extract.trunc.i = trunc nuw i64 %.sroa.46.0.extract.shift.i to i32
  %i.q = and i64 %1, 255
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.s = icmp eq i8 %.sroa.2.0.extract.trunc, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 0, i64 12, i1 false), !alias.scope !21
  store i32 %.sroa.46.0.extract.trunc.i, ptr %scevgep.i.i.i, align 4, !alias.scope !21
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = ashr i64 %1, 32
  %scevgep.i1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.v, align 4, !alias.scope !21
  store i64 %i.u, ptr %scevgep.i1.i.i, align 4, !alias.scope !21
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i = phi i32 [ 5648, %bb.e ], [ 5904, %bb.f ]
  store i32 %.sink.i.i, ptr %4, align 8, !alias.scope !21
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.w, align 8, !alias.scope !21
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.x = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = sub nsw i32 0, %2                        ; 3 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i64 %i.z, 128
  %i.ab = icmp ult i64 %i.aa, 256                 ; 2 uses
  %i.ac = shl i32 %i.y, 24
  %i.ad = or disjoint i32 %i.ac, 4521984
  %.sroa.0.3.insert.insert11.i.i = zext i32 %i.ad to i64
  %.sroa.0.3.insert.ext.i.i = zext i32 %i.y to i64
  %.sroa.0.3.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i64 %.sroa.0.3.insert.shift.i.i, 8716288
  %.sroa.0.0.i.i = select i1 %i.ab, i64 %.sroa.0.3.insert.insert11.i.i, i64 %.sroa.0.3.insert.insert.i.i
  %storemerge.i.i.i = select i1 %i.ab, i64 2, i64 5
  %.fca.1.load.cast.i.i.i = inttoptr i64 %storemerge.i.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %.sroa.0.0.i.i, ptr nonnull %.fca.1.load.cast.i.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE.exit: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %.sroa.06.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler19LoadToFixedRegisterENS1_15LiftoffVarStateENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i8 %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i8 ; 2 uses
  %.sroa.46.0.extract.shift = lshr i64 %1, 32
  %.sroa.46.0.extract.trunc = trunc nuw i64 %.sroa.46.0.extract.shift to i32
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %.sroa.2.0.extract.trunc, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, i8 0, i64 12, i1 false), !alias.scope !24
  store i32 %.sroa.46.0.extract.trunc, ptr %scevgep.i.i, align 4, !alias.scope !24
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.d:                                             ; preds = %bb.b
  %i.e = ashr i64 %1, 32
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i64 0, ptr %i.f, align 4, !alias.scope !24
  store i64 %i.e, ptr %scevgep.i1.i, align 4, !alias.scope !24
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ 5648, %bb.c ], [ 5904, %bb.d ]
  store i32 %.sink.i, ptr %4, align 8, !alias.scope !24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.g, align 8, !alias.scope !24
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub nsw i32 0, %2                        ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = add nsw i64 %i.j, 128
  %i.l = icmp ult i64 %i.k, 256                   ; 2 uses
  %i.m = shl i32 %i.i, 24
  %i.n = or disjoint i32 %i.m, 4521984
  %.sroa.0.3.insert.insert11.i = zext i32 %i.n to i64
  %.sroa.0.3.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.3.insert.shift.i = shl nuw nsw i64 %.sroa.0.3.insert.ext.i, 24
  %.sroa.0.3.insert.insert.i = or disjoint i64 %.sroa.0.3.insert.shift.i, 8716288
  %.sroa.0.0.i = select i1 %i.l, i64 %.sroa.0.3.insert.insert11.i, i64 %.sroa.0.3.insert.insert.i
  %storemerge.i.i = select i1 %i.l, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %3, i64 %.sroa.0.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 noundef zeroext %.sroa.2.0.extract.trunc)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler23LoadI64HalfIntoRegisterENS1_15LiftoffVarStateENS1_11RegPairHalfENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %1, i32 %2, i8 noundef zeroext %3, i32 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 5 uses
  %.sroa.023.0.extract.trunc = trunc i64 %1 to i8 ; 2 uses
  %.sroa.526.0.extract.shift = lshr i64 %1, 32    ; 2 uses
  %.sroa.526.sroa.0.0.extract.trunc = trunc i64 %.sroa.526.0.extract.shift to i8 ; 2 uses
  %sum.shift = lshr i64 %1, 40                    ; 2 uses
  %.sroa.526.sroa.5.0.extract.trunc = trunc nuw nsw i64 %sum.shift to i32
  %i.a = icmp eq i8 %.sroa.023.0.extract.trunc, 1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i8 %3, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = and i8 %.sroa.526.sroa.0.0.extract.trunc, 15
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i8 %.sroa.526.sroa.0.0.extract.trunc, 4
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = and i32 %4, 37839
  %i.f = xor i32 %i.e, 37839                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.g, align 8
  %i.h = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.i = and i32 %i.f, %i.h                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.i, i1 true)
  %i.k = trunc nuw nsw i32 %i.j to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.f)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.f, %bb.g
  %.sroa.06.0.i.i = phi i8 [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 3 uses
  %i.m = icmp eq i8 %.sroa.023.0.extract.trunc, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.n = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  tail call void @llvm.assume(i1 %i.n)
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.o = icmp eq i8 %3, 0
  br i1 %i.o, label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit12

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.i
  %.sroa.526.sroa.5.0.insert.shift = shl nuw nsw i64 %sum.shift, 8
  %.sroa.526.sroa.0.0.insert.ext = and i64 %.sroa.526.0.extract.shift, 255
  %.sroa.526.sroa.0.0.insert.insert = or disjoint i64 %.sroa.526.sroa.5.0.insert.shift, %.sroa.526.sroa.0.0.insert.ext
  br label %bb.j

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit12: ; preds = %bb.i
  %i.p = and i64 %1, 65280
  %i.q = icmp eq i64 %i.p, 256
  %.sroa.526.sroa.5.0.insert.shift32 = shl nuw i32 %.sroa.526.sroa.5.0.extract.trunc, 8
  %i.r = ashr i32 %.sroa.526.sroa.5.0.insert.shift32, 31
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 0, i64 %i.s
  br label %bb.j

bb.j:                                             ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit12, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit
  %i.u = phi i64 [ %.sroa.526.sroa.0.0.insert.insert, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit ], [ %i.t, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit12 ]
  %i.v = trunc nuw i64 %i.u to i32
  store i32 5648, ptr %5, align 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, i8 0, i64 12, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.x, align 8
  store i32 %i.v, ptr %scevgep.i, align 4
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.j
  %.sroa.036.0 = phi i8 [ %i.c, %bb.c ], [ %.sroa.06.0.i.i, %bb.j ], [ %i.d, %bb.d ]
  ret i8 %.sroa.036.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, ptr noundef byval(%"class.v8::internal::wasm::WasmValue") align 8 %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8 ; 2 uses
  %i.a = and i32 %.sroa.0.0.copyload.i, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.sroa.0.0.copyload.i, 268435440
  %i.d = add nsw i32 %i.c, -5648                  ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 24) ; 2 uses
  %i.f = icmp ult i32 %i.e, 8
  br i1 %i.f, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i32 %i.e to i8
  switch i8 %switch.idx.cast.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.g
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.d:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.g, align 4 ; 2 uses
  %i.h = icmp eq i32 %.0.copyload.i.i.i, 0
  %i.i = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.i)
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.09.0.insert.ext = zext i32 %.0.copyload.i.i.i to i64
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %1, i64 %.sroa.09.0.insert.ext, i32 noundef 4) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.g:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.j = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i7 = load i64, ptr %i.k, align 4 ; 6 uses
  %i.l = icmp eq i64 %.0.copyload.i.i.i7, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal9Assembler13arithmetic_opEhNS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 51, i8 %1, i8 %1, i32 noundef 4) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i = icmp ult i64 %.0.copyload.i.i.i7, 4294967296
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %.0.copyload.i.i.i7, i32 noundef 4) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.k:                                             ; preds = %bb.i
  %i.m = icmp ugt i64 %.0.copyload.i.i.i7, -2147483649
  br i1 %i.m, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.015.0.insert.ext.i = and i64 %.0.copyload.i.i.i7, 4294967295
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %.sroa.015.0.insert.ext.i, i32 noundef 8) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i64 %.0.copyload.i.i.i7, i8 0, i32 noundef 8) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.n:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.n = add nsw i8 %1, -16
  %i.o = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEj(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.n, i32 noundef %i.q) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

bb.o:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.r = add nsw i8 %1, -16
  %i.s = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i64, ptr %i.t, align 4
  tail call void @_ZN2v88internal14MacroAssembler4MoveENS0_11XMMRegisterEm(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.r, i64 noundef %i.u) #20
  br label %_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal14MacroAssembler4MoveENS0_8RegisterEl.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.e, %bb.f, %bb.o, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler26DropExceptionValueAtOffsetEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [12 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.g, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.i = zext i8 %.sroa.0.0.copyload.i to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i8 %.sroa.0.0.copyload.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.p = shl nuw i32 1, %i.n
  %i.q = xor i32 %i.p, -1
  %i.r = load i32, ptr %i.o, align 8
  %i.s = and i32 %i.r, %i.q
  store i32 %i.s, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.t = icmp eq i32 %1, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm16LiftoffAssembler13SpillLoopArgsEi:bb.a
  store i64 %i.ai, ptr %scevgep.i1.i.i, align 4, !alias.scope !28
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i: ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ 5648, %bb.f ], [ 5904, %bb.g ]
  store i32 %.sink.i.i, ptr %2, align 8, !alias.scope !28
  store ptr null, ptr %i.g, align 8, !alias.scope !28
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.ab, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %2)
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit.i, %bb.d, %bb.c, %bb.b
  store i8 0, ptr %.011, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEPNS1_15LiftoffVarStateE.exit

_ZN2v88internal4wasm16LiftoffAssembler5SpillEPNS1_15LiftoffVarStateE.exit: ; preds = %bb.b, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %.011, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEPNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %i.a = load i8, ptr %1, align 4
  switch i8 %i.a, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit [
    i8 0, label %bb.g
    i8 1, label %bb.b
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = load i8, ptr %i.f, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.c, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.g)
  %.sroa.0.0.copyload.i10 = load i8, ptr %i.e, align 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.i = zext i8 %.sroa.0.0.copyload.i10 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i8 %.sroa.0.0.copyload.i10 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.p = shl nuw i32 1, %i.n
  %i.q = xor i32 %i.p, -1
  %i.r = load i32, ptr %i.o, align 8
  %i.s = and i32 %i.r, %i.q
  store i32 %i.s, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noalias !31
  %i.y = icmp eq i8 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !noalias !31 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ab, i8 0, i64 12, i1 false), !alias.scope !31
  store i32 %i.aa, ptr %scevgep.i.i, align 4, !alias.scope !31
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.aa to i64
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i64 0, ptr %i.ad, align 4, !alias.scope !31
  store i64 %i.ac, ptr %scevgep.i1.i, align 4, !alias.scope !31
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i32 [ 5648, %bb.e ], [ 5904, %bb.f ]
  store i32 %.sink.i, ptr %2, align 8, !alias.scope !31
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.ae, align 8, !alias.scope !31
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.u, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %2)
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit: ; preds = %bb.c, %bb.b, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, %bb.a
  store i8 0, ptr %1, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler16PrepareForBranchEjNS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [2 x %"class.v8::base::Vector.37"], align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = zext i32 %1 to i64                       ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [12 x i8], ptr %i.h, i64 %i.j
  store ptr %i.k, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  store ptr %i.b, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 9 uses
  %scevgep.i1.i = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.0.idx97 = phi i64 [ 0, %bb.a ], [ %.0.add, %._crit_edge ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.0.idx97 ; 2 uses
  %.sroa.083.0.copyload = load ptr, ptr %.0.ptr, align 8 ; 2 uses
  %.sroa.585.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8
  %.sroa.585.0.copyload = load i64, ptr %.sroa.585.0..0.sroa_idx, align 8 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.585.0.copyload, 12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 %.idx
  %.not6495 = icmp eq i64 %.sroa.585.0.copyload, 0
  br i1 %.not6495, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.c
  %.0.add = add nuw nsw i64 %.0.idx97, 16         ; 2 uses
  %.not = icmp eq i64 %.0.add, 32
  br i1 %.not, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.c, %bb.af
  %.06396 = phi ptr [ %i.dt, %bb.af ], [ %.sroa.083.0.copyload, %bb.c ] ; 13 uses
  %i.y = load i8, ptr %.06396, align 4
  switch i8 %i.y, label %bb.af [
    i8 1, label %bb.d
    i8 2, label %bb.u
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.06396, i64 4 ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.z, align 4 ; 6 uses
  %i.aa = zext i8 %.sroa.0.0.copyload.i to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp ugt i32 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.06396, i64 1
  %i.af = load i8, ptr %i.ae, align 1             ; 6 uses
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = icmp ult i8 %i.af, 11
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.ag
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp ne i8 %i.af, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = zext nneg i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.al
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.am, align 4
  %.sroa.0.0.copyload.i3.i = load i32, ptr %i.r, align 8
  %i.an = or i32 %.sroa.0.0.copyload.i3.i, %2
  %i.ao = xor i32 %i.an, -1
  %i.ap = and i32 %.sroa.0.0.copyload.i.i, %i.ao  ; 2 uses
  %.not94 = icmp eq i32 %i.ap, 0
  br i1 %.not94, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ap, i1 true) ; 4 uses
  %i.ar = trunc nuw nsw i32 %i.aq to i8           ; 3 uses
  %i.as = icmp samesign ult i32 %i.aq, 16
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = icmp samesign ult i8 %.sroa.0.0.copyload.i, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i8 %i.af, 1
  %..i.i = select i1 %i.au, i32 4, i32 8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ar, i8 %.sroa.0.0.copyload.i, i32 noundef %..i.i) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.h:                                             ; preds = %bb.f
  %i.av = add nsw i8 %i.ar, -16                   ; 8 uses
  %i.aw = add nsw i8 %.sroa.0.0.copyload.i, -16   ; 6 uses
  %i.ax = icmp slt i8 %.sroa.0.0.copyload.i, 32
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.az = and i32 %i.ay, 32
  %.not.i.i14.i = icmp eq i32 %i.az, 0            ; 3 uses
  switch i8 %i.af, label %bb.o [
    i8 3, label %bb.i
    i8 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i14.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 16, i8 %i.av, i8 %i.av, i8 %i.aw) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.av, i8 %i.aw) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.l:                                             ; preds = %bb.h
  br i1 %.not.i.i14.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 16, i8 %i.av, i8 %i.av, i8 %i.aw, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.av, i8 %i.aw) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.o:                                             ; preds = %bb.h
  br i1 %.not.i.i14.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 40, i8 %i.av, i8 0, i8 %i.aw) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.av, i8 %i.aw) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.g
  %i.ba = shl nuw i32 1, %i.aq
  %i.bb = load i32, ptr %i.r, align 8
  %i.bc = or i32 %i.bb, %i.ba                     ; 2 uses
  store i32 %i.bc, ptr %i.r, align 8
  %i.bd = zext nneg i32 %i.aq to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  %.sroa.0.0.copyload.i69 = load i8, ptr %i.z, align 4 ; 2 uses
  %i.bh = zext i8 %.sroa.0.0.copyload.i69 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.r:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit
  %i.bm = zext nneg i8 %.sroa.0.0.copyload.i69 to i32
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = xor i32 %i.bn, -1
  %i.bp = and i32 %i.bc, %i.bo
  store i32 %i.bp, ptr %i.r, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit, %bb.r
  store i8 1, ptr %.06396, align 4
  store i8 %i.ar, ptr %i.z, align 4
  br label %bb.af

bb.s:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.06396, i64 8
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bs = icmp sgt i32 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.br, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.af)
  %.sroa.0.0.copyload.i71 = load i8, ptr %i.z, align 4 ; 2 uses
  %i.bt = zext i8 %.sroa.0.0.copyload.i71 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.t, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72

bb.t:                                             ; preds = %bb.s
  %i.by = zext nneg i8 %.sroa.0.0.copyload.i71 to i32
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = xor i32 %i.bz, -1
  %i.cb = load i32, ptr %i.r, align 8
  %i.cc = and i32 %i.cb, %i.ca
  store i32 %i.cc, ptr %i.r, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72: ; preds = %bb.s, %bb.t
  store i8 0, ptr %.06396, align 4
  br label %bb.af

bb.u:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %.06396, i64 1
  %i.ce = load i8, ptr %i.cd, align 1             ; 5 uses
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = icmp ult i8 %i.ce, 11
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp ne i8 %i.ce, 0
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = zext nneg i8 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.ck
  %.sroa.0.0.copyload.i.i73 = load i32, ptr %i.cl, align 4
  %.sroa.0.0.copyload.i3.i74 = load i32, ptr %i.r, align 8
  %i.cm = or i32 %.sroa.0.0.copyload.i3.i74, %2
  %i.cn = xor i32 %i.cm, -1
  %i.co = and i32 %.sroa.0.0.copyload.i.i73, %i.cn ; 2 uses
  %.not92 = icmp eq i32 %i.co, 0
  br i1 %.not92, label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.co, i1 true) ; 3 uses
  %i.cq = trunc nuw nsw i32 %i.cp to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.cr = icmp eq i8 %i.ce, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.06396, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !34 ; 2 uses
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.t, i8 0, i64 12, i1 false), !alias.scope !34
  store i32 %i.ct, ptr %scevgep.i1.i, align 4, !alias.scope !34
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

bb.x:                                             ; preds = %bb.v
  %i.cu = sext i32 %i.ct to i64
  store i64 0, ptr %i.s, align 4, !alias.scope !34
  store i64 %i.cu, ptr %scevgep.i1.i, align 4, !alias.scope !34
  br label %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit: ; preds = %bb.w, %bb.x
  %.sink.i = phi i32 [ 5648, %bb.w ], [ 5904, %bb.x ]
  store i32 %.sink.i, ptr %4, align 8, !alias.scope !34
  store ptr null, ptr %i.u, align 8, !alias.scope !34
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.cq, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %4)
  %i.cv = shl nuw i32 1, %i.cp
  %i.cw = load i32, ptr %i.r, align 8
  %i.cx = or i32 %i.cw, %i.cv
  store i32 %i.cx, ptr %i.r, align 8
  %i.cy = zext nneg i32 %i.cp to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  store i8 1, ptr %.06396, align 4
  store i8 %i.cq, ptr %i.cs, align 4
  br label %bb.af

_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80: ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.06396, i64 8
  %i.dd = load i32, ptr %i.dc, align 4            ; 4 uses
  %i.de = icmp sgt i32 %i.dd, -1
  tail call void @llvm.assume(i1 %i.de)
  %.not93 = icmp eq i8 %i.ce, 1                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.06396, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !noalias !37 ; 3 uses
  %i.dh = ashr i32 %i.dg, 31
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl nuw i64 %i.di, 32
  %.sroa.2.sroa.3.0.insert.shift = select i1 %.not93, i64 0, i64 %i.dj
  %.sroa.2.sroa.0.0.insert.ext = zext i32 %i.dg to i64 ; 3 uses
  %.sroa.2.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.sroa.3.0.insert.shift, %.sroa.2.sroa.0.0.insert.ext ; 3 uses
  %i.dk = load i32, ptr %i.w, align 8
  %.not.i.i = icmp slt i32 %i.dd, %i.dk
  br i1 %.not.i.i, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80
  store i32 %i.dd, ptr %i.w, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit80, %bb.y
  %i.dl = sub nsw i32 0, %i.dd                    ; 3 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = add nsw i64 %i.dm, 128
  %i.do = icmp ult i64 %i.dn, 256                 ; 2 uses
  %i.dp = shl i32 %i.dl, 24
  %i.dq = or disjoint i32 %i.dp, 4521984
  %.sroa.036.3.insert.insert44.i = zext i32 %i.dq to i64
  %.sroa.036.3.insert.ext.i = zext i32 %i.dl to i64
  %.sroa.036.3.insert.shift.i = shl nuw nsw i64 %.sroa.036.3.insert.ext.i, 24
  %.sroa.036.3.insert.insert.i = or disjoint i64 %.sroa.036.3.insert.shift.i, 8716288
  %.sroa.036.0.i = select i1 %i.do, i64 %.sroa.036.3.insert.insert44.i, i64 %.sroa.036.3.insert.insert.i ; 4 uses
  %storemerge.i.i = select i1 %i.do, i64 2, i64 5
  %.fca.1.load.cast.i.i = inttoptr i64 %storemerge.i.i to ptr ; 4 uses
  br i1 %.not93, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i64 %.sroa.2.sroa.0.0.insert.ext, i32 noundef 4) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i
  %i.dr = add nsw i64 %.sroa.2.sroa.0.0.insert.insert, 2147483648
  %i.ds = icmp ult i64 %i.dr, 4294967296
  br i1 %i.ds, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i64 %.sroa.2.sroa.0.0.insert.ext, i32 noundef 8) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i.i = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10, i64 %.sroa.2.sroa.0.0.insert.insert, i32 noundef 4) #20
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 10, i32 noundef 8) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

bb.ae:                                            ; preds = %bb.ac
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_11Immediate64Ei(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 10, i64 %.sroa.2.sroa.0.0.insert.insert, i8 0, i32 noundef 8) #20
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.036.0.i, ptr nonnull %.fca.1.load.cast.i.i, i8 10, i32 noundef 8) #20
  br label %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit

_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit: ; preds = %bb.z, %bb.ab, %bb.ad, %bb.ae
  store i8 0, ptr %.06396, align 4
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %_ZNK2v88internal4wasm15LiftoffVarState8constantEv.exit, %_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_9WasmValueE.exit, %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit72, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %.06396, i64 12 ; 2 uses
  %.not64 = icmp eq ptr %i.dt, %i.x
  br i1 %.not64, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS1_15LiftoffRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i8 %1, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i8 %3, 1
  %..i = select i1 %i.c, i32 4, i32 8
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i32 noundef %..i) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = add nsw i8 %1, -16
  %i.e = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %2, -16
  %i.g = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.g)
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS0_11XMMRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.d, i8 %i.f, i8 noundef zeroext %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp slt i32 %1, %i.b
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit

_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit: ; preds = %bb.a, %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, 128
  %i.f = icmp ult i64 %i.e, 256                   ; 2 uses
  %i.g = shl i32 %i.c, 24
  %i.h = or disjoint i32 %i.g, 4521984
  %.sroa.027.3.insert.insert35 = zext i32 %i.h to i64
  %.sroa.027.3.insert.ext = zext i32 %i.c to i64
  %.sroa.027.3.insert.shift = shl nuw nsw i64 %.sroa.027.3.insert.ext, 24
  %.sroa.027.3.insert.insert = or disjoint i64 %.sroa.027.3.insert.shift, 8716288
  %.sroa.027.0 = select i1 %i.f, i64 %.sroa.027.3.insert.insert35, i64 %.sroa.027.3.insert.insert ; 8 uses
  %storemerge.i = select i1 %i.f, i64 2, i64 5
  %.fca.1.load.cast.i = inttoptr i64 %storemerge.i to ptr ; 8 uses
  switch i8 %3, label %bb.n [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.c:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.i = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.i)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i8 %2, i32 noundef 4) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.j = icmp samesign ult i8 %2, 16
  tail call void @llvm.assume(i1 %i.j)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i, i8 %2, i32 noundef 8) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit
  %i.k = add nsw i8 %2, -16                       ; 2 uses
  %i.l = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.n = and i32 %i.m, 32
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.k, i8 0, i64 %.sroa.027.0, ptr nonnull %.fca.1.load.cast.i) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm16LiftoffAssembler11SpillLocalsEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.al = getelementptr inbounds nuw i8, ptr %.010, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler17SpillAllRegistersEv(ptr noundef nonnull align 8 dereferenceable(824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8               ; 3 uses
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = icmp samesign ult i8 %i.f, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.j = zext nneg i8 %i.f to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  store i32 0, ptr %i.k, align 4
  store i8 -1, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i: ; preds = %bb.b, %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  %spec.select.i.i = icmp sgt i32 %i.m, -2
  tail call void @llvm.assume(i1 %spec.select.i.i)
  br i1 %i.n, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i
  store i32 -1, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8               ; 3 uses
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i8 %i.p, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.t = zext nneg i8 %i.p to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  store i32 0, ptr %i.u, align 4
  store i8 -1, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i, %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 680
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.v, i8 0, i64 100, i1 false)
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.013 = phi ptr [ %i.ae, %bb.f ], [ %i.b, %bb.a ] ; 6 uses
  %i.w = load i8, ptr %.013, align 4
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.013, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.013, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.z, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.ad)
  store i8 0, ptr %.013, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.013, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler13ClearRegisterENS0_8RegisterESt16initializer_listIPS3_ERNS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, ptr nofree readonly captures(address) %2, i64 %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %1, -1
  br i1 %i.d, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = zext nneg i8 %1 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.h = zext nneg i8 %1 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.k = shl nuw nsw i32 1, %i.f
  %i.l = xor i32 %i.k, -1
  %i.m = load i32, ptr %i.j, align 8
  %i.n = and i32 %i.m, %i.l
  store i32 %i.n, ptr %i.j, align 8
  store i8 -1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = icmp eq i8 %1, %i.p
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  %spec.select.i = icmp sgt i32 %i.s, -2
  tail call void @llvm.assume(i1 %spec.select.i)
  br i1 %i.t, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.r, align 4
  %i.u = icmp eq i8 %1, -1
  br i1 %i.u, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext nneg i8 %1 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.y = zext nneg i8 %1 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ab = shl nuw nsw i32 1, %i.w
  %i.ac = xor i32 %i.ab, -1
  %i.ad = load i32, ptr %i.aa, align 8
  %i.ae = and i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.aa, align 8
  store i8 -1, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit

bb.h:                                             ; preds = %bb.d
  %i.af = icmp samesign ult i8 %1, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext nneg i8 %1 to i32
  %i.aj = shl nuw nsw i32 1, %i.ai
  %i.ak = and i32 %i.ah, %i.aj
  %.not29 = icmp eq i32 %i.ak, 0
  br i1 %.not29, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm16LiftoffAssembler13SpillRegisterENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1)
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %3, 3
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not31 = icmp eq i64 %3, 0
  br i1 %.not31, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 680
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.p
  %.033 = phi ptr [ %2, %.lr.ph ], [ %i.bc, %bb.p ] ; 2 uses
  %.sroa.017.032 = phi i8 [ -1, %.lr.ph ], [ %.sroa.017.2, %bb.p ] ; 3 uses
  %i.an = load ptr, ptr %.033, align 8            ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %.not30 = icmp eq i8 %1, %i.ao
  br i1 %.not30, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp eq i8 %.sroa.017.032, -1
  br i1 %i.ap, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.sroa.02.0.copyload = load i32, ptr %4, align 4 ; 2 uses
  %i.aq = and i32 %.sroa.02.0.copyload, 37839
  %i.ar = xor i32 %i.aq, 37839                    ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.am, align 8
  %i.as = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.at = and i32 %i.ar, %i.as                    ; 2 uses
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.au = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.at, i1 true)
  %i.av = trunc nuw nsw i32 %i.au to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.ar)
  %.pre = load i32, ptr %4, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.m, %bb.n
  %i.ax = phi i32 [ %.sroa.02.0.copyload, %bb.m ], [ %.pre, %bb.n ]
  %.sroa.06.0.i.i = phi i8 [ %i.av, %bb.m ], [ %i.aw, %bb.n ] ; 4 uses
  %i.ay = zext nneg i8 %.sroa.06.0.i.i to i32
  %i.az = shl nuw nsw i32 1, %i.ay
  %i.ba = or i32 %i.az, %i.ax
  store i32 %i.ba, ptr %4, align 4
  %i.bb = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  tail call void @llvm.assume(i1 %i.bb)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 %1, i32 noundef 8) #20
  br label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit, %bb.k
  %.sroa.017.1 = phi i8 [ %.sroa.06.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ], [ %.sroa.017.032, %bb.k ] ; 2 uses
  store i8 %.sroa.017.1, ptr %i.an, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o
  %.sroa.017.2 = phi i8 [ %.sroa.017.032, %bb.j ], [ %.sroa.017.1, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.033, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bc, %i.al
  br i1 %.not, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit, label %bb.j

_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit: ; preds = %bb.p, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedMemStartRegisterEv.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc void @_ZN2v88internal4wasm16LiftoffAssembler13SpillRegisterENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.b = zext i8 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 12
  %i.m = trunc i64 %i.l to i32
  br label %.outer

.outer:                                           ; preds = %._crit_edge, %bb.a
  %.pre50.ph = phi ptr [ %.pre.pre, %._crit_edge ], [ %i.h, %bb.a ]
  %.030.in.ph = phi i32 [ %.030, %._crit_edge ], [ %i.m, %bb.a ]
  %.0.ph = phi i32 [ %i.y, %._crit_edge ], [ %i.d, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.030.in = phi i32 [ %.030.in.ph, %.outer ], [ %.030, %.backedge ]
  %.030 = add i32 %.030.in, -1                    ; 3 uses
  %i.n = zext i32 %.030 to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.pre50.ph, i64 %i.n ; 5 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %bb.c, label %.backedge

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.r, align 4
  %i.s = icmp eq i8 %.sroa.0.0.copyload.i, %1
  br i1 %i.s, label %bb.d, label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.b
  br label %bb.b, !llvm.loop !46

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.x = load i8, ptr %i.w, align 1
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.u, i8 %1, i8 noundef zeroext %i.x)
  store i8 0, ptr %i.o, align 4
  %i.y = add nsw i32 %.0.ph, -1                   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre.pre = load ptr, ptr %i.g, align 8
  br label %.outer, !llvm.loop !46

.critedge:                                        ; preds = %bb.d
  %i.aa = zext nneg i8 %1 to i32
  store i32 0, ptr %i.c, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ac = shl nuw i32 1, %i.aa                    ; 2 uses
  %i.ad = xor i32 %i.ac, -1
  %i.ae = load i32, ptr %i.ab, align 8
  %i.af = and i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, %i.ac
  store i32 %i.ai, ptr %i.ag, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler18PrepareBuiltinCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorESt16initializer_listINS1_15LiftoffVarStateEE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::LiftoffStackSlots", align 8 ; 10 uses
  %6 = alloca %"class.v8::internal::wasm::ParallelMove", align 8 ; 10 uses
  %7 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i8 0, i64 104, i1 false)
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  br label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit

_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i32 [ %i.m, %bb.b ], [ 32, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 352
  store i32 %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 0, ptr %7, align 4
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_121PrepareStackTransfersEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPKNS1_15LiftoffVarStateEPNS1_17LiftoffStackSlotsEPNS1_12ParallelMoveEPNS1_14LiftoffRegListE(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.q = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.q, %i.r
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g, %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8               ; 3 uses
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.v = icmp samesign ult i8 %i.t, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.x = zext nneg i8 %i.t to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x
  store i32 0, ptr %i.y, align 4
  store i8 -1, ptr %i.s, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i.i: ; preds = %bb.c, %._crit_edge.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  %spec.select.i.i.i = icmp sgt i32 %i.aa, -2
  call void @llvm.assume(i1 %spec.select.i.i.i)
  br i1 %i.ab, label %_ZN2v88internal4wasm16LiftoffAssembler17SpillAllRegistersEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i.i
  store i32 -1, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8             ; 3 uses
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %_ZN2v88internal4wasm16LiftoffAssembler17SpillAllRegistersEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp samesign ult i8 %i.ad, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.ah = zext nneg i8 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  store i32 0, ptr %i.ai, align 4
  store i8 -1, ptr %i.ac, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17SpillAllRegistersEv.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit, %bb.g
  %.013.i = phi ptr [ %i.ar, %bb.g ], [ %i.q, %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit ] ; 6 uses
  %i.aj = load i8, ptr %.013.i, align 4
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm17LiftoffStackSlots9ConstructEi:bb.a
  %i.ar = load ptr, ptr %i.k, align 8
  %i.as = load i32, ptr %i.aj, align 4
  %i.at = sub nsw i32 0, %i.as                    ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = add nsw i64 %i.au, 128
  %i.aw = icmp ult i64 %i.av, 256                 ; 2 uses
  %i.ax = shl i32 %i.at, 24
  %i.ay = or disjoint i32 %i.ax, 4521984
  %.sroa.082.3.insert.insert90 = zext i32 %i.ay to i64
  %.sroa.082.3.insert.ext = zext i32 %i.at to i64
  %.sroa.082.3.insert.shift = shl nuw nsw i64 %.sroa.082.3.insert.ext, 24
  %.sroa.082.3.insert.insert = or disjoint i64 %.sroa.082.3.insert.shift, 8716288
  %.sroa.082.0 = select i1 %i.aw, i64 %.sroa.082.3.insert.insert90, i64 %.sroa.082.3.insert.insert
  %storemerge.i47 = select i1 %i.aw, i64 2, i64 5
  %.fca.1.load.cast.i50 = inttoptr i64 %storemerge.i47 to ptr
  tail call void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, i64 %.sroa.082.0, ptr nonnull %.fca.1.load.cast.i50) #20
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.az = add nsw i32 %i.o, -8                    ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit54, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.k, align 8
  %.sroa.0.0.insert.ext.i53 = zext i32 %i.az to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.bb, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i53, i32 noundef 8) #20
  br label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit54

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit54: ; preds = %bb.h, %bb.i
  %i.bc = load ptr, ptr %i.k, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.038103, i64 12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sub nsw i32 0, %i.be                    ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i64 %i.bg, 128
  %i.bi = icmp ult i64 %i.bh, 256                 ; 2 uses
  %i.bj = shl i32 %i.bf, 24
  %i.bk = or disjoint i32 %i.bj, 4521984
  %.sroa.092.3.insert.insert100 = zext i32 %i.bk to i64
  %.sroa.092.3.insert.ext = zext i32 %i.bf to i64
  %.sroa.092.3.insert.shift = shl nuw nsw i64 %.sroa.092.3.insert.ext, 24
  %.sroa.092.3.insert.insert = or disjoint i64 %.sroa.092.3.insert.shift, 8716288
  %.sroa.092.0 = select i1 %i.bi, i64 %.sroa.092.3.insert.insert100, i64 %.sroa.092.3.insert.insert
  %storemerge.i55 = select i1 %i.bi, i64 2, i64 5
  %.fca.1.load.cast.i58 = inttoptr i64 %storemerge.i55 to ptr
  tail call void @_ZN2v88internal9Assembler5pushqENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(408) %i.bc, i64 %.sroa.092.0, ptr nonnull %.fca.1.load.cast.i58) #20
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %.038103, i64 1
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 5
  %.neg = select i1 %i.bn, i32 -16, i32 -8
  %i.bo = load ptr, ptr %i.k, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.038103, i64 4
  %.sroa.0.0.copyload.i = load i8, ptr %i.bp, align 4
  %i.bq = add i32 %.neg, %i.o
  tail call void @_ZN2v88internal4wasm7liftoff4pushEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS1_9ValueKindEi(ptr noundef %i.bo, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.bm, i32 noundef %i.bq)
  br label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.br = add nsw i32 %i.o, -8                    ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.k, align 8
  %.sroa.0.0.insert.ext.i61 = zext i32 %i.br to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %i.bt, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i61, i32 noundef 8) #20
  br label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit62

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit62: ; preds = %bb.k, %bb.l
  %i.bu = load ptr, ptr %i.k, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.038103, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %.sroa.0.0.insert.ext = zext i32 %i.bw to i64
  tail call void @_ZN2v88internal9Assembler5pushqENS0_9ImmediateE(ptr noundef nonnull align 8 dereferenceable(408) %i.bu, i64 %.sroa.0.0.insert.ext) #20
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit54, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit40, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit62, %bb.j, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.038103, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bx, %.pre105
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler11PrepareCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPNS0_8RegisterESB_(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i8 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::wasm::LiftoffStackSlots", align 8 ; 11 uses
  %6 = alloca %"class.v8::internal::wasm::ParallelMove", align 8 ; 16 uses
  %7 = alloca %"class.v8::internal::wasm::LiftoffRegList", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i8 0, i64 104, i1 false)
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  call void @llvm.assume(i1 %i.p)
  br label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit

_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %i.o, %bb.b ], [ 32, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 352
  store i32 %i.q, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 64, ptr %7, align 4
  %i.s = icmp eq i8 %4, -1
  br i1 %i.s, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.u = load i8, ptr %i.t, align 8               ; 2 uses
  %.not69 = icmp eq i8 %i.u, -1
  br i1 %.not69, label %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit, label %.thread

.thread:                                          ; preds = %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit, %bb.c
  %.sroa.061.067 = phi i8 [ %i.u, %bb.c ], [ %4, %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit ] ; 4 uses
  %.not70 = icmp eq i8 %.sroa.061.067, 6
  br i1 %.not70, label %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.v = icmp samesign ult i8 %.sroa.061.067, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 336
  store i32 64, ptr %i.w, align 8
  %i.x = zext nneg i8 %.sroa.061.067 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.0.0.insert.ext.i = zext nneg i8 %.sroa.061.067 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.0.0.insert.ext.i, 512
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.ab, align 4
  br label %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit

_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit: ; preds = %bb.d, %.thread, %bb.c
  %.sroa.061.068 = phi i1 [ true, %bb.c ], [ false, %.thread ], [ false, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = trunc i64 %i.ad to i32                  ; 6 uses
  %i.af = and i64 %i.b, 4294967295
  %.not = icmp eq i64 %i.af, 0                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = ptrtoint ptr %i.l to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 12
  %i.ak = sub i64 %i.aj, %i.b
  %i.al = and i64 %i.ak, 4294967295
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.al
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_121PrepareStackTransfersEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPKNS1_15LiftoffVarStateEPNS1_17LiftoffStackSlotsEPNS1_12ParallelMoveEPNS1_14LiftoffRegListE(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.am, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.014.0.copyload = load i8, ptr %3, align 1 ; 5 uses
  %i.an = icmp samesign ult i8 %.sroa.014.0.copyload, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i32, ptr %7, align 4               ; 2 uses
  %i.ap = zext nneg i8 %.sroa.014.0.copyload to i32
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.ao, %i.aq
  %.not71 = icmp eq i32 %i.ar, 0
  br i1 %.not71, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = and i32 %i.ao, 37839                    ; 2 uses
  %i.at = icmp eq i32 %i.as, 37839
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = xor i32 %i.as, 37839
  %i.av = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.au, i1 true) ; 3 uses
  %i.aw = trunc nuw nsw i32 %i.av to i8           ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 336 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = shl nuw nsw i32 1, %i.av                ; 2 uses
  %i.ba = and i32 %i.ay, %i.az
  %.not.i42 = icmp eq i32 %i.ba, 0
  br i1 %.not.i42, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.bb = or i32 %i.ay, %i.az
  store i32 %i.bb, ptr %i.ax, align 8
  %i.bc = zext nneg i8 %.sroa.014.0.copyload to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4
  %i.bg = zext nneg i32 %i.av to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %i.bg
  %.sroa.0.0.insert.ext.i43 = zext nneg i8 %.sroa.014.0.copyload to i16
  %.sroa.0.0.insert.insert.i44 = or disjoint i16 %.sroa.0.0.insert.ext.i43, 256
  store i16 %.sroa.0.0.insert.insert.i44, ptr %i.bh, align 2
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.e, align 8
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %_ZN2v88internal4wasm17LiftoffStackSlots3AddERKNS1_15LiftoffVarStateEi.exit, !prof !7

bb.l:                                             ; preds = %bb.k
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm17LiftoffStackSlots4SlotELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %5)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm17LiftoffStackSlots3AddERKNS1_15LiftoffVarStateEi.exit

_ZN2v88internal4wasm17LiftoffStackSlots3AddERKNS1_15LiftoffVarStateEi.exit: ; preds = %bb.k, %bb.l
  %i.bl = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bi, %bb.k ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.bm, ptr %i.d, align 8
  store i8 1, ptr %i.bl, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i8 %.sroa.014.0.copyload, ptr %.sroa.549.0..sroa_idx, align 4
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.650.0..sroa_idx, i8 0, i64 9, i1 false)
  store i32 %i.ae, ptr %i.bn, align 4
  %i.bo = add nsw i32 %i.ae, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i, %_ZN2v88internal4wasm17LiftoffStackSlots3AddERKNS1_15LiftoffVarStateEi.exit
  %.sink = phi i8 [ -1, %_ZN2v88internal4wasm17LiftoffStackSlots3AddERKNS1_15LiftoffVarStateEi.exit ], [ %i.aw, %bb.i ], [ %i.aw, %bb.j ]
  %.1.ph = phi i32 [ %i.bo, %_ZN2v88internal4wasm17LiftoffStackSlots3AddERKNS1_15LiftoffVarStateEi.exit ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ]
  store i8 %.sink, ptr %3, align 1
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.g, %bb.f
  %.1 = phi i32 [ %i.ae, %bb.f ], [ %i.ae, %bb.g ], [ %.1.ph, %.sink.split ] ; 2 uses
  %i.bp = load ptr, ptr %i.i, align 8             ; 2 uses
  %sext = shl i64 %i.b, 32
  %i.bq = ashr exact i64 %sext, 32
  %.idx.i = mul nsw i64 %i.bq, -12
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %.idx.i ; 3 uses
  br i1 %.not, label %_ZN2v88internal4wasm16LiftoffAssembler10DropValuesEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %.promoted.i = load i32, ptr %i.bt, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i, %.lr.ph.i
  %i.bu = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ch, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i ] ; 3 uses
  %.013.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.ci, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i ] ; 3 uses
  %i.bv = load i8, ptr %.013.i, align 4
  %i.bw = icmp eq i8 %i.bv, 1
  br i1 %i.bw, label %bb.o, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bx, align 4 ; 2 uses
  %i.by = zext i8 %.sroa.0.0.copyload.i.i to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.p, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cd = zext nneg i8 %.sroa.0.0.copyload.i.i to i32
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = xor i32 %i.ce, -1
  %i.cg = and i32 %i.bu, %i.cf                    ; 2 uses
  store i32 %i.cg, ptr %i.bt, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.ch = phi i32 [ %i.cg, %bb.p ], [ %i.bu, %bb.o ], [ %i.bu, %bb.n ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i, i64 12 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ci, %i.bp
  br i1 %.not.i46, label %_ZN2v88internal4wasm16LiftoffAssembler10DropValuesEi.exit, label %bb.n

_ZN2v88internal4wasm16LiftoffAssembler10DropValuesEi.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit.i, %bb.m
  store ptr %i.br, ptr %i.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8             ; 4 uses
  %i.cl = icmp eq i8 %i.ck, -1
  br i1 %i.cl, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10DropValuesEi.exit
  %i.cm = icmp samesign ult i8 %i.ck, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = zext nneg i8 %i.ck to i32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.cp = zext nneg i8 %i.ck to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  store i32 0, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.cs = shl nuw nsw i32 1, %i.cn
  %i.ct = xor i32 %i.cs, -1
  %i.cu = load i32, ptr %i.cr, align 8
  %i.cv = and i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %i.cr, align 8
  store i8 -1, ptr %i.cj, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i

_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i: ; preds = %bb.q, %_ZN2v88internal4wasm16LiftoffAssembler10DropValuesEi.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  %spec.select.i.i = icmp sgt i32 %i.cx, -2
  call void @llvm.assume(i1 %spec.select.i.i)
  br i1 %i.cy, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i
  store i32 -1, ptr %i.cw, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8             ; 4 uses
  %i.db = icmp eq i8 %i.da, -1
  br i1 %i.db, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = icmp samesign ult i8 %i.da, 16
  call void @llvm.assume(i1 %i.dc)
  %i.dd = zext nneg i8 %i.da to i32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.df = zext nneg i8 %i.da to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df
  store i32 0, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.di = shl nuw nsw i32 1, %i.dd
  %i.dj = xor i32 %i.di, -1
  %i.dk = load i32, ptr %i.dh, align 8
  %i.dl = and i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %i.dh, align 8
  store i8 -1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState27ClearCachedInstanceRegisterEv.exit.i, %bb.r, %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 684
  br label %bb.u

bb.u:                                             ; preds = %.backedge, %bb.t
  %.pn = phi ptr [ %i.br, %bb.t ], [ %.037, %.backedge ] ; 4 uses
  %.037 = getelementptr inbounds i8, ptr %.pn, i64 -12 ; 3 uses
  %i.dq = load i8, ptr %.037, align 4
  %i.dr = icmp eq i8 %i.dq, 1
  br i1 %i.dr, label %bb.v, label %.backedge

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds i8, ptr %.pn, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4            ; 2 uses
  %i.du = icmp sgt i32 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds i8, ptr %.pn, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds i8, ptr %.pn, i64 -11
  %i.dx = load i8, ptr %i.dw, align 1
  call void @_ZN2v88internal4wasm16LiftoffAssembler5SpillEiNS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef %i.dt, i8 %.sroa.0.0.copyload.i, i8 noundef zeroext %i.dx)
  %.sroa.0.0.copyload.i47 = load i8, ptr %i.dv, align 4 ; 2 uses
  %i.dy = zext i8 %.sroa.0.0.copyload.i47 to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.w, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit

bb.w:                                             ; preds = %bb.v
  %i.ed = zext nneg i8 %.sroa.0.0.copyload.i47 to i32
  %i.ee = shl nuw i32 1, %i.ed
  %i.ef = xor i32 %i.ee, -1
  %i.eg = load i32, ptr %i.dm, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm16LiftoffAssembler11PrepareCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorEPNS0_8RegisterESB_:bb.a
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit, %bb.u
  br label %bb.u, !llvm.loop !48

.loopexit:                                        ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState8dec_usedENS1_15LiftoffRegisterE.exit, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22ClearAllCacheRegistersEv.exit
  %i.ek = icmp sgt i32 %.1, 0
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  call void @_ZN2v88internal4wasm17LiftoffStackSlots9ConstructEi(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %.1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 336 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 340 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41

_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41: ; preds = %bb.aa, %bb.ab
  br i1 %.sroa.061.068, label %bb.ac, label %.thread82

.thread82:                                        ; preds = %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit41
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterENS0_7OperandEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 6, i64 4031053824, ptr nonnull inttoptr (i64 2 to ptr), i32 noundef 8) #20
  %.pre72 = load i32, ptr %i.el, align 8
  %i.er = icmp eq i32 %.pre72, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.er, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteMovesEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %bb.ae

bb.ae:                                            ; preds = %.thread82, %bb.ad, %bb.ac
  %i.es = load i32, ptr %i.eo, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call preserve_mostcc void @_ZN2v88internal4wasm12ParallelMove12ExecuteLoadsEv(ptr noundef nonnull align 8 dereferenceable(356) %6) #20
  br label %_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit

_ZN2v88internal4wasm12ParallelMove7ExecuteEv.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm17LiftoffStackSlots4SlotELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler10FinishCallEPKNS0_9SignatureINS1_9ValueKindEEEPNS0_8compiler14CallDescriptorE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %.not78 = icmp samesign eq i64 %i.c, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit: ; preds = %._crit_edge, %bb.b
  %i.w = phi i32 [ %i.u, %bb.b ], [ 32, %._crit_edge ]
  %i.x = shl nsw i32 %i.n, 3
  %i.y = add nsw i32 %i.w, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not.i = icmp slt i32 %i.y, %i.aa
  br i1 %.not.i, label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit
  store i32 %i.y, ptr %i.z, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit

_ZN2v88internal4wasm16LiftoffAssembler21RecordUsedSpillOffsetEi.exit: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit ] ; 3 uses
  %.04479 = phi ptr [ %i.b, %.lr.ph ], [ %i.ct, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit ] ; 2 uses
  %i.ab = load i8, ptr %.04479, align 1           ; 7 uses
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = icmp ult i8 %i.ab, 11
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = icmp ne i8 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = zext nneg i8 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.ah
  %i.aj = icmp eq i8 %i.ab, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.al, %indvars.iv
  br i1 %i.am, label %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #22
  unreachable

_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit: ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 4
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.i to i32 ; 3 uses
  %i.aq = and i32 %.sroa.0.0.extract.trunc, 1
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit
  %i.as = ashr exact i32 %.sroa.0.0.extract.trunc, 1 ; 2 uses
  switch i8 %i.af, label %bb.i [
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.at = trunc i32 %i.as to i8                   ; 2 uses
  %i.au = icmp samesign ult i8 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  br label %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit

bb.h:                                             ; preds = %bb.f
  %i.av = trunc i32 %i.as to i8                   ; 2 uses
  %i.aw = icmp samesign ult i8 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = or disjoint i8 %i.av, 16
  br label %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit: ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i = phi i8 [ %i.at, %bb.g ], [ %i.ax, %bb.h ] ; 5 uses
  br i1 %i.aj, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %i.ay = icmp samesign ult i8 %.sroa.0.0.i.i, 16
  tail call void @llvm.assume(i1 %i.ay)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.0.0.i.i, i8 %.sroa.0.0.i.i, i32 noundef 4) #20
  br label %bb.q

bb.k:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit
  %.sroa.0.0.copyload.i.i47 = load i32, ptr %i.ai, align 4
  %i.az = and i32 %.sroa.0.0.copyload.i.i47, -393222 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.f, align 8
  %i.ba = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.bb = and i32 %i.az, %i.ba                    ; 2 uses
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.bc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bb, i1 true)
  %i.bd = trunc nuw nsw i32 %i.bc to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.m:                                             ; preds = %bb.k
  %i.be = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.az)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.l, %bb.m
  %.sroa.06.0.i.i = phi i8 [ %i.bd, %bb.l ], [ %i.be, %bb.m ] ; 2 uses
  %i.bf = tail call noundef i32 @_ZNK2v88internal8compiler14CallDescriptor18GetOffsetToReturnsEv(ptr noundef nonnull align 8 dereferenceable(128) %2) #20
  %i.bg = ashr i32 %.sroa.0.0.extract.trunc, 1
  %i.bh = add i32 %i.bf, %i.bg                    ; 2 uses
  %i.bi = xor i32 %i.bh, -1
  %i.bj = shl nsw i32 %i.bi, 3                    ; 3 uses
  %i.bk = icmp eq i32 %i.bh, -1
  br i1 %i.bk, label %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.bl = sext i32 %i.bj to i64
  %i.bm = add nsw i64 %i.bl, 128
  %i.bn = icmp ult i64 %i.bm, 256
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = and i32 %i.bj, 248
  %.sroa.060.4.insert.ext68 = zext nneg i32 %i.bo to i64
  %.sroa.060.4.insert.shift69 = shl nuw nsw i64 %.sroa.060.4.insert.ext68, 32
  %.sroa.060.4.insert.insert71 = or disjoint i64 %.sroa.060.4.insert.shift69, 608436224
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit

bb.p:                                             ; preds = %bb.n
  %.sroa.060.4.insert.ext = zext i32 %i.bj to i64
  %.sroa.060.4.insert.shift = shl nuw i64 %.sroa.060.4.insert.ext, 32
  %.sroa.060.4.insert.insert = or disjoint i64 %.sroa.060.4.insert.shift, 612630528
  br label %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit

_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit, %bb.o, %bb.p
  %.sroa.060.0 = phi i64 [ %.sroa.060.4.insert.insert, %bb.p ], [ %.sroa.060.4.insert.insert71, %bb.o ], [ 604241920, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ]
  %.sroa.2.0.copyload.i = phi ptr [ inttoptr (i64 6 to ptr), %bb.p ], [ inttoptr (i64 3 to ptr), %bb.o ], [ inttoptr (i64 2 to ptr), %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ]
  tail call void @_ZN2v88internal4wasm7liftoff13LoadFromStackEPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterENS0_7OperandENS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %.sroa.060.0, ptr nonnull %.sroa.2.0.copyload.i, i8 noundef zeroext %i.ab)
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit, %bb.j, %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %.sroa.054.1 = phi i8 [ %.sroa.0.0.i.i, %bb.j ], [ %.sroa.0.0.i.i, %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit ], [ %.sroa.06.0.i.i, %_ZN2v88internal4wasm16LiftoffAssembler19LoadReturnStackSlotENS1_15LiftoffRegisterEiNS1_9ValueKindE.exit ] ; 3 uses
  %i.bp = zext nneg i8 %.sroa.054.1 to i32
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = load i32, ptr %i.f, align 8
  %i.bs = or i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.f, align 8
  %i.bt = zext nneg i8 %.sroa.054.1 to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.by = load ptr, ptr %i.j, align 8
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, -1
  tail call void @llvm.assume(i1 %i.cc)
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.r, %bb.q
  %i.cd = phi i32 [ %i.cb, %bb.r ], [ 32, %bb.q ] ; 2 uses
  %i.ce = add nsw i8 %i.ab, -9
  %i.cf = icmp ult i8 %i.ce, 2
  br i1 %i.cf, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.ac
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.cd, %i.ci
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.ck = add nuw i32 %i.cd, 15
  %i.cl = and i32 %i.ck, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i
  %.0.i.i.i = phi i32 [ %i.cl, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit3.i ], [ %i.cj, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i ]
  %i.cm = load ptr, ptr %i.k, align 8
  %i.cn = icmp eq ptr %i.bx, %i.cm
  br i1 %i.cn, label %bb.s, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !7

bb.s:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.g)
  %.pre.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i, %bb.s
  %i.co = phi ptr [ %.pre.i.i, %bb.s ], [ %i.bx, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindE.exit.i ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store ptr %i.cp, ptr %i.i, align 8
  store i8 1, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.ab, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i8 %.sroa.054.1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.0.i.i.i, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.04479, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ct, %i.d
  br i1 %.not, label %._crit_edge, label %bb.d
}

declare noundef i32 @_ZNK2v88internal8compiler14CallDescriptor18GetOffsetToReturnsEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler4MoveENS0_11XMMRegisterES3_NS1_9ValueKindE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 noundef zeroext %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32
  %.not.i.i14 = icmp eq i32 %i.b, 0               ; 3 uses
  switch i8 %3, label %bb.h [
    i8 3, label %bb.b
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %1, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 16, i8 %1, i8 %1, i8 %2, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 40, i8 %1, i8 0, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %1, i8 %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_11XMMRegisterES3_JEEEvT_T0_DpT1_.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler20ParallelRegisterMoveENS_4base6VectorIKNS2_25ParallelRegisterMoveTupleEEE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::wasm::ParallelMove", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit

_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.i, %bb.b ], [ 32, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i32 %i.k, ptr %i.l, align 8
  %.idx = mul nuw nsw i64 %2, 3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm12ParallelMoveC2EPNS1_16LiftoffAssemblerE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm12ParallelMove12MoveRegisterENS1_15LiftoffRegisterES3_NS1_9ValueKindE.exit
  %.pre = load i32, ptr %i.n, align 8
  %i.o = icmp eq i32 %.pre, 0
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm16LiftoffAssembler32MoveToReturnLocationsMultiReturnEPKNS0_9SignatureINS1_9ValueTypeEEEPNS0_8compiler14CallDescriptorE:bb.a
  %switch.offset.i82 = add nuw nsw i8 %switch.idx.cast.i81, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit83

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit83: ; preds = %bb.ad, %bb.ae, %.fold.split.i79, %.fold.split1.i77, %switch.lookup.i80
  %.0.i78 = phi i8 [ %i.dv, %bb.ae ], [ 0, %.fold.split1.i77 ], [ 12, %.fold.split.i79 ], [ 11, %bb.ad ], [ %switch.offset.i82, %switch.lookup.i80 ] ; 3 uses
  %i.dw = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.dx = zext nneg i8 %.0.i78 to i64
  %i.dy = icmp samesign ult i8 %.0.i78, 11
  %i.dz = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.dx
  %i.ea = icmp ne i8 %.0.i78, 0
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %.069122 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ef = add nuw i64 %.069122, 1                 ; 2 uses
  %i.eg = load i64, ptr %i.dw, align 8
  %i.eh = icmp ugt i64 %i.eg, %.069122
  br i1 %i.eh, label %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit86, label %bb.af, !prof !9

bb.af:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit83
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #22
  unreachable

_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit86: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit83
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.069122
  %.sroa.0.0.copyload.i.i84 = load i64, ptr %i.ek, align 4
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.i84 to i32 ; 2 uses
  %i.el = and i32 %.sroa.0.0.extract.trunc, 1
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ag, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.ag:                                            ; preds = %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit86
  %i.en = ashr exact i32 %.sroa.0.0.extract.trunc, 1 ; 2 uses
  call void @llvm.assume(i1 %i.dy)
  %i.eo = load i8, ptr %i.dz, align 1
  call void @llvm.assume(i1 %i.ea)
  switch i8 %i.eo, label %bb.aj [
    i8 0, label %bb.ah
    i8 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ep = trunc i32 %i.en to i8                   ; 2 uses
  %i.eq = icmp samesign ult i8 %i.ep, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit

bb.ai:                                            ; preds = %bb.ag
  %i.er = trunc i32 %i.en to i8                   ; 2 uses
  %i.es = icmp samesign ult i8 %i.er, 16
  call void @llvm.assume(i1 %i.es)
  %i.et = or disjoint i8 %i.er, 16
  br label %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit

bb.aj:                                            ; preds = %bb.ag
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit: ; preds = %bb.ah, %bb.ai
  %.sroa.0.0.i.i = phi i8 [ %i.ep, %bb.ah ], [ %i.et, %bb.ai ] ; 8 uses
  %i.eu = load i8, ptr %i.eb, align 4
  switch i8 %i.eu, label %bb.at [
    i8 1, label %bb.ak
    i8 0, label %bb.ap
  ]

bb.ak:                                            ; preds = %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %.sroa.0.0.copyload.i87 = load i8, ptr %i.ee, align 4 ; 3 uses
  %i.ev = icmp eq i8 %.sroa.0.0.i.i, %.sroa.0.0.copyload.i87
  br i1 %i.ev, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = load i8, ptr %i.ed, align 1             ; 2 uses
  %i.ex = load i32, ptr %i.az, align 8            ; 2 uses
  %i.ey = zext nneg i8 %.sroa.0.0.i.i to i32
  %i.ez = shl nuw i32 1, %i.ey                    ; 2 uses
  %i.fa = and i32 %i.ex, %i.ez
  %.not.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = icmp eq i8 %i.ew, 4
  br i1 %i.fb, label %bb.an, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.an:                                            ; preds = %bb.am
  %i.fc = zext nneg i8 %.sroa.0.0.i.i to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store i8 4, ptr %i.fe, align 1
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.ao:                                            ; preds = %bb.al
  %i.ff = or i32 %i.ex, %i.ez
  store i32 %i.ff, ptr %i.az, align 8
  %i.fg = zext i8 %.sroa.0.0.copyload.i87 to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fg ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4
  %i.fk = zext nneg i8 %.sroa.0.0.i.i to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.fk
  %.sroa.4.0.insert.ext.i = zext i8 %i.ew to i16
  %.sroa.4.0.insert.shift.i = shl nuw i16 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i90 = zext i8 %.sroa.0.0.copyload.i87 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i90
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.fl, align 2
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.ap:                                            ; preds = %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %i.fm = load i32, ptr %i.ec, align 4            ; 4 uses
  %i.fn = load i8, ptr %i.ed, align 1
  %i.fo = icmp sgt i32 %i.fm, 0
  call void @llvm.assume(i1 %i.fo)
  %i.fp = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.fq = zext nneg i8 %.sroa.0.0.i.i to i32
  %i.fr = shl nuw i32 1, %i.fq                    ; 2 uses
  %i.fs = and i32 %i.fp, %i.fr
  %.not.i91 = icmp eq i32 %i.fs, 0
  br i1 %.not.i91, label %bb.aq, label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ft = or i32 %i.fp, %i.fr
  store i32 %i.ft, ptr %i.ax, align 4
  %i.fu = load i32, ptr %i.l, align 8
  %i.fv = icmp sgt i32 %i.fm, %i.fu
  br i1 %i.fv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.fm, ptr %i.l, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.32.0.insert.ext.i.i = zext nneg i32 %i.fm to i64
  %.sroa.32.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.32.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.fn to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.2.0.insert.insert.i.i = or disjoint i64 %.sroa.32.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i, 2
  %i.fw = zext nneg i8 %.sroa.0.0.i.i to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.fw
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.fx, align 8
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

bb.at:                                            ; preds = %_ZN2v88internal4wasm15LiftoffRegister18from_external_codeENS1_8RegClassENS1_9ValueKindEi.exit
  %i.fy = load i8, ptr %i.ed, align 1             ; 2 uses
  %i.fz = load i32, ptr %i.ee, align 4
  %i.ga = zext nneg i8 %.sroa.0.0.i.i to i32
  %i.gb = shl nuw i32 1, %i.ga
  %i.gc = load i32, ptr %i.ax, align 4
  %i.gd = or i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.ax, align 4
  %i.ge = add i8 %i.fy, -1
  %i.gf = icmp ult i8 %i.ge, 2
  call void @llvm.assume(i1 %i.gf)
  %.sroa.34.0.insert.ext.i.i = zext i32 %i.fz to i64
  %.sroa.34.0.insert.shift.i.i = shl nuw i64 %.sroa.34.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i92 = zext nneg i8 %i.fy to i64
  %.sroa.2.0.insert.shift.i.i93 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i92, 8
  %.sroa.2.0.insert.insert.i.i94 = or disjoint i64 %.sroa.2.0.insert.shift.i.i93, %.sroa.34.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i95 = or disjoint i64 %.sroa.2.0.insert.insert.i.i94, 1
  %i.gg = zext nneg i8 %.sroa.0.0.i.i to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.gg
  store i64 %.sroa.0.0.insert.insert.i.i95, ptr %i.gh, align 8
  br label %_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit

_ZN2v88internal4wasm12ParallelMove16LoadIntoRegisterENS1_15LiftoffRegisterERKNS1_15LiftoffVarStateE.exit: ; preds = %bb.at, %bb.ak, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.as, %_ZNK2v88internal8compiler14CallDescriptor17GetReturnLocationEm.exit86
  %exitcond.not = icmp eq i64 %i.ef, %i.cq
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit76, !llvm.loop !52
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadOldFramePointerEv(ptr noundef nonnull align 8 dereferenceable(824) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %2 = alloca %"class.v8::internal::Label", align 4 ; 6 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 844), align 4, !range !49, !noundef !50
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.f

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i32 0, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i32 0, ptr %2, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.d, align 4
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 7, i64 4165271552, ptr nonnull inttoptr (i64 2 to ptr), i64 26, i32 noundef 8) #20
  call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 1) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.e, align 8
  %i.f = and i32 %.sroa.0.0.copyload.i.i.i, 37839 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 37839
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.g = xor i32 %i.f, 37839
  %i.h = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true)
  %i.i = trunc nuw nsw i32 %i.h to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.c:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  %i.j = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 37839)
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i = phi i8 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %i.k = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  call void @llvm.assume(i1 %i.k)
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.06.0.i.i, i8 5, i32 noundef 8) #20
  call void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1, i32 noundef 1) #20
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %2) #20
  %.sroa.07.0.copyload = load i32, ptr %i.e, align 8 ; 2 uses
  call void @_ZN2v88internal4wasm16LiftoffAssembler13PushRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %.sroa.07.0.copyload)
  call void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i32 noundef 1) #20
  %i.l = call i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() #20
  call void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 7, i64 %i.l) #20
  %i.m = call i64 @_ZN2v88internal17ExternalReference16wasm_load_old_fpEv() #20
  %i.n = call noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %i.m, i32 noundef 1, i32 noundef 1, ptr noundef null) #20 ; 0 uses
  %.not = icmp eq i8 %.sroa.06.0.i.i, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  call void @_ZN2v88internal9Assembler8emit_movENS0_8RegisterES2_i(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %.sroa.06.0.i.i, i8 0, i32 noundef 8) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  call void @_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %.sroa.07.0.copyload)
  call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.012.0 = phi i8 [ %.sroa.06.0.i.i, %bb.e ], [ 5, %bb.a ]
  ret i8 %.sroa.012.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc range(i8 0, 32) i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 6 uses
  %.not.i = icmp eq i8 %i.b, -1                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i8 %i.b, 16
  tail call void @llvm.assume(i1 %i.c)
  %i.d = zext nneg i8 %i.b to i32
  %i.e = shl nuw nsw i32 1, %i.d                  ; 2 uses
  %i.f = and i32 %i.e, %1
  %.not3.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i, label %bb.c, label %.thread.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.h = load i8, ptr %i.g, align 8               ; 4 uses
  %.not4.i = icmp eq i8 %i.h, -1
  br i1 %.not4.i, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit: ; preds = %bb.c
  %i.i = icmp samesign ult i8 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = zext nneg i8 %i.h to i32
  %i.k = shl nuw nsw i32 1, %i.j                  ; 2 uses
  %i.l = and i32 %i.k, %1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit
  br i1 %.not.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %.pre13 = zext nneg i8 %i.b to i32
  %.pre14 = shl nuw nsw i32 1, %.pre13            ; 2 uses
  %.pre16 = and i32 %.pre14, %1
  %i.m = icmp eq i32 %.pre16, 0
  %i.n = icmp samesign ult i8 %i.b, 16
  tail call void @llvm.assume(i1 %i.n)
  br i1 %i.m, label %.thread._crit_edge, label %.thread.thread

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 792
  %.sroa.04.0.copyload6.i.pre = load i8, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre = zext nneg i8 %.sroa.04.0.copyload6.i.pre to i32
  %.pre12 = shl nuw nsw i32 1, %.pre
  br label %bb.e

.thread.thread:                                   ; preds = %bb.b, %.thread
  %.pre-phi1523 = phi i32 [ %.pre14, %.thread ], [ %i.e, %bb.b ]
  store i8 -1, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit

bb.e:                                             ; preds = %.thread._crit_edge, %bb.d
  %.pre11.i.pre-phi = phi i32 [ %.pre12, %.thread._crit_edge ], [ %i.k, %bb.d ]
  %.sroa.04.0.copyload6.i = phi i8 [ %.sroa.04.0.copyload6.i.pre, %.thread._crit_edge ], [ %i.h, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i8 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 788
  store i32 -1, ptr %i.p, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit: ; preds = %.thread.thread, %bb.e
  %.pre-phi12.i = phi i32 [ %.pre11.i.pre-phi, %bb.e ], [ %.pre-phi1523, %.thread.thread ]
  %.sroa.04.0.i = phi i8 [ %.sroa.04.0.copyload6.i, %bb.e ], [ %i.b, %.thread.thread ] ; 3 uses
  %i.q = icmp samesign ult i8 %.sroa.04.0.i, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.s = zext nneg i8 %.sroa.04.0.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.v = xor i32 %.pre-phi12.i, -1
  %i.w = load i32, ptr %i.u, align 8
  %i.x = and i32 %i.w, %i.v
  store i32 %i.x, ptr %i.u, align 8
  br label %bb.g

_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10: ; preds = %bb.c, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 780 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 4
  %i.z = xor i32 %.sroa.0.0.copyload.i, -1
  %i.aa = and i32 %1, %i.z                        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit

bb.f:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10
  store i32 0, ptr %i.y, align 4
  br label %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10, %bb.f
  %.sroa.02.0.i = phi i32 [ %1, %bb.f ], [ %i.aa, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState21has_volatile_registerENS1_14LiftoffRegListE.exit.thread10 ] ; 2 uses
  %i.ac = icmp ne i32 %.sroa.02.0.i, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.02.0.i, i1 true)
  %i.ae = trunc nuw nsw i32 %i.ad to i8           ; 2 uses
  tail call preserve_mostcc void @_ZN2v88internal4wasm16LiftoffAssembler13SpillRegisterENS1_15LiftoffRegisterE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %i.ae)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit
  %.sroa.07.0 = phi i8 [ %.sroa.04.0.i, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState22take_volatile_registerENS1_14LiftoffRegListE.exit ], [ %i.ae, %_ZN2v88internal4wasm16LiftoffAssembler10CacheState15GetNextSpillRegENS1_14LiftoffRegListE.exit ]
  ret i8 %.sroa.07.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noundef i8 @_ZN2v88internal4wasm16LiftoffAssembler24SpillAdjacentFpRegistersENS1_14LiftoffRegListE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(824) %0, i32 %1) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden void @_ZN2v88internal4wasm16LiftoffAssembler14set_num_localsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(824) initializes((436, 440)) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 %1, ptr %i.a, align 4
  %i.b = icmp ugt i32 %1, 16
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal4wasmlsERSoNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2) local_unnamed_addr #0 {
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i8
  %.sroa.36.0.extract.shift = lshr i64 %1, 32     ; 4 uses
  %.sroa.36.sroa.0.0.extract.trunc = trunc i64 %.sroa.36.0.extract.shift to i8 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %1, 8
  %i.a = and i64 %.sroa.2.0.extract.shift, 255
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN2v88internal4wasm4nameENS1_9ValueKindE.kKindName, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #20
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %i.d) #20 ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 1) #20 ; 0 uses
  switch i8 %.sroa.0.0.extract.trunc, label %bb.d [
    i8 0, label %bb.a
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

bb.a:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 3) #20 ; 0 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, -75
  %i.o = or disjoint i32 %i.n, 8
  store i32 %i.o, ptr %i.l, align 8
  %i.p = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2) #20 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = and i32 %i.w, -75
  %i.y = or disjoint i32 %i.x, 2
  store i32 %i.y, ptr %i.v, align 8
  br label %bb.e

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = icmp ult i8 %.sroa.36.sroa.0.0.extract.trunc, 16
  br i1 %i.z, label %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i, label %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i

_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i: ; preds = %bb.b
  %i.aa = and i64 %.sroa.36.0.extract.shift, 15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %i.aa
  br label %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit

_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i: ; preds = %bb.b
  %i.ac = icmp slt i8 %.sroa.36.sroa.0.0.extract.trunc, 32
  tail call void @llvm.assume(i1 %i.ac)
  %sext = shl i64 %.sroa.36.0.extract.shift, 56
  %i.ad = ashr exact i64 %sext, 53
  %i.ae = getelementptr i8, ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -128
  br label %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i, %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i
  %.sink9.in.i = phi ptr [ %i.af, %_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_.exit.i ], [ %i.ab, %_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_.exit.i ]
  %.sink9.i = load ptr, ptr %.sink9.in.i, align 8 ; 2 uses
  %i.ag = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink9.i) #20
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sink9.i, i64 noundef %i.ag) #20 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.4, i64 noundef 1) #20 ; 0 uses
  %tr.sh.diff = trunc nuw i64 %.sroa.36.0.extract.shift to i32
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %tr.sh.diff) #20
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

bb.e:                                             ; preds = %bb.c, %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit, %bb.a
  %.0 = phi ptr [ %i.q, %bb.a ], [ %0, %_ZN2v88internal4wasmlsERSoNS1_15LiftoffRegisterE.exit ], [ %i.aj, %bb.c ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE(ptr noundef nonnull align 8 dereferenceable(408), i64 noundef, ptr) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436), i8, i16 noundef zeroext) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare void @_ZN2v88internal4wasm12ParallelMove15TransferToStackEiRKNS1_15LiftoffVarStateE(ptr noundef nonnull align 8 dereferenceable(356), i32 noundef, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffRegisterELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 8 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.k)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.m = sub nuw nsw i64 64, %i.l
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 9 uses
  %i.q = icmp eq ptr %i.d, %i.b
  br i1 %i.q, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffRegisterES4_ET0_T_S6_S5_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = sub i64 %i.c, %i.e                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  %i.t = sub i64 %i.r, %i.i
  %diff.check = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.s, 28
end_hunk_6
begin_hunk_7_@_ZSt22__final_insertion_sortIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_SD_T0_:bb.a

.lr.ph.i23:                                       ; preds = %.preheader.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i23
  %.019.i24 = phi ptr [ %.016.i22, %.lr.ph.i23 ], [ %.0.i29, %bb.p ] ; 7 uses
  %.pn18.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.019.i24, %bb.p ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 44
  %i.ac = load i32, ptr %i.ab, align 4            ; 4 uses
  %i.ad = load i32, ptr %i.aa, align 4
  %i.ae = icmp sgt i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %.019.i24, i64 24, i1 false)
  %i.af = ptrtoint ptr %.019.i24 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 24
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 48
  %.neg25.i35 = udiv exact i64 %i.ag, 24
  %.neg25.neg.i36 = sub nsw i64 0, %.neg25.i35
  %i.aj = getelementptr inbounds [24 x i8], ptr %i.ai, i64 %.neg25.neg.i36
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aj, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal4wasm17LiftoffStackSlots4SlotES5_ET0_T_S7_S6_.exit.i34

bb.m:                                             ; preds = %bb.k
  %i.ak = icmp eq i64 %i.ag, 24
  br i1 %i.ak, label %bb.n, label %_ZSt13move_backwardIPN2v88internal4wasm17LiftoffStackSlots4SlotES5_ET0_T_S7_S6_.exit.i34

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.al, ptr noundef nonnull align 4 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal4wasm17LiftoffStackSlots4SlotES5_ET0_T_S7_S6_.exit.i34

_ZSt13move_backwardIPN2v88internal4wasm17LiftoffStackSlots4SlotES5_ET0_T_S7_S6_.exit.i34: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.i.i21, ptr noundef nonnull align 4 dereferenceable(20) %.019.i24, i64 20, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.pn18.i25, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp sgt i32 %i.ac, %i.an
  br i1 %i.ao, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.o, %.lr.ph.i.i31
  %.0911.i.i32 = phi ptr [ %.0.i.i33, %.lr.ph.i.i31 ], [ %.019.i24, %bb.o ] ; 3 uses
  %.0.i.i33 = getelementptr inbounds i8, ptr %.0911.i.i32, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.0911.i.i32, ptr noundef nonnull align 4 dereferenceable(24) %.0.i.i33, i64 24, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.0911.i.i32, i64 -28
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp sgt i32 %i.ac, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_T0_.exit.i26, !llvm.loop !72

_ZSt25__unguarded_linear_insertIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.o
  %.09.lcssa.i.i27 = phi ptr [ %.019.i24, %bb.o ], [ %.0.i.i33, %.lr.ph.i.i31 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.09.lcssa.i.i27, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.i.i21, i64 20, i1 false)
  %.sroa.4.0..09.sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i27, i64 20
  store i32 %i.ac, ptr %.sroa.4.0..09.sroa_idx.i.i28, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i21)
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIPN2v88internal4wasm17LiftoffStackSlots4SlotES5_ET0_T_S7_S6_.exit.i34
  %.0.i29 = getelementptr inbounds nuw i8, ptr %.019.i24, i64 24 ; 2 uses
  %.not.i30 = icmp eq ptr %.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_SD_T0_.exit, label %bb.j, !llvm.loop !73

_ZSt26__unguarded_insertion_sortIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_SD_T0_.exit: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_T0_.exit.i14, %.preheader.i, %bb.i, %_ZSt16__insertion_sortIPN2v88internal4wasm17LiftoffStackSlots4SlotEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_15SortInPushOrderEvEUlRKS4_SA_E_EEEvT_SD_T0_.exit
  ret void
}

declare void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = shl nsw i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.k)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 2 uses
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = icmp ult i64 %spec.select.i.i, 1152921504606846976
  br i1 %i.o, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = shl nuw i64 12, %i.m
  %i.q = add nuw i64 %i.p, 4
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.r) #20
  %.pre.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.7) #22
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit
  %i.ac = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.z, %bb.f ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.f ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.08.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.07.i.i.i.i, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 12
  %i.ah = icmp eq ptr %i.af, %i.ad
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZSt18uninitialized_moveIPN2v88internal4wasm15LiftoffVarStateES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.f
  %i.ai = ptrtoint ptr %i.b to i64
  %i.aj = sub i64 %i.ai, %i.h
  %i.ak = shl nuw i64 1, %i.m
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
  store ptr %i.z, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aj
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.ak
  store ptr %i.am, ptr %i.e, align 8
  ret void
}

declare void @_ZN2v88internal9Assembler5movssENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler5movsdENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i8, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408), i8, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler3vpdEhNS0_11XMMRegisterES2_S2_(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i8, i8, i8) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler3jmpEPNS0_5LabelENS2_8DistanceE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler13PushRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 37839                        ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.021.044 = phi i32 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.021.044, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i32 %i.c to i8
  tail call void @_ZN2v88internal9Assembler5pushqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.d) #20
  %i.e = shl nuw nsw i32 1, %i.c
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %.sroa.021.044, %i.f             ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = and i32 %1, 16711680                     ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit

_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit: ; preds = %._crit_edge
  %i.j = tail call noundef range(i32 1, 9) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = shl nuw nsw i32 %i.j, 4
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.k to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 5, i8 4, i64 %.sroa.0.0.insert.ext.i, i32 noundef 8) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit
  %.046 = phi i32 [ 0, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit ], [ %i.y, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit ] ; 6 uses
  %.sroa.015.045 = phi i32 [ %i.i, %_ZN2v88internal14MacroAssembler18AllocateStackSpaceEi.exit ], [ %i.x, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit ] ; 2 uses
  %i.l = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.015.045, i1 true) ; 2 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = icmp eq i32 %.046, 0
  br i1 %i.n, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %.046 to i64
  %i.p = add nsw i64 %i.o, 128
  %i.q = icmp ult i64 %i.p, 256
  br i1 %i.q, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.7.sroa.4.0.extract.shift = and i32 %.046, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.c, %bb.b, %bb.d
  %.sroa.7.sroa.0.0 = phi i32 [ %.046, %bb.d ], [ 0, %bb.b ], [ %.046, %bb.c ]
  %.sroa.7.sroa.4.sroa.0.0 = phi i32 [ %.sroa.7.sroa.4.0.extract.shift, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.sroa.3.0 = phi i64 [ 8650752, %bb.d ], [ 262144, %bb.b ], [ 4456448, %bb.c ]
  %i.r = phi ptr [ inttoptr (i64 6 to ptr), %bb.d ], [ inttoptr (i64 2 to ptr), %bb.b ], [ inttoptr (i64 3 to ptr), %bb.c ] ; 2 uses
  %i.s = add nsw i8 %i.m, -16                     ; 2 uses
  %.sroa.7.sroa.0.0.insert.ext = and i32 %.sroa.7.sroa.0.0, 240
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.sroa.4.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.sroa.0.0.insert.insert to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, 603979776 ; 2 uses
  %i.t = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.u = and i32 %i.t, 32
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.r, i8 %i.s) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.f:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.r, i8 %i.s) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.e, %bb.f
  %i.v = shl nuw nsw i32 1, %i.l
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.sroa.015.045, %i.w             ; 2 uses
  %i.y = add i32 %.046, 16
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %.loopexit, label %bb.b, !llvm.loop !77

.loopexit:                                        ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit, %._crit_edge
  ret void
}

declare void @_ZN2v88internal14MacroAssembler20PrepareCallCFunctionEi(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef) local_unnamed_addr #6

declare void @_ZN2v88internal14MacroAssembler11LoadAddressENS0_8RegisterENS0_17ExternalReferenceE(ptr noundef nonnull align 8 dereferenceable(436), i8, i64) local_unnamed_addr #6

declare i64 @_ZN2v88internal17ExternalReference15isolate_addressEv() local_unnamed_addr #6

declare noundef i32 @_ZN2v88internal14MacroAssembler13CallCFunctionENS0_17ExternalReferenceEi19SetIsolateDataSlotsPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(436), i64, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @_ZN2v88internal17ExternalReference16wasm_load_old_fpEv() local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler12PopRegistersENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = and i32 %1, 16711680                     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  %.045 = phi i32 [ %i.p, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit ], [ 0, %bb.a ] ; 6 uses
  %.sroa.021.044 = phi i32 [ %i.o, %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.021.044, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i32 %i.c to i8
  %i.e = add nsw i8 %i.d, -16                     ; 2 uses
  %i.f = icmp eq i32 %.045, 0
  br i1 %i.f, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = sext i32 %.045 to i64
  %i.h = add nsw i64 %i.g, 128
  %i.i = icmp ult i64 %i.h, 256
  br i1 %i.i, label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.sroa.4.0.extract.shift = and i32 %.045, -256
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit:   ; preds = %bb.b, %.lr.ph, %bb.c
  %.sroa.7.sroa.0.0 = phi i32 [ %.045, %bb.c ], [ 0, %.lr.ph ], [ %.045, %bb.b ]
  %.sroa.7.sroa.4.sroa.0.0 = phi i32 [ %.sroa.7.sroa.4.0.extract.shift, %bb.c ], [ 0, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.3.0 = phi i64 [ 8650752, %bb.c ], [ 262144, %.lr.ph ], [ 4456448, %bb.b ]
  %i.j = phi ptr [ inttoptr (i64 6 to ptr), %bb.c ], [ inttoptr (i64 2 to ptr), %.lr.ph ], [ inttoptr (i64 3 to ptr), %bb.b ] ; 2 uses
  %.sroa.7.sroa.0.0.insert.ext = and i32 %.sroa.7.sroa.0.0, 240
  %.sroa.7.sroa.0.0.insert.insert = or disjoint i32 %.sroa.7.sroa.4.sroa.0.0, %.sroa.7.sroa.0.0.insert.ext
  %.sroa.7.0.insert.ext = zext i32 %.sroa.7.sroa.0.0.insert.insert to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.3.0
  %.sroa.3.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, 603979776 ; 2 uses
  %i.k = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.l = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.e, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.j) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit
  tail call void @_ZN2v88internal9Assembler6movupsENS0_11XMMRegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 %i.e, i64 %.sroa.3.0.insert.insert, ptr nonnull %i.j) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit

_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit: ; preds = %bb.d, %bb.e
  %i.m = shl nuw nsw i32 1, %i.c
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %.sroa.021.044, %i.n             ; 2 uses
  %i.p = add i32 %.045, 16                        ; 3 uses
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZN2v88internal24SharedMacroAssemblerBase6MovdquINS0_11XMMRegisterENS0_7OperandEJEEEvT_T0_DpT1_.exit
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %.sroa.018.0.insert.ext = zext i32 %i.p to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext 0, i8 4, i64 %.sroa.018.0.insert.ext, i32 noundef 8) #20
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.f, %._crit_edge
  %i.r = and i32 %1, 37839                        ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge.thread, %.lr.ph48
  %.sroa.015.046 = phi i32 [ %i.z, %.lr.ph48 ], [ %i.r, %._crit_edge.thread ] ; 2 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.015.046, i1 true)
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = xor i8 %i.u, 31                          ; 2 uses
  tail call void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.v) #20
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 1, %i.w
  %i.y = xor i32 %i.x, -1
  %i.z = and i32 %.sroa.015.046, %i.y             ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %._crit_edge49, label %.lr.ph48, !llvm.loop !79

._crit_edge49:                                    ; preds = %.lr.ph48, %._crit_edge.thread
  ret void
}

declare void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_7OperandENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(408), i8 noundef zeroext, i64, ptr, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #16

declare void @_ZN2v88internal9Assembler4popqENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i8) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7liftoff13StoreToMemoryEPNS1_16LiftoffAssemblerENS0_7OperandENS1_15LiftoffRegisterENS1_9ValueKindE(ptr noundef %0, i64 %1, ptr %2, i8 %3, i8 noundef zeroext %4) local_unnamed_addr #5 comdat {
bb.a:
  switch i8 %4, label %bb.n [
    i8 7, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.a)
  tail call void @_ZN2v88internal9Assembler4movwENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 %3) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.b)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 %3, i32 noundef 4) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = icmp samesign ult i8 %3, 16
  tail call void @llvm.assume(i1 %i.c)
  tail call void @_ZN2v88internal9Assembler8emit_movENS0_7OperandENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(408) %0, i64 %1, ptr %2, i8 %3, i32 noundef 8) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = add nsw i8 %3, -16                       ; 2 uses
  %i.e = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.g = and i32 %i.f, 32
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler3vssEhNS0_11XMMRegisterES2_NS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.d, i8 0, i64 %1, ptr %2) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal9Assembler5movssENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.d) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.h:                                             ; preds = %bb.a
  %i.h = add nsw i8 %3, -16                       ; 2 uses
  %i.i = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.i)
  %i.j = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.k = and i32 %i.j, 32
  %.not.i.i28 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_NS0_7OperandENS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(436) %0, i8 noundef zeroext 17, i8 %i.h, i8 0, i64 %1, ptr %2, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 5) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal9Assembler5movsdENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.h) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.k:                                             ; preds = %bb.a
  %i.l = add nsw i8 %3, -16                       ; 2 uses
  %i.m = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.m)
  %i.n = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.o = and i32 %i.n, 32
  %.not.i.i29 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler7vmovdquENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.l) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal9Assembler6movupsENS0_7OperandENS0_11XMMRegisterE(ptr noundef nonnull align 8 dereferenceable(436) %0, i64 %1, ptr %2, i8 %i.l) #20
  br label %_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22
  unreachable

_ZN2v88internal24SharedMacroAssemblerBase5MovssINS0_7OperandENS0_11XMMRegisterEJEEEvT_T0_DpT1_.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN2v88internal9Assembler4movwENS0_7OperandENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(408), i64, ptr, i8) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 2
  %i.s = add nuw i64 %i.r, 4
  %i.t = and i64 %i.s, -8                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ugt i64 %i.t, %i.y
  br i1 %i.z, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.t) #20
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.aa = phi i64 [ %.pre.i.i, %bb.d ], [ %i.x, %bb.c ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = add i64 %i.aa, %i.t
  store i64 %i.ac, ptr %i.w, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.g
  store ptr %i.ad, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit
  %i.ae = phi ptr [ %.pre, %bb.e ], [ %i.ab, %_ZN2v88internal4Zone13AllocateArrayIiA_iEEPT_m.exit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o
  store ptr %i.af, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

end_hunk_7
