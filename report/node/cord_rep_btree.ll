Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cord_rep_btree?download=true
inline.NumInlined: 774
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4absl13cord_internal12_GLOBAL__N_110ResizeEdgeEPNS0_7CordRepEmb:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not17 = icmp ugt i64 %1, %i.a
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.1, i32 noundef 154, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_110ResizeEdgeEPNS0_7CordRepEmb) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4               ; 4 uses
  %or.cond.i = icmp ugt i8 %i.c, 4
  br i1 %or.cond.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread20

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit: ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  %i.g = icmp ugt i8 %.pre.i, 4
  br i1 %i.g, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread20

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread20: ; preds = %bb.f, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 155, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12_GLOBAL__N_110ResizeEdgeEPNS0_7CordRepEmb) #14
  unreachable

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread: ; preds = %bb.e, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit
  %.not18 = icmp ult i64 %1, %i.a
  br i1 %.not18, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread
  br i1 %2, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.h = icmp ugt i8 %i.c, 5
  %i.i = icmp eq i8 %i.c, 1
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %1, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.j = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115CreateSubstringEPNS0_7CordRepEmm(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %1)
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread, %bb.j, %bb.i
  %.0 = phi ptr [ %i.j, %bb.j ], [ %0, %bb.i ], [ %0, %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4absl13cord_internal12CordRepBtree7SubTreeEmm(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp ugt i64 %2, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 902, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7SubTreeEmm) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %i.a, %2
  %.not92 = icmp ugt i64 %1, %i.b
  br i1 %.not92, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 903, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7SubTreeEmm) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.h = load i8, ptr %i.g, align 2
  %i.i = zext i8 %i.h to i64                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %.not10.i = icmp ult i64 %1, %i.m
  br i1 %.not10.i, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.n = phi i64 [ %i.s, %.lr.ph.i ], [ %i.m, %bb.f ]
  %.012.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.i, %bb.f ]
  %.0711.i = phi i64 [ %i.p, %.lr.ph.i ], [ %1, %bb.f ]
  %i.o = add i64 %.012.i, 1                       ; 3 uses
  %i.p = sub nuw i64 %.0711.i, %i.n               ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %.not.i = icmp ult i64 %i.p, %i.s
  br i1 %.not.i, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit, label %.lr.ph.i, !llvm.loop !11

