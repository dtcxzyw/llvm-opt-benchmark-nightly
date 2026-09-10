Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/modules?download=true
inline.NumInlined: 589
inline.NumDeleted: 326
begin_hunk_0_@_ZNK2v88internal26SourceTextModuleDescriptor5Entry9SerializeINS0_7IsolateEEENS0_12DirectHandleINS0_25SourceTextModuleInfoEntryEEEPT_:bb.a
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_7IsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit13

_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_7IsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit13: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i12 = phi ptr [ %i.l, %bb.f ], [ %.sroa.0.0.copyload.i.i11, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4
  %i.q = load i32, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call ptr @_ZN2v88internal25SourceTextModuleInfoEntry3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_NS0_12DirectHandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEESD_SD_iiii(ptr noundef %1, ptr %.sroa.0.0.i, ptr %.sroa.0.0.i9, ptr %.sroa.0.0.i12, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.s) #11
  ret ptr %i.t
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #4

declare ptr @_ZN2v88internal25SourceTextModuleInfoEntry3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_NS0_12DirectHandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEESD_SD_iiii(ptr noundef, ptr, ptr, ptr, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal26SourceTextModuleDescriptor5Entry9SerializeINS0_12LocalIsolateEEENS0_12DirectHandleINS0_25SourceTextModuleInfoEntryEEEPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 648
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit

_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i.i, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 648
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit10

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit
  %.sroa.0.0.copyload.i.i8 = load ptr, ptr %i.h, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit10

_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit10: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i9 = phi ptr [ %i.l, %bb.d ], [ %.sroa.0.0.copyload.i.i8, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 648
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit13

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit10
  %.sroa.0.0.copyload.i.i11 = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit13

_ZN2v88internal12_GLOBAL__N_119ToStringOrUndefinedINS0_12LocalIsolateEEENS0_6HandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEEPT_PKNS0_12AstRawStringE.exit13: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i12 = phi ptr [ %i.r, %bb.f ], [ %.sroa.0.0.copyload.i.i11, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4
  %i.w = load i32, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call ptr @_ZN2v88internal25SourceTextModuleInfoEntry3NewINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_NS0_12DirectHandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEESD_SD_iiii(ptr noundef %1, ptr %.sroa.0.0.i, ptr %.sroa.0.0.i9, ptr %.sroa.0.0.i12, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.y) #11
  ret ptr %i.z
}

declare ptr @_ZN2v88internal25SourceTextModuleInfoEntry3NewINS0_12LocalIsolateEEENS0_6HandleIS1_EEPT_NS0_12DirectHandleINS0_5UnionIJNS0_6StringENS0_9UndefinedEEEEEESD_SD_iiii(ptr noundef, ptr, ptr, ptr, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal26SourceTextModuleDescriptor23SerializeRegularExportsINS0_7IsolateEEENS0_12DirectHandleINS0_10FixedArrayEEEPT_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::ZoneVector", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  store ptr %2, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %i.b, 3
  %i.g = icmp ult i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = mul i64 %i.b, 24                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.e, label %.lr.ph.preheader.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.h) #11
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = add i64 %i.o, %i.h
  store i64 %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h ; 4 uses
  store ptr %i.r, ptr %i.e, align 8
  store ptr %i.r, ptr %i.d, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  store ptr null, ptr %.09.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.r
  br i1 %i.t, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, !llvm.loop !0

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %bb.a
  %i.u = phi ptr [ null, %bb.a ], [ %i.r, %.lr.ph.i ]
  %i.v = phi ptr [ null, %bb.a ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 568
  br label %.preheader

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.052.1.lcssa = phi ptr [ %.sroa.052.070, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.db, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.ac = icmp eq ptr %.sroa.052.1.lcssa, %i.y
  br i1 %i.ac, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.ad = phi ptr [ %i.v, %.preheader.lr.ph ], [ %i.ca, %.loopexit ]
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next81, %.loopexit ] ; 3 uses
  %.sroa.052.070 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %.sroa.052.1.lcssa, %.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 32
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.af = trunc nuw i64 %indvars.iv.next81 to i32
  %.pre = load ptr, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.ag = phi ptr [ %i.v, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.u, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.af, %._crit_edge.loopexit ] ; 3 uses
  %i.ai = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %.not.i.i = icmp ult i64 %i.am, %i.ai
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, !prof !9

bb.f:                                             ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ai)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i: ; preds = %bb.f, %._crit_edge
  %i.an = phi ptr [ %i.ag, %._crit_edge ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ai ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.aq = icmp ult ptr %i.ap, %i.ao
  br i1 %i.aq, label %.lr.ph.preheader.i30, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

.lr.ph.preheader.i30:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i
  %i.ar = ptrtoaddr ptr %i.ap to i64
  %i.as = ptrtoaddr ptr %i.an to i64
  %i.at = shl nuw nsw i64 %i.ai, 3
  %i.au = add i64 %i.at, %i.as
  %i.av = xor i64 %i.ar, -1
  %i.aw = add i64 %i.au, %i.av
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 %i.ay, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i30
  store ptr %i.ao, ptr %i.d, align 8
  %i.az = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.lcssa, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge75, label %.lr.ph74

bb.g:                                             ; preds = %.preheader, %bb.h
  %.sroa.047.0 = phi ptr [ %i.ba, %bb.h ], [ %.sroa.052.070, %.preheader ]
  %.026 = phi i32 [ %i.bb, %bb.h ], [ 0, %.preheader ]
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.0) #12 ; 4 uses
  %i.bb = add nuw nsw i32 %.026, 1                ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.y
  br i1 %i.bc, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.ae, align 8
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %bb.g, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %bb.g, %bb.h
  %.lcssa76 = phi ptr [ %i.y, %bb.g ], [ %i.ba, %bb.h ] ; 2 uses
  %i.bh = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bb, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 40 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv80
  %i.bn = ptrtoint ptr %.sroa.0.0.copyload.i28 to i64
  store i64 %i.bn, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.bi, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 32
  %i.bt = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.ab, align 8
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.i, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !9

bb.i:                                             ; preds = %.critedge
  %i.bw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #11
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.critedge, %bb.i
  %.0.i = phi ptr [ %i.bw, %bb.i ], [ %i.bt, %.critedge ] ; 2 uses
  %i.bx = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.aa, align 8
  store i64 %i.bs, ptr %.0.i, align 8
  %i.ca = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv80 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.bx, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = ptrtoint ptr %i.bh to i64
  store i64 %i.ce, ptr %i.cd, align 8
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 3 ; 2 uses
  %i.cf = icmp eq ptr %.sroa.052.070, %.lcssa76
  br i1 %i.cf, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ 0, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 2 uses
  %.sroa.052.168 = phi ptr [ %i.db, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %.sroa.052.070, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 2 uses
  %i.cg = load i64, ptr %i.bh, align 8
  %i.ch = add i64 %i.cg, -1                       ; 3 uses
  %i.ci = inttoptr i64 %i.ch to ptr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.052.168, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cm, align 8
  %i.cn = load i64, ptr %.sroa.0.0.copyload.i, align 8 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.cn, ptr %i.cp monotonic, align 8
  %i.cq = trunc i64 %i.cn to i1
  br i1 %i.cq, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cr = or disjoint i64 %i.ch, 1                ; 2 uses
  %i.cs = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.ct = and i64 %i.ch, -262144
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load i64, ptr %i.cu, align 262144       ; 2 uses
  %i.cw = and i64 %i.cv, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.cw, 0
  %i.cx = and i64 %i.cv, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = and i64 %i.cn, -262144
  %i.cz = inttoptr i64 %i.cy to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.cz, align 262144
  %i.da = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cr, i64 noundef %i.cs, i64 %i.cn) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cr, i64 %i.cs, i64 %i.cn) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph, %bb.m, %bb.n
  %i.db = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.168) #12 ; 3 uses
  %i.dc = icmp eq ptr %i.db, %.lcssa76
  br i1 %i.dc, label %.loopexit, label %.lr.ph, !llvm.loop !14

._crit_edge75:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %i.az

.lr.ph74:                                         ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35 ], [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit ] ; 3 uses
  %i.dd = load i64, ptr %i.az, align 8
  %i.de = add i64 %i.dd, -1                       ; 3 uses
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load ptr, ptr %i.c, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv83
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = load i64, ptr %i.di, align 8            ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv83 ; 2 uses
  store atomic volatile i64 %i.dj, ptr %i.dl monotonic, align 8
  %i.dm = trunc i64 %i.dj to i1
  br i1 %i.dm, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

