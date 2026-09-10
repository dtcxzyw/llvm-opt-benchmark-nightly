Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/compile?download=true
inline.NumInlined: 1004
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3re28Compiler9AllocInstEi:bb.a
bb.i:                                             ; preds = %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit, %bb.d
  %.pre-phi = phi i32 [ %.pre19, %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit ], [ %i.f, %bb.d ]
  %i.aj = phi i32 [ %.pre, %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit ], [ %i.e, %bb.d ]
  store i32 %.pre-phi, ptr %i.d, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.aj, %bb.i ]
  ret i32 %.0
}

declare void @_ZN3re24Prog4Inst8InitFailEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !71
  %i.g = and i64 %i.f, 1                          ; 2 uses
  %i.h = sub nuw nsw i64 -8, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = add i64 %i.b, 31
  %i.k = shl i64 %i.b, 4
  %i.l = add i64 %i.j, %i.k
  %i.m = add i64 %i.l, %i.g
  %i.n = and i64 %i.m, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE15destructor_implEv.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEE15destructor_implEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re28CompilerD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3re28CompilerE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3re24ProgD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %i.b) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 432) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i64, ptr %i.d, align 8, !tbaa !69   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = and i64 %i.j, 1                          ; 2 uses
  %i.l = sub nuw nsw i64 -8, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  %i.n = add i64 %i.e, 31
  %i.o = shl i64 %i.e, 4
  %i.p = add i64 %i.n, %i.o
  %i.q = add i64 %i.p, %i.k
  %i.r = and i64 %i.q, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #31
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEED2Ev.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEED2Ev.exit: ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #31
  br label %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit

_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit:        ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyImiEENS0_13hash_internal4HashImEESt8equal_toImESaISt4pairIKmiEEED2Ev.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3re26Regexp6WalkerINS_4FragEEE, i64 16), ptr %0, align 8, !tbaa !14
  invoke void @_ZN3re26Regexp6WalkerINS_4FragEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.f unwind label %bb.h, !inline_history !148

bb.f:                                             ; preds = %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN3re26Regexp6WalkerINS_4FragEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = icmp ult ptr %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ag = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !75
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef 504) #31, !inline_history !148
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ai = icmp ult ptr %.06.i.i.i.i.i, %i.ad
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !72
  br label %_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, %bb.g
  %i.aj = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i ], [ %i.z, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !76
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #31, !inline_history !148
  br label %_ZN3re26Regexp6WalkerINS_4FragEED2Ev.exit

bb.h:                                             ; preds = %_ZN3re28PODArrayINS_4Prog4InstEED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #34, !inline_history !148
  unreachable

_ZN3re26Regexp6WalkerINS_4FragEED2Ev.exit:        ; preds = %bb.f, %_ZNSt11_Deque_baseIN3re29WalkStateINS0_4FragEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3re24ProgD1Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3re28CompilerD0Ev(ptr noundef nonnull align 8 dereferenceable(204) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN3re28CompilerD1Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i64 } @_ZN3re28Compiler7NoMatchEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(204) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %1 = alloca %"struct.re2::Frag", align 8        ; 5 uses
  store i32 0, ptr %1, align 8, !tbaa !31
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i64 0, ptr %.4..4..4..sroa_idx, align 4
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 0, ptr %.12..12..12..sroa_idx, align 4, !tbaa !32
  %.0..0..0..fca.0.load = load i64, ptr %1, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0..0..0..fca.0.load, 0
  %.8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.8..8..8..fca.1.load = load i64, ptr %.8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.8..8..8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_ZN3re28Compiler3CatENS_4FragES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #9 align 2 {
bb.a:
  %5 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %6 = alloca %"struct.re2::Frag", align 8        ; 11 uses
  %7 = alloca %"struct.re2::Frag", align 8        ; 5 uses
  %8 = alloca %"struct.re2::Frag", align 8        ; 5 uses
  store i64 %1, ptr %7, align 8
  %.8..8..8..8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.8..8..8..8..sroa_idx82, align 8
  store i64 %3, ptr %8, align 8
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %.8..8..8..8..sroa_idx, align 8
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %3, 4294967295
  %i.d = icmp eq i64 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  %i.e = trunc i64 %1 to i32                      ; 4 uses
  %i.f = lshr i64 %1, 32
  %i.g = trunc nuw i64 %i.f to i32
  %i.h = trunc i64 %3 to i32                      ; 5 uses
  %i.i = lshr i64 %2, 32                          ; 2 uses
  %i.j = trunc i64 %i.i to i8
  %i.k = lshr i64 %4, 32                          ; 2 uses
  %i.l = trunc i64 %i.k to i8
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8, !tbaa !31
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %.12..12..12..12..12..sroa_idx, align 4, !tbaa !32
  %.0..0..0..0..0..fca.0.load.i = load i64, ptr %5, align 8
  %.8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..fca.1.load.i = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.0..0..0..0..0..fca.0.load.i, ptr %6, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i to i40
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i40 %.sroa.2.0.extract.trunc, ptr %.8..8..8..sroa_idx, align 8
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %sext = shl i64 %1, 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 4 uses
  %i.o = ashr exact i64 %sext, 29
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !78   ; 2 uses
  %i.r = and i32 %i.q, 7
  %i.s = icmp eq i32 %i.r, 6
  br i1 %i.s, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.t = shl i32 %i.e, 1
  %i.u = icmp eq i32 %i.t, %i.g
  %i.v = icmp ult i32 %i.q, 16
  %or.cond63 = and i1 %i.v, %i.u
  br i1 %or.cond63, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %.4..4..4..4..sroa_idx81 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.4..4..4..4..sroa.04.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx81, align 4
  %.sroa.0.0.extract.trunc.i = trunc i64 %.4..4..4..4..sroa.04.0.copyload to i32 ; 2 uses
  %.not9.i = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  br i1 %.not9.i, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.w = shl i32 %i.h, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.0.010.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.i ] ; 2 uses
  %i.x = lshr i32 %.sroa.0.010.i, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.y ; 3 uses
  %i.aa = and i32 %.sroa.0.010.i, 1
  %.not8.i = icmp eq i32 %i.aa, 0
  br i1 %.not8.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !79
  store i32 %i.h, ptr %i.ab, align 4, !tbaa !79
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !78  ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = and i32 %i.ad, 15
  %i.ag = or disjoint i32 %i.af, %i.w
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.1.i = phi i32 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit, label %bb.f, !llvm.loop !2

