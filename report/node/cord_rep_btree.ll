Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cord_rep_btree?download=true
inline.NumInlined: 774
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4absl13cord_internal12_GLOBAL__N_110ResizeEdgeEPNS0_7CordRepEmb:bb.a

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
  %i.az = icmp ugt i64 %.lcssa155, %i.ax
  br i1 %i.az, label %.lr.ph.i109, label %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit.thread

.lr.ph.i109:                                      ; preds = %._crit_edge, %.lr.ph.i109
  %i.ba = phi i64 [ %i.bf, %.lr.ph.i109 ], [ %i.ax, %._crit_edge ]
  %.012.i110 = phi i64 [ %i.bb, %.lr.ph.i109 ], [ %.sroa.044.0.lcssa, %._crit_edge ] ; 4 uses
  %.0911.i = phi i64 [ %i.bc, %.lr.ph.i109 ], [ %.lcssa155, %._crit_edge ]
  %i.bb = add i64 %.012.i110, 1                   ; 4 uses
  %i.bc = sub nuw i64 %.0911.i, %i.ba             ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8            ; 8 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %.lr.ph.i109, label %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit, !llvm.loop !51

_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit: ; preds = %.lr.ph.i109
  %i.bh = icmp ugt i64 %i.bb, %.sroa.044.0.lcssa
  br i1 %i.bh, label %bb.k, label %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit.thread

_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit.thread: ; preds = %._crit_edge, %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 919, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree7SubTreeEmm) #14
  unreachable

bb.k:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree11IndexBeforeENS1_8PositionEm.exit
  %.not146 = icmp eq i32 %.082.lcssa, 0
  br i1 %.not146, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = icmp eq i8 %i.bj, 3
  br i1 %i.bk, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit111, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit111:  ; preds = %bb.l
  %i.bl = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree10CopySuffixEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 noundef %.07.lcssa.i.pn.lcssa) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bn = load i8, ptr %i.bm, align 4
  %i.bo = icmp eq i8 %i.bn, 3
  br i1 %i.bo, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit112, label %bb.n

bb.n:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit111
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit112:  ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit111
  %i.bp = extractvalue { ptr, i32 } %i.bl, 1      ; 2 uses
  %i.bq = extractvalue { ptr, i32 } %i.bl, 0      ; 2 uses
  %i.br = tail call { ptr, i32 } @_ZN4absl13cord_internal12CordRepBtree10CopyPrefixEmb(ptr noundef nonnull align 8 dereferenceable(64) %i.be, i64 noundef %i.bc, i1 noundef zeroext true) ; 2 uses
  %i.bs = extractvalue { ptr, i32 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, i32 } %i.br, 1      ; 2 uses
  %i.bu = icmp eq i64 %.sroa.044.0.lcssa, %.012.i110
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 %i.bt)
  %i.bv = add nsw i32 %.sroa.speculated, 1
  %.183 = select i1 %i.bu, i32 %i.bv, i32 %.082.lcssa ; 6 uses
  %.086187 = add nsw i32 %i.bp, 1                 ; 2 uses
  %i.bw = icmp slt i32 %.086187, %.183
  br i1 %i.bw, label %.lr.ph190, label %.preheader

.preheader:                                       ; preds = %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112
  %.sroa.0135.0.lcssa = phi ptr [ %i.bq, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112 ], [ %i.by, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ] ; 2 uses
  %.085192 = add nsw i32 %i.bt, 1                 ; 2 uses
  %i.bx = icmp slt i32 %.085192, %.183
  br i1 %i.bx, label %.lr.ph195, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123

.lr.ph190:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit112, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit
  %.086189 = phi i32 [ %.086, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %.086187, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112 ]
  %.sroa.0135.0188 = phi ptr [ %i.by, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit ], [ %i.bq, %_ZN4absl13cord_internal7CordRep5btreeEv.exit112 ] ; 4 uses
  %i.by = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 2, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0135.0188, i64 12
  %i.cb = load i8, ptr %i.ca, align 4
  %i.cc = icmp eq i8 %i.cb, 3
  br i1 %i.cc, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %.lr.ph190
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0135.0188, i64 13
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = add i8 %i.ce, 1
  br label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit: ; preds = %.lr.ph190, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %i.cg = phi i8 [ %i.cf, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ 0, %.lr.ph190 ]
  %i.ch = load i64, ptr %.sroa.0135.0188, align 8
  store i64 %i.ch, ptr %i.by, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i8 3, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 13
  store i8 %i.cg, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 14
  store i8 0, ptr %i.ck, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 15
  store i8 1, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %.sroa.0135.0188, ptr %i.cm, align 8
  %.086 = add i32 %.086189, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %.086, %.183
  br i1 %exitcond.not, label %.preheader, label %.lr.ph190, !llvm.loop !52

