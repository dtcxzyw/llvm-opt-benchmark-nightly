inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb13UpdateSegment6UpdateENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m:bb.a
  %i.ay = icmp eq i64 %index.next373, %n.vec370
  br i1 %i.ay, label %middle.block374, label %vector.body371, !llvm.loop !1138

middle.block374:                                  ; preds = %vector.body371
  %cmp.n375 = icmp eq i64 %i.h, %n.vec370
  br i1 %cmp.n375, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381

_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader, %middle.block374
  %.04263.us.i.ph = phi i64 [ 0, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader ], [ %n.vec370, %middle.block374 ]
  br label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i

_ZN6duckdb15SelectionVectorC2Em.exit.us.i:        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i
  %.04263.us.i = phi i64 [ %i.bb, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i ], [ %.04263.us.i.ph, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i.preheader381 ] ; 3 uses
  %i.az = trunc i64 %.04263.us.i to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.04263.us.i
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !3
  %i.bb = add nuw i64 %.04263.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.bb, %i.h
  br i1 %exitcond76.not.i, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.us.i, !llvm.loop !1139

bb.m:                                             ; preds = %.split.us.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.af) #37
  br label %.body

.split65.us.i:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, %_ZN6duckdb15SelectionVectorC2Em.exit.i, %_ZN6duckdb15SelectionVectorC2Em.exit.us.i, %middle.block, %middle.block374
  %.idx.i = shl nuw nsw i64 %i.h, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i ; 3 uses
  %i.be = ptrtoint ptr %i.ah to i64
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = xor i64 %i.bg, 126
  call fastcc void @"_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_T1_"(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.bd, i64 noundef %i.bh, ptr nonnull readonly %i.a)
  %i.bi = icmp ugt i64 %i.h, 16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
  br i1 %i.bi, label %.preheader.i.i, label %.lr.ph.i20.i.i.i.i

.preheader.i.i:                                   ; preds = %.split65.us.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i
  %.021.i.idx.i.i.i.i = phi i64 [ %.021.i.add.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i ], [ 4, %.split65.us.i ] ; 4 uses
  %.pn20.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i ], [ %i.ah, %.split65.us.i ] ; 3 uses
  %.021.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.021.i.idx.i.i.i.i ; 4 uses
  %.0.val.i.i.i.i.i = load i32, ptr %.021.i.ptr.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.val17.i.i.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !3 ; 2 uses
  %i.bj = zext i32 %.0.val.i.i.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !24 ; 3 uses
  %i.bm = zext i32 %.val17.i.i.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bp = icmp slt i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.preheader.i.i
  %i.bq = icmp samesign ugt i64 %.021.i.idx.i.i.i.i, 4
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !432

bb.o:                                             ; preds = %bb.n
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %i.ah, i64 %.021.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 4
  store i32 %.val17.i.i.i.i.i, ptr %i.br, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

