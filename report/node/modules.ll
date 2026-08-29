Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/modules?download=true
inline.NumInlined: 589
inline.NumDeleted: 326
begin_hunk_0_@_ZNK2v88internal26SourceTextModuleDescriptor5Entry9SerializeINS0_12LocalIsolateEEENS0_12DirectHandleINS0_25SourceTextModuleInfoEntryEEEPT_:bb.a
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
  br i1 %i.g, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = mul i64 %i.b, 24                         ; 5 uses
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
  %i.p = inttoptr i64 %i.o to ptr                 ; 7 uses
  %i.q = add i64 %i.o, %i.h
  store i64 %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h ; 5 uses
  store ptr %i.r, ptr %i.e, align 8
  store ptr %i.r, ptr %i.d, align 8
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 8) ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8
  store <2 x ptr> splat (ptr null), ptr %i.y, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.09.i.ph = phi ptr [ %i.p, %.lr.ph.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store ptr null, ptr %.09.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.r
  br i1 %i.ab, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, !llvm.loop !13

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.ac = phi ptr [ null, %bb.a ], [ %i.r, %middle.block ], [ %i.r, %.lr.ph.i ]
  %i.ad = phi ptr [ null, %bb.a ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 568
  br label %.preheader

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.052.1.lcssa = phi ptr [ %.sroa.052.070, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.dj, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.ak = icmp eq ptr %.sroa.052.1.lcssa, %i.ag
  br i1 %i.ak, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !14

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.al = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %i.ci, %.loopexit ]
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next81, %.loopexit ] ; 3 uses
  %.sroa.052.070 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %.sroa.052.1.lcssa, %.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 32
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.an = trunc nuw i64 %indvars.iv.next81 to i32
  %.pre = load ptr, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.ao = phi ptr [ %i.ad, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.ci, %._crit_edge.loopexit ] ; 2 uses
  %i.ap = phi ptr [ %i.ac, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.an, %._crit_edge.loopexit ] ; 3 uses
  %i.aq = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %.not.i.i = icmp ult i64 %i.au, %i.aq
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, !prof !9

bb.f:                                             ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aq)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i: ; preds = %bb.f, %._crit_edge
  %i.av = phi ptr [ %i.ao, %._crit_edge ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aq ; 2 uses
  %i.ax = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ay = icmp ult ptr %i.ax, %i.aw
  br i1 %i.ay, label %.lr.ph.preheader.i30, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

.lr.ph.preheader.i30:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i
  %i.az = ptrtoaddr ptr %i.ax to i64
  %i.ba = ptrtoaddr ptr %i.av to i64
  %i.bb = shl nuw nsw i64 %i.aq, 3
  %i.bc = add i64 %i.bb, %i.ba
  %i.bd = xor i64 %i.az, -1
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = and i64 %i.be, -8
  %i.bg = add i64 %i.bf, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.bg, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i30
  store ptr %i.aw, ptr %i.d, align 8
  %i.bh = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.lcssa, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge75, label %.lr.ph74

bb.g:                                             ; preds = %.preheader, %bb.h
  %.sroa.047.0 = phi ptr [ %i.bi, %bb.h ], [ %.sroa.052.070, %.preheader ]
  %.026 = phi i32 [ %i.bj, %bb.h ], [ 0, %.preheader ]
  %i.bi = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.0) #12 ; 4 uses
  %i.bj = add nuw nsw i32 %.026, 1                ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.ag
  br i1 %i.bk, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.am, align 8
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.g, label %.critedge, !llvm.loop !15

.critedge:                                        ; preds = %bb.g, %bb.h
  %.lcssa76 = phi ptr [ %i.ag, %bb.g ], [ %i.bi, %bb.h ] ; 2 uses
  %i.bp = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bj, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 40 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv80
  %i.bv = ptrtoint ptr %.sroa.0.0.copyload.i28 to i64
  store i64 %i.bv, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 32
  %i.cb = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.cc = load ptr, ptr %i.aj, align 8
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !9