.lr.ph195:                                        ; preds = %.preheader, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114
  %.085194 = phi i32 [ %.085, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ], [ %.085192, %.preheader ]
  %.sroa.0130.0193 = phi ptr [ %i.cn, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ], [ %i.bs, %.preheader ] ; 4 uses
  %i.cn = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 2, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0130.0193, i64 12
  %i.cq = load i8, ptr %i.cp, align 4
  %i.cr = icmp eq i8 %i.cq, 3
  br i1 %i.cr, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113, label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113: ; preds = %.lr.ph195
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0130.0193, i64 13
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = add i8 %i.ct, 1
  br label %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114

_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114: ; preds = %.lr.ph195, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113
  %i.cv = phi i8 [ %i.cu, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i113 ], [ 0, %.lr.ph195 ]
  %i.cw = load i64, ptr %.sroa.0130.0193, align 8
  store i64 %i.cw, ptr %i.cn, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i8 3, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 13
  store i8 %i.cv, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 14
  store i8 0, ptr %i.cz, align 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 15
  store i8 1, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.sroa.0130.0193, ptr %i.db, align 8
  %.085 = add i32 %.085194, 1                     ; 2 uses
  %exitcond227.not = icmp eq i32 %.085, %.183
  br i1 %exitcond227.not, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123, label %.lr.ph195, !llvm.loop !53

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116: ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.dd = atomicrmw add ptr %i.dc, i32 2 monotonic, align 4 ; 0 uses
  %i.de = icmp eq i64 %.07.lcssa.i.pn.lcssa, 0
  br i1 %i.de, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119, label %bb.o

bb.o:                                             ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116
  %i.df = sub i64 %i.ax, %.07.lcssa.i.pn.lcssa
  %i.dg = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115CreateSubstringEPNS0_7CordRepEmm(ptr noundef nonnull %i.aw, i64 noundef %.07.lcssa.i.pn.lcssa, i64 noundef %i.df)
  br label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119: ; preds = %bb.o, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116
  %.0.i117 = phi ptr [ %i.dg, %bb.o ], [ %i.aw, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit116 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.di = atomicrmw add ptr %i.dh, i32 2 monotonic, align 4 ; 0 uses
  %i.dj = load i64, ptr %i.be, align 8
  %i.dk = icmp eq i64 %i.bc, %i.dj
  br i1 %i.dk, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123, label %bb.p

bb.p:                                             ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119
  %i.dl = icmp eq i64 %i.bc, 0
  br i1 %i.dl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dm = atomicrmw sub ptr %i.dh, i32 2 acq_rel, align 4 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  %i.do = trunc i32 %i.dm to i1
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.60, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv) #14
  unreachable

_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121: ; preds = %bb.q
  %.not3.i.i122 = icmp eq i32 %i.dm, 2
  br i1 %.not3.i.i122, label %bb.s, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123, !prof !20

bb.s:                                             ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %i.be) #13
  br label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123

bb.t:                                             ; preds = %bb.p
  %i.dq = tail call fastcc noundef ptr @_ZN4absl13cord_internal12_GLOBAL__N_115CreateSubstringEPNS0_7CordRepEmm(ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef %i.bc)
  br label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123

_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123: ; preds = %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114, %.preheader, %bb.t, %bb.s, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119
  %.sroa.0135.1 = phi ptr [ %.0.i117, %bb.t ], [ %.0.i117, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119 ], [ %.0.i117, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121 ], [ %.0.i117, %bb.s ], [ %.sroa.0135.0.lcssa, %.preheader ], [ %.sroa.0135.0.lcssa, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ]
  %.sroa.0130.1 = phi ptr [ %i.dq, %bb.t ], [ %i.be, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119 ], [ null, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121 ], [ null, %bb.s ], [ %i.bs, %.preheader ], [ %i.cn, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ]
  %.2 = phi i32 [ 0, %bb.t ], [ 0, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit119 ], [ 0, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i.i121 ], [ 0, %bb.s ], [ %.183, %.preheader ], [ %.183, %_ZN4absl13cord_internal12CordRepBtree3NewEPNS0_7CordRepE.exit114 ]
  %i.dr = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #15 ; 11 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i32 2, ptr %i.ds, align 4
  store i64 0, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i8 3, ptr %i.dt, align 4
  %i.du = trunc i32 %.2 to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 13
  store i8 %i.du, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 14
  store i8 0, ptr %i.dw, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 15 ; 2 uses
  store i8 0, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  store ptr %.sroa.0135.1, ptr %i.dy, align 8
  %i.dz = add nuw i64 %.sroa.044.0.lcssa, 1       ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.081.lcssa, i64 14
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i64
  %.not8.i = icmp ult i64 %i.dz, %5
  br i1 %.not8.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123
  tail call void @__assert_fail(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58, i32 noundef 632, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree5EdgesEmm) #14
  unreachable

