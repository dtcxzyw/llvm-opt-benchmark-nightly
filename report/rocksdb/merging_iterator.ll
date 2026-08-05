begin_hunk_0_@_ZN7rocksdb20MergeIteratorBuilderC2EPKNS_21InternalKeyComparatorEPNS_5ArenaEbPKNS_5SliceE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr %i.p, ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store ptr null, ptr %i.u, align 8, !tbaa !257
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %i.t, i8 0, i64 22, i1 false)
  store ptr %1, ptr %i.v, align 8, !tbaa !317
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store i64 0, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  store ptr %i.y, ptr %i.x, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  store i64 -1, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store ptr %4, ptr %i.ac, align 8, !tbaa !279
  store ptr %i.h, ptr %0, align 8, !tbaa !502
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !503 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !504
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #24
  br label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb20MergeIteratorBuilderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(57) dereferenceable(57) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !491  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !502    ; 3 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %i.e) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !503  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EED2Ev.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb20MergeIteratorBuilder11AddIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !500, !range !223, !noundef !224
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !502    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(344) %i.f, ptr noundef nonnull %i.e)
  store i8 1, ptr %i.a, align 8, !tbaa !500
  store ptr null, ptr %i.d, align 8, !tbaa !491
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !502    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(344) %i.j, ptr noundef %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !491
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb20MergeIteratorBuilder28AddPointAndTombstoneIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS6_EEPPS9_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.26", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !86
  %.not24 = icmp eq ptr %i.a, null
  br i1 %.not24, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !502    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = icmp ne ptr %i.d, %i.f
  %i.h = icmp ne ptr %3, null
  %spec.select = or i1 %i.h, %i.g                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !500, !range !223, !noundef !224
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread62, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !500, !range !223, !noundef !224
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.preheader.critedge, label %.thread59.a

bb.c:                                             ; preds = %bb.b
  br i1 %spec.select, label %.thread59.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !491  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.thread63, label %.thread60.a

.thread60.a:                                      ; preds = %bb.d
  store i8 1, ptr %i.i, align 8, !tbaa !500
  br label %bb.e

.thread59.a:                                      ; preds = %.thread, %bb.c
  %i.q = phi ptr [ %i.i, %bb.c ], [ %i.l, %.thread ] ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !491 ; 2 uses
  store i8 1, ptr %i.q, align 8, !tbaa !500
  %.not8 = icmp eq ptr %.pre, null
  br i1 %.not8, label %.preheader.critedge, label %bb.e

bb.e:                                             ; preds = %.thread59.a, %.thread60.a
  %i.r = phi ptr [ %i.p, %.thread60.a ], [ %.pre, %.thread59.a ]
  %i.s = phi ptr [ %i.i, %.thread60.a ], [ %i.q, %.thread59.a ]
  %i.t = phi i1 [ false, %.thread60.a ], [ true, %.thread59.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %0, align 8, !tbaa !502    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(344) %i.v, ptr noundef nonnull %i.r)
  store ptr null, ptr %i.u, align 8, !tbaa !491
  %.pre39 = load i8, ptr %i.s, align 8, !tbaa !500, !range !223
  %i.z = trunc nuw i8 %.pre39 to i1
  br i1 %i.z, label %.thread62, label %.thread63

.thread62:                                        ; preds = %bb.b, %bb.e
  %i.aa = phi i1 [ %i.t, %bb.e ], [ %spec.select, %bb.b ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !502   ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(344) %i.ab, ptr noundef %1)
  br i1 %i.aa, label %.preheader, label %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit11

.preheader.critedge:                              ; preds = %.thread59.a, %.thread
  %i.af = load ptr, ptr %0, align 8, !tbaa !502   ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 216
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(344) %i.af, ptr noundef %1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.critedge, %.thread62
  %i.aj = load ptr, ptr %0, align 8, !tbaa !502   ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 112 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !430 ; 3 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !84 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !110
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 88
  %i.ba = add nsw i64 %i.az, -1
  %i.bb = icmp ult i64 %i.ar, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit
  %5 = phi ptr [ %18, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.aj, %.preheader ] ; 3 uses
  %6 = phi i64 [ %25, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.ar, %.preheader ] ; 3 uses
  %7 = phi i64 [ %24, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.aq, %.preheader ]
  %8 = phi i64 [ %23, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.ap, %.preheader ] ; 2 uses
  %9 = phi ptr [ %21, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.an, %.preheader ] ; 12 uses
  %10 = phi ptr [ %17, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.am, %.preheader ] ; 6 uses
  %11 = phi ptr [ %20, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.al, %.preheader ]
  %12 = phi ptr [ %19, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ], [ %i.ak, %.preheader ]
  %13 = ptrtoaddr ptr %9 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !505
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !507
  %.not.i.i = icmp eq ptr %10, %i.bd
  br i1 %.not.i.i, label %bb.f, label %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit.thread