_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit: ; preds = %.lr.ph.i, %bb.f
  %i.t = phi i64 [ %i.m, %bb.f ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %.084176 = phi ptr [ %i.l, %bb.f ], [ %i.r, %.lr.ph.i ] ; 3 uses
  %.07.lcssa.i = phi i64 [ %1, %bb.f ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %.0.lcssa.i = phi i64 [ %i.i, %bb.f ], [ %i.o, %.lr.ph.i ]
  %i.u = add i64 %.07.lcssa.i, %2                 ; 2 uses
  %.not93177 = icmp ugt i64 %i.u, %i.t
  br i1 %.not93177, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit
  %i.v = icmp eq i8 %i.e, 0
  br i1 %i.v, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit, label %.lr.ph311

.lr.ph:                                           ; preds = %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105
  %i.w = icmp slt i32 %.082179309, 2
  br i1 %i.w, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit, label %.lr.ph311, !llvm.loop !50

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit:    ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa295 = phi i64 [ %i.t, %.lr.ph.preheader ], [ %i.au, %.lr.ph ]
  %.084180.lcssa = phi ptr [ %.084176, %.lr.ph.preheader ], [ %.084, %.lr.ph ] ; 3 uses
  %.07.lcssa.i.pn178.lcssa = phi i64 [ %.07.lcssa.i, %.lr.ph.preheader ], [ %.07.lcssa.i101, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %.084180.lcssa, i64 8
  %i.y = atomicrmw add ptr %i.x, i32 2 monotonic, align 4 ; 0 uses
  %i.z = icmp eq i64 %2, %.lcssa295
  br i1 %i.z, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit
  %i.aa = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115CreateSubstringEPNS0_7CordRepEmm(ptr noundef nonnull %.084180.lcssa, i64 noundef %.07.lcssa.i.pn178.lcssa, i64 noundef %2)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit

.lr.ph311:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.07.lcssa.i.pn178310 = phi i64 [ %.07.lcssa.i101, %.lr.ph ], [ %.07.lcssa.i, %.lr.ph.preheader ] ; 4 uses
  %.082179309 = phi i32 [ %i.ac, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.084180308 = phi ptr [ %.084, %.lr.ph ], [ %.084176, %.lr.ph.preheader ] ; 4 uses
  %i.ab = phi i64 [ %i.au, %.lr.ph ], [ %i.t, %.lr.ph.preheader ]
  %i.ac = add nsw i32 %.082179309, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.084180308, i64 12
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = icmp eq i8 %i.ae, 3
  br i1 %i.af, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph311
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %.lr.ph311
  %i.ag = icmp ult i64 %.07.lcssa.i.pn178310, %i.ab
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.58, i32 noundef 809, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree7IndexOfEm) #14
  unreachable

bb.j:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.084180308, i64 14
  %i.ai = load i8, ptr %i.ah, align 2
  %i.aj = zext i8 %i.ai to i64                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.084180308, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %.not10.i96 = icmp ult i64 %.07.lcssa.i.pn178310, %i.an
  br i1 %.not10.i96, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %bb.j, %.lr.ph.i97
  %i.ao = phi i64 [ %i.at, %.lr.ph.i97 ], [ %i.an, %bb.j ]
  %.012.i98 = phi i64 [ %i.ap, %.lr.ph.i97 ], [ %i.aj, %bb.j ]
  %.0711.i99 = phi i64 [ %i.aq, %.lr.ph.i97 ], [ %.07.lcssa.i.pn178310, %bb.j ]
  %i.ap = add i64 %.012.i98, 1                    ; 3 uses
  %i.aq = sub nuw i64 %.0711.i99, %i.ao           ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %.not.i100 = icmp ult i64 %i.aq, %i.at
  br i1 %.not.i100, label %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105, label %.lr.ph.i97, !llvm.loop !11

_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105: ; preds = %.lr.ph.i97, %bb.j
  %i.au = phi i64 [ %i.an, %bb.j ], [ %i.at, %.lr.ph.i97 ] ; 4 uses
  %.084 = phi ptr [ %i.am, %bb.j ], [ %i.as, %.lr.ph.i97 ] ; 3 uses
  %.07.lcssa.i101 = phi i64 [ %.07.lcssa.i.pn178310, %bb.j ], [ %i.aq, %.lr.ph.i97 ] ; 4 uses
  %.0.lcssa.i102 = phi i64 [ %i.aj, %bb.j ], [ %i.ap, %.lr.ph.i97 ]
  %i.av = add i64 %.07.lcssa.i101, %2             ; 2 uses
  %.not93 = icmp ugt i64 %i.av, %i.au
  br i1 %.not93, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit
  %.sroa.044.0.lcssa = phi i64 [ %.0.lcssa.i, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %.0.lcssa.i102, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 6 uses
  %.07.lcssa.i.pn.lcssa = phi i64 [ %.07.lcssa.i, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %.07.lcssa.i101, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 4 uses
  %.082.lcssa = phi i32 [ %i.f, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %i.ac, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 2 uses
  %.081.lcssa = phi ptr [ %0, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %.084180308, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 3 uses
  %i.aw = phi ptr [ %.084176, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %.084, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 5 uses
  %.lcssa155 = phi i64 [ %i.u, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %i.av, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 2 uses
  %i.ax = phi i64 [ %i.t, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit ], [ %i.au, %_ZNK4absl13cord_internal12CordRepBtree7IndexOfEm.exit105 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.081.lcssa, i64 16 ; 2 uses
  %3 = icmp ugt i64 %.lcssa155, %i.ax
  br i1 %3, label %.lr.ph.i109, label %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit.thread

.lr.ph.i109:                                      ; preds = %._crit_edge, %.lr.ph.i109
  %i.az = phi i64 [ %i.be, %.lr.ph.i109 ], [ %i.ax, %._crit_edge ]
  %.012.i110 = phi i64 [ %i.ba, %.lr.ph.i109 ], [ %.sroa.044.0.lcssa, %._crit_edge ] ; 4 uses
  %.0911.i = phi i64 [ %i.bb, %.lr.ph.i109 ], [ %.lcssa155, %._crit_edge ]
  %i.ba = add i64 %.012.i110, 1                   ; 5 uses
  %i.bb = sub nuw i64 %.0911.i, %i.az             ; 6 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8            ; 8 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp ugt i64 %i.bb, %i.be
  br i1 %i.bf, label %.lr.ph.i109, label %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit, !llvm.loop !51

_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit: ; preds = %.lr.ph.i109
  %i.bg = icmp ugt i64 %i.ba, %.sroa.044.0.lcssa
  br i1 %i.bg, label %bb.k, label %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit.thread

_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit.thread: ; preds = %._crit_edge, %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 919, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7SubTreeEmm) #14
  unreachable

bb.k:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit
  %.not146 = icmp eq i32 %.082.lcssa, 0
  br i1 %.not146, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = icmp eq i8 %i.bi, 3
  br i1 %i.bj, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit111, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit111:  ; preds = %bb.l
  %i.bk = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree10CopySuffixEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 noundef %.07.lcssa.i.pn.lcssa) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = icmp eq i8 %i.bm, 3
  br i1 %i.bn, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit112, label %bb.n

bb.n:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit111
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit112:  ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit111
  %i.bo = extractvalue { ptr, i32 } %i.bk, 1      ; 2 uses
  %i.bp = extractvalue { ptr, i32 } %i.bk, 0      ; 2 uses
  %i.bq = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree10CopyPrefixEmb(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 noundef %i.bb, i1 noundef zeroext true) ; 2 uses
  %i.br = extractvalue { ptr, i32 } %i.bq, 0      ; 2 uses
  %i.bs = extractvalue { ptr, i32 } %i.bq, 1      ; 2 uses
  %i.bt = icmp eq i64 %.sroa.044.0.lcssa, %.012.i110
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.bs)
  %i.bu = add nsw i32 %.sroa.speculated, 1
  %.183 = select i1 %i.bt, i32 %i.bu, i32 %.082.lcssa ; 6 uses
  %.086187 = add nsw i32 %i.bo, 1                 ; 2 uses
  %i.bv = icmp slt i32 %.086187, %.183
  br i1 %i.bv, label %.lr.ph190, label %.preheader

.preheader:                                       ; preds = %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112
  %.sroa.0135.0.lcssa = phi ptr [ %i.bp, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112 ], [ %i.bx, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ] ; 2 uses
  %.085192 = add nsw i32 %i.bs, 1                 ; 2 uses
  %i.bw = icmp slt i32 %.085192, %.183
  br i1 %i.bw, label %.lr.ph195, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123

.lr.ph190:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit112, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit
  %.086189 = phi i32 [ %.086, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.086187, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112 ]
  %.sroa.0135.0188 = phi ptr [ %i.bx, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %i.bp, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112 ] ; 4 uses
  %i.bx = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 2, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0135.0188, i64 12
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = icmp eq i8 %i.ca, 3
  br i1 %i.cb, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %.lr.ph190
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0135.0188, i64 13
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = add i8 %i.cd, 1
  br label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit: ; preds = %.lr.ph190, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %i.cf = phi i8 [ %i.ce, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ 0, %.lr.ph190 ]
  %i.cg = load i64, ptr %.sroa.0135.0188, align 8
  store i64 %i.cg, ptr %i.bx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i8 3, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 13
  store i8 %i.cf, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  store i8 0, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 15
  store i8 1, ptr %i.ck, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.0135.0188, ptr %i.cl, align 8
  %.086 = add i32 %.086189, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %.086, %.183
  br i1 %exitcond.not, label %.preheader, label %.lr.ph190, !llvm.loop !52

.lr.ph195:                                        ; preds = %.preheader, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114
  %.085194 = phi i32 [ %.085, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ], [ %.085192, %.preheader ]
  %.sroa.0130.0193 = phi ptr [ %i.cm, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ], [ %i.br, %.preheader ] ; 4 uses
  %i.cm = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 2, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0130.0193, i64 12
  %i.cp = load i8, ptr %i.co, align 4
  %i.cq = icmp eq i8 %i.cp, 3
  br i1 %i.cq, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113: ; preds = %.lr.ph195
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0130.0193, i64 13
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = add i8 %i.cs, 1
  br label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114: ; preds = %.lr.ph195, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113
  %i.cu = phi i8 [ %i.ct, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ], [ 0, %.lr.ph195 ]
  %i.cv = load i64, ptr %.sroa.0130.0193, align 8
  store i64 %i.cv, ptr %i.cm, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i8 3, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 13
  store i8 %i.cu, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cm, i64 14
  store i8 0, ptr %i.cy, align 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cm, i64 15
  store i8 1, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %.sroa.0130.0193, ptr %i.da, align 8
  %.085 = add i32 %.085194, 1                     ; 2 uses
  %exitcond227.not = icmp eq i32 %.085, %.183
  br i1 %exitcond227.not, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123, label %.lr.ph195, !llvm.loop !53

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116: ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dc = atomicrmw add ptr %i.db, i32 2 monotonic, align 4 ; 0 uses
  %i.dd = icmp eq i64 %.07.lcssa.i.pn.lcssa, 0
  br i1 %i.dd, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119, label %bb.o

bb.o:                                             ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116
  %i.de = sub i64 %i.ax, %.07.lcssa.i.pn.lcssa
  %i.df = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115CreateSubstringEPNS0_7CordRepEmm(ptr noundef nonnull %i.aw, i64 noundef %.07.lcssa.i.pn.lcssa, i64 noundef %i.de)
  br label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119: ; preds = %bb.o, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116
  %.0.i117 = phi ptr [ %i.df, %bb.o ], [ %i.aw, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.dh = atomicrmw add ptr %i.dg, i32 2 monotonic, align 4 ; 0 uses
  %i.di = load i64, ptr %i.bd, align 8
  %i.dj = icmp eq i64 %i.bb, %i.di
  br i1 %i.dj, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123, label %bb.p

bb.p:                                             ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119
  %i.dk = icmp eq i64 %i.bb, 0
  br i1 %i.dk, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dl = atomicrmw sub ptr %i.dg, i32 2 acq_rel, align 4 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  %i.dn = trunc i32 %i.dl to i1
  %i.do = or i1 %i.dm, %i.dn
  br i1 %i.do, label %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.60, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv) #14
  unreachable

_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121: ; preds = %bb.q
  %.not3.i.i122 = icmp eq i32 %i.dl, 2
  br i1 %.not3.i.i122, label %bb.s, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123, !prof !20

bb.s:                                             ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %i.bd) #13
  br label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123

bb.t:                                             ; preds = %bb.p
  %i.dp = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115CreateSubstringEPNS0_7CordRepEmm(ptr noundef nonnull %i.bd, i64 noundef 0, i64 noundef %i.bb)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123

_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123: ; preds = %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114, %.preheader, %bb.t, %bb.s, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119
  %.sroa.0135.1 = phi ptr [ %.0.i117, %bb.t ], [ %.0.i117, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119 ], [ %.0.i117, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121 ], [ %.0.i117, %bb.s ], [ %.sroa.0135.0.lcssa, %.preheader ], [ %.sroa.0135.0.lcssa, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ]
  %.sroa.0130.1 = phi ptr [ %i.dp, %bb.t ], [ %i.bd, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119 ], [ null, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121 ], [ null, %bb.s ], [ %i.br, %.preheader ], [ %i.cm, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ]
  %.2 = phi i32 [ 0, %bb.t ], [ 0, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119 ], [ 0, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121 ], [ 0, %bb.s ], [ %.183, %.preheader ], [ %.183, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ]
  %i.dq = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 11 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 2, ptr %i.dr, align 4
  store i64 0, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i8 3, ptr %i.ds, align 4
  %i.dt = trunc i32 %.2 to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 13
  store i8 %i.dt, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  store i8 0, ptr %i.dv, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 15 ; 2 uses
  store i8 0, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  store ptr %.sroa.0135.1, ptr %i.dx, align 8
  %i.dy = add i64 %.sroa.044.0.lcssa, 1           ; 3 uses
  %.not.i124 = icmp ugt i64 %i.dy, %i.ba
  br i1 %.not.i124, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123
  tail call void @__assert_fail(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.58, i32 noundef 631, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree5EdgesEmm) #14
  unreachable

bb.v:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123
  %i.dz = getelementptr inbounds nuw i8, ptr %.081.lcssa, i64 14
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i64
  %.not8.i = icmp ult i64 %i.dy, %i.eb
  br i1 %.not8.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58, i32 noundef 632, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree5EdgesEmm) #14
end_hunk_0
