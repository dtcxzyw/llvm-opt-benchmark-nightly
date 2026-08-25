Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Value?download=true
inline.NumInlined: 516
inline.NumDeleted: 283
begin_hunk_0_@_ZN4llvm3ubi8AnyValue14getPoisonValueERNS0_7ContextEPNS_4TypeE:bb.a
    i8 12, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 15, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %bb.b, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  store i32 3, ptr %0, align 8, !tbaa !81, !alias.scope !107
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 254
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i32 %i.d, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !110
  %i.g = and i32 %i.b, 19
  %.not = icmp eq i32 %i.g, 19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = load i32, ptr %i.h, align 8
  %i.j = select i1 %.not, i32 %i.i, i32 1
  %.0.i = mul i32 %i.j, %i.f                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 3, ptr %3, align 8, !tbaa !81, !alias.scope !118
  %.not.i.i.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i.i.i, label %.loopexit67, label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.d
  %i.k = zext i32 %.0.i to i64                    ; 3 uses
  %i.l = shl nuw nsw i64 %i.k, 5
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #15 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i ]
  call void @_ZN4llvm3ubi8AnyValueC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3) #14, !inline_history !121
  %i.n = add nsw i64 %.068.i.i.i.i.i.i, -1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit67.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

.loopexit67.loopexit:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.k
  br label %.loopexit67

.loopexit67:                                      ; preds = %.loopexit67.loopexit, %bb.d
  %.sroa.1161.0 = phi ptr [ null, %bb.d ], [ %i.p, %.loopexit67.loopexit ]
  %.sroa.057.0 = phi ptr [ null, %bb.d ], [ %i.m, %.loopexit67.loopexit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %bb.d ], [ %i.o, %.loopexit67.loopexit ]
  store i32 5, ptr %0, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.057.0, ptr %i.q, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.1161.0, ptr %i.s, align 8, !tbaa !100
  call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !123
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.l [
    i8 17, label %bb.f
    i8 16, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !124  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !126
  call void @_ZN4llvm3ubi8AnyValue14getPoisonValueERNS0_7ContextEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ubi::AnyValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(3170) %1, ptr noundef %i.w)
  %i.x = icmp ugt i64 %i.u, 288230376151711743
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #18
  unreachable

_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i33 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i33, label %.loopexit, label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i34

_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i34: ; preds = %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.y = shl nuw nsw i64 %i.u, 5
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #15 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph.i.i.i.i.i.i35, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i34
  %.09.i.i.i.i.i.i36 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i35 ], [ %i.z, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i34 ] ; 2 uses
  %.068.i.i.i.i.i.i37 = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i35 ], [ %i.u, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i34 ]
  call void @_ZN4llvm3ubi8AnyValueC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(32) %4) #14, !inline_history !121
  %i.aa = add i64 %.068.i.i.i.i.i.i37, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i36, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i38, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i35, !llvm.loop !122

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i.i35
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.u
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.052.0 = phi ptr [ null, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.z, %.loopexit.loopexit ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ac, %.loopexit.loopexit ]
  %.0.lcssa.i.i.i.i.i.i39 = phi ptr [ null, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ab, %.loopexit.loopexit ]
  store i32 5, ptr %0, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.052.0, ptr %i.ad, align 8, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i39, ptr %i.ae, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.11.0, ptr %i.af, align 8, !tbaa !100
  call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !123
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !127
  %i.ai = zext i32 %i.ah to i64
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ai)
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !127 ; 2 uses
  %.not3169 = icmp eq i32 %i.aj, 0
  br i1 %.not3169, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = zext i32 %i.aj to i64
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load <2 x ptr>, ptr %5, align 16, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 5, ptr %0, align 8, !tbaa !81
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !104
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #14
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !128
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !129
  call void @_ZN4llvm3ubi8AnyValue14getPoisonValueERNS0_7ContextEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ubi::AnyValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3170) %1, ptr noundef %i.av)
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !92 ; 3 uses
  %i.ax = load ptr, ptr %i.am, align 16, !tbaa !100
  %.not.i.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm3ubi8AnyValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %6) #14
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.az, ptr %i.al, align 8, !tbaa !92
  br label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.j, %bb.k
  call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %6), !inline_history !123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not31 = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %.not31, label %._crit_edge, label %bb.i, !llvm.loop !130