bb.o:                                             ; preds = %.lr.ph74
  %i.dn = or disjoint i64 %i.de, 1                ; 2 uses
  %i.do = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dp = and i64 %i.de, -262144
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = load i64, ptr %i.dq, align 262144       ; 2 uses
  %i.ds = and i64 %i.dr, 32
  %.not.i.i.i.i.i31 = icmp eq i64 %i.ds, 0
  %i.dt = and i64 %i.dr, 25
  %.not38.i.i.i.i.i32 = icmp eq i64 %i.dt, 0
  br i1 %.not38.i.i.i.i.i32, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.du = and i64 %i.dj, -262144
  %i.dv = inttoptr i64 %i.du to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i33 = load i64, ptr %i.dv, align 262144
  %i.dw = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i33, 25
  %.not39.i.i.i.i.i34 = icmp eq i64 %i.dw, 0
  br i1 %.not39.i.i.i.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dn, i64 noundef %i.do, i64 %i.dj) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i31, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dn, i64 %i.do, i64 %i.dj) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35: ; preds = %.lr.ph74, %bb.r, %bb.s
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %i.ai
  br i1 %exitcond.not, label %._crit_edge75, label %.lr.ph74, !llvm.loop !15
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal26SourceTextModuleDescriptor23SerializeRegularExportsINS0_12LocalIsolateEEENS0_12DirectHandleINS0_10FixedArrayEEEPT_PNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::ZoneVector", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  store ptr %2, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %i.b, 3
  %i.g = icmp ult i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = mul i64 %i.b, 24                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.e, label %.lr.ph.preheader.i, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.h) #11
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = add i64 %i.o, %i.h
  store i64 %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h ; 4 uses
  store ptr %i.r, ptr %i.e, align 8
  store ptr %i.r, ptr %i.d, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.09.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  store ptr null, ptr %.09.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.r
  br i1 %i.t, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, !llvm.loop !0

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %bb.a
  %i.u = phi ptr [ null, %bb.a ], [ %i.r, %.lr.ph.i ]
  %i.v = phi ptr [ null, %bb.a ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  %.sroa.052.1.lcssa = phi ptr [ %.sroa.052.070, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ], [ %i.dh, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.ad = icmp eq ptr %.sroa.052.1.lcssa, %i.y
  br i1 %i.ad, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !16

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.ae = phi ptr [ %i.v, %.preheader.lr.ph ], [ %i.cf, %.loopexit ]
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next81, %.loopexit ] ; 3 uses
  %.sroa.052.070 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %.sroa.052.1.lcssa, %.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 32
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.ag = trunc nuw i64 %indvars.iv.next81 to i32
  %.pre86 = load ptr, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.ah = phi ptr [ %i.v, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.cf, %._crit_edge.loopexit ] ; 2 uses
  %i.ai = phi ptr [ %i.u, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %.pre86, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.ag, %._crit_edge.loopexit ] ; 3 uses
  %i.aj = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %.not.i.i = icmp ult i64 %i.an, %i.aj
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, !prof !9

bb.f:                                             ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aj)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i: ; preds = %bb.f, %._crit_edge
  %i.ao = phi ptr [ %i.ah, %._crit_edge ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aj ; 2 uses
  %i.aq = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ar = icmp ult ptr %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph.preheader.i30, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

.lr.ph.preheader.i30:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i
  %i.as = ptrtoaddr ptr %i.aq to i64
  %i.at = ptrtoaddr ptr %i.ao to i64
  %i.au = shl nuw nsw i64 %i.aj, 3
  %i.av = add i64 %i.au, %i.at
  %i.aw = xor i64 %i.as, -1
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.az, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i30
  store ptr %i.ap, ptr %i.d, align 8
  %i.ba = call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.lcssa, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge75, label %.lr.ph74

bb.g:                                             ; preds = %.preheader, %bb.h
  %.sroa.047.0 = phi ptr [ %i.bb, %bb.h ], [ %.sroa.052.070, %.preheader ]
  %.026 = phi i32 [ %i.bc, %bb.h ], [ 0, %.preheader ]
  %i.bb = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.0) #12 ; 4 uses
  %i.bc = add nuw nsw i32 %.026, 1                ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.y
  br i1 %i.bd, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.af, align 8
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.g, %bb.h
  %.lcssa76 = phi ptr [ %i.y, %bb.g ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bi = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bc, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 40 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv80
  %i.bo = ptrtoint ptr %.sroa.0.0.copyload.i28 to i64
  store i64 %i.bo, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 32                   ; 2 uses
  %i.bu = load i8, ptr %i.aa, align 8, !range !20, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.bw = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.ac, i64 noundef %i.bt) #11
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