bb.i:                                             ; preds = %.critedge
  %i.ce = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #11
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %.critedge, %bb.i
  %.0.i = phi ptr [ %i.ce, %bb.i ], [ %i.cb, %.critedge ] ; 2 uses
  %i.cf = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cg = add i64 %i.cf, 8
  %i.ch = inttoptr i64 %i.cg to ptr
  store ptr %i.ch, ptr %i.ai, align 8
  store i64 %i.ca, ptr %.0.i, align 8
  %i.ci = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv80 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cf, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = ptrtoint ptr %i.bp to i64
  store i64 %i.cm, ptr %i.cl, align 8
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 3 ; 2 uses
  %i.cn = icmp eq ptr %.sroa.052.070, %.lcssa76
  br i1 %i.cn, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ 0, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 2 uses
  %.sroa.052.168 = phi ptr [ %i.dj, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %.sroa.052.070, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ] ; 2 uses
  %i.co = load i64, ptr %i.bp, align 8
  %i.cp = add i64 %i.co, -1                       ; 3 uses
  %i.cq = inttoptr i64 %i.cp to ptr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.052.168, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cu, align 8
  %i.cv = load i64, ptr %.sroa.0.0.copyload.i, align 8 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.cv, ptr %i.cx monotonic, align 8
  %i.cy = trunc i64 %i.cv to i1
  br i1 %i.cy, label %bb.j, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.j:                                             ; preds = %.lr.ph
  %i.cz = or disjoint i64 %i.cp, 1                ; 2 uses
  %i.da = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.db = and i64 %i.cp, -262144
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load i64, ptr %i.dc, align 262144       ; 2 uses
  %i.de = and i64 %i.dd, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.de, 0
  %i.df = and i64 %i.dd, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not38.i.i.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dg = and i64 %i.cv, -262144
  %i.dh = inttoptr i64 %i.dg to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.dh, align 262144
  %i.di = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not39.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cz, i64 noundef %i.da, i64 %i.cv) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.n, !prof !5

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cz, i64 %i.da, i64 %i.cv) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph, %bb.m, %bb.n
  %i.dj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.168) #12 ; 3 uses
  %i.dk = icmp eq ptr %i.dj, %.lcssa76
  br i1 %i.dk, label %.loopexit, label %.lr.ph, !llvm.loop !16

._crit_edge75:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %i.bh

.lr.ph74:                                         ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35 ], [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit ] ; 3 uses
  %i.dl = load i64, ptr %i.bh, align 8
  %i.dm = add i64 %i.dl, -1                       ; 3 uses
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.c, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv83
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load i64, ptr %i.dq, align 8            ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv83 ; 2 uses
  store atomic volatile i64 %i.dr, ptr %i.dt monotonic, align 8
  %i.du = trunc i64 %i.dr to i1
  br i1 %i.du, label %bb.o, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