_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit.thread: ; preds = %.lr.ph
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 0, ptr %10, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.be, ptr %14, align 8, !tbaa !430
  br label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bf = icmp eq i64 %7, 9223372036854775800
  br i1 %i.bf, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #28
          to label %.noexc17 unwind label %.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %6, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i, %6   ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %6
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i15)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #29
          to label %.noexc18 unwind label %.loopexit ; 12 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %15 = ptrtoint ptr %10 to i64                   ; 3 uses
  %16 = sub i64 %15, %8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %16
  store i64 0, ptr %i.bm, align 8, !tbaa !86
  %.not10.i.i.i.i = icmp eq ptr %9, %10
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc18
  %i.bn = add i64 %15, -8
  %i.bo = sub i64 %i.bn, %13                      ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bo, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.bl, i64 8
  %i.br = add i64 %15, -8
  %i.bs = sub i64 %i.br, %13
  %i.bt = and i64 %i.bs, -8                       ; 2 uses
  %scevgep72 = getelementptr i8, ptr %scevgep, i64 %i.bt
  %scevgep73 = getelementptr i8, ptr %9, i64 8
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.bt
  %bound0 = icmp ult ptr %i.bl, %scevgep74
  %bound1 = icmp ult ptr %9, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check75 = icmp ult i64 %i.bo, 120
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bq, 12
  %n.vec = and i64 %i.bq, 4611686018427387888     ; 4 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %9, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bx ; 4 uses
  %next.gep76 = getelementptr i8, ptr %9, i64 %i.bx ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.by = getelementptr i8, ptr %next.gep76, i64 32
  %i.bz = getelementptr i8, ptr %next.gep76, i64 64
  %i.ca = getelementptr i8, ptr %next.gep76, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep76, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  %wide.load77 = load <4 x i64>, ptr %i.by, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  %wide.load78 = load <4 x i64>, ptr %i.bz, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  %wide.load79 = load <4 x i64>, ptr %i.ca, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  %i.cb = getelementptr i8, ptr %next.gep, i64 32
  %i.cc = getelementptr i8, ptr %next.gep, i64 64
  %i.cd = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !86, !alias.scope !516, !noalias !513
  store <4 x i64> %wide.load77, ptr %i.cb, align 8, !tbaa !86, !alias.scope !516, !noalias !513
  store <4 x i64> %wide.load78, ptr %i.cc, align 8, !tbaa !86, !alias.scope !516, !noalias !513
  store <4 x i64> %wide.load79, ptr %i.cd, align 8, !tbaa !86, !alias.scope !516, !noalias !513
  %i.ce = getelementptr i8, ptr %next.gep76, i64 32
  %i.cf = getelementptr i8, ptr %next.gep76, i64 64
  %i.cg = getelementptr i8, ptr %next.gep76, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep76, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  store <4 x ptr> splat (ptr null), ptr %i.ce, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  store <4 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  store <4 x ptr> splat (ptr null), ptr %i.cg, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !518

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !521

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.bq, 4611686018427387900   ; 3 uses
  %i.ci = shl i64 %n.vec82, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bl, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %9, i64 %i.ci
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = shl i64 %index83, 3                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.bl, i64 %i.cl
  %next.gep85 = getelementptr i8, ptr %9, i64 %i.cl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %wide.load86 = load <4 x i64>, ptr %next.gep85, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  store <4 x i64> %wide.load86, ptr %next.gep84, align 8, !tbaa !86, !alias.scope !516, !noalias !513
  store <4 x ptr> splat (ptr null), ptr %next.gep85, align 8, !tbaa !86, !alias.scope !513, !noalias !508
  %index.next87 = add nuw i64 %index83, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next87, %n.vec82
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !522

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %i.bq, %n.vec82
  br i1 %cmp.n88, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bl, %iter.check ], [ %i.bl, %vector.memcheck ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %9, %iter.check ], [ %9, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.cn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !511, !noalias !508
  store i64 %i.cn, ptr %.012.i.i.i.i, align 8, !tbaa !86, !alias.scope !508, !noalias !511
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !86, !alias.scope !511, !noalias !508
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.co, %10
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !523

_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc18
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bl, %.noexc18 ], [ %i.cj, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.cp, %.lr.ph.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %9, null
  br i1 %.not.i23.i, label %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit._ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit_crit_edge, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !507
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %8
  tail call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %i.ct) #24
  br label %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit._ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit_crit_edge