_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit: ; preds = %bb.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !81
  br label %bb.u

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !58, !range !64, !noundef !65
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.4..4..4..4..sroa_idx77 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.4..4..4..4..sroa.03.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx77, align 4
  %.sroa.0.0.extract.trunc.i33 = trunc i64 %.4..4..4..4..sroa.03.0.copyload to i32 ; 2 uses
  %.not9.i34 = icmp eq i32 %.sroa.0.0.extract.trunc.i33, 0
  br i1 %.not9.i34, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit40, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.k
  %i.ak = shl i32 %i.e, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i35
  %.sroa.0.010.i36 = phi i32 [ %.sroa.0.0.extract.trunc.i33, %.lr.ph.i35 ], [ %.sroa.0.1.i38, %bb.o ] ; 2 uses
  %i.al = lshr i32 %.sroa.0.010.i36, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.am ; 3 uses
  %i.ao = and i32 %.sroa.0.010.i36, 1
  %.not8.i37 = icmp eq i32 %i.ao, 0
  br i1 %.not8.i37, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !79
  store i32 %i.e, ptr %i.ap, align 4, !tbaa !79
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !78 ; 2 uses
  %i.as = lshr i32 %i.ar, 4
  %i.at = and i32 %i.ar, 15
  %i.au = or disjoint i32 %i.at, %i.ak
  store i32 %i.au, ptr %i.an, align 4, !tbaa !78
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.1.i38 = phi i32 [ %i.aq, %bb.m ], [ %i.as, %bb.n ] ; 2 uses
  %.not.i39 = icmp eq i32 %.sroa.0.1.i38, 0
  br i1 %.not.i39, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit40, label %bb.l, !llvm.loop !2

_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit40: ; preds = %bb.o, %bb.k
  %.4..4..4..4..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.4..4..4..4..sroa.02.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx79, align 4
  %9 = trunc i64 %i.k to i1
  %i.av = and i8 %i.j, 1
  %10 = select i1 %9, i8 %i.av, i8 0
  store i32 %i.h, ptr %6, align 8, !tbaa !31
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 %.4..4..4..4..sroa.02.0.copyload, ptr %.4..4..4..sroa_idx, align 4
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %10, ptr %.12..12..12..sroa_idx, align 4, !tbaa !32
  br label %bb.u