bb.v:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit123
  %i.ea = getelementptr inbounds nuw i8, ptr %.081.lcssa, i64 15
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = zext i8 %i.eb to i64
  %.not9.i = icmp ugt i64 %i.bb, %i.ec
  br i1 %.not9.i, label %bb.w, label %_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.58, i32 noundef 633, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree5EdgesEmm) #14
  unreachable

_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit: ; preds = %bb.v
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dz ; 2 uses
  %i.ee = sub i64 %.012.i110, %.sroa.044.0.lcssa
  %.idx = shl nuw nsw i64 %i.ee, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx
  %.not94197 = icmp eq i64 %.012.i110, %.sroa.044.0.lcssa
  br i1 %.not94197, label %._crit_edge201, label %.lr.ph200

._crit_edge201:                                   ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128, %_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit
  %.080.lcssa = phi i64 [ 1, %_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit ], [ %i.en, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.080.lcssa
  store ptr %.sroa.0130.1, ptr %i.eg, align 8
  %i.eh = trunc i64 %.080.lcssa to i8
  %i.ei = add i8 %i.eh, 1
  store i8 %i.ei, ptr %i.dx, align 1
  store i64 %2, ptr %i.dr, align 8
  %i.ej = tail call noundef zeroext i1 @_ZN4absl13cord_internal12CordRepBtree7IsValidEPKS1_b(ptr noundef nonnull %i.dr, i1 noundef zeroext true)
  br i1 %i.ej, label %_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge201
  tail call void @_ZN4absl13cord_internal12CordRepBtree4DumpEPKNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEbRSo(ptr noundef nonnull %i.dr, i64 31, ptr nonnull @.str.19, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1, i64 59), i32 noundef 474, ptr noundef nonnull @.str.20) #13
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 474, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree11AssertValidEPS1_b) #14
  unreachable

.lr.ph200:                                        ; preds = %_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128
  %.079199 = phi ptr [ %i.ep, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128 ], [ %i.ed, %_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit ] ; 2 uses
  %.080198 = phi i64 [ %i.en, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128 ], [ 1, %_ZNK4absl13cord_internal12CordRepBtree5EdgesEmm.exit ] ; 2 uses
  %i.ek = load ptr, ptr %.079199, align 8         ; 3 uses
  %.not.i127 = icmp eq ptr %i.ek, null
  br i1 %.not.i127, label %bb.y, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128

bb.y:                                             ; preds = %.lr.ph200
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.60, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #14
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit128: ; preds = %.lr.ph200
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = atomicrmw add ptr %i.el, i32 2 monotonic, align 4 ; 0 uses
  %i.en = add nuw nsw i64 %.080198, 1             ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.080198
  store ptr %i.ek, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.079199, i64 8 ; 2 uses
  %.not94 = icmp eq ptr %i.ep, %i.ef
  br i1 %.not94, label %._crit_edge201, label %.lr.ph200