bb.j:                                             ; preds = %.critedge
  %i.bx = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bx) #11
  %.pre = load ptr, ptr %i.bx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cd = phi ptr [ %.pre, %bb.k ], [ %i.by, %bb.j ]
  %.0.i = phi ptr [ %i.cc, %bb.k ], [ %i.by, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.bx, align 8
  store i64 %i.bt, ptr %.0.i, align 8
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit: ; preds = %bb.i, %bb.l
  %.012.i = phi ptr [ %i.bw, %bb.i ], [ %.0.i, %bb.l ]
  %i.cf = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv80 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = ptrtoint ptr %.012.i to i64
  store i64 %i.ci, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ck = ptrtoint ptr %i.bi to i64
  store i64 %i.ck, ptr %i.cj, align 8
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 3 ; 2 uses
  %i.cl = icmp eq ptr %.sroa.052.070, %.lcssa76
  br i1 %i.cl, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ 0, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ] ; 2 uses
  %.sroa.052.168 = phi ptr [ %i.dh, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %.sroa.052.070, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ] ; 2 uses
  %i.cm = load i64, ptr %i.bi, align 8
  %i.cn = add i64 %i.cm, -1                       ; 3 uses
  %i.co = inttoptr i64 %i.cn to ptr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.052.168, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cs, align 8
  %i.ct = load i64, ptr %.sroa.0.0.copyload.i, align 8 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.ct, ptr %i.cv monotonic, align 8
  %i.cw = trunc i64 %i.ct to i1
  br i1 %i.cw, label %bb.m, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %.lr.ph
  %i.cx = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cz = and i64 %i.cn, -262144
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = load i64, ptr %i.da, align 262144       ; 2 uses
  %i.dc = and i64 %i.db, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.dc, 0
  %i.dd = and i64 %i.db, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.de = and i64 %i.ct, -262144
  %i.df = inttoptr i64 %i.de to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.df, align 262144
  %i.dg = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not39.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cx, i64 noundef %i.cy, i64 %i.ct) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cx, i64 %i.cy, i64 %i.ct) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph, %bb.p, %bb.q
  %i.dh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.168) #12 ; 3 uses
  %i.di = icmp eq ptr %i.dh, %.lcssa76
  br i1 %i.di, label %.loopexit, label %.lr.ph, !llvm.loop !18

