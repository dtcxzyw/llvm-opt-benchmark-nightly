inline.NumInlined: 2350
inline.NumDeleted: 878
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK26LuaDebuggerWatchController26selectedRootItemsForRemoveEv:bb.a
          to label %_ZN5QListIP13QStandardItemE6appendES1_.exit unwind label %bb.s

_ZN5QListIP13QStandardItemE6appendES1_.exit:      ; preds = %_ZNK17QArrayDataPointerIP13QStandardItemE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerIP13QStandardItemE11needsDetachEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK17QArrayDataPointerIP13QStandardItemE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.r, %bb.p, %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZN5QListIP13QStandardItemE6appendES1_.exit, %bb.q, %bb.o
  %i.as = getelementptr i8, ptr %.sroa.0.037, i64 24 ; 2 uses
  %.not35 = icmp eq ptr %i.as, %i.ab
  br i1 %.not35, label %._crit_edge, label %bb.n

bb.u:                                             ; preds = %bb.m, %bb.s, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ar, %bb.s ], [ %i.ai, %bb.m ]
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i29, label %_ZN5QListI11QModelIndexED2Ev.exit32, label %_ZN17QArrayDataPointerI11QModelIndexE5derefEv.exit.i.i30

_ZN17QArrayDataPointerI11QModelIndexE5derefEv.exit.i.i30: ; preds = %bb.u
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %.not.i.i31 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i31, label %bb.v, label %_ZN5QListI11QModelIndexED2Ev.exit32

bb.v:                                             ; preds = %_ZN17QArrayDataPointerI11QModelIndexE5derefEv.exit.i.i30
  %i.av = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 24, i64 noundef 8) #24
  br label %_ZN5QListI11QModelIndexED2Ev.exit32

_ZN5QListI11QModelIndexED2Ev.exit32:              ; preds = %bb.u, %_ZN17QArrayDataPointerI11QModelIndexE5derefEv.exit.i.i30, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.x

bb.w:                                             ; preds = %_ZN5QListI11QModelIndexED2Ev.exit, %bb.d, %bb.b, %bb.a
  ret void