bb.p:                                             ; preds = %bb.j
  %.4..4..4..4..sroa_idx80 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.4..4..4..4..sroa.01.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx80, align 4
  %.sroa.0.0.extract.trunc.i41 = trunc i64 %.4..4..4..4..sroa.01.0.copyload to i32 ; 2 uses
  %.not9.i42 = icmp eq i32 %.sroa.0.0.extract.trunc.i41, 0
  br i1 %.not9.i42, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit48, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.p
  %i.aw = shl i32 %i.h, 4
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph.i43
  %.sroa.0.010.i44 = phi i32 [ %.sroa.0.0.extract.trunc.i41, %.lr.ph.i43 ], [ %.sroa.0.1.i46, %bb.t ] ; 2 uses
  %i.ax = lshr i32 %.sroa.0.010.i44, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ay ; 3 uses
  %i.ba = and i32 %.sroa.0.010.i44, 1
  %.not8.i45 = icmp eq i32 %i.ba, 0
  br i1 %.not8.i45, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !79
  store i32 %i.h, ptr %i.bb, align 4, !tbaa !79
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !78 ; 2 uses
  %i.be = lshr i32 %i.bd, 4
  %i.bf = and i32 %i.bd, 15
  %i.bg = or disjoint i32 %i.bf, %i.aw
  store i32 %i.bg, ptr %i.az, align 4, !tbaa !78
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.1.i46 = phi i32 [ %i.bc, %bb.r ], [ %i.be, %bb.s ] ; 2 uses
  %.not.i47 = icmp eq i32 %.sroa.0.1.i46, 0
  br i1 %.not.i47, label %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit48, label %bb.q, !llvm.loop !2

_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit48: ; preds = %bb.t, %bb.p
  %.4..4..4..4..sroa_idx78 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.4..4..4..4..sroa.0.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx78, align 4
  %11 = trunc i64 %i.i to i1
  %i.bh = and i8 %i.l, 1
  %12 = select i1 %11, i8 %i.bh, i8 0
  store i32 %i.e, ptr %6, align 8, !tbaa !31
  %.4..4..4..sroa_idx83 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 %.4..4..4..4..sroa.0.0.copyload, ptr %.4..4..4..sroa_idx83, align 4
  %.12..12..12..sroa_idx84 = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %12, ptr %.12..12..12..sroa_idx84, align 4, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit, %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit40, %_ZN3re29PatchList5PatchEPNS_4Prog4InstES0_j.exit48, %bb.b
  %.0..0..0..fca.0.load = load i64, ptr %6, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0..0..0..fca.0.load, 0
  %.8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.8..8..8..fca.1.load = load i64, ptr %.8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.8..8..8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN3re28Compiler3AltENS_4FragES1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %6 = alloca %"struct.re2::Frag", align 8        ; 9 uses
  %7 = alloca %"struct.re2::Frag", align 8        ; 4 uses
  %8 = alloca %"struct.re2::Frag", align 8        ; 4 uses
  store i64 %1, ptr %7, align 8
  %.8..8..8..8..sroa_idx30 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %.8..8..8..8..sroa_idx30, align 8
  store i64 %3, ptr %8, align 8
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %.8..8..8..8..sroa_idx, align 8
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 0
  %i.c = trunc i64 %1 to i32
  %i.d = trunc i64 %3 to i32
  %i.e = lshr i64 %4, 32
  %i.f = trunc i64 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !81
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.g = and i64 %3, 4294967295
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !81
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 3 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8, !tbaa !31
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %.12..12..12..12..12..sroa_idx, align 4, !tbaa !32
  %.0..0..0..0..0..fca.0.load.i = load i64, ptr %5, align 8
  %.8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..fca.1.load.i = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.0..0..0..0..0..fca.0.load.i, ptr %6, align 8
  %.sroa.2.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i to i40
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i40 %.sroa.2.0.extract.trunc, ptr %.8..8..8..sroa_idx, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  tail call void @_ZN3re24Prog4Inst7InitAltEjj(ptr noundef nonnull align 4 dereferenceable(8) %i.n, i32 noundef %i.c, i32 noundef %i.d)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !62
  %.4..4..4..4..sroa_idx29 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.4..4..4..4..sroa.01.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx29, align 4 ; 4 uses
  %.4..4..4..4..sroa_idx28 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.4..4..4..4..sroa.0.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx28, align 4 ; 5 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.4..4..4..4..sroa.0.0.copyload to i32 ; 3 uses
  %i.p = and i64 %.4..4..4..4..sroa.01.0.copyload, 4294967295 ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge, label %bb.h

._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge: ; preds = %bb.g
  %.pre = and i64 %.4..4..4..4..sroa.0.0.copyload, 4294967295
  br label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit

bb.h:                                             ; preds = %bb.g
  %i.r = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
  br i1 %i.r, label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.4..4..4..4..sroa.01.0.copyload, 33
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.s ; 3 uses
  %i.u = and i64 %.4..4..4..4..sroa.01.0.copyload, 4294967296
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.v, align 4, !tbaa !79
  br label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit

bb.k:                                             ; preds = %bb.i
  %i.w = shl i32 %.sroa.0.0.extract.trunc.i, 4
  %i.x = load i32, ptr %i.t, align 4, !tbaa !78
  %i.y = and i32 %i.x, 15
  %i.z = or disjoint i32 %i.y, %i.w
  store i32 %i.z, ptr %i.t, align 4, !tbaa !78
  br label %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit

_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit: ; preds = %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge, %bb.h, %bb.j, %bb.k
  %.sroa.08.0.insert.ext.i.pre-phi = phi i64 [ %.pre, %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge ], [ %i.p, %bb.h ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  %.sroa.49.0.in.i = phi i64 [ %.4..4..4..4..sroa.0.0.copyload, %._ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit_crit_edge ], [ %.4..4..4..4..sroa.01.0.copyload, %bb.h ], [ %.4..4..4..4..sroa.0.0.copyload, %bb.j ], [ %.4..4..4..4..sroa.0.0.copyload, %bb.k ]
  %.sroa.49.0.i = and i64 %.sroa.49.0.in.i, -4294967296
  %.sroa.08.0.insert.insert.i = or disjoint i64 %.sroa.49.0.i, %.sroa.08.0.insert.ext.i.pre-phi
  %i.aa = and i64 %2, 4294967296
  %.not = icmp eq i64 %i.aa, 0
  %i.ab = and i8 %i.f, 1
  %i.ac = select i1 %.not, i8 %i.ab, i8 1
  store i32 %i.i, ptr %6, align 8, !tbaa !31
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i64 %.sroa.08.0.insert.insert.i, ptr %.4..4..4..sroa_idx, align 4
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %i.ac, ptr %.12..12..12..sroa_idx, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %_ZN3re29PatchList6AppendEPNS_4Prog4InstES0_S0_.exit, %bb.d, %bb.b
  %.0..0..0..fca.0.load = load i64, ptr %6, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.0..0..0..fca.0.load, 0
  %.8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.8..8..8..fca.1.load = load i64, ptr %.8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.8..8..8..fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZN3re24Prog4Inst7InitAltEjj(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN3re28Compiler4PlusENS_4FragEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, i64 %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.re2::Frag", align 8        ; 7 uses
  %5 = alloca %"struct.re2::Frag", align 8        ; 6 uses
  %6 = alloca %"struct.re2::Frag", align 8        ; 3 uses
  store i64 %1, ptr %6, align 8
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %.8..8..8..8..sroa_idx, align 8
  %i.a = tail call noundef i32 @_ZN3re28Compiler9AllocInstEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef 1) ; 5 uses
  %i.b = icmp slt i32 %i.a, 0
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = lshr i64 %2, 32
  %i.e = trunc i64 %i.d to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 0, ptr %4, align 8, !tbaa !31
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i64 0, ptr %.4..4..4..4..4..sroa_idx, align 4
  %.12..12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 0, ptr %.12..12..12..12..12..sroa_idx, align 4, !tbaa !32
  %.0..0..0..0..0..fca.0.load.i = load i64, ptr %4, align 8
  %.8..8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.8..8..8..8..8..fca.1.load.i = load i64, ptr %.8..8..8..8..8..fca.1.gep.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.2.0.extract.trunc = trunc i64 %.8..8..8..8..8..fca.1.load.i to i40
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i40 %.sroa.2.0.extract.trunc, ptr %.8..8..8..sroa_idx, align 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = shl nuw i32 %i.a, 1                      ; 2 uses
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3re24Prog4Inst7InitAltEjj(ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef 0, i32 noundef %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN3re24Prog4Inst7InitAltEjj(ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef %i.c, i32 noundef 0)
  %i.k = or disjoint i32 %i.j, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.04.0.in.in = phi i32 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  %.sroa.04.0.in = zext i32 %.sroa.04.0.in.in to i64
  %.sroa.04.0 = mul nuw i64 %.sroa.04.0.in, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %.4..4..4..4..sroa_idx20 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.4..4..4..4..sroa.01.0.copyload = load i64, ptr %.4..4..4..4..sroa_idx20, align 4
  %.sroa.0.0.extract.trunc.i = trunc i64 %.4..4..4..4..sroa.01.0.copyload to i32 ; 2 uses
  %.not9.i = icmp eq i32 %.sroa.0.0.extract.trunc.i, 0
end_hunk_0