_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit._ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit_crit_edge: ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bl, ptr %12, align 8, !tbaa !84
  store ptr %i.cq, ptr %11, align 8, !tbaa !430
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cu, ptr %i.bc, align 8, !tbaa !507
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !502 ; 2 uses
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.pre40, i64 112
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8, !tbaa !430
  br label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit._ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit_crit_edge, %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit.thread
  %17 = phi ptr [ %.pre42, %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit._ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit_crit_edge ], [ %i.be, %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit.thread ] ; 3 uses
  %18 = phi ptr [ %.pre40, %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit._ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit_crit_edge ], [ %5, %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit.thread ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 112
  %21 = load ptr, ptr %19, align 8, !tbaa !84     ; 2 uses
  %22 = ptrtoint ptr %17 to i64
  %23 = ptrtoint ptr %21 to i64                   ; 2 uses
  %24 = sub i64 %22, %23                          ; 2 uses
  %25 = ashr exact i64 %24, 3                     ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %27 = getelementptr inbounds nuw i8, ptr %18, i64 64
  %28 = load ptr, ptr %27, align 8, !tbaa !110
  %29 = load ptr, ptr %26, align 8, !tbaa !66
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 88
  %34 = add nsw i64 %33, -1
  %35 = icmp ult i64 %25, %34
  br i1 %35, label %.lr.ph, label %._crit_edge, !llvm.loop !524

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit, %.preheader
  %36 = phi ptr [ %i.am, %.preheader ], [ %17, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %.lcssa30 = phi ptr [ %i.aj, %.preheader ], [ %18, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.lcssa27 = phi ptr [ %i.ak, %.preheader ], [ %19, %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.lcssa30, i64 120
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !507
  %.not.i.i10 = icmp eq ptr %36, %i.cw
  br i1 %.not.i.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %37 = getelementptr inbounds nuw i8, ptr %.lcssa30, i64 112
  %i.cx = load i64, ptr %2, align 8, !tbaa !86
  store i64 %i.cx, ptr %36, align 8, !tbaa !86
  store ptr null, ptr %2, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.cy, ptr %37, align 8, !tbaa !430
  br label %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit11

bb.k:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorISt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.lcssa27, ptr %36, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit11

_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit11: ; preds = %bb.k, %bb.j, %.thread62
  %.not9 = icmp eq ptr %3, null
  br i1 %.not9, label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12emplace_backIJmRS8_EEERS9_DpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit11
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !502   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 112
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !430
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !84
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3
  %i.dj = add nsw i64 %i.di, -1                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !525 ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !504
  %.not.i12 = icmp eq ptr %i.dl, %i.dn
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !526
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %3, ptr %i.do, align 8, !tbaa !529
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !525
  br label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12emplace_backIJmRS8_EEERS9_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.cz, align 8, !tbaa !503 ; 5 uses
  %i.dr = ptrtoint ptr %i.dl to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 4 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775792
  br i1 %i.du, label %bb.o, label %_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #28
  unreachable

_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.dv = ashr exact i64 %i.dt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 576460752303423487)
  %i.dz = select i1 %i.dx, i64 576460752303423487, i64 %i.dy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ea = shl nuw nsw i64 %i.dz, 4
  %i.eb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #29 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt ; 2 uses
  store i64 %i.dj, ptr %i.ec, align 8, !tbaa !526
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %3, ptr %i.ed, align 8, !tbaa !529
  %.not10.i.i.i.i.i = icmp eq ptr %i.dq, %i.dl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit23.i.i, label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i13
  %.012.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i13 ], [ %i.eb, %_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i13 ], [ %i.dq, %_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !530
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.ee, %i.dl
  br i1 %.not.i.i.i.i.i14, label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit23.i.i, label %.lr.ph.i.i.i.i.i13, !llvm.loop !534

_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i13, %_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.eb, %_ZNKSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ef, %.lr.ph.i.i.i.i.i13 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i24.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE17_M_realloc_insertIJmRS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit23.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dt) #24
  br label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE17_M_realloc_insertIJmRS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE17_M_realloc_insertIJmRS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit23.i.i
  store ptr %i.eb, ptr %i.cz, align 8, !tbaa !503
  store ptr %i.eg, ptr %i.dk, align 8, !tbaa !525
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.eh, ptr %i.dm, align 8, !tbaa !504
  br label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12emplace_backIJmRS8_EEERS9_DpOT_.exit

.thread63:                                        ; preds = %bb.d, %bb.e
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ei, align 8, !tbaa !491
  br label %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12emplace_backIJmRS8_EEERS9_DpOT_.exit

_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE12emplace_backIJmRS8_EEERS9_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImPPSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS3_EEESaIS9_EE17_M_realloc_insertIJmRS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i, %bb.m, %_ZN7rocksdb15MergingIterator25AddRangeTombstoneIteratorEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS2_EE.exit11, %.thread63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !535  ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !535 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #24
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !536

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(200) %i.e) #25, !inline_history !537
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb20MergeIteratorBuilder6FinishEPNS_18ArenaWrappedDBIterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !500, !range !223, !noundef !224
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491
  store ptr null, ptr %i.d, align 8, !tbaa !491
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !538  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !538  ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !502 ; 7 uses
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 104
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.010.013 = phi ptr [ %i.g, %.lr.ph ], [ %i.q, %bb.d ] ; 3 uses
  %i.l = load i64, ptr %.sroa.010.013, align 8, !tbaa !526
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !529
  store ptr %i.n, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.013, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.i
  br i1 %i.r, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !539, !range !223, !noundef !224
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2800
  %. = select i1 %i.z, ptr null, ptr %i.t
  store ptr %., ptr %i.aa, align 16, !tbaa !540
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 104 ; 2 uses
end_hunk_0
