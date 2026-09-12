Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/escape-analysis?download=true
inline.NumInlined: 1702
inline.NumDeleted: 994
begin_hunk_0_@_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorppEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(288) %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 577 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !range !20, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.i = tail call noundef nonnull align 8 dereferenceable(288) ptr @_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(288) %i.h) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.020.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.221.0..sroa_idx, align 8 ; 3 uses
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %.sroa.322.0.copyload = load ptr, ptr %.sroa.322.0..sroa_idx, align 8 ; 8 uses
  %i.k = icmp eq ptr %.sroa.3.0.copyload, null    ; 3 uses
  %i.l = icmp eq ptr %.sroa.322.0.copyload, null  ; 3 uses
  %brmerge.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %brmerge.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 20
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.n, align 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, %.sroa.03.0.copyload.i.i
  br i1 %.not.i.i, label %.split.i, label %.thread6.i

.split.i:                                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %.sroa.0.0.in.i.i.i = select i1 %.not.i.i.i, ptr %.sroa.3.0.copyload, ptr %i.r
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  %.sroa.0.0.in.i12.i.i = select i1 %.not.i9.i.i, ptr %.sroa.322.0.copyload, ptr %i.u
  %.sroa.0.0.i13.i.i = load i32, ptr %.sroa.0.0.in.i12.i.i, align 8
  %i.v = icmp eq i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i13.i.i
  br i1 %i.v, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i: ; preds = %bb.e
  %.mux.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.mux.i.i, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i
  br i1 %i.k, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.l, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %..thread6_crit_edge.i

..thread6_crit_edge.i:                            ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 20
  %.sroa.04.0.copyload.i.pre.i = load i32, ptr %.phi.trans.insert.i, align 4
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 20
  %.pre.i = load i32, ptr %.phi.trans.insert12.i, align 4
  br label %.thread6.i

.thread6.i:                                       ; preds = %..thread6_crit_edge.i, %bb.f
  %i.w = phi i32 [ %.pre.i, %..thread6_crit_edge.i ], [ %i.o, %bb.f ] ; 2 uses
  %.sroa.04.0.copyload.i.i = phi i32 [ %.sroa.04.0.copyload.i.pre.i, %..thread6_crit_edge.i ], [ %.sroa.03.0.copyload.i.i, %bb.f ] ; 2 uses
  %i.x = icmp eq i32 %i.w, %.sroa.04.0.copyload.i.i
  br i1 %i.x, label %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge, label %.split10.i

.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge: ; preds = %.thread6.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload, i64 24
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i

.split10.i:                                       ; preds = %.thread6.i
  %i.y = icmp ult i32 %i.w, %.sroa.04.0.copyload.i.i
  br i1 %i.y, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i: ; preds = %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge, %.split.i
  %i.z = phi ptr [ %.pre25, %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge ], [ %i.t, %.split.i ]
  %i.aa = phi ptr [ %.pre, %.thread6.i._ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i_crit_edge ], [ %i.q, %.split.i ]
  %.not.i.i2.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 32
  %.sroa.0.0.in.i.i3.i = select i1 %.not.i.i2.i, ptr %.sroa.3.0.copyload, ptr %i.ab
  %.sroa.0.0.i.i4.i = load i32, ptr %.sroa.0.0.in.i.i3.i, align 8
  %.not.i10.i.i = icmp eq ptr %i.z, null
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 32
  %.sroa.0.0.in.i13.i.i = select i1 %.not.i10.i.i, ptr %.sroa.322.0.copyload, ptr %i.ac
  %.sroa.0.0.i14.i.i = load i32, ptr %.sroa.0.0.in.i13.i.i, align 8
  %i.ad = icmp slt i32 %.sroa.0.0.i.i4.i, %.sroa.0.0.i14.i.i
  br i1 %i.ad, label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i: ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i, %.split10.i, %bb.g
  br label %_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit

_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15double_iteratorC2ENS9_8iteratorESB_.exit: ; preds = %bb.h, %.split10.i, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i, %.split.i, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i
  %.sroa.14.0 = phi i8 [ 1, %.split.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i ], [ 0, %.split10.i ], [ 0, %bb.h ]
  %.sroa.119.0 = phi i8 [ 1, %.split.i ], [ 0, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.thread8.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratoreqERKSA_.exit.i ], [ 1, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8iteratorltERKSA_.exit.i ], [ 1, %.split10.i ], [ 1, %bb.h ]
  store i64 %.sroa.020.0.copyload, ptr %i.j, align 8
  store ptr %.sroa.221.0.copyload, ptr %.sroa.221.0..sroa_idx, align 8
  store ptr %.sroa.322.0.copyload, ptr %.sroa.322.0..sroa_idx, align 8
  store i8 %.sroa.119.0, ptr %i.a, align 8
  store i8 %.sroa.14.0, ptr %i.e, align 1
  ret ptr %0
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4DeadEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE6ModifyIZNS9_3SetES3_S5_EUlPS5_E_EEvS3_T_(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<v8::internal::compiler::Variable, std::pair<const v8::internal::compiler::Variable, v8::internal::compiler::Node *>, std::_Select1st<std::pair<const v8::internal::compiler::Variable, v8::internal::compiler::Node *>>, std::less<v8::internal::compiler::Variable>, v8::internal::ZoneAllocator<std::pair<const v8::internal::compiler::Variable, v8::internal::compiler::Node *>>>::_Reuse_or_alloc_node", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::compiler::Variable", align 4 ; 4 uses
  %5 = alloca %"struct.std::array", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  store i32 %1, ptr %4, align 4
  %i.b = xor i32 %1, -1
  %i.c = shl i32 %1, 15
  %i.d = add i32 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, 5                          ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 2057                       ; 2 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = xor i32 %i.k, %i.j                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not44.i = icmp eq ptr %i.m, null
  br i1 %.not44.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.f
  %.046.i = phi ptr [ %i.at, %bb.f ], [ %i.m, %bb.a ] ; 13 uses
  %.03245.i = phi i32 [ %i.au, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.046.i, i64 20
  %.sroa.01.0.copyload.i = load i32, ptr %i.n, align 4 ; 2 uses
  %.not36.i = icmp eq i32 %i.l, %.sroa.01.0.copyload.i
  %i.o = getelementptr inbounds nuw i8, ptr %.046.i, i64 16 ; 2 uses
  br i1 %.not36.i, label %.critedge.preheader.i, label %bb.b

.critedge.preheader.i:                            ; preds = %.lr.ph48.i
  %i.p = load i8, ptr %i.o, align 8               ; 3 uses
  %i.q = sext i8 %i.p to i32
  %i.r = icmp slt i32 %.03245.i, %i.q
  br i1 %i.r, label %.lr.ph52.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit

.lr.ph52.i:                                       ; preds = %.critedge.preheader.i
  %i.s = sext i32 %.03245.i to i64                ; 2 uses
  %i.t = sext i8 %i.p to i64
  %i.u = shl nsw i64 %i.s, 3                      ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.u
  %scevgep85 = getelementptr i8, ptr %.046.i, i64 32
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.u
  %i.v = sub nsw i64 %i.t, %i.s
  %i.w = shl nsw i64 %i.v, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep86, i64 %i.w, i1 false)
  %i.x = sext i8 %i.p to i32
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit

bb.b:                                             ; preds = %.lr.ph48.i
  %i.y = xor i32 %.sroa.01.0.copyload.i, %i.l     ; 2 uses
  %i.z = lshr exact i32 -2147483648, %.03245.i
  %i.aa = and i32 %i.y, %i.z
  %.not.i.not42.i = icmp eq i32 %i.aa, 0
  %.pre = load i8, ptr %i.o, align 8              ; 2 uses
  br i1 %.not.i.not42.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
  %i.ac = sext i32 %.03245.i to i64
  %i.ad = sext i8 %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.ae = icmp slt i64 %indvars.iv.i, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  store ptr %i.ah, ptr %i.ai, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ak = lshr exact i32 -2147483648, %i.aj
  %i.al = and i32 %i.ak, %i.y
  %.not.i.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.not.i, label %bb.c, label %._crit_edge.i, !llvm.loop !87

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.1.lcssa.i = phi i32 [ %.03245.i, %bb.b ], [ %i.aj, %bb.e ] ; 4 uses
  %i.am = sext i32 %.1.lcssa.i to i64             ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.am
  store ptr %.046.i, ptr %i.an, align 8
  %i.ao = sext i8 %.pre to i32
  %i.ap = icmp slt i32 %.1.lcssa.i, %i.ao
  br i1 %i.ap, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.i
  %i.aq = add nsw i32 %.1.lcssa.i, 1
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread

bb.f:                                             ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.046.i, i64 32
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = add nsw i32 %.1.lcssa.i, 1              ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread, label %.lr.ph48.i, !llvm.loop !88

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit: ; preds = %.lr.ph52.i, %.critedge.preheader.i
  %.3.i = phi i32 [ %.03245.i, %.critedge.preheader.i ], [ %i.x, %.lr.ph52.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %.not11.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread97, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ay, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.az, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp slt i32 %i.bb, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bc, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bc, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bd = icmp eq ptr %.19.i.i.i.i, %i.az
  br i1 %i.bd, label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit, label %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i

_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.be, align 4
  %i.bf = icmp slt i32 %1, %.sroa.0.0.copyload.i.i.i.i ; 2 uses
  %spec.select.i.i.i = select i1 %i.bf, ptr %i.az, ptr %.19.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 32
  %spec.select.i = select i1 %i.bf, ptr %0, ptr %i.bg
  br label %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit: ; preds = %bb.g, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i
  %.sink.i = phi ptr [ %0, %bb.g ], [ %0, %_ZNKSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS5_.exit.i.i.i ], [ %spec.select.i, %_ZNKSt3mapIN2v88internal8compiler8VariableEPNS2_4NodeESt4lessIS3_ENS1_13ZoneAllocatorISt4pairIKS3_S5_EEEE4findERSA_.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8
  %.not = icmp eq ptr %i.bi, %i.bj
  br i1 %.not, label %bb.q, label %bb.h

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread97: ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE8FindHashENS9_9HashValueEPSt5arrayIPKNS9_11FocusedTreeELm32EEPi.exit
  %.sroa.0.0.copyload.i36 = load i32, ptr %.046.i, align 8
  %i.bk = icmp eq i32 %1, %.sroa.0.0.copyload.i36
  %..i = select i1 %i.bk, ptr %.046.i, ptr %0
  %i.bl = getelementptr inbounds nuw i8, ptr %..i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8
  %.not99 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not99, label %bb.q, label %.thread100

_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread: ; preds = %bb.f, %.thread.i, %bb.a
  %.3.i.ph = phi i32 [ 0, %bb.a ], [ %i.aq, %.thread.i ], [ %i.au, %bb.f ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  store ptr %i.bq, ptr %i.a, align 8
  %.not68 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not68, label %bb.q, label %.thread

.thread100:                                       ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread97
  %i.br = load i32, ptr %.046.i, align 8
  %i.bs = icmp eq i32 %i.br, %1
  br i1 %i.bs, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit, %.thread100
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = sub i64 %i.bw, %i.by
  %i.ca = icmp ult i64 %i.bz, 56
  br i1 %i.ca, label %bb.i, label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i64 noundef 56) #13
  %.pre.i.i = load i64, ptr %i.bx, align 8
  br label %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit: ; preds = %bb.h, %bb.i
  %i.cb = phi i64 [ %.pre.i.i, %bb.i ], [ %i.by, %bb.h ] ; 2 uses
  %i.cc = inttoptr i64 %i.cb to ptr               ; 15 uses
  %i.cd = add i64 %i.cb, 56
  store i64 %i.cd, ptr %i.bx, align 8
  %i.ce = load ptr, ptr %i.bt, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  store i64 %i.cf, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 6 uses
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  store ptr null, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 32 ; 3 uses
  store ptr %i.cg, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 3 uses
  store ptr %i.cg, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 3 uses
  store i64 0, ptr %i.ck, align 8
  %i.cl = load ptr, ptr %i.av, align 8            ; 4 uses
  %.not31 = icmp eq ptr %i.cl, null
  br i1 %.not31, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.cl, %i.cc
  br i1 %.not.i.i.i, label %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit, label %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i

_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr null, ptr %3, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cc, ptr %i.cn, align 8
  store ptr null, ptr %i.cm, align 8
  store ptr null, ptr %i.ch, align 8
  store ptr %i.cg, ptr %i.ci, align 8
  store ptr %i.cg, ptr %i.cj, align 8
  store i64 0, ptr %i.ck, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not5.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i
  %i.cq = call noundef ptr @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.cq, %bb.k ], [ %i.cs, %bb.l ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %bb.l, !llvm.loop !89

_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %bb.l
  store ptr %.0.i.i.i.i.i.i, ptr %i.ci, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.cq, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.cu, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i, label %bb.m, !llvm.loop !90

_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i: ; preds = %bb.m
  store ptr %.0.i.i7.i.i.i.i, ptr %i.cj, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cw = load i64, ptr %i.cv, align 8
  store i64 %i.cw, ptr %i.ck, align 8
  store ptr %i.cq, ptr %i.ch, align 8
  %.pre.i.i.i = load ptr, ptr %i.cn, align 8
  %.pre6.i.i.i = load ptr, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i
  %i.cx = phi ptr [ %.pre6.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i ], [ null, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i ]
  %i.cy = phi ptr [ %.pre.i.i.i, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE7_M_copyILb0ENSF_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSF_RT0_.exit.i.i.i ], [ %i.cc, %_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE20_Reuse_or_alloc_nodeC2ERSF_.exit.i.i.i ]
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit

bb.o:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_7ZoneMapINS0_8compiler8VariableEPNS4_4NodeESt4lessIS5_EEEJRPS1_EEEPT_DpOT0_.exit
  %i.cz = tail call noundef i64 @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %.046.i) ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %i.db = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS5_RKS7_EEES4_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %.046.i, ptr noundef nonnull align 8 dereferenceable(8) %i.da) ; 0 uses
  br label %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit

_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit: ; preds = %bb.n, %bb.j, %bb.o
  %i.dc = call noundef i64 @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE5eraseERS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  %i.dd = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal8compiler8VariableESt4pairIKS3_PNS2_4NodeEESt10_Select1stIS8_ESt4lessIS3_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS3_RS7_EEES4_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread, %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit, %.thread100
  %.3.i556267 = phi i32 [ %.3.i, %.thread100 ], [ %.3.i, %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit ], [ %.3.i.ph, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread ] ; 4 uses
  %.028 = phi ptr [ null, %.thread100 ], [ %i.cc, %_ZN2v88internal7ZoneMapINS0_8compiler8VariableEPNS2_4NodeESt4lessIS3_EEaSERKS8_.exit ], [ null, %_ZNK2v88internal8compiler13PersistentMapINS1_8VariableEPNS1_4NodeENS_4base4hashIS3_EEE15GetFocusedValueEPKNS9_11FocusedTreeERKS3_.exit.thread ]
  %i.de = call i32 @llvm.smax.i32(i32 %.3.i556267, i32 1)
  %.sroa.speculated = add nsw i32 %i.de, -1
  %i.df = zext nneg i32 %.sroa.speculated to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dj = add nuw nsw i64 %i.dg, 40               ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dl = load i64, ptr %i.dk, align 8
end_hunk_0