bb.l:                                             ; preds = %bb.e, %.loopexit, %.loopexit67, %._crit_edge, %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.d = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE11_M_allocateEm.exit.i, label %bb.e

_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #15 ; 4 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN4llvm3ubi8AnyValueC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0810.i.i.i.i.i) #14, !inline_history !121
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE11_M_allocateEm.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !95    ; 3 uses
  %.pre8 = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not.i2.i = icmp eq ptr %.pre, %.pre8
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.pre, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ] ; 2 uses
  tail call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %.0.i3.i), !inline_history !101
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 32 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.r, %.pre8
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exitthread-pre-split, label %.lr.ph.i, !llvm.loop !99

_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exit

_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exit:  ; preds = %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit
  %2 = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exitthread-pre-split ], [ %.pre, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exit
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %2 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef %i.v) #16
  br label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm3ubi8AnyValueEEvT_S4_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.w, ptr %i.j, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %1
  store ptr %i.x, ptr %i.b, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3ubi8AnyValue12getNullValueERNS0_7ContextEPNS_4TypeE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ubi::AnyValue") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3170) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %4 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %5 = alloca %"class.llvm::ubi::AnyValue", align 8 ; 5 uses
  %6 = alloca %"class.llvm::ubi::AnyValue", align 8 ; 5 uses
  %7 = alloca %"class.std::vector", align 16      ; 11 uses
  %8 = alloca %"class.llvm::ubi::AnyValue", align 8 ; 6 uses
  %9 = alloca %"class.std::vector", align 8       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 8 uses
  %i.c = and i32 %i.b, 255                        ; 3 uses
  %i.d = icmp eq i32 %i.c, 12
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.b, 8                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !16, !alias.scope !132
  %i.g = icmp ult i32 %i.b, 16640
  br i1 %i.g, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef 0, i1 noundef zeroext false) #14
  %.pre = load i32, ptr %i.f, align 8, !tbaa !16
  %.pre81 = load i64, ptr %3, align 8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %.pre81, %bb.c ], [ 0, %bb.b ]
  %i.i = phi i32 [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  store i32 0, ptr %0, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.i, ptr %i.k, align 8, !tbaa !16
  store i64 %i.h, ptr %i.j, align 8
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  %trunc.i.i = trunc i32 %i.b to i8
  switch i8 %trunc.i.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit [
    i8 3, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 2, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 0, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 1, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
    i8 5, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  ]

_ZNK4llvm4Type17isFloatingPointTyEv.exit:         ; preds = %bb.d
  %i.l = and i32 %i.b, 253
  %spec.select.i = icmp eq i32 %i.l, 4
  br i1 %spec.select.i, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, label %bb.i

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  %i.m = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm4Type15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #14 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %i.m, i32 noundef 0) #14
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

bb.f:                                             ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %i.m, i32 noundef 0) #14
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i: ; preds = %bb.f, %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !18, !alias.scope !135
  %.not.i.i = icmp eq ptr %i.n, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false) #14
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.h:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false) #14
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit: ; preds = %bb.g, %bb.h
  store i32 1, ptr %0, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #14
  br label %bb.s

bb.i:                                             ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit
  %i.p = icmp eq i32 %i.c, 15
  br i1 %i.p, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit, label %bb.j

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.i
  %i.q = lshr i32 %i.b, 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !138, !nonnull !63, !align !196
  tail call void @_ZN4llvm3ubi7Pointer4nullEjRKNS_10DataLayoutE(ptr dead_on_unwind writable sret(%"class.llvm::ubi::AnyValue") align 8 %0, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(912) %i.s)
  br label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.t = and i32 %i.b, 254
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i32 %i.t, 18
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !110
  %.not = icmp eq i32 %i.c, 19
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = load i32, ptr %i.w, align 8
  %i.y = select i1 %.not, i32 %i.x, i32 1
  %.0.i = mul i32 %i.y, %i.v                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !197
  call void @_ZN4llvm3ubi8AnyValue12getNullValueERNS0_7ContextEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ubi::AnyValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(3170) %1, ptr noundef %i.aa)
  %.not.i.i.i.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i.i.i.i, label %.loopexit75, label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i: ; preds = %bb.k
  %i.ab = zext i32 %.0.i to i64                   ; 3 uses
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #15 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i ]
  call void @_ZN4llvm3ubi8AnyValueC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %5) #14, !inline_history !121
  %i.ae = add nsw i64 %.068.i.i.i.i.i.i, -1       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit75.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