_ZN4absl13cord_internal12_GLOBAL__N_113MakeSubstringEPNS0_7CordRepEmm.exit: ; preds = %._crit_edge201, %bb.g, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit, %bb.e
  %.1 = phi ptr [ null, %bb.e ], [ %.084180.lcssa, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit ], [ %i.aa, %bb.g ], [ %i.dr, %._crit_edge201 ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4absl13cord_internal12CordRepBtree10MergeTreesEPS1_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.d = load i8, ptr %i.c, align 1
  %.not = icmp ult i8 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree5MergeILNS1_8EdgeTypeE1EEEPS1_S4_S4_(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree5MergeILNS1_8EdgeTypeE0EEEPS1_S4_S4_(ptr noundef nonnull %1, ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl13cord_internal12CordRepBtree5MergeILNS1_8EdgeTypeE1EEEPS1_S4_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"struct.absl::cord_internal::(anonymous namespace)::StackOperations.0", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.c = load i8, ptr %i.b, align 1               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.e = load i8, ptr %i.d, align 1               ; 4 uses
  %.not = icmp ult i8 %i.c, %i.e
  br i1 %.not, label %bb.b, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, i32 noundef 657, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal12CordRepBtree5MergeILNS1_8EdgeTypeE1EEEPS1_S4_S4_) #14
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i: ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8                ; 4 uses
  %narrow = sub nuw i8 %i.c, %i.e                 ; 2 uses
  %i.g = zext i8 %narrow to i32                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count.i = zext i8 %narrow to i64     ; 4 uses
  %exitcond.not.i118 = icmp eq i8 %i.c, %i.e
  br i1 %exitcond.not.i118, label %.critedge.i, label %.lr.ph121

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i119, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph121, !llvm.loop !5

.lr.ph121:                                        ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %.016.i120 = phi ptr [ %i.q, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ %0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ] ; 4 uses
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ], [ 0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ] ; 4 uses
  %i.i = getelementptr i8, ptr %.016.i120, i64 8  ; 2 uses
  %i.j = load atomic i32, ptr %i.i acquire, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %.critedge.split.loop.exit35.i

bb.c:                                             ; preds = %.lr.ph121
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i119
  store ptr %.016.i120, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.016.i120, i64 15
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i8, ptr %i.r, align 4
  %i.t = icmp eq i8 %i.s, 3
  br i1 %i.t, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

.critedge.split.loop.exit35.i:                    ; preds = %.lr.ph121
  %i.u = trunc nuw nsw i64 %indvars.iv.i119 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i, %.critedge.split.loop.exit35.i
  %.016.i115 = phi ptr [ %.016.i120, %.critedge.split.loop.exit35.i ], [ %0, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ], [ %i.q, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ] ; 3 uses
  %.pre-phi.i = phi i64 [ %indvars.iv.i119, %.critedge.split.loop.exit35.i ], [ %wide.trip.count.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ], [ %wide.trip.count.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.u, %.critedge.split.loop.exit35.i ], [ %i.g, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.preheader.i ], [ %i.g, %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i115, i64 8
  %i.w = load atomic i32, ptr %i.v acquire, align 4
  %i.x = icmp eq i32 %i.w, 2
  %i.y = zext i1 %i.x to i32
  %i.z = add nuw nsw i32 %.0.lcssa.i, %i.y        ; 2 uses
  store i32 %i.z, ptr %2, align 8
  %smax30.i = tail call i32 @llvm.smax.i32(i32 %.0.lcssa.i, i32 %i.g)
  %wide.trip.count31.i = zext nneg i32 %smax30.i to i64 ; 2 uses
  %exitcond32.not.i122 = icmp eq i64 %.pre-phi.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i122, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit, label %.lr.ph125

_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i: ; preds = %.lr.ph125
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i123, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit, label %.lr.ph125, !llvm.loop !6

.lr.ph125:                                        ; preds = %.critedge.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i
  %.117.i124 = phi ptr [ %i.ag, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i ], [ %.016.i115, %.critedge.i ] ; 3 uses
  %indvars.iv27.i123 = phi i64 [ %indvars.iv.next28.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i ], [ %.pre-phi.i, %.critedge.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv27.i123
  store ptr %.117.i124, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.117.i124, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr i8, ptr %.117.i124, i64 8
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = icmp eq i8 %i.ai, 3
  br i1 %i.aj, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i, label %bb.e, !llvm.loop !6

bb.e:                                             ; preds = %.lr.ph125
  tail call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #14
  unreachable

_ZN4absl13cord_internal12_GLOBAL__N_115StackOperationsILNS0_12CordRepBtree8EdgeTypeE1EE10BuildStackEPS3_i.exit: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i, %.critedge.i
  %.117.i.lcssa = phi ptr [ %.016.i115, %.critedge.i ], [ %i.ag, %_ZN4absl13cord_internal7CordRep5btreeEv.exit19.i ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.117.i.lcssa, i64 15 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.117.i.lcssa, i64 14 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.au = load i8, ptr %i.at, align 2
  %i.av = zext i8 %i.au to i64
  %i.aw = add nuw nsw i64 %i.am, %i.as
  %i.ax = add nuw nsw i64 %i.ap, %i.av
end_hunk_0