bb.o:                                             ; preds = %.lr.ph74
  %i.dv = or disjoint i64 %i.dm, 1                ; 2 uses
  %i.dw = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dx = and i64 %i.dm, -262144
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load i64, ptr %i.dy, align 262144       ; 2 uses
  %i.ea = and i64 %i.dz, 32
  %.not.i.i.i.i.i31 = icmp eq i64 %i.ea, 0
  %i.eb = and i64 %i.dz, 25
  %.not38.i.i.i.i.i32 = icmp eq i64 %i.eb, 0
  br i1 %.not38.i.i.i.i.i32, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ec = and i64 %i.dr, -262144
  %i.ed = inttoptr i64 %i.ec to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i33 = load i64, ptr %i.ed, align 262144
  %i.ee = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i33, 25
  %.not39.i.i.i.i.i34 = icmp eq i64 %i.ee, 0
  br i1 %.not39.i.i.i.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.dv, i64 noundef %i.dw, i64 %i.dr) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i31, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dv, i64 %i.dw, i64 %i.dr) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35: ; preds = %.lr.ph74, %bb.r, %bb.s
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %i.aq
  br i1 %exitcond.not, label %._crit_edge75, label %.lr.ph74, !llvm.loop !17
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
  br i1 %i.g, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = mul i64 %i.b, 24                         ; 5 uses
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
  %i.p = inttoptr i64 %i.o to ptr                 ; 7 uses
  %i.q = add i64 %i.o, %i.h
  store i64 %i.q, ptr %i.k, align 8
  store ptr %i.p, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h ; 5 uses
  store ptr %i.r, ptr %i.e, align 8
  store ptr %i.r, ptr %i.d, align 8
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 8) ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8
  store <2 x ptr> splat (ptr null), ptr %i.y, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.09.i.ph = phi ptr [ %i.p, %.lr.ph.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store ptr null, ptr %.09.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.r
  br i1 %i.ab, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit, !llvm.loop !19

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.ac = phi ptr [ null, %bb.a ], [ %i.r, %middle.block ], [ %i.r, %.lr.ph.i ]
  %i.ad = phi ptr [ null, %bb.a ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.preheader

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit
  %.sroa.052.1.lcssa = phi ptr [ %.sroa.052.070, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ], [ %i.dp, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ] ; 2 uses
  %i.al = icmp eq ptr %.sroa.052.1.lcssa, %i.ag
  br i1 %i.al, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !20

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.am = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %i.cn, %.loopexit ]
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next81, %.loopexit ] ; 3 uses
  %.sroa.052.070 = phi ptr [ %i.af, %.preheader.lr.ph ], [ %.sroa.052.1.lcssa, %.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 32
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.ao = trunc nuw i64 %indvars.iv.next81 to i32
  %.pre86 = load ptr, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit
  %i.ap = phi ptr [ %i.ad, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.cn, %._crit_edge.loopexit ] ; 2 uses
  %i.aq = phi ptr [ %i.ac, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %.pre86, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEEC2EmPNS0_4ZoneE.exit ], [ %i.ao, %._crit_edge.loopexit ] ; 3 uses
  %i.ar = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %.not.i.i = icmp ult i64 %i.av, %i.ar
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, !prof !9

bb.f:                                             ; preds = %._crit_edge
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i: ; preds = %bb.f, %._crit_edge
  %i.aw = phi ptr [ %i.ap, %._crit_edge ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ar ; 2 uses
  %i.ay = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.az = icmp ult ptr %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph.preheader.i30, label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

.lr.ph.preheader.i30:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i
  %i.ba = ptrtoaddr ptr %i.ay to i64
  %i.bb = ptrtoaddr ptr %i.aw to i64
  %i.bc = shl nuw nsw i64 %i.ar, 3
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = xor i64 %i.ba, -1
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bh, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i30
  store ptr %i.ax, ptr %i.d, align 8
  %i.bi = call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0.lcssa, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %.not = icmp eq i32 %.0.lcssa, 0
  br i1 %.not, label %._crit_edge75, label %.lr.ph74

bb.g:                                             ; preds = %.preheader, %bb.h
  %.sroa.047.0 = phi ptr [ %i.bj, %bb.h ], [ %.sroa.052.070, %.preheader ]
  %.026 = phi i32 [ %i.bk, %bb.h ], [ 0, %.preheader ]
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.0) #12 ; 4 uses
  %i.bk = add nuw nsw i32 %.026, 1                ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.ag
  br i1 %i.bl, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load ptr, ptr %i.an, align 8
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %bb.g, %bb.h
  %.lcssa76 = phi ptr [ %i.ag, %bb.g ], [ %i.bj, %bb.h ] ; 2 uses
  %i.bq = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.bk, i8 noundef zeroext 1, i8 0) #11 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.052.070, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %.sroa.0.0.copyload.i28 = load ptr, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv80
  %i.bw = ptrtoint ptr %.sroa.0.0.copyload.i28 to i64
  store i64 %i.bw, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.br, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 32                   ; 2 uses
  %i.cc = load i8, ptr %i.ai, align 8, !range !22, !noundef !23
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ce = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.ak, i64 noundef %i.cb) #11
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