bb.q:                                             ; preds = %.preheader.i.i
  %.0.val13.i.i.i.i.i.i = load i32, ptr %.pn20.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bs = zext i32 %.0.val13.i.i.i.i.i.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !24
  %i.bv = icmp slt i64 %i.bl, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i
  %.0.val16.i.i.i.i.i.i = phi i32 [ %.0.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.val13.i.i.i.i.i.i, %bb.q ]
  %.015.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i, %bb.q ] ; 3 uses
  %.0914.i.i.i.i.i.i = phi ptr [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i, %bb.q ]
  store i32 %.0.val16.i.i.i.i.i.i, ptr %.0914.i.i.i.i.i.i, align 4, !tbaa !3
  %.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i.i.i.i.i = load i32, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bw = zext i32 %.0.val.i.i.i.i.i.i to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !24
  %i.bz = icmp slt i64 %i.bl, %i.by
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i, !llvm.loop !1140

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.q, %bb.p, %bb.o
  %.sink.i.i.i.i.i = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %.021.i.ptr.i.i.i.i, %bb.q ], [ %.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store i32 %.0.val.i.i.i.i.i, ptr %.sink.i.i.i.i.i, align 4, !tbaa !3
  %.021.i.add.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i, 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i, 64
  br i1 %.not.i.i.i.i.i, label %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i", label %.preheader.i.i, !llvm.loop !1141

"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i": ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i", %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i"
  %.08.i.i.i.i.i = phi ptr [ %i.cn, %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i" ], [ %i.ca, %"_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_.exit.i.i.i.i" ] ; 5 uses
  %i.cb = load i32, ptr %.08.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %.012.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i.i, i64 -4 ; 2 uses
  %.0.val13.i.i11.i.i.i.i = load i32, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.cf = zext i32 %.0.val13.i.i11.i.i.i.i to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !24
  %i.ci = icmp slt i64 %i.ce, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i13.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i13.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i
  %.0.val16.i.i14.i.i.i.i = phi i32 [ %.0.val.i.i18.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.0.val13.i.i11.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.015.i.i15.i.i.i.i = phi ptr [ %.0.i.i17.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.0914.i.i16.i.i.i.i = phi ptr [ %.015.i.i15.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i32 %.0.val16.i.i14.i.i.i.i, ptr %.0914.i.i16.i.i.i.i, align 4, !tbaa !3
  %.0.i.i17.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i15.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i18.i.i.i.i = load i32, ptr %.0.i.i17.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.cj = zext i32 %.0.val.i.i18.i.i.i.i to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = icmp slt i64 %i.ce, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i13.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !1140

"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.lcssa.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.015.i.i15.i.i.i.i, %.lr.ph.i.i13.i.i.i.i ]
  store i32 %i.cb, ptr %.09.lcssa.i.i.i.i.i.i, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i12.i.i.i.i = icmp eq ptr %i.cn, %i.bd
  br i1 %.not.i12.i.i.i.i, label %.lr.ph68.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1142

.lr.ph.i20.i.i.i.i:                               ; preds = %.split65.us.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i
  %.021.i21.i.i.i.i = phi ptr [ %.0.i29.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i ], [ %scevgep.i.i.i.i, %.split65.us.i ] ; 6 uses
  %.pn20.i22.i.i.i.i = phi ptr [ %.021.i21.i.i.i.i, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i ], [ %i.ah, %.split65.us.i ] ; 4 uses
  %.0.val.i23.i.i.i.i = load i32, ptr %.021.i21.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %.val17.i24.i.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !3 ; 2 uses
  %i.co = zext i32 %.0.val.i23.i.i.i.i to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24 ; 3 uses
  %i.cr = zext i32 %.val17.i24.i.i.i.i to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !24
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.lr.ph.i20.i.i.i.i
  %i.cv = ptrtoint ptr %.021.i21.i.i.i.i to i64
  %i.cw = sub i64 %i.cv, %i.be                    ; 3 uses
  %i.cx = ashr exact i64 %i.cw, 2                 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 1
  br i1 %i.cy, label %bb.s, label %bb.t, !prof !432

bb.s:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn20.i22.i.i.i.i, i64 8
  %i.da = sub nsw i64 0, %i.cx
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.db, ptr noundef nonnull align 4 dereferenceable(1) %i.ah, i64 %i.cw, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.dc = icmp eq i64 %i.cw, 4
  br i1 %i.dc, label %bb.u, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn20.i22.i.i.i.i, i64 4
  store i32 %.val17.i24.i.i.i.i, ptr %i.dd, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i20.i.i.i.i
  %.0.val13.i.i26.i.i.i.i = load i32, ptr %.pn20.i22.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.de = zext i32 %.0.val13.i.i26.i.i.i.i to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !24
  %i.dh = icmp slt i64 %i.cq, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i31.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i

.lr.ph.i.i31.i.i.i.i:                             ; preds = %bb.v, %.lr.ph.i.i31.i.i.i.i
  %.0.val16.i.i32.i.i.i.i = phi i32 [ %.0.val.i.i36.i.i.i.i, %.lr.ph.i.i31.i.i.i.i ], [ %.0.val13.i.i26.i.i.i.i, %bb.v ]
  %.015.i.i33.i.i.i.i = phi ptr [ %.0.i.i35.i.i.i.i, %.lr.ph.i.i31.i.i.i.i ], [ %.pn20.i22.i.i.i.i, %bb.v ] ; 3 uses
  %.0914.i.i34.i.i.i.i = phi ptr [ %.015.i.i33.i.i.i.i, %.lr.ph.i.i31.i.i.i.i ], [ %.021.i21.i.i.i.i, %bb.v ]
  store i32 %.0.val16.i.i32.i.i.i.i, ptr %.0914.i.i34.i.i.i.i, align 4, !tbaa !3
  %.0.i.i35.i.i.i.i = getelementptr inbounds i8, ptr %.015.i.i33.i.i.i.i, i64 -4 ; 2 uses
  %.0.val.i.i36.i.i.i.i = load i32, ptr %.0.i.i35.i.i.i.i, align 4, !tbaa !3 ; 2 uses
  %i.di = zext i32 %.0.val.i.i36.i.i.i.i to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !24
  %i.dl = icmp slt i64 %i.cq, %i.dk
  br i1 %i.dl, label %.lr.ph.i.i31.i.i.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i, !llvm.loop !1140

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i: ; preds = %.lr.ph.i.i31.i.i.i.i, %bb.v, %bb.u, %bb.t, %bb.s
  %.sink.i28.i.i.i.i = phi ptr [ %i.ah, %bb.u ], [ %i.ah, %bb.s ], [ %i.ah, %bb.t ], [ %.021.i21.i.i.i.i, %bb.v ], [ %.015.i.i33.i.i.i.i, %.lr.ph.i.i31.i.i.i.i ]
  store i32 %.0.val.i23.i.i.i.i, ptr %.sink.i28.i.i.i.i, align 4, !tbaa !3
  %.0.i29.i.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i21.i.i.i.i, i64 4 ; 2 uses
  %.not.i30.i.i.i.i = icmp eq ptr %.0.i29.i.i.i.i, %i.bd
  br i1 %.not.i30.i.i.i.i, label %.lr.ph68.i, label %.lr.ph.i20.i.i.i.i, !llvm.loop !1141

.lr.ph68.i:                                       ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i27.i.i.i.i, %"_ZSt25__unguarded_linear_insertIPjN9__gnu_cxx5__ops14_Val_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_T0_.exit.i.i.i.i.i"
  %i.dm = load ptr, ptr %13, align 8, !tbaa !152  ; 4 uses
  %.not.i55.i = icmp eq ptr %i.dm, null
  %umax.i = call i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.h, i64 2)
  br label %bb.al

_ZN6duckdb15SelectionVectorC2Em.exit.i:           ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit, %_ZN6duckdb15SelectionVectorC2Em.exit.i
  %.04263.i = phi i64 [ %i.ec, %_ZN6duckdb15SelectionVectorC2Em.exit.i ], [ %.04263.i.unr, %_ZN6duckdb15SelectionVectorC2Em.exit.i.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.04263.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.04263.i
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !3
  %i.dq = add nuw i64 %.04263.i, 1                ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dq
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = add nuw i64 %.04263.i, 2                ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.du
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !3
  %i.dy = add nuw i64 %.04263.i, 3                ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dy
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !3
  %i.ec = add nuw i64 %.04263.i, 4                ; 2 uses
  %exitcond75.not.i.3 = icmp eq i64 %i.ec, %i.h
  br i1 %exitcond75.not.i.3, label %.split65.us.i, label %_ZN6duckdb15SelectionVectorC2Em.exit.i, !llvm.loop !1143

._crit_edge.i:                                    ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !93 ; 2 uses
  %i.eg = load <2 x ptr>, ptr %i.af, align 8, !tbaa !309
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.el = atomicrmw volatile add ptr %i.eh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.y, %bb.x, %._crit_edge.i
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !93 ; 8 uses
  store <2 x ptr> %i.eg, ptr %i.ed, align 8, !tbaa !309
  %.not.i.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.eo, align 8, !tbaa !94
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !96
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #37, !inline_history !1144
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #37, !inline_history !1144
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.er, %bb.ac ], [ %i.fb, %bb.ad ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.ae, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i, !prof !99

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #37
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.aa, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i
  %i.fd = load ptr, ptr %13, align 8, !tbaa !152
  store ptr %i.fd, ptr %16, align 8, !tbaa !152
  %i.fe = load ptr, ptr %i.ee, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i53.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i53.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 4 uses
  %i.fg = load atomic i64, ptr %i.ff acquire, align 8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 4294967297
  %i.fi = trunc i64 %i.fg to i32                  ; 2 uses
  br i1 %i.fh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.ff, align 8, !tbaa !94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !96
  %i.fk = load ptr, ptr %i.fe, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #37, !inline_history !1145
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #37, !inline_history !1145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i54.i = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i.i.i54.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fr = add nsw i32 %i.fi, -1
  store i32 %i.fr, ptr %i.ff, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fs = atomicrmw volatile add ptr %i.ff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fi, %bb.ai ], [ %i.fs, %bb.aj ]
  %i.ft = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ft, label %bb.ak, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !99

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #37
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ag, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %.pre = load ptr, ptr %16, align 8, !tbaa !152
  br label %.loopexit295

bb.al:                                            ; preds = %bb.ao, %.lr.ph68.i
  %.03467.i = phi i64 [ 1, %.lr.ph68.i ], [ %i.gk, %bb.ao ] ; 4 uses
  %.03566.i = phi i64 [ 1, %.lr.ph68.i ], [ %.136.i, %bb.ao ] ; 3 uses
  %i.fu = add i64 %.03467.i, -1                   ; 2 uses
  br i1 %.not.i55.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit58.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.03467.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = zext i32 %i.fz to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit58.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit58.i: ; preds = %bb.am, %bb.al
  %i.gb = phi i64 [ %i.fx, %bb.am ], [ %i.fu, %bb.al ]
  %i.gc = phi i64 [ %i.ga, %bb.am ], [ %.03467.i, %bb.al ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gb
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !24
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gc
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !24
  %.not45.i = icmp eq i64 %i.ge, %i.gg
  br i1 %.not45.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit58.i
  %i.gh = add i64 %.03566.i, 1
  %i.gi = trunc i64 %i.gc to i32
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.03566.i
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZNK6duckdb15SelectionVector9get_indexEm.exit58.i
  %.136.i = phi i64 [ %i.gh, %bb.an ], [ %.03566.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit58.i ] ; 2 uses
  %i.gk = add nuw i64 %.03467.i, 1                ; 2 uses
  %exitcond77.not.i = icmp eq i64 %i.gk, %umax.i
  br i1 %exitcond77.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !1146

.loopexit295:                                     ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.j
  %i.gl = phi ptr [ %.pre, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ %.pre305, %bb.j ] ; 2 uses
  %.0.i = phi i64 [ %.136.i, %_ZN6duckdb15SelectionVectorD2Ev.exit.i ], [ 1, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i131 = icmp eq ptr %i.gl, null
  br i1 %.not.i131, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit295.thread349, %.loopexit295
  %.0.i352 = phi i64 [ %i.h, %.loopexit295.thread349 ], [ %.0.i, %.loopexit295 ]
  %i.gm = phi ptr [ %.pre305, %.loopexit295.thread349 ], [ %i.gl, %.loopexit295 ]
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = zext i32 %i.gn to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.loopexit295.thread, %bb.ap, %.loopexit295
  %.0.i348 = phi i64 [ %.0.i352, %bb.ap ], [ %.0.i, %.loopexit295 ], [ %i.h, %.loopexit295.thread ] ; 2 uses
  %i.gp = phi i64 [ %i.go, %bb.ap ], [ 0, %.loopexit295 ], [ 0, %.loopexit295.thread ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !24
  %i.gs = sub i64 %i.gr, %8                       ; 2 uses
  %i.gt = lshr i64 %i.gs, 11                      ; 9 uses
  %i.gu = and i64 %i.gs, -2048
  %i.gv = add i64 %i.gu, %8                       ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !1002
  %.not274 = icmp eq ptr %i.gx, null
  br i1 %.not274, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.gy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10UpdateNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %bb.ar unwind label %bb.ax     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 72
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !1004
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !1007
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = ashr exact i64 %i.hf, 4
  %.not = icmp ult i64 %i.gt, %i.hg
  br i1 %.not, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.hh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10UpdateNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_17UndoBufferPointerELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 noundef %i.gt)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !1147
  %.not275 = icmp eq ptr %i.hk, null
  br i1 %.not275, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au, %bb.ar, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !1148
  %i.hn = invoke noundef i64 %i.hm(ptr noundef nonnull align 8 dereferenceable(73) %15, ptr noundef nonnull %5, i64 noundef %.0.i348, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %i.gv)
          to label %bb.aw unwind label %bb.ax     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.fi, label %bb.ay

bb.ax:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.at, %bb.as, %bb.aq
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.aw, %bb.au
  %.0 = phi i64 [ %i.hn, %bb.aw ], [ %.0.i348, %bb.au ] ; 9 uses
  invoke void @_ZN6duckdb13UpdateSegment20InitializeUpdateInfoEm(ptr noundef nonnull align 8 dereferenceable(352) %0, i64 noundef %i.gt)
          to label %bb.az unwind label %bb.ax

bb.az:                                            ; preds = %bb.ay
  %i.hq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10UpdateNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %bb.ba unwind label %bb.ax

bb.ba:                                            ; preds = %bb.az
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  %i.hs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_17UndoBufferPointerELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %i.gt)
          to label %bb.bb unwind label %bb.ax

bb.bb:                                            ; preds = %bb.ba
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !1147
  %.not276 = icmp eq ptr %i.ht, null
  br i1 %.not276, label %bb.dx, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.hu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10UpdateNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %bb.bd unwind label %bb.cd

bb.bd:                                            ; preds = %bb.bc
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 64
  %i.hw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_17UndoBufferPointerELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 noundef %i.gt)
          to label %bb.be unwind label %bb.cd

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false), !tbaa.struct !1149
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  invoke void @_ZNK6duckdb17UndoBufferPointer3PinEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::UndoBufferReference") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.bf unwind label %bb.ce

bb.bf:                                            ; preds = %bb.be
  %i.hx = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %bb.bg unwind label %bb.cf

bb.bg:                                            ; preds = %bb.bf
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !457
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !460
  %i.ib = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !1093
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ic ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #37
  store ptr null, ptr %19, align 8, !tbaa !1150
  %i.ie = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  invoke void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %bb.bh unwind label %bb.cg

bb.bh:                                            ; preds = %bb.bg
  %i.if = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  store i64 0, ptr %i.if, align 8, !tbaa !1093
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 72 ; 3 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.ig, align 8, !tbaa !1008 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 80 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload247 = load i64, ptr %.sroa.2.0..sroa_idx246, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.013.0.copyload, ptr %9, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.ih, align 8
  %.not14.i = icmp eq ptr %.sroa.013.0.copyload, null
  br i1 %.not14.i, label %.loopexit292, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.bh
  %i.ii = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.bi

bb.bi:                                            ; preds = %.thread.i, %.lr.ph15.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZNK6duckdb17UndoBufferPointer3PinEv(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::UndoBufferReference") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc139 unwind label %bb.ch

.noexc139:                                        ; preds = %bb.bi
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ii)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %.noexc139
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !457
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !460
  %i.io = load i64, ptr %i.ij, align 8, !tbaa !1093
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.io ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32 ; 2 uses
  %i.ir = load atomic i64, ptr %i.iq seq_cst, align 8
  %i.is = icmp eq i64 %i.ir, %.sroa.1.0.copyload
  br i1 %i.is, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.it = load i64, ptr %10, align 8, !tbaa !1008
  store i64 %i.it, ptr %19, align 8, !tbaa !1008
  %i.iu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %i.ik) #37 ; 0 uses
  %i.iv = load i64, ptr %i.ij, align 8, !tbaa !1093
  store i64 %i.iv, ptr %i.if, align 8, !tbaa !1093
  br label %.thread.i

bb.bl:                                            ; preds = %.noexc139
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bm:                                            ; preds = %bb.bj
  %i.ix = load atomic i64, ptr %i.iq seq_cst, align 8
  %i.iy = icmp ugt i64 %i.ix, %.sroa.2.0.copyload247
  br i1 %i.iy, label %bb.bn, label %.thread.i

bb.bn:                                            ; preds = %bb.bm
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 88 ; 4 uses
  %i.ja = load ptr, ptr %16, align 8, !tbaa !152  ; 3 uses
  %.not.i.i136 = icmp eq ptr %i.ja, null
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 2 uses
  br i1 %.not.i.i136, label %.split.us.i138, label %.split.i

.split.us.i138:                                   ; preds = %bb.bn
  %i.jc = load i64, ptr %5, align 8, !tbaa !24
  %i.jd = sub nsw i64 %i.jc, %i.gv                ; 2 uses
end_hunk_0