.loopexit75.loopexit:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ab
  br label %.loopexit75

.loopexit75:                                      ; preds = %.loopexit75.loopexit, %bb.k
  %.sroa.1169.0 = phi ptr [ null, %bb.k ], [ %i.ag, %.loopexit75.loopexit ]
  %.sroa.065.0 = phi ptr [ null, %bb.k ], [ %i.ad, %.loopexit75.loopexit ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %bb.k ], [ %i.af, %.loopexit75.loopexit ]
  store i32 5, ptr %0, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.065.0, ptr %i.ah, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.1169.0, ptr %i.aj, align 8, !tbaa !100
  call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %5), !inline_history !123
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.s [
    i8 17, label %bb.m
    i8 16, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !124 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !126
  call void @_ZN4llvm3ubi8AnyValue12getNullValueERNS0_7ContextEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ubi::AnyValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(3170) %1, ptr noundef %i.an)
  %i.ao = icmp ugt i64 %i.al, 288230376151711743
  br i1 %i.ao, label %bb.n, label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #18
  unreachable

_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i40 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i40, label %.loopexit, label %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i41

_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i41: ; preds = %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.ap = shl nuw nsw i64 %i.al, 5
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #15 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %.lr.ph.i.i.i.i.i.i42, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i41
  %.09.i.i.i.i.i.i43 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i42 ], [ %i.aq, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i41 ] ; 2 uses
  %.068.i.i.i.i.i.i44 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i42 ], [ %i.al, %_ZNSt12_Vector_baseIN4llvm3ubi8AnyValueESaIS2_EEC2EmRKS3_.exit.i41 ]
  call void @_ZN4llvm3ubi8AnyValueC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i43, ptr noundef nonnull align 8 dereferenceable(32) %6) #14, !inline_history !121
  %i.ar = add i64 %.068.i.i.i.i.i.i44, -1         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i43, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i45, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !122

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i.i42
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.al
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.060.0 = phi ptr [ null, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.aq, %.loopexit.loopexit ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.at, %.loopexit.loopexit ]
  %.0.lcssa.i.i.i.i.i.i46 = phi ptr [ null, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.as, %.loopexit.loopexit ]
  store i32 5, ptr %0, align 8, !tbaa !81
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.060.0, ptr %i.au, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i46, ptr %i.av, align 8, !tbaa !92
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.11.0, ptr %i.aw, align 8, !tbaa !100
  call void @_ZN4llvm3ubi8AnyValue7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %6), !inline_history !123
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !127
  %i.az = zext i32 %i.ay to i64
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.az)
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !127 ; 2 uses
  %.not3777 = icmp eq i32 %i.ba, 0
  br i1 %.not3777, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.be = zext i32 %i.ba to i64
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load <2 x ptr>, ptr %7, align 16, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 5, ptr %0, align 8, !tbaa !81
  store <2 x ptr> %i.bi, ptr %i.bh, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #14
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !128
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129
  call void @_ZN4llvm3ubi8AnyValue12getNullValueERNS0_7ContextEPNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ubi::AnyValue") align 8 %8, ptr noundef nonnull align 8 dereferenceable(3170) %1, ptr noundef %i.bm)
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !92 ; 3 uses
  %i.bo = load ptr, ptr %i.bd, align 16, !tbaa !100
  %.not.i.i59 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm3ubi8AnyValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store ptr %i.bq, ptr %i.bc, align 8, !tbaa !92
  br label %_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE9push_backEOS2_.exit

bb.r:                                             ; preds = %bb.p
  call void @_ZNSt6vectorIN4llvm3ubi8AnyValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %8)
end_hunk_0