bb.j:                                             ; preds = %.critedge
  %i.cf = load ptr, ptr %i.aj, align 8            ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp eq ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cf) #11
  %.pre = load ptr, ptr %i.cf, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cl = phi ptr [ %.pre, %bb.k ], [ %i.cg, %bb.j ]
  %.0.i = phi ptr [ %i.ck, %bb.k ], [ %i.cg, %bb.j ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cm, ptr %i.cf, align 8
  store i64 %i.cb, ptr %.0.i, align 8
  br label %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit

_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit: ; preds = %bb.i, %bb.l
  %.012.i = phi ptr [ %i.ce, %bb.i ], [ %.0.i, %bb.l ]
  %i.cn = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv80 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = ptrtoint ptr %.012.i to i64
  store i64 %i.cq, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = ptrtoint ptr %i.bq to i64
  store i64 %i.cs, ptr %i.cr, align 8
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 3 ; 2 uses
  %i.ct = icmp eq ptr %.sroa.052.070, %.lcssa76
  br i1 %i.ct, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ 0, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ] ; 2 uses
  %.sroa.052.168 = phi ptr [ %i.dp, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit ], [ %.sroa.052.070, %_ZN2v88internal16LocalHandleScope9GetHandleEPNS0_9LocalHeapEm.exit ] ; 2 uses
  %i.cu = load i64, ptr %i.bq, align 8
  %i.cv = add i64 %i.cu, -1                       ; 3 uses
  %i.cw = inttoptr i64 %i.cv to ptr
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.052.168, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.da, align 8
  %i.db = load i64, ptr %.sroa.0.0.copyload.i, align 8 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv ; 2 uses
  store atomic volatile i64 %i.db, ptr %i.dd monotonic, align 8
  %i.de = trunc i64 %i.db to i1
  br i1 %i.de, label %bb.m, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.m:                                             ; preds = %.lr.ph
  %i.df = or disjoint i64 %i.cv, 1                ; 2 uses
  %i.dg = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dh = and i64 %i.cv, -262144
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load i64, ptr %i.di, align 262144       ; 2 uses
  %i.dk = and i64 %i.dj, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.dk, 0
  %i.dl = and i64 %i.dj, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not38.i.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dm = and i64 %i.db, -262144
  %i.dn = inttoptr i64 %i.dm to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.dn, align 262144
  %i.do = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not39.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.df, i64 noundef %i.dg, i64 %i.db) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.q, !prof !5

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.df, i64 %i.dg, i64 %i.db) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %.lr.ph, %bb.p, %bb.q
  %i.dp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.168) #12 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, %.lcssa76
  br i1 %i.dq, label %.loopexit, label %.lr.ph, !llvm.loop !24

._crit_edge75:                                    ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %i.bi

.lr.ph74:                                         ; preds = %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35 ], [ 0, %_ZN2v88internal10ZoneVectorINS0_6HandleINS0_6ObjectEEEE6resizeEm.exit ] ; 3 uses
  %i.dr = load i64, ptr %i.bi, align 8
  %i.ds = add i64 %i.dr, -1                       ; 3 uses
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load ptr, ptr %i.c, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv83
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load i64, ptr %i.dw, align 8            ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv83 ; 2 uses
  store atomic volatile i64 %i.dx, ptr %i.dz monotonic, align 8
  %i.ea = trunc i64 %i.dx to i1
  br i1 %i.ea, label %bb.r, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

bb.r:                                             ; preds = %.lr.ph74
  %i.eb = or disjoint i64 %i.ds, 1                ; 2 uses
  %i.ec = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.ed = and i64 %i.ds, -262144
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load i64, ptr %i.ee, align 262144       ; 2 uses
  %i.eg = and i64 %i.ef, 32
  %.not.i.i.i.i.i31 = icmp eq i64 %i.eg, 0
  %i.eh = and i64 %i.ef, 25
  %.not38.i.i.i.i.i32 = icmp eq i64 %i.eh, 0
  br i1 %.not38.i.i.i.i.i32, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ei = and i64 %i.dx, -262144
  %i.ej = inttoptr i64 %i.ei to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i33 = load i64, ptr %i.ej, align 262144
  %i.ek = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i33, 25
  %.not39.i.i.i.i.i34 = icmp eq i64 %i.ek, 0
  br i1 %.not39.i.i.i.i.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.eb, i64 noundef %i.ec, i64 %i.dx) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  br i1 %.not.i.i.i.i.i31, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.eb, i64 %i.ec, i64 %i.dx) #11
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit35: ; preds = %.lr.ph74, %bb.u, %bb.v
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next84, %i.ar
  br i1 %exitcond.not, label %._crit_edge75, label %.lr.ph74, !llvm.loop !25
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal26SourceTextModuleDescriptor20AstRawStringComparerclEPKNS0_12AstRawStringES5_(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN2v88internal12AstRawString7CompareEPKS1_S3_(ptr noundef %1, ptr noundef %2) #11
end_hunk_0