._crit_edge75:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %i.ba

.lr.ph74:                                         ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35 ], [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit ] ; 3 uses
  %i.dj = load i64, ptr %i.ba, align 8
  %i.dk = add i64 %i.dj, -1                       ; 3 uses
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = load ptr, ptr %i.c, align 8
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv83
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load i64, ptr %i.do, align 8            ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv83 ; 2 uses
  store atomic volatile i64 %i.dp, ptr %i.dr monotonic, align 8
  %i.ds = trunc i64 %i.dp to i1
  br i1 %i.ds, label %bb.r, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

bb.r:                                             ; preds = %.lr.ph74
  %i.dt = or disjoint i64 %i.dk, 1                ; 2 uses
  %i.du = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dv = and i64 %i.dk, -262144
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load i64, ptr %i.dw, align 262144       ; 2 uses
  %i.dy = and i64 %i.dx, 32
  %.not.i.i.i.i.i31 = icmp eq i64 %i.dy, 0
  %i.dz = and i64 %i.dx, 25
  %.not38.i.i.i.i.i32 = icmp eq i64 %i.dz, 0
  br i1 %.not38.i.i.i.i.i32, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ea = and i64 %i.dp, -262144
  %i.eb = inttoptr i64 %i.ea to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i33 = load i64, ptr %i.eb, align 262144
  %i.ec = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i33, 25
  %.not39.i.i.i.i.i34 = icmp eq i64 %i.ec, 0
  br i1 %.not39.i.i.i.i.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dt, i64 noundef %i.du, i64 %i.dp) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i.i.i31, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dt, i64 %i.du, i64 %i.dp) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35: ; preds = %.lr.ph74, %bb.u, %bb.v
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %i.aj
  br i1 %exitcond.not, label %._crit_edge75, label %.lr.ph74, !llvm.loop !19
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal26SourceTextModuleDescriptor20AstRawStringComparerclEPKNS0_12AstRawStringES5_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal12AstRawString7CompareEPKS1_S3_(ptr noundef %1, ptr noundef %2) #11
end_hunk_0