bb.x:                                             ; preds = %bb.k, %_ZN5QListI11QModelIndexED2Ev.exit32, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %.pn.pn, %_ZN5QListI11QModelIndexED2Ev.exit32 ], [ %i.ag, %bb.k ]
  call void @_ZN5QListIP13QStandardItemED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #24
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN26LuaDebuggerWatchControllerC2EP17LuaDebuggerDialog(ptr noundef align 8 dereferenceable_or_null(76) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7QObjectC2EPS_(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV26LuaDebuggerWatchController, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK26LuaDebuggerWatchController16configureColumnsEv(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(76) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.b)
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40) %i.d) ; 5 uses
  tail call void @_ZN11QHeaderView21setStretchLastSectionEb(ptr noundef align 8 dereferenceable_or_null(40) %i.e, i1 noundef zeroext true)
  tail call void @_ZN11QHeaderView18setSectionsMovableEb(ptr noundef align 8 dereferenceable_or_null(40) %i.e, i1 noundef zeroext false)
  tail call void @_ZN11QHeaderView20setSectionResizeModeEiNS_10ResizeModeE(ptr noundef align 8 dereferenceable_or_null(40) %i.e, i32 noundef 0, i32 noundef 0)
  tail call void @_ZN11QHeaderView20setSectionResizeModeEiNS_10ResizeModeE(ptr noundef align 8 dereferenceable_or_null(40) %i.e, i32 noundef 1, i32 noundef 1)
  tail call void @_ZN11QHeaderView13resizeSectionEii(ptr noundef align 8 dereferenceable_or_null(40) %i.e, i32 noundef 0, i32 noundef 200)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK9QTreeView6headerEv(ptr noundef align 8 dereferenceable_or_null(40)) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QHeaderView21setStretchLastSectionEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QHeaderView18setSectionsMovableEb(ptr noundef align 8 dereferenceable_or_null(40), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QHeaderView20setSectionResizeModeEiNS_10ResizeModeE(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QHeaderView13resizeSectionEii(ptr noundef align 8 dereferenceable_or_null(40), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK26LuaDebuggerWatchController23expandedSubpathsForSpecERK7QString(ptr dead_on_unwind noalias writable sret(%class.QList.39) align 8 %0, ptr noundef align 8 dereferenceable_or_null(76) %1, ptr noundef align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  tail call void @_Z33luaDbgTreeSectionExpandedSubpathsRK5QHashI7QString31LuaDbgTreeSectionExpansionStateERKS0_(ptr dead_on_unwind writable sret(%class.QList.39) align 8 %0, ptr noundef align 8 dereferenceable(8) %i.a, ptr noundef align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_Z33luaDbgTreeSectionExpandedSubpathsRK5QHashI7QString31LuaDbgTreeSectionExpansionStateERKS0_(ptr dead_on_unwind writable sret(%class.QList.39) align 8, ptr noundef align 8 dereferenceable(8), ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN26LuaDebuggerWatchController17pruneExpansionMapEv(ptr nofree noundef align 8 captures(none) dereferenceable_or_null(76) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QString, align 16            ; 10 uses
  %2 = alloca %struct.QHashDummyValue, align 1    ; 3 uses
  %3 = alloca %class.QSet, align 8                ; 9 uses
  %4 = alloca %class.QModelIndex, align 8         ; 7 uses
  %5 = alloca %class.QString, align 16            ; 11 uses
  %6 = alloca %class.QVariant, align 8            ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not15 = icmp eq ptr %i.d, null
  br i1 %.not15, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit.thread, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit

_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit: ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i32 -1, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %bb.ad, %bb.e
  %i.s = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.v = invoke noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QString31LuaDbgTreeSectionExpansionStateEEE8detachedEPS5_(ptr noundef %i.s)
          to label %.noexc unwind label %bb.ae    ; 2 uses

.noexc:                                           ; preds = %bb.g
  store ptr %i.v, ptr %i.e, align 8
  br label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i

_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i: ; preds = %.noexc, %bb.f
  %i.w = phi ptr [ %i.s, %bb.f ], [ %i.v, %.noexc ] ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %.not.i.i.i = icmp eq i8 %i.z, -1
  br i1 %.not.i.i.i, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %.loopexit, label %.lr.ph92

bb.i:                                             ; preds = %.lr.ph92
  %i.ad = add i64 %i.af, 1                        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.ab
  br i1 %i.ae, label %.loopexit, label %.lr.ph92, !llvm.loop !328

.lr.ph92:                                         ; preds = %bb.h, %bb.i
  %i.af = phi i64 [ %i.ad, %bb.i ], [ 1, %bb.h ]  ; 4 uses
  %i.ag = lshr i64 %i.af, 7
  %i.ah = getelementptr [144 x i8], ptr %i.y, i64 %i.ag
  %i.ai = and i64 %i.af, 127
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ak, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %..loopexit.loopexit_crit_edge94, !llvm.loop !328

bb.j:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aq

bb.k:                                             ; preds = %.lr.ph, %bb.ad
  %.053 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.ad ] ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = invoke noundef ptr @_ZNK18QStandardItemModel4itemEii(ptr noundef align 8 dereferenceable_or_null(16) %i.am, i32 noundef %.053, i32 noundef 0)
          to label %bb.l unwind label %bb.m       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %.not17 = icmp eq ptr %i.an, null
  br i1 %.not17, label %bb.ad, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ap = load ptr, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.an, i32 noundef 267)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(32) %6)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.as = load i64, ptr %i.q, align 16            ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !329
  %i.au = load <2 x ptr>, ptr %5, align 16, !noalias !329
  %i.av = load ptr, ptr %5, align 16, !noalias !329 ; 2 uses
  store <2 x ptr> %i.au, ptr %1, align 16, !noalias !329
  store i64 %i.as, ptr %i.r, align 16, !noalias !329
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7QStringC2ERKS_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = atomicrmw add ptr %i.av, i32 1 acq_rel, align 4, !noalias !329 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i.i.i

_ZN7QStringC2ERKS_.exit.i.i.i:                    ; preds = %bb.r, %bb.q
  %i.ax = invoke { ptr, i64 } @_ZN5QHashI7QString15QHashDummyValueE7emplaceIJRKS1_EEENS2_8iteratorEOS0_DpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.s unwind label %bb.u, !noalias !329 ; 0 uses

bb.s:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i.i.i
  %i.ay = load ptr, ptr %1, align 16, !noalias !329 ; 2 uses
  %.not.i.i.i4.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i4.i.i.i, label %bb.w, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4, !noalias !329
  %.not.i.i.i.i.i = icmp eq i32 %i.az, 1
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i
  %i.ba = load ptr, ptr %1, align 16, !noalias !329
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ba, i64 noundef 2, i64 noundef 8) #24, !noalias !329
  br label %bb.w

bb.u:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bc = load ptr, ptr %1, align 16, !noalias !329 ; 2 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i5.i.i.i, label %_ZN7QStringD2Ev.exit8.i.i.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i.i: ; preds = %bb.u
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4, !noalias !329
  %.not.i.i7.i.i.i = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i7.i.i.i, label %bb.v, label %_ZN7QStringD2Ev.exit8.i.i.i

bb.v:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i.i
  %i.be = load ptr, ptr %1, align 16, !noalias !329
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 2, i64 noundef 8) #24, !noalias !329
  br label %_ZN7QStringD2Ev.exit8.i.i.i

_ZN7QStringD2Ev.exit8.i.i.i:                      ; preds = %bb.v, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !329
  %i.bf = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i24, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

bb.w:                                             ; preds = %bb.t, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !329
  br label %bb.ab

bb.x:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn18 = phi { ptr, i32 } [ %i.bh, %bb.y ], [ %i.bg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN7QStringD2Ev.exit

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN7QStringD2Ev.exit8.i.i.i
  %i.bi = atomicrmw sub ptr %i.bf, i32 1 acq_rel, align 4
  %.not.i.i25 = icmp eq i32 %i.bi, 1
  br i1 %.not.i.i25, label %bb.aa, label %_ZN7QStringD2Ev.exit

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.bj = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bj, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit

bb.ab:                                            ; preds = %bb.w, %bb.p
  %i.bk = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i26, label %_ZN7QStringD2Ev.exit29, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27:    ; preds = %bb.ab
  %i.bl = atomicrmw sub ptr %i.bk, i32 1 acq_rel, align 4
  %.not.i.i28 = icmp eq i32 %i.bl, 1
  br i1 %.not.i.i28, label %bb.ac, label %_ZN7QStringD2Ev.exit29

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27
  %i.bm = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bm, i64 noundef 2, i64 noundef 8) #24
  br label %_ZN7QStringD2Ev.exit29

_ZN7QStringD2Ev.exit29:                           ; preds = %bb.ab, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %_ZN7QStringD2Ev.exit29
  %i.bn = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.o
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !332

_ZN7QStringD2Ev.exit:                             ; preds = %bb.aa, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %_ZN7QStringD2Ev.exit8.i.i.i, %bb.z
  %.pn20 = phi { ptr, i32 } [ %.pn18, %bb.z ], [ %i.bb, %_ZN7QStringD2Ev.exit8.i.i.i ], [ %i.bb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i ], [ %i.bb, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aq

..loopexit.loopexit_crit_edge94:                  ; preds = %.lr.ph92
  br label %.loopexit, !llvm.loop !328

.loopexit:                                        ; preds = %bb.i, %bb.h, %..loopexit.loopexit_crit_edge94, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i
  %.sroa.0.0.i.i = phi ptr [ %i.w, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i ], [ %i.w, %..loopexit.loopexit_crit_edge94 ], [ null, %bb.h ], [ null, %bb.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i ], [ %i.af, %..loopexit.loopexit_crit_edge94 ], [ 0, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %7 = icmp ne ptr %.sroa.0.0.i.i, null
  %8 = icmp ne i64 %.sroa.5.0.i.i, 0
  %or.cond54 = or i1 %7, %8
  br i1 %or.cond54, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader, label %._crit_edge57

_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader: ; preds = %.loopexit
  %.pre62 = load ptr, ptr %3, align 8
  br label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread

._crit_edge57:                                    ; preds = %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, %.loopexit
  call void @_ZN5QHashI7QString15QHashDummyValueED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE7isEmptyEv.exit.thread

bb.ae:                                            ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread: ; preds = %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit
  %i.bp = phi ptr [ %i.fp, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit ], [ %i.w, %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader ] ; 7 uses
  %i.bq = phi ptr [ %i.fq, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit ], [ %.pre62, %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader ] ; 7 uses
  %.sroa.10.056 = phi i64 [ %.sroa.10.1, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit ], [ %.sroa.5.0.i.i, %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader ] ; 5 uses
  %.sroa.037.055 = phi ptr [ %.sroa.037.1, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit ], [ %.sroa.0.0.i.i, %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread.preheader ] ; 3 uses
  %i.br = getelementptr i8, ptr %.sroa.037.055, i64 32
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = lshr i64 %.sroa.10.056, 7               ; 2 uses
  %i.bu = and i64 %.sroa.10.056, 127              ; 4 uses
  %.not.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i30, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46, label %bb.af

bb.af:                                            ; preds = %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread
  %i.bv = getelementptr [144 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bv, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr [56 x i8], ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bq, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = load i64, ptr %i.cg, align 8            ; 4 uses
  %i.ci = call noundef i64 @_Z5qHash11QStringViewm(i64 %i.ch, ptr %i.cf, i64 noundef %i.cd) #29
  %i.cj = getelementptr i8, ptr %i.bq, i64 16
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = add i64 %i.ck, -1
  %i.cm = and i64 %i.cl, %i.ci                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bq, i64 32
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = lshr i64 %i.cm, 7
  %i.cq = getelementptr [144 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = and i64 %i.cm, 127                      ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  %i.cu = icmp eq i8 %i.ct, -1
  br i1 %i.cu, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af
  %i.cv = ptrtoint ptr %i.co to i64
  %i.cw = lshr i64 %i.ck, 7
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i, %.lr.ph.i.i.i
  %i.cx = phi i8 [ %i.ct, %.lr.ph.i.i.i ], [ %i.dr, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ]
  %.sroa.0.023.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ] ; 3 uses
  %.sroa.8.022.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i ], [ %.sroa.8.1.i.i.i, %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i ]
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr i8, ptr %.sroa.0.023.i.i.i, i64 128
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr [24 x i8], ptr %i.da, i64 %i.cy ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = icmp eq i64 %i.dd, %i.ch
  br i1 %i.de, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i

_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i:     ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.ch, ptr %i.dg, i64 %i.ch, ptr %i.cf, i32 noundef 1) #29
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZNK4QSetI7QStringE8containsERKS0_.exit, label %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i

_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i: ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i, %bb.ag
  %i.dj = add nuw nsw i64 %.sroa.8.022.i.i.i, 1   ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 128
  br i1 %i.dk, label %bb.ah, label %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i, !prof !333

bb.ah:                                            ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i
  %i.dl = getelementptr i8, ptr %.sroa.0.023.i.i.i, i64 144 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cv
  %i.do = sdiv exact i64 %i.dn, 144
  %i.dp = icmp eq i64 %i.do, %i.cw
  %spec.select.i.i.i = select i1 %i.dp, ptr %i.co, ptr %i.dl
  br label %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i

_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i: ; preds = %bb.ah, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i
  %.sroa.8.1.i.i.i = phi i64 [ 0, %bb.ah ], [ %i.dj, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.ah ], [ %.sroa.0.023.i.i.i, %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.thread.i.i.i ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.0.1.i.i.i, i64 %.sroa.8.1.i.i.i
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %i.ds = icmp eq i8 %i.dr, -1
  br i1 %i.ds, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46, label %bb.ag, !llvm.loop !334

_ZNK4QSetI7QStringE8containsERKS0_.exit:          ; preds = %_Z11qHashEqualsI7QStringEbRKT_S3_.exit.i.i.i
  %.not48 = icmp eq ptr %i.db, null
  br i1 %.not48, label %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46, label %bb.ao

_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46: ; preds = %_ZN12QHashPrivate4DataINS_4NodeI7QString15QHashDummyValueEEE6Bucket14advanceWrappedEPKS5_.exit.i.i.i, %bb.af, %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread, %_ZNK4QSetI7QStringE8containsERKS0_.exit
  %.not.i.i31 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i31, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46
  %i.dt = load atomic i32, ptr %i.bp monotonic, align 4
  %i.du = icmp ugt i32 %i.dt, 1
  br i1 %i.du, label %bb.aj, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i32

bb.aj:                                            ; preds = %bb.ai, %_ZNK4QSetI7QStringE8containsERKS0_.exit.thread46
  %i.dv = invoke noundef ptr @_ZN12QHashPrivate4DataINS_4NodeI7QString31LuaDbgTreeSectionExpansionStateEEE8detachedEPS5_(ptr noundef %i.bp)
          to label %.noexc34 unwind label %bb.an  ; 2 uses

.noexc34:                                         ; preds = %bb.aj
  store ptr %i.dv, ptr %i.e, align 8
  br label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i32

_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i32: ; preds = %.noexc34, %bb.ai
  %i.dw = phi ptr [ %i.bp, %bb.ai ], [ %i.dv, %.noexc34 ] ; 5 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 32     ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr [144 x i8], ptr %i.dy, i64 %i.bt ; 3 uses
  call void @_ZN12QHashPrivate4DataINS_4NodeI7QString31LuaDbgTreeSectionExpansionStateEEE5eraseENS5_6BucketE(ptr noundef align 8 dereferenceable_or_null(40) %i.dw, ptr %i.dz, i64 %i.bu) #24
  %i.ea = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 144
  %i.eh = shl nsw i64 %i.eg, 7
  %i.ei = or disjoint i64 %i.eh, %i.bu
  %i.ej = getelementptr i8, ptr %i.ea, i64 16
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = add i64 %i.ek, -1
  %i.em = icmp eq i64 %i.ei, %i.el
  %.pre = load ptr, ptr %3, align 8               ; 4 uses
  br i1 %i.em, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i32
  %i.en = getelementptr i8, ptr %i.dz, i64 %i.bu
  %i.eo = load i8, ptr %i.en, align 1
  %.not.i9.i = icmp eq i8 %i.eo, -1
  br i1 %.not.i9.i, label %bb.al, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit

bb.al:                                            ; preds = %bb.ak, %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE6detachEv.exit.i32
  %i.ep = getelementptr i8, ptr %i.dw, i64 16
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = add i64 %.sroa.10.056, 1                ; 2 uses
  %i.es = icmp eq i64 %i.er, %i.eq
  br i1 %i.es, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %bb.al
  %i.et = load ptr, ptr %i.dx, align 8
  br label %.lr.ph105

bb.am:                                            ; preds = %.lr.ph105
  %i.eu = add i64 %i.ew, 1                        ; 2 uses
  %i.ev = icmp eq i64 %i.eu, %i.eq
  br i1 %i.ev, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, label %.lr.ph105, !llvm.loop !328

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %bb.am
  %i.ew = phi i64 [ %i.eu, %bb.am ], [ %i.er, %.lr.ph105.preheader ] ; 4 uses
  %i.ex = lshr i64 %i.ew, 7
  %i.ey = getelementptr [144 x i8], ptr %i.et, i64 %i.ex
  %i.ez = and i64 %i.ew, 127
  %i.fa = getelementptr i8, ptr %i.ey, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %.not.i.i.i.i33 = icmp eq i8 %i.fb, -1
  br i1 %.not.i.i.i.i33, label %bb.am, label %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge, !llvm.loop !328

bb.an:                                            ; preds = %bb.aj
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %_ZNK4QSetI7QStringE8containsERKS0_.exit
  %i.fd = getelementptr i8, ptr %.sroa.037.055, i64 16
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = add i64 %.sroa.10.056, 1                ; 2 uses
  %i.fg = icmp eq i64 %i.ff, %i.fe
  br i1 %i.fg, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, label %.lr.ph98

bb.ap:                                            ; preds = %.lr.ph98
  %i.fh = add i64 %i.fj, 1                        ; 2 uses
  %i.fi = icmp eq i64 %i.fh, %i.fe
  br i1 %i.fi, label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, label %.lr.ph98, !llvm.loop !328

.lr.ph98:                                         ; preds = %bb.ao, %bb.ap
  %i.fj = phi i64 [ %i.fh, %bb.ap ], [ %i.ff, %bb.ao ] ; 4 uses
  %i.fk = lshr i64 %i.fj, 7
  %i.fl = getelementptr [144 x i8], ptr %i.bs, i64 %i.fk
  %i.fm = and i64 %i.fj, 127
  %i.fn = getelementptr i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1
  %.not.i.i.i35 = icmp eq i8 %i.fo, -1
  br i1 %.not.i.i.i35, label %bb.ap, label %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101, !llvm.loop !328

._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge: ; preds = %.lr.ph105
  br label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, !llvm.loop !328

._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101: ; preds = %.lr.ph98
  br label %_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit, !llvm.loop !328

_ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit: ; preds = %bb.ap, %bb.am, %bb.ao, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101, %bb.al, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge, %bb.ak
  %i.fp = phi ptr [ %i.ea, %bb.ak ], [ %i.ea, %bb.al ], [ %i.bp, %bb.ao ], [ %i.ea, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge ], [ %i.ea, %bb.am ], [ %i.bp, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101 ], [ %i.bp, %bb.ap ]
  %i.fq = phi ptr [ %.pre, %bb.ak ], [ %.pre, %bb.al ], [ %i.bq, %bb.ao ], [ %.pre, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge ], [ %.pre, %bb.am ], [ %i.bq, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101 ], [ %i.bq, %bb.ap ]
  %.sroa.037.1 = phi ptr [ %i.dw, %bb.ak ], [ null, %bb.al ], [ null, %bb.ao ], [ %i.dw, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge ], [ null, %bb.am ], [ %.sroa.037.055, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101 ], [ null, %bb.ap ] ; 2 uses
  %.sroa.10.1 = phi i64 [ %.sroa.10.056, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.ao ], [ %i.ew, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit_crit_edge ], [ 0, %bb.am ], [ %i.fj, %._ZN5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorppEv.exit.loopexit87_crit_edge101 ], [ 0, %bb.ap ] ; 2 uses
  %i.fr = icmp ne ptr %.sroa.037.1, null
  %i.fs = icmp ne i64 %.sroa.10.1, 0
  %or.cond = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond, label %_ZNK5QHashI7QString31LuaDbgTreeSectionExpansionStateE8iteratorneERKS3_.exit.thread, label %._crit_edge57, !llvm.loop !335
end_hunk_0
