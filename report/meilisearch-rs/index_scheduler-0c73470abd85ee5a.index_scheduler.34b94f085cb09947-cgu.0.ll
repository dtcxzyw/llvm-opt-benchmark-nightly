inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN4core5slice4sort6shared9smallsort18small_sort_general17h10b4c526cb4144fcE:bb.a
.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx44 = mul nuw nsw i64 %.sroa.08.09.1.i, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx44 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !alias.scope !131654
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %.val9.i39.1.i = load i64, ptr %i.db, align 8, !alias.scope !131652, !noalias !131649, !noundef !14 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 -8
  %.val10.i40.1.i = load i64, ptr %i.dc, align 8, !alias.scope !131652, !noalias !131649, !noundef !14 ; 2 uses
  %i.dd = icmp ult i64 %.val9.i39.1.i, 288230376151711744
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp ult i64 %.val10.i40.1.i, 288230376151711744
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp samesign ult i64 %.val10.i40.1.i, %.val9.i39.1.i
  br i1 %i.df, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %.sroa.0.0.i41.1.i35 = getelementptr inbounds i8, ptr %i.da, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i35, i64 24, i1 false), !alias.scope !131652, !noalias !131649
  %i.dg = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.dg, label %._crit_edge39, label %.lr.ph38

.preheader:                                       ; preds = %.lr.ph38
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i37, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i37, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i, i64 24, i1 false), !alias.scope !131652, !noalias !131649
  %i.dh = icmp eq ptr %.sroa.0.0.i41.1.i, %i.cx
  br i1 %i.dh, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i37 = phi ptr [ %.sroa.0.0.i41.1.i, %.preheader ], [ %.sroa.0.0.i41.1.i35, %.preheader.preheader ] ; 5 uses
  %.sroa.5.0.i.1.i36 = phi ptr [ %.sroa.0.0.i41.1.i37, %.preheader ], [ %i.da, %.preheader.preheader ] ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.5.0.i.1.i36, i64 -32
  %.val8.i42.1.i = load i64, ptr %i.di, align 8, !alias.scope !131652, !noalias !131649, !noundef !14 ; 2 uses
  %i.dj = icmp ult i64 %.val8.i42.1.i, 288230376151711744
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp samesign ult i64 %.val8.i42.1.i, %.val9.i39.1.i
  br i1 %i.dk, label %.preheader, label %._crit_edge39

._crit_edge39:                                    ; preds = %.preheader, %.lr.ph38, %.preheader.preheader
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.da, %.preheader.preheader ], [ %.sroa.0.0.i41.1.i37, %.preheader ], [ %.sroa.5.0.i.1.i36, %.lr.ph38 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cx, %.preheader.preheader ], [ %i.cx, %.preheader ], [ %.sroa.0.0.i41.1.i37, %.lr.ph38 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !131654
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i39.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !131652, !noalias !131655
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i: ; preds = %._crit_edge39, %.lr.ph.1.i
  %i.dl = icmp ult i64 %.sroa.08.110.1.i, %i.cu   ; 2 uses
  %i.dm = zext i1 %i.dl to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.dm
  br i1 %i.dl, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.1.i, %.loopexit.i
  %i.dn = add nsw i64 %1, -1                      ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.dn
  %i.dq = getelementptr i8, ptr %i.cx, i64 -24
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dr = getelementptr i8, ptr %i.ei, i64 24     ; 2 uses
  %i.ds = getelementptr i8, ptr %i.eh, i64 24
  %i.dt = and i64 %1, 1
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.g, label %bb.f

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.06.09.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 3 uses
  %.sroa.010.08.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.dq, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.dp, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.do, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.dv, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.dv = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.06.09.i.i, i64 16
  %.sroa.06.0.val.i.i = load i64, ptr %i.dw, align 8, !alias.scope !131660, !noalias !131649, !noundef !14 ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.010.i.i, i64 16
  %.sroa.0.0.val.i.i = load i64, ptr %i.dx, align 8, !alias.scope !131660, !noalias !131649, !noundef !14 ; 2 uses
  %i.dy = icmp ult i64 %.sroa.06.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp ult i64 %.sroa.0.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.dz)
  %.not = icmp samesign ult i64 %.sroa.0.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.06.09.i.i, ptr %.sroa.0.010.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.08.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !131654, !noalias !131663
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 24
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 24 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val.i.i = load i64, ptr %i.eb, align 8, !alias.scope !131660, !noalias !131649, !noundef !14 ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.013.07.i.i, i64 16
  %.sroa.013.0.val.i.i = load i64, ptr %i.ec, align 8, !alias.scope !131660, !noalias !131649, !noundef !14 ; 2 uses
  %i.ed = icmp ult i64 %.sroa.015.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp ult i64 %.sroa.013.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp samesign ult i64 %.sroa.013.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.ef, ptr %.sroa.013.07.i.i, ptr %.sroa.015.06.i.i
  %i.eg = xor i1 %i.ef, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.05.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !131654, !noalias !131667
  %.neg.i.i.i = sext i1 %i.eg to i64
  %i.eh = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.ef to i64
  %i.ei = getelementptr [24 x i8], ptr %.sroa.013.07.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.dv, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %.not24 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.dr ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %.not24, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0..sroa.06.0.i.i, i64 24, i1 false), !alias.scope !131654
  %.sroa.sel17.idx.sroa.sel.idx = select i1 %.not24, i64 24, i64 0
  %.sroa.sel17.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not24, i64 0, i64 24
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.f ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel17.idx.sroa.sel, %bb.f ]
  %i.ek = icmp ne ptr %.sroa.0.1.i.i, %i.dr
  %i.el = icmp ne ptr %.sroa.06.1.i.i, %i.ds
  %or.cond.i.i = select i1 %i.ek, i1 true, i1 %i.el, !prof !7777
  br i1 %or.cond.i.i, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb06157c167d5333dE.exit, !prof !7777

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #80
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.en, i1 false), !alias.scope !131654, !noalias !131671
  resume { ptr, i32 } %i.em

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false), !alias.scope !131654
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %.val9.i39.i = load i64, ptr %i.eq, align 8, !alias.scope !131652, !noalias !131649, !noundef !14 ; 4 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 -8
  %.val10.i40.i = load i64, ptr %i.er, align 8, !alias.scope !131652, !noalias !131649, !noundef !14 ; 2 uses
  %i.es = icmp ult i64 %.val9.i39.i, 288230376151711744
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp ult i64 %.val10.i40.i, 288230376151711744
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp samesign ult i64 %.val10.i40.i, %.val9.i39.i
  br i1 %i.eu, label %.preheader5.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.i

.preheader5.preheader:                            ; preds = %.lr.ph.i
  %.sroa.0.0.i41.i29 = getelementptr inbounds i8, ptr %i.ep, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i29, i64 24, i1 false), !alias.scope !131652, !noalias !131649
  %i.ev = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.ev, label %._crit_edge, label %.lr.ph

.preheader5:                                      ; preds = %.lr.ph
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i31, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i31, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i, i64 24, i1 false), !alias.scope !131652, !noalias !131649
  %i.ew = icmp eq ptr %.sroa.0.0.i41.i, %i.a
  br i1 %i.ew, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5.preheader, %.preheader5
  %.sroa.0.0.i41.i31 = phi ptr [ %.sroa.0.0.i41.i, %.preheader5 ], [ %.sroa.0.0.i41.i29, %.preheader5.preheader ] ; 5 uses
  %.sroa.5.0.i.i30 = phi ptr [ %.sroa.0.0.i41.i31, %.preheader5 ], [ %i.ep, %.preheader5.preheader ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.sroa.5.0.i.i30, i64 -32
  %.val8.i42.i = load i64, ptr %i.ex, align 8, !alias.scope !131652, !noalias !131649, !noundef !14 ; 2 uses
  %i.ey = icmp ult i64 %.val8.i42.i, 288230376151711744
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp samesign ult i64 %.val8.i42.i, %.val9.i39.i
  br i1 %i.ez, label %.preheader5, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader5, %.lr.ph, %.preheader5.preheader
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ep, %.preheader5.preheader ], [ %.sroa.0.0.i41.i31, %.preheader5 ], [ %.sroa.5.0.i.i30, %.lr.ph ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %.preheader5.preheader ], [ %i.a, %.preheader5 ], [ %.sroa.0.0.i41.i31, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !alias.scope !131654
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i39.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !131652, !noalias !131655
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h8bbcd770b05ccecdE.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.fa = icmp samesign ult i64 %.sroa.08.110.i, %i.c ; 2 uses
  %i.fb = zext i1 %i.fa to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.fb
  br i1 %i.fa, label %.lr.ph.i, label %.loopexit.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hb06157c167d5333dE.exit: ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h352a1747a6df1ef0E(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1152 x i8], align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131679)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5599cee126b4d985E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 1                           ; 10 uses
  %i.d = icmp samesign ugt i64 %1, 7
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val12.i.i = load i64, ptr %i.e, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val13.i.i = load i64, ptr %i.f, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.g = icmp ult i64 %.val12.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i64 %.val13.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ult i64 %.val13.i.i, %.val12.i.i ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 88
  %.val10.i.i = load i64, ptr %i.j, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 64
  %.val11.i.i = load i64, ptr %i.k, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.l = icmp ult i64 %.val10.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp ult i64 %.val11.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ult i64 %.val11.i.i, %.val10.i.i ; 2 uses
  %i.o = zext i1 %i.i to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = xor i1 %i.i, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.n, i64 3, i64 2
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = select i1 %i.n, i64 2, i64 3
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.u, i64 16
  %.val8.i.i = load i64, ptr %i.x, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 16
  %.val9.i.i = load i64, ptr %i.y, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.z = icmp ult i64 %.val8.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp ult i64 %.val9.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ult i64 %.val9.i.i, %.val8.i.i ; 3 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  %.val6.i.i = load i64, ptr %i.ac, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 16
  %.val7.i.i = load i64, ptr %i.ad, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.ae = icmp ult i64 %.val6.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp ult i64 %.val7.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ult i64 %.val7.i.i, %.val6.i.i ; 3 uses
  %i.ah = select i1 %i.ab, ptr %i.u, ptr %i.p, !unpredictable !14
  %i.ai = select i1 %i.ag, ptr %i.s, ptr %i.w, !unpredictable !14
  %i.aj = select i1 %i.ag, ptr %i.u, ptr %i.s, !unpredictable !14
  %i.ak = select i1 %i.ab, ptr %i.p, ptr %i.aj, !unpredictable !14 ; 3 uses
  %i.al = select i1 %i.ab, ptr %i.s, ptr %i.u, !unpredictable !14
  %i.am = select i1 %i.ag, ptr %i.w, ptr %i.al, !unpredictable !14 ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  %.val5.i.i = load i64, ptr %i.ao, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.ap = icmp ult i64 %.val.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp ult i64 %.val5.i.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp samesign ult i64 %.val5.i.i, %.val.i.i ; 2 uses
  %i.as = select i1 %i.ar, ptr %i.am, ptr %i.ak, !unpredictable !14
  %i.at = select i1 %i.ar, ptr %i.ak, ptr %i.am, !unpredictable !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !alias.scope !131681
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !alias.scope !131681
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !alias.scope !131681
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !alias.scope !131681
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c ; 8 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c ; 4 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 40
  %.val12.i29.i = load i64, ptr %i.az, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 16
  %.val13.i30.i = load i64, ptr %i.ba, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.bb = icmp ult i64 %.val12.i29.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp ult i64 %.val13.i30.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ult i64 %.val13.i30.i, %.val12.i29.i ; 2 uses
  %i.be = getelementptr i8, ptr %i.ax, i64 88
  %.val10.i31.i = load i64, ptr %i.be, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ax, i64 64
  %.val11.i32.i = load i64, ptr %i.bf, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.bg = icmp ult i64 %.val10.i31.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp ult i64 %.val11.i32.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ult i64 %.val11.i32.i, %.val10.i31.i ; 2 uses
  %i.bj = zext i1 %i.bd to i64
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bd, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 16
  %.val8.i33.i = load i64, ptr %i.bs, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 16
  %.val9.i34.i = load i64, ptr %i.bt, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.bu = icmp ult i64 %.val8.i33.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp ult i64 %.val9.i34.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ult i64 %.val9.i34.i, %.val8.i33.i ; 3 uses
  %i.bx = getelementptr i8, ptr %i.br, i64 16
  %.val6.i35.i = load i64, ptr %i.bx, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bn, i64 16
  %.val7.i36.i = load i64, ptr %i.by, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.bz = icmp ult i64 %.val6.i35.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp ult i64 %.val7.i36.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ult i64 %.val7.i36.i, %.val6.i35.i ; 3 uses
  %i.cc = select i1 %i.bw, ptr %i.bp, ptr %i.bk, !unpredictable !14
  %i.cd = select i1 %i.cb, ptr %i.bn, ptr %i.br, !unpredictable !14
  %i.ce = select i1 %i.cb, ptr %i.bp, ptr %i.bn, !unpredictable !14
  %i.cf = select i1 %i.bw, ptr %i.bk, ptr %i.ce, !unpredictable !14 ; 3 uses
  %i.cg = select i1 %i.bw, ptr %i.bn, ptr %i.bp, !unpredictable !14
  %i.ch = select i1 %i.cb, ptr %i.br, ptr %i.cg, !unpredictable !14 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %.val.i37.i = load i64, ptr %i.ci, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cf, i64 16
  %.val5.i38.i = load i64, ptr %i.cj, align 8, !alias.scope !131676, !noalias !131679, !noundef !14 ; 2 uses
  %i.ck = icmp ult i64 %.val.i37.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp ult i64 %.val5.i38.i, 288230376151711744
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp samesign ult i64 %.val5.i38.i, %.val.i37.i ; 2 uses
  %i.cn = select i1 %i.cm, ptr %i.ch, ptr %i.cf, !unpredictable !14
  %i.co = select i1 %i.cm, ptr %i.cf, ptr %i.ch, !unpredictable !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !131681
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !alias.scope !131681
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !alias.scope !131681
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !alias.scope !131681
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !131681
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !131681
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 6 uses
  %i.cu = sub nsw i64 %1, %i.c                    ; 2 uses
  %i.cv = icmp samesign ult i64 %.sroa.0.0.i, %i.c
  br i1 %i.cv, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i, %bb.e
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.cx = getelementptr [24 x i8], ptr %i.a, i64 %i.c ; 6 uses
  %i.cy = icmp ult i64 %.sroa.0.0.i, %i.cu
  br i1 %i.cy, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx44 = mul nuw nsw i64 %.sroa.08.09.1.i, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx44 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !alias.scope !131681
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %.val9.i39.1.i = load i64, ptr %i.db, align 8, !alias.scope !131679, !noalias !131676, !noundef !14 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 -8
  %.val10.i40.1.i = load i64, ptr %i.dc, align 8, !alias.scope !131679, !noalias !131676, !noundef !14 ; 2 uses
  %i.dd = icmp ult i64 %.val9.i39.1.i, 288230376151711744
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp ult i64 %.val10.i40.1.i, 288230376151711744
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp samesign ult i64 %.val10.i40.1.i, %.val9.i39.1.i
  br i1 %i.df, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %.sroa.0.0.i41.1.i35 = getelementptr inbounds i8, ptr %i.da, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i35, i64 24, i1 false), !alias.scope !131679, !noalias !131676
  %i.dg = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.dg, label %._crit_edge39, label %.lr.ph38

.preheader:                                       ; preds = %.lr.ph38
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i37, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i37, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i, i64 24, i1 false), !alias.scope !131679, !noalias !131676
  %i.dh = icmp eq ptr %.sroa.0.0.i41.1.i, %i.cx
  br i1 %i.dh, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i37 = phi ptr [ %.sroa.0.0.i41.1.i, %.preheader ], [ %.sroa.0.0.i41.1.i35, %.preheader.preheader ] ; 5 uses
  %.sroa.5.0.i.1.i36 = phi ptr [ %.sroa.0.0.i41.1.i37, %.preheader ], [ %i.da, %.preheader.preheader ] ; 2 uses
  %i.di = getelementptr i8, ptr %.sroa.5.0.i.1.i36, i64 -32
  %.val8.i42.1.i = load i64, ptr %i.di, align 8, !alias.scope !131679, !noalias !131676, !noundef !14 ; 2 uses
  %i.dj = icmp ult i64 %.val8.i42.1.i, 288230376151711744
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp samesign ult i64 %.val8.i42.1.i, %.val9.i39.1.i
  br i1 %i.dk, label %.preheader, label %._crit_edge39

._crit_edge39:                                    ; preds = %.preheader, %.lr.ph38, %.preheader.preheader
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.da, %.preheader.preheader ], [ %.sroa.0.0.i41.1.i37, %.preheader ], [ %.sroa.5.0.i.1.i36, %.lr.ph38 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cx, %.preheader.preheader ], [ %i.cx, %.preheader ], [ %.sroa.0.0.i41.1.i37, %.lr.ph38 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !131681
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i39.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !131679, !noalias !131682
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i: ; preds = %._crit_edge39, %.lr.ph.1.i
  %i.dl = icmp ult i64 %.sroa.08.110.1.i, %i.cu   ; 2 uses
  %i.dm = zext i1 %i.dl to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.dm
  br i1 %i.dl, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.1.i, %.loopexit.i
  %i.dn = add nsw i64 %1, -1                      ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.dn
  %i.dq = getelementptr i8, ptr %i.cx, i64 -24
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dr = getelementptr i8, ptr %i.ei, i64 24     ; 2 uses
  %i.ds = getelementptr i8, ptr %i.eh, i64 24
  %i.dt = and i64 %1, 1
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.g, label %bb.f

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.06.09.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 3 uses
  %.sroa.010.08.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.dq, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.dp, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.do, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.dv, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.dv = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.06.09.i.i, i64 16
  %.sroa.06.0.val.i.i = load i64, ptr %i.dw, align 8, !alias.scope !131687, !noalias !131676, !noundef !14 ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.010.i.i, i64 16
  %.sroa.0.0.val.i.i = load i64, ptr %i.dx, align 8, !alias.scope !131687, !noalias !131676, !noundef !14 ; 2 uses
  %i.dy = icmp ult i64 %.sroa.06.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.dy)
  %i.dz = icmp ult i64 %.sroa.0.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.dz)
  %.not = icmp samesign ult i64 %.sroa.0.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.06.09.i.i, ptr %.sroa.0.010.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.08.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !131681, !noalias !131690
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 24
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 24 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val.i.i = load i64, ptr %i.eb, align 8, !alias.scope !131687, !noalias !131676, !noundef !14 ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.013.07.i.i, i64 16
  %.sroa.013.0.val.i.i = load i64, ptr %i.ec, align 8, !alias.scope !131687, !noalias !131676, !noundef !14 ; 2 uses
  %i.ed = icmp ult i64 %.sroa.015.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.ed)
  %i.ee = icmp ult i64 %.sroa.013.0.val.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp samesign ult i64 %.sroa.013.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.ef, ptr %.sroa.013.07.i.i, ptr %.sroa.015.06.i.i
  %i.eg = xor i1 %i.ef, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.017.05.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !131681, !noalias !131694
  %.neg.i.i.i = sext i1 %i.eg to i64
  %i.eh = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.ef to i64
  %i.ei = getelementptr [24 x i8], ptr %.sroa.013.07.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.dv, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %.not24 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.dr ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %.not24, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0..sroa.06.0.i.i, i64 24, i1 false), !alias.scope !131681
  %.sroa.sel17.idx.sroa.sel.idx = select i1 %.not24, i64 24, i64 0
  %.sroa.sel17.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not24, i64 0, i64 24
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.f ]
  %.sroa.0.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel17.idx.sroa.sel, %bb.f ]
  %i.ek = icmp ne ptr %.sroa.0.1.i.i, %i.dr
  %i.el = icmp ne ptr %.sroa.06.1.i.i, %i.ds
  %or.cond.i.i = select i1 %i.ek, i1 true, i1 %i.el, !prof !7777
  br i1 %or.cond.i.i, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5599cee126b4d985E.exit, !prof !7777

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #80
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.en, i1 false), !alias.scope !131681, !noalias !131698
  resume { ptr, i32 } %i.em

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false), !alias.scope !131681
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %.val9.i39.i = load i64, ptr %i.eq, align 8, !alias.scope !131679, !noalias !131676, !noundef !14 ; 4 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 -8
  %.val10.i40.i = load i64, ptr %i.er, align 8, !alias.scope !131679, !noalias !131676, !noundef !14 ; 2 uses
  %i.es = icmp ult i64 %.val9.i39.i, 288230376151711744
  call void @llvm.assume(i1 %i.es)
  %i.et = icmp ult i64 %.val10.i40.i, 288230376151711744
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp samesign ult i64 %.val10.i40.i, %.val9.i39.i
  br i1 %i.eu, label %.preheader5.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i

.preheader5.preheader:                            ; preds = %.lr.ph.i
  %.sroa.0.0.i41.i29 = getelementptr inbounds i8, ptr %i.ep, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i29, i64 24, i1 false), !alias.scope !131679, !noalias !131676
  %i.ev = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.ev, label %._crit_edge, label %.lr.ph

.preheader5:                                      ; preds = %.lr.ph
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i31, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i31, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i, i64 24, i1 false), !alias.scope !131679, !noalias !131676
  %i.ew = icmp eq ptr %.sroa.0.0.i41.i, %i.a
  br i1 %i.ew, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5.preheader, %.preheader5
  %.sroa.0.0.i41.i31 = phi ptr [ %.sroa.0.0.i41.i, %.preheader5 ], [ %.sroa.0.0.i41.i29, %.preheader5.preheader ] ; 5 uses
  %.sroa.5.0.i.i30 = phi ptr [ %.sroa.0.0.i41.i31, %.preheader5 ], [ %i.ep, %.preheader5.preheader ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.sroa.5.0.i.i30, i64 -32
  %.val8.i42.i = load i64, ptr %i.ex, align 8, !alias.scope !131679, !noalias !131676, !noundef !14 ; 2 uses
  %i.ey = icmp ult i64 %.val8.i42.i, 288230376151711744
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp samesign ult i64 %.val8.i42.i, %.val9.i39.i
  br i1 %i.ez, label %.preheader5, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader5, %.lr.ph, %.preheader5.preheader
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ep, %.preheader5.preheader ], [ %.sroa.0.0.i41.i31, %.preheader5 ], [ %.sroa.5.0.i.i30, %.lr.ph ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %.preheader5.preheader ], [ %i.a, %.preheader5 ], [ %.sroa.0.0.i41.i31, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !alias.scope !131681
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i39.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !131679, !noalias !131682
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h1a6ec916f8b5daabE.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.fa = icmp samesign ult i64 %.sroa.08.110.i, %i.c ; 2 uses
  %i.fb = zext i1 %i.fa to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.fb
  br i1 %i.fa, label %.lr.ph.i, label %.loopexit.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h5599cee126b4d985E.exit: ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h51450f3f15aad0acE(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 33) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b
  %i.e = getelementptr [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.ae, i64 16      ; 2 uses
  %i.h = getelementptr i8, ptr %i.ad, i64 16
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.u, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.06.09 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.010.08 = phi ptr [ %i.v, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.013.07 = phi ptr [ %i.ae, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.06 = phi ptr [ %i.ad, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.05 = phi ptr [ %i.af, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.sroa.018.04 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.k = add nuw nsw i64 %.sroa.018.04, 1         ; 2 uses
  %.sroa.06.0.val = load ptr, ptr %.sroa.06.09, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.010, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.l = getelementptr i8, ptr %.sroa.06.0.val, i64 8
  %.val1.i.i = load i64, ptr %i.l, align 8, !noundef !14 ; 2 uses
  %.val2.i.i = load ptr, ptr %.sroa.0.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.m = getelementptr i8, ptr %.sroa.0.0.val, i64 8
  %.val3.i.i = load i64, ptr %i.m, align 8, !noundef !14 ; 2 uses
  %i.n = sub i64 %.val1.i.i, %.val3.i.i
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %..i.i.i.i.i), !alias.scope !131703 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p ; 2 uses
  %i.r = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1 ; 2 uses
  %..i23 = select i1 %i.r, ptr %.sroa.0.010, ptr %.sroa.06.09
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.08, ptr noundef nonnull align 8 dereferenceable(16) %..i23, i64 16, i1 false), !noalias !131710
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.09, i64 %spec.store.select.i.i.i.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.r to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.010, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.08, i64 16 ; 2 uses
  %.sroa.015.0.val = load ptr, ptr %.sroa.015.06, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.sroa.013.0.val = load ptr, ptr %.sroa.013.07, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i24 = load ptr, ptr %.sroa.015.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.w = getelementptr i8, ptr %.sroa.015.0.val, i64 8
  %.val1.i.i25 = load i64, ptr %i.w, align 8, !noundef !14 ; 2 uses
  %.val2.i.i26 = load ptr, ptr %.sroa.013.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.x = getelementptr i8, ptr %.sroa.013.0.val, i64 8
  %.val3.i.i27 = load i64, ptr %i.x, align 8, !noundef !14 ; 2 uses
  %i.y = sub i64 %.val1.i.i25, %.val3.i.i27
  %..i.i.i.i.i28 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i25, i64 %.val3.i.i27)
  %i.z = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i24, ptr nonnull readonly align 1 %.val2.i.i26, i64 %..i.i.i.i.i28), !alias.scope !131714 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %spec.store.select.i.i.i.i.i29 = select i1 %i.ab, i64 %i.y, i64 %i.aa ; 2 uses
  %i.ac = icmp sgt i64 %spec.store.select.i.i.i.i.i29, -1 ; 2 uses
  %..i = select i1 %i.ac, ptr %.sroa.015.06, ptr %.sroa.013.07
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.05, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !131721
  %.neg.i = sext i1 %i.ac to i64
  %i.ad = getelementptr [16 x i8], ptr %.sroa.015.06, i64 %.neg.i ; 2 uses
  %spec.store.select.i.i.i.i.i29.lobit = ashr i64 %spec.store.select.i.i.i.i.i29, 63
  %i.ae = getelementptr [16 x i8], ptr %.sroa.013.07, i64 %spec.store.select.i.i.i.i.i29.lobit ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.017.05, i64 -16
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %._crit_edge
  %i.ag = icmp ult ptr %i.u, %i.g                 ; 3 uses
  %.sroa.0.0..sroa.06.0 = select i1 %i.ag, ptr %i.u, ptr %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0..sroa.06.0, i64 16, i1 false)
  %i.ah = zext i1 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ah
  %i.aj = xor i1 %i.ag, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ak
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.06.1 = phi ptr [ %i.s, %._crit_edge ], [ %i.al, %bb.a ]
  %.sroa.0.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ai, %bb.a ]
  %i.am = icmp ne ptr %.sroa.0.1, %i.g
  %i.an = icmp ne ptr %.sroa.06.1, %i.h
  %or.cond = select i1 %i.am, i1 true, i1 %i.an, !prof !7777
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !7777

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #80
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h78f9ffa322cb2a68E(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 33) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b
  %i.e = getelementptr [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.ae, i64 16      ; 2 uses
  %i.h = getelementptr i8, ptr %i.ad, i64 16
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.u, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.06.09 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.010.08 = phi ptr [ %i.v, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.013.07 = phi ptr [ %i.ae, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.06 = phi ptr [ %i.ad, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.05 = phi ptr [ %i.af, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.sroa.018.04 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.k = add nuw nsw i64 %.sroa.018.04, 1         ; 2 uses
  %.sroa.06.0.val = load ptr, ptr %.sroa.06.09, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.010, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.l = getelementptr i8, ptr %.sroa.06.0.val, i64 8
  %.val1.i.i = load i64, ptr %i.l, align 8, !noundef !14 ; 2 uses
  %.val2.i.i = load ptr, ptr %.sroa.0.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.m = getelementptr i8, ptr %.sroa.0.0.val, i64 8
  %.val3.i.i = load i64, ptr %i.m, align 8, !noundef !14 ; 2 uses
  %i.n = sub i64 %.val1.i.i, %.val3.i.i
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %..i.i.i.i.i), !alias.scope !131725 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.q, i64 %i.n, i64 %i.p ; 2 uses
  %i.r = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1 ; 2 uses
  %..i23 = select i1 %i.r, ptr %.sroa.0.010, ptr %.sroa.06.09
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.08, ptr noundef nonnull align 8 dereferenceable(16) %..i23, i64 16, i1 false), !noalias !131732
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.09, i64 %spec.store.select.i.i.i.i.i.lobit ; 4 uses
  %i.t = zext i1 %i.r to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.010, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.08, i64 16 ; 2 uses
  %.sroa.015.0.val = load ptr, ptr %.sroa.015.06, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.sroa.013.0.val = load ptr, ptr %.sroa.013.07, align 8, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i24 = load ptr, ptr %.sroa.015.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.w = getelementptr i8, ptr %.sroa.015.0.val, i64 8
  %.val1.i.i25 = load i64, ptr %i.w, align 8, !noundef !14 ; 2 uses
  %.val2.i.i26 = load ptr, ptr %.sroa.013.0.val, align 8, !nonnull !14, !align !584, !noundef !14
  %i.x = getelementptr i8, ptr %.sroa.013.0.val, i64 8
  %.val3.i.i27 = load i64, ptr %i.x, align 8, !noundef !14 ; 2 uses
  %i.y = sub i64 %.val1.i.i25, %.val3.i.i27
  %..i.i.i.i.i28 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i25, i64 %.val3.i.i27)
  %i.z = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i24, ptr nonnull readonly align 1 %.val2.i.i26, i64 %..i.i.i.i.i28), !alias.scope !131736 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %spec.store.select.i.i.i.i.i29 = select i1 %i.ab, i64 %i.y, i64 %i.aa ; 2 uses
  %i.ac = icmp sgt i64 %spec.store.select.i.i.i.i.i29, -1 ; 2 uses
  %..i = select i1 %i.ac, ptr %.sroa.015.06, ptr %.sroa.013.07
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.05, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !131743
  %.neg.i = sext i1 %i.ac to i64
  %i.ad = getelementptr [16 x i8], ptr %.sroa.015.06, i64 %.neg.i ; 2 uses
  %spec.store.select.i.i.i.i.i29.lobit = ashr i64 %spec.store.select.i.i.i.i.i29, 63
  %i.ae = getelementptr [16 x i8], ptr %.sroa.013.07, i64 %spec.store.select.i.i.i.i.i29.lobit ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.017.05, i64 -16
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %._crit_edge
  %i.ag = icmp ult ptr %i.u, %i.g                 ; 3 uses
  %.sroa.0.0..sroa.06.0 = select i1 %i.ag, ptr %i.u, ptr %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0..sroa.06.0, i64 16, i1 false)
  %i.ah = zext i1 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ah
  %i.aj = xor i1 %i.ag, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ak
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.06.1 = phi ptr [ %i.s, %._crit_edge ], [ %i.al, %bb.a ]
  %.sroa.0.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ai, %bb.a ]
  %i.am = icmp ne ptr %.sroa.0.1, %i.g
  %i.an = icmp ne ptr %.sroa.06.1, %i.h
  %or.cond = select i1 %i.am, i1 true, i1 %i.an, !prof !7777
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !7777
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort8unstable9quicksort9quicksort17h26727edc73c6595aE:bb.a
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h56c6929042a8729eE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = lshr i64 %.sroa.14.0.lcssa, 1            ; 9 uses
  %i.k = icmp samesign ugt i64 %.sroa.14.0.lcssa, 15
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.14.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.14.0.lcssa ; 5 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5644a70882c240c3E(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5644a70882c240c3E(ptr noundef readonly %i.p, ptr noundef %i.q)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h78f9ffa322cb2a68E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 8, ptr noundef nonnull align 8 %i.e), !noalias !134538
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5644a70882c240c3E(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5644a70882c240c3E(ptr noundef readonly %i.u, ptr noundef %i.v)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h78f9ffa322cb2a68E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 8, ptr noundef nonnull %i.s), !noalias !134538
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5644a70882c240c3E(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.e)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h5644a70882c240c3E(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !134539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !134539
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.w = sub nsw i64 %.sroa.14.0.lcssa, %i.j      ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.08.05.1.i.i
  %.idx138 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx138 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !134539
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %.val9.i.1.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.1.i.i = load ptr, ptr %.val9.i.1.i.i, align 8, !noalias !134540, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val9.i.1.i.i, i64 8
  %.val1.i.i.i.1.i.i = load i64, ptr %i.ae, align 8, !noalias !134540, !noundef !14 ; 4 uses
  %.val2.i.i.i.1.i.i = load ptr, ptr %.val10.i.1.i.i, align 8, !noalias !134540, !nonnull !14, !align !584, !noundef !14
  %i.af = getelementptr i8, ptr %.val10.i.1.i.i, i64 8
  %.val3.i.i.i.1.i.i = load i64, ptr %i.af, align 8, !noalias !134540, !noundef !14 ; 2 uses
  %i.ag = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i.i.1.i.i
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i.i.1.i.i)
  %i.ah = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !134541, !noalias !134540 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.ak, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i

bb.h:                                             ; preds = %.lr.ph.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !134536, !noalias !134538
  %i.an = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.an, label %._crit_edge134, label %.lr.ph133

bb.i:                                             ; preds = %.lr.ph133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i131, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !134536, !noalias !134538
  %i.ao = icmp eq ptr %i.ap, %i.z
  br i1 %i.ao, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i29.1.i.i131 = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i131, i64 -16 ; 4 uses
  %.val8.i.1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.1.i.i = load ptr, ptr %.val8.i.1.i.i, align 8, !noalias !134540, !nonnull !14, !align !584, !noundef !14
  %i.aq = getelementptr i8, ptr %.val8.i.1.i.i, i64 8
  %.val3.i.i14.i.1.i.i = load i64, ptr %i.aq, align 8, !noalias !134540, !noundef !14 ; 2 uses
  %i.ar = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i14.i.1.i.i
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i14.i.1.i.i)
  %i.as = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !134548, !noalias !134540 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.au, i64 %i.ar, i64 %i.at
  %i.av = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.av, label %bb.i, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.i, %.lr.ph133, %bb.h
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %.sroa.0.0.i29.1.i.i131, %.lr.ph133 ] ; 2 uses
  store ptr %.val9.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !134536, !noalias !134555
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !134536, !noalias !134555
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i: ; preds = %._crit_edge134, %.lr.ph.1.i.i
  %i.aw = icmp ult i64 %.sroa.08.16.1.i.i, %i.w   ; 2 uses
  %i.ax = zext i1 %i.aw to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.ax
  br i1 %i.aw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h78f9ffa322cb2a68E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h56c6929042a8729eE.exit unwind label %bb.j

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.az, i1 false), !alias.scope !134539, !noalias !134560
  resume { ptr, i32 } %i.ay

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !134539
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val9.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val9.i.i.i, align 8, !noalias !134540, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val9.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !134540, !noundef !14 ; 4 uses
  %.val2.i.i.i.i.i = load ptr, ptr %.val10.i.i.i, align 8, !noalias !134540, !nonnull !14, !align !584, !noundef !14
  %i.be = getelementptr i8, ptr %.val10.i.i.i, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !134540, !noundef !14 ; 2 uses
  %i.bf = sub i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.bg = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !134541, !noalias !134540 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 %i.bf, i64 %i.bh
  %i.bj = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.k, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !134536, !noalias !134538
  %i.bm = icmp eq i64 %.sroa.08.05.i.i, 1
  br i1 %i.bm, label %._crit_edge127, label %.lr.ph126

bb.l:                                             ; preds = %.lr.ph126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.i.i124, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !134536, !noalias !134538
  %i.bn = icmp eq ptr %i.bo, %i.e
  br i1 %i.bn, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i29.i.i124 = phi ptr [ %i.bo, %bb.l ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i29.i.i124, i64 -16 ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !134536, !noalias !134538, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.i.i = load ptr, ptr %.val8.i.i.i, align 8, !noalias !134540, !nonnull !14, !align !584, !noundef !14
  %i.bp = getelementptr i8, ptr %.val8.i.i.i, i64 8
  %.val3.i.i14.i.i.i = load i64, ptr %i.bp, align 8, !noalias !134540, !noundef !14 ; 2 uses
  %i.bq = sub i64 %.val1.i.i.i.i.i, %.val3.i.i14.i.i.i
  %..i.i.i.i.i15.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i14.i.i.i)
  %i.br = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.i.i, i64 %..i.i.i.i.i15.i.i.i), !alias.scope !134548, !noalias !134540 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp eq i32 %i.br, 0
  %spec.store.select.i.i.i.i.i16.i.i.i = select i1 %i.bt, i64 %i.bq, i64 %i.bs
  %i.bu = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i, 0
  br i1 %i.bu, label %bb.l, label %._crit_edge127

._crit_edge127:                                   ; preds = %bb.l, %.lr.ph126, %bb.k
  %.sroa.0.0.i29.lcssa.i.i = phi ptr [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %.sroa.0.0.i29.i.i124, %.lr.ph126 ] ; 2 uses
  store ptr %.val9.i.i.i, ptr %.sroa.0.0.i29.lcssa.i.i, align 8, !alias.scope !134536, !noalias !134555
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.i.i, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !134536, !noalias !134555
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h7abd3bb5623d4129E.exit.i.i: ; preds = %._crit_edge127, %.lr.ph.i.i
  %i.bv = icmp samesign ult i64 %.sroa.08.16.i.i, %i.j ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  %.sroa.08.1.i.i = add nuw i64 %.sroa.08.16.i.i, %i.bw
  br i1 %i.bv, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17h56c6929042a8729eE.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134530
  br label %bb.p

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.069.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.068.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h12e2061b997d43e9E(ptr noalias noundef nonnull align 8 %.sroa.0.069.lcssa, i64 noundef %.sroa.14.068.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.p

.lr.ph122:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.066121 = phi i32 [ %i.bx, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.067120 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.14.068119 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.069118 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.bx = add nsw i32 %.sroa.024.066121, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134565)
  %i.by = lshr i64 %.sroa.14.068119, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.by, 112
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %.idx2.i ; 3 uses
  %i.cb = icmp ult i64 %.sroa.14.068119, 64
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.cc = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h8956f6e89aa0109bE(ptr noundef nonnull readonly align 8 %.sroa.0.069118, ptr noundef readonly %i.bz, ptr noundef readonly %i.ca, i64 noundef %i.by)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h8ade53ed61d65742E.exit

bb.n:                                             ; preds = %.lr.ph122
  %.val6.i = load ptr, ptr %.sroa.0.069118, align 8, !alias.scope !134565, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val7.i = load ptr, ptr %i.bz, align 8, !alias.scope !134565, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.val6.i, align 8, !noalias !134565, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val6.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.cd, align 8, !noalias !134565, !noundef !14 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.val7.i, align 8, !noalias !134565, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val7.i, i64 8
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !noalias !134565, !noundef !14 ; 4 uses
  %i.cf = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i.i)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !134568, !noalias !134565 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ci, i64 %i.cf, i64 %i.ch ; 2 uses
  %.val5.i = load ptr, ptr %i.ca, align 8, !alias.scope !134565, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i10.i = load ptr, ptr %.val5.i, align 8, !noalias !134565, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val5.i, i64 8
  %.val3.i.i11.i = load i64, ptr %i.cj, align 8, !noalias !134565, !noundef !14 ; 4 uses
  %i.ck = sub i64 %.val1.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i11.i)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i12.i), !alias.scope !134575, !noalias !134565 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %spec.store.select.i.i.i.i.i13.i = select i1 %i.cn, i64 %i.ck, i64 %i.cm
  %i.co = xor i64 %spec.store.select.i.i.i.i.i13.i, %spec.store.select.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h8ade53ed61d65742E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = sub i64 %.val3.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val3.i.i11.i)
  %i.cr = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val2.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i18.i), !alias.scope !134582, !noalias !134565 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 0
  %spec.store.select.i.i.i.i.i19.i = select i1 %i.ct, i64 %i.cq, i64 %i.cs
  %i.cu = xor i64 %spec.store.select.i.i.i.i.i19.i, %spec.store.select.i.i.i.i.i.i
  %i.cv = icmp slt i64 %i.cu, 0
  %..i.i = select i1 %i.cv, ptr %i.ca, ptr %i.bz
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h8ade53ed61d65742E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h8ade53ed61d65742E.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cc, %bb.m ], [ %.sroa.0.069118, %bb.n ], [ %..i.i, %bb.o ]
  %i.cw = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cx = ptrtoint ptr %.sroa.0.069118 to i64
  %i.cy = sub nuw i64 %i.cw, %i.cx                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cy, 4
  %i.cz = icmp ult i64 %.sroa.0.0.i, %.sroa.14.068119
  tail call void @llvm.assume(i1 %i.cz)
  %.not = icmp eq ptr %.sroa.021.067120, null
  br i1 %.not, label %bb.q, label %bb.s

bb.p:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h56c6929042a8729eE.exit
  ret void

bb.q:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h8ade53ed61d65742E.exit, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134589)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %i.cy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !134592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134598)
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !alias.scope !134600, !noalias !134598
  %i.dd = load ptr, ptr %i.db, align 8, !alias.scope !134600, !noalias !134598, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.de = getelementptr [16 x i8], ptr %.sroa.0.069118, i64 %.sroa.14.068119 ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16    ; 2 uses
  %.sroa.15.066.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 32 ; 3 uses
  %i.dg = icmp ult ptr %.sroa.15.066.i.i, %i.df
  %.val1.i20.pre.pre.i.i = load ptr, ptr %.sroa.0.069118, align 8, !alias.scope !134601, !noalias !134595 ; 2 uses
  %.val2.i.i.i23.i.pre8.pre.i = load ptr, ptr %.val1.i20.pre.pre.i.i, align 8, !noalias !134602 ; 4 uses
  %i.dh = getelementptr i8, ptr %.val1.i20.pre.pre.i.i, i64 8
  %.val3.i.i.i33.i.i = load i64, ptr %i.dh, align 8, !noalias !134602 ; 8 uses
  br i1 %i.dg, label %.lr.ph.i.i36, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i36, %bb.q
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.eg, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.046.0.lcssa.i.i = phi ptr [ %i.db, %bb.q ], [ %i.dz, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.066.i.i, %bb.q ], [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.di = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.de
  br i1 %i.di, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17ha90072ddf50b5c4eE.exit.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph75.i.i
  %.sroa.046.174.i.i = phi ptr [ %.sroa.15.173.i.i, %.lr.ph75.i.i ], [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.15.173.i.i = phi ptr [ %i.dq, %.lr.ph75.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.27.172.i.i = phi i64 [ %i.dp, %.lr.ph75.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.i.i31 = load ptr, ptr %.sroa.15.173.i.i, align 8, !alias.scope !134600, !noalias !134603, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.i.i32 = load ptr, ptr %.val.i.i.i31, align 8, !noalias !134606, !nonnull !14, !align !584, !noundef !14
  %i.dj = getelementptr i8, ptr %.val.i.i.i31, i64 8
  %.val1.i.i.i.i.i33 = load i64, ptr %i.dj, align 8, !noalias !134606, !noundef !14 ; 2 uses
  %i.dk = sub i64 %.val1.i.i.i.i.i33, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i33, i64 %.val3.i.i.i33.i.i)
  %i.dl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i32, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i.i.i34), !alias.scope !134607, !noalias !134606 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %spec.store.select.i.i.i.i.i.i.i.i35 = select i1 %i.dn, i64 %i.dk, i64 %i.dm
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.172.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.174.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !alias.scope !134600, !noalias !134603
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.173.i.i, i64 16, i1 false), !alias.scope !134600, !noalias !134603
  %spec.store.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i35, 63
  %i.dp = add i64 %spec.store.select.i.i.i.i.i.lobit.i.i.i, %.sroa.27.172.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.173.i.i, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.de
  br i1 %i.dr, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17ha90072ddf50b5c4eE.exit.i, label %.lr.ph75.i.i

.lr.ph.i.i36:                                     ; preds = %bb.q, %.lr.ph.i.i36
  %.sroa.15.069.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.15.066.i.i, %bb.q ] ; 3 uses
  %.sroa.046.068.i.i = phi ptr [ %i.dz, %.lr.ph.i.i36 ], [ %i.db, %bb.q ] ; 3 uses
  %.sroa.27.067.i.i = phi i64 [ %i.eg, %.lr.ph.i.i36 ], [ 0, %bb.q ] ; 2 uses
  %.val.i28.i.i = load ptr, ptr %.sroa.15.069.i.i, align 8, !alias.scope !134600, !noalias !134614, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i30.i.i = load ptr, ptr %.val.i28.i.i, align 8, !noalias !134617, !nonnull !14, !align !584, !noundef !14
  %i.ds = getelementptr i8, ptr %.val.i28.i.i, i64 8
  %.val1.i.i.i31.i.i = load i64, ptr %i.ds, align 8, !noalias !134617, !noundef !14 ; 2 uses
  %i.dt = sub i64 %.val1.i.i.i31.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i34.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i31.i.i, i64 %.val3.i.i.i33.i.i)
  %i.du = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i30.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i34.i.i), !alias.scope !134618, !noalias !134617 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %spec.store.select.i.i.i.i.i.i35.i.i = select i1 %i.dw, i64 %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.067.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.068.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false), !alias.scope !134600, !noalias !134614
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, i64 16, i1 false), !alias.scope !134600, !noalias !134614
  %spec.store.select.i.i.i.i.i.lobit.i36.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i35.i.i, 63
  %i.dy = add i64 %spec.store.select.i.i.i.i.i.lobit.i36.i.i, %.sroa.27.067.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 32 ; 4 uses
  %.val.i37.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !134600, !noalias !134625, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i39.i.i = load ptr, ptr %.val.i37.i.i, align 8, !noalias !134628, !nonnull !14, !align !584, !noundef !14
  %i.ea = getelementptr i8, ptr %.val.i37.i.i, i64 8
  %.val1.i.i.i40.i.i = load i64, ptr %i.ea, align 8, !noalias !134628, !noundef !14 ; 2 uses
  %i.eb = sub i64 %.val1.i.i.i40.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i43.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i40.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i39.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i43.i.i), !alias.scope !134629, !noalias !134628 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i44.i.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dy ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !alias.scope !134600, !noalias !134625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !alias.scope !134600, !noalias !134625
  %spec.store.select.i.i.i.i.i.lobit.i45.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i44.i.i, 63
  %i.eg = add i64 %spec.store.select.i.i.i.i.i.lobit.i45.i.i, %i.dy ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 48 ; 3 uses
  %i.eh = icmp ult ptr %.sroa.15.0.i.i, %i.df
  br i1 %i.eh, label %.lr.ph.i.i36, label %.preheader.i.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17ha90072ddf50b5c4eE.exit.i: ; preds = %.lr.ph75.i.i, %.preheader.i.i
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ], [ %i.dp, %.lr.ph75.i.i ] ; 2 uses
  %.sroa.046.1.lcssa.i.i = phi ptr [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.15.173.i.i, %.lr.ph75.i.i ]
  %.val.i.i.i21.i.i = load ptr, ptr %i.dd, align 8, !noalias !134636, !nonnull !14, !align !584, !noundef !14
  %i.ei = getelementptr i8, ptr %i.dd, i64 8
  %.val1.i.i.i22.i.i = load i64, ptr %i.ei, align 8, !noalias !134636, !noundef !14 ; 2 uses
  %i.ej = sub i64 %.val1.i.i.i22.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i22.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ek = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i21.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i25.i.i), !alias.scope !134639, !noalias !134636 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %spec.store.select.i.i.i.i.i.i26.i.i = select i1 %i.em, i64 %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.1.lcssa.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !134600, !noalias !134646
  store <2 x ptr> %i.dc, ptr %i.en, align 8, !alias.scope !134600, !noalias !134646
  %spec.store.select.i.i.i.i.i.lobit.i27.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i26.i.i, 63
  %i.eo = add i64 %spec.store.select.i.i.i.i.i.lobit.i27.i.i, %.sroa.27.1.lcssa.i.i ; 4 uses
  %.not5.i = icmp ult i64 %i.eo, %.sroa.14.068119
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17h699b45aaaa6c3d0fE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17ha90072ddf50b5c4eE.exit.i
  tail call void @llvm.trap()
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort8unstable9quicksort9quicksort17hbb1abb42f8f8ea8bE:bb.a
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17hff19179305e2ea22E.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = lshr i64 %.sroa.14.0.lcssa, 1            ; 9 uses
  %i.k = icmp samesign ugt i64 %.sroa.14.0.lcssa, 15
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.14.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.14.0.lcssa ; 5 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef readonly %i.p, ptr noundef %i.q)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha6b960107027bf47E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 8, ptr noundef nonnull align 8 %i.e), !noalias !134779
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef readonly %i.u, ptr noundef %i.v)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha6b960107027bf47E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 8, ptr noundef nonnull %i.s), !noalias !134779
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.e)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3c00493e09b14be2E(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !134780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !134780
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.w = sub nsw i64 %.sroa.14.0.lcssa, %i.j      ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.08.05.1.i.i
  %.idx138 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx138 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !134780
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %.val9.i.1.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.1.i.i = load ptr, ptr %.val9.i.1.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val9.i.1.i.i, i64 8
  %.val1.i.i.i.1.i.i = load i64, ptr %i.ae, align 8, !noalias !134781, !noundef !14 ; 4 uses
  %.val2.i.i.i.1.i.i = load ptr, ptr %.val10.i.1.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14
  %i.af = getelementptr i8, ptr %.val10.i.1.i.i, i64 8
  %.val3.i.i.i.1.i.i = load i64, ptr %i.af, align 8, !noalias !134781, !noundef !14 ; 2 uses
  %i.ag = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i.i.1.i.i
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i.i.1.i.i)
  %i.ah = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !134782, !noalias !134781 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.ak, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i

bb.h:                                             ; preds = %.lr.ph.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !134777, !noalias !134779
  %i.an = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.an, label %._crit_edge134, label %.lr.ph133

bb.i:                                             ; preds = %.lr.ph133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i131, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !134777, !noalias !134779
  %i.ao = icmp eq ptr %i.ap, %i.z
  br i1 %i.ao, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i29.1.i.i131 = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i131, i64 -16 ; 4 uses
  %.val8.i.1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.1.i.i = load ptr, ptr %.val8.i.1.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14
  %i.aq = getelementptr i8, ptr %.val8.i.1.i.i, i64 8
  %.val3.i.i14.i.1.i.i = load i64, ptr %i.aq, align 8, !noalias !134781, !noundef !14 ; 2 uses
  %i.ar = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i14.i.1.i.i
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i14.i.1.i.i)
  %i.as = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !134789, !noalias !134781 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.au, i64 %i.ar, i64 %i.at
  %i.av = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.av, label %bb.i, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.i, %.lr.ph133, %bb.h
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %.sroa.0.0.i29.1.i.i131, %.lr.ph133 ] ; 2 uses
  store ptr %.val9.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !134777, !noalias !134796
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !134777, !noalias !134796
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i: ; preds = %._crit_edge134, %.lr.ph.1.i.i
  %i.aw = icmp ult i64 %.sroa.08.16.1.i.i, %i.w   ; 2 uses
  %i.ax = zext i1 %i.aw to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.ax
  br i1 %i.aw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17ha6b960107027bf47E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17hff19179305e2ea22E.exit unwind label %bb.j

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.az, i1 false), !alias.scope !134780, !noalias !134801
  resume { ptr, i32 } %i.ay

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !134780
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val9.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val9.i.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val9.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !134781, !noundef !14 ; 4 uses
  %.val2.i.i.i.i.i = load ptr, ptr %.val10.i.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14
  %i.be = getelementptr i8, ptr %.val10.i.i.i, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !134781, !noundef !14 ; 2 uses
  %i.bf = sub i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.bg = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !134782, !noalias !134781 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 %i.bf, i64 %i.bh
  %i.bj = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.k, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !134777, !noalias !134779
  %i.bm = icmp eq i64 %.sroa.08.05.i.i, 1
  br i1 %i.bm, label %._crit_edge127, label %.lr.ph126

bb.l:                                             ; preds = %.lr.ph126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.i.i124, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !134777, !noalias !134779
  %i.bn = icmp eq ptr %i.bo, %i.e
  br i1 %i.bn, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i29.i.i124 = phi ptr [ %i.bo, %bb.l ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i29.i.i124, i64 -16 ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !134777, !noalias !134779, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.i.i = load ptr, ptr %.val8.i.i.i, align 8, !noalias !134781, !nonnull !14, !align !584, !noundef !14
  %i.bp = getelementptr i8, ptr %.val8.i.i.i, i64 8
  %.val3.i.i14.i.i.i = load i64, ptr %i.bp, align 8, !noalias !134781, !noundef !14 ; 2 uses
  %i.bq = sub i64 %.val1.i.i.i.i.i, %.val3.i.i14.i.i.i
  %..i.i.i.i.i15.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i14.i.i.i)
  %i.br = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.i.i, i64 %..i.i.i.i.i15.i.i.i), !alias.scope !134789, !noalias !134781 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp eq i32 %i.br, 0
  %spec.store.select.i.i.i.i.i16.i.i.i = select i1 %i.bt, i64 %i.bq, i64 %i.bs
  %i.bu = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i, 0
  br i1 %i.bu, label %bb.l, label %._crit_edge127

._crit_edge127:                                   ; preds = %bb.l, %.lr.ph126, %bb.k
  %.sroa.0.0.i29.lcssa.i.i = phi ptr [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %.sroa.0.0.i29.i.i124, %.lr.ph126 ] ; 2 uses
  store ptr %.val9.i.i.i, ptr %.sroa.0.0.i29.lcssa.i.i, align 8, !alias.scope !134777, !noalias !134796
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.i.i, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !134777, !noalias !134796
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hf5571c61ef6e55c0E.exit.i.i: ; preds = %._crit_edge127, %.lr.ph.i.i
  %i.bv = icmp samesign ult i64 %.sroa.08.16.i.i, %i.j ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  %.sroa.08.1.i.i = add nuw i64 %.sroa.08.16.i.i, %i.bw
  br i1 %i.bv, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17hff19179305e2ea22E.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134771
  br label %bb.p

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.069.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.068.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h7819d43a79249ea7E(ptr noalias noundef nonnull align 8 %.sroa.0.069.lcssa, i64 noundef %.sroa.14.068.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.p

.lr.ph122:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.066121 = phi i32 [ %i.bx, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.067120 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.14.068119 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.069118 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.bx = add nsw i32 %.sroa.024.066121, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134806)
  %i.by = lshr i64 %.sroa.14.068119, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.by, 112
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %.idx2.i ; 3 uses
  %i.cb = icmp ult i64 %.sroa.14.068119, 64
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.cc = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h610d382df6432030E(ptr noundef nonnull readonly align 8 %.sroa.0.069118, ptr noundef readonly %i.bz, ptr noundef readonly %i.ca, i64 noundef %i.by)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd3bd0653f638f13eE.exit

bb.n:                                             ; preds = %.lr.ph122
  %.val6.i = load ptr, ptr %.sroa.0.069118, align 8, !alias.scope !134806, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val7.i = load ptr, ptr %i.bz, align 8, !alias.scope !134806, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.val6.i, align 8, !noalias !134806, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val6.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.cd, align 8, !noalias !134806, !noundef !14 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.val7.i, align 8, !noalias !134806, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val7.i, i64 8
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !noalias !134806, !noundef !14 ; 4 uses
  %i.cf = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i.i)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !134809, !noalias !134806 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ci, i64 %i.cf, i64 %i.ch ; 2 uses
  %.val5.i = load ptr, ptr %i.ca, align 8, !alias.scope !134806, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i10.i = load ptr, ptr %.val5.i, align 8, !noalias !134806, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val5.i, i64 8
  %.val3.i.i11.i = load i64, ptr %i.cj, align 8, !noalias !134806, !noundef !14 ; 4 uses
  %i.ck = sub i64 %.val1.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i11.i)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i12.i), !alias.scope !134816, !noalias !134806 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %spec.store.select.i.i.i.i.i13.i = select i1 %i.cn, i64 %i.ck, i64 %i.cm
  %i.co = xor i64 %spec.store.select.i.i.i.i.i13.i, %spec.store.select.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd3bd0653f638f13eE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = sub i64 %.val3.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val3.i.i11.i)
  %i.cr = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val2.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i18.i), !alias.scope !134823, !noalias !134806 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 0
  %spec.store.select.i.i.i.i.i19.i = select i1 %i.ct, i64 %i.cq, i64 %i.cs
  %i.cu = xor i64 %spec.store.select.i.i.i.i.i19.i, %spec.store.select.i.i.i.i.i.i
  %i.cv = icmp slt i64 %i.cu, 0
  %..i.i = select i1 %i.cv, ptr %i.ca, ptr %i.bz
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd3bd0653f638f13eE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hd3bd0653f638f13eE.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cc, %bb.m ], [ %.sroa.0.069118, %bb.n ], [ %..i.i, %bb.o ]
  %i.cw = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cx = ptrtoint ptr %.sroa.0.069118 to i64
  %i.cy = sub nuw i64 %i.cw, %i.cx                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cy, 4
  %i.cz = icmp ult i64 %.sroa.0.0.i, %.sroa.14.068119
  tail call void @llvm.assume(i1 %i.cz)
  %.not = icmp eq ptr %.sroa.021.067120, null
  br i1 %.not, label %bb.q, label %bb.s

bb.p:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17hff19179305e2ea22E.exit
  ret void

bb.q:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd3bd0653f638f13eE.exit, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134830)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %i.cy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !134833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134839)
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !alias.scope !134841, !noalias !134839
  %i.dd = load ptr, ptr %i.db, align 8, !alias.scope !134841, !noalias !134839, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.de = getelementptr [16 x i8], ptr %.sroa.0.069118, i64 %.sroa.14.068119 ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16    ; 2 uses
  %.sroa.15.066.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 32 ; 3 uses
  %i.dg = icmp ult ptr %.sroa.15.066.i.i, %i.df
  %.val1.i20.pre.pre.i.i = load ptr, ptr %.sroa.0.069118, align 8, !alias.scope !134842, !noalias !134836 ; 2 uses
  %.val2.i.i.i23.i.pre8.pre.i = load ptr, ptr %.val1.i20.pre.pre.i.i, align 8, !noalias !134843 ; 4 uses
  %i.dh = getelementptr i8, ptr %.val1.i20.pre.pre.i.i, i64 8
  %.val3.i.i.i33.i.i = load i64, ptr %i.dh, align 8, !noalias !134843 ; 8 uses
  br i1 %i.dg, label %.lr.ph.i.i36, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i36, %bb.q
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.eg, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.046.0.lcssa.i.i = phi ptr [ %i.db, %bb.q ], [ %i.dz, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.066.i.i, %bb.q ], [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.di = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.de
  br i1 %i.di, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h53a378b9ef7947a6E.exit.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph75.i.i
  %.sroa.046.174.i.i = phi ptr [ %.sroa.15.173.i.i, %.lr.ph75.i.i ], [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.15.173.i.i = phi ptr [ %i.dq, %.lr.ph75.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.27.172.i.i = phi i64 [ %i.dp, %.lr.ph75.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.i.i31 = load ptr, ptr %.sroa.15.173.i.i, align 8, !alias.scope !134841, !noalias !134844, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.i.i32 = load ptr, ptr %.val.i.i.i31, align 8, !noalias !134847, !nonnull !14, !align !584, !noundef !14
  %i.dj = getelementptr i8, ptr %.val.i.i.i31, i64 8
  %.val1.i.i.i.i.i33 = load i64, ptr %i.dj, align 8, !noalias !134847, !noundef !14 ; 2 uses
  %i.dk = sub i64 %.val1.i.i.i.i.i33, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i33, i64 %.val3.i.i.i33.i.i)
  %i.dl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i32, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i.i.i34), !alias.scope !134848, !noalias !134847 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %spec.store.select.i.i.i.i.i.i.i.i35 = select i1 %i.dn, i64 %i.dk, i64 %i.dm
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.172.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.174.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !alias.scope !134841, !noalias !134844
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.173.i.i, i64 16, i1 false), !alias.scope !134841, !noalias !134844
  %spec.store.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i35, 63
  %i.dp = add i64 %spec.store.select.i.i.i.i.i.lobit.i.i.i, %.sroa.27.172.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.173.i.i, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.de
  br i1 %i.dr, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h53a378b9ef7947a6E.exit.i, label %.lr.ph75.i.i

.lr.ph.i.i36:                                     ; preds = %bb.q, %.lr.ph.i.i36
  %.sroa.15.069.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.15.066.i.i, %bb.q ] ; 3 uses
  %.sroa.046.068.i.i = phi ptr [ %i.dz, %.lr.ph.i.i36 ], [ %i.db, %bb.q ] ; 3 uses
  %.sroa.27.067.i.i = phi i64 [ %i.eg, %.lr.ph.i.i36 ], [ 0, %bb.q ] ; 2 uses
  %.val.i28.i.i = load ptr, ptr %.sroa.15.069.i.i, align 8, !alias.scope !134841, !noalias !134855, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i30.i.i = load ptr, ptr %.val.i28.i.i, align 8, !noalias !134858, !nonnull !14, !align !584, !noundef !14
  %i.ds = getelementptr i8, ptr %.val.i28.i.i, i64 8
  %.val1.i.i.i31.i.i = load i64, ptr %i.ds, align 8, !noalias !134858, !noundef !14 ; 2 uses
  %i.dt = sub i64 %.val1.i.i.i31.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i34.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i31.i.i, i64 %.val3.i.i.i33.i.i)
  %i.du = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i30.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i34.i.i), !alias.scope !134859, !noalias !134858 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %spec.store.select.i.i.i.i.i.i35.i.i = select i1 %i.dw, i64 %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.067.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.068.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false), !alias.scope !134841, !noalias !134855
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, i64 16, i1 false), !alias.scope !134841, !noalias !134855
  %spec.store.select.i.i.i.i.i.lobit.i36.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i35.i.i, 63
  %i.dy = add i64 %spec.store.select.i.i.i.i.i.lobit.i36.i.i, %.sroa.27.067.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 32 ; 4 uses
  %.val.i37.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !134841, !noalias !134866, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i39.i.i = load ptr, ptr %.val.i37.i.i, align 8, !noalias !134869, !nonnull !14, !align !584, !noundef !14
  %i.ea = getelementptr i8, ptr %.val.i37.i.i, i64 8
  %.val1.i.i.i40.i.i = load i64, ptr %i.ea, align 8, !noalias !134869, !noundef !14 ; 2 uses
  %i.eb = sub i64 %.val1.i.i.i40.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i43.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i40.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i39.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i43.i.i), !alias.scope !134870, !noalias !134869 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i44.i.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dy ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !alias.scope !134841, !noalias !134866
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !alias.scope !134841, !noalias !134866
  %spec.store.select.i.i.i.i.i.lobit.i45.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i44.i.i, 63
  %i.eg = add i64 %spec.store.select.i.i.i.i.i.lobit.i45.i.i, %i.dy ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 48 ; 3 uses
  %i.eh = icmp ult ptr %.sroa.15.0.i.i, %i.df
  br i1 %i.eh, label %.lr.ph.i.i36, label %.preheader.i.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h53a378b9ef7947a6E.exit.i: ; preds = %.lr.ph75.i.i, %.preheader.i.i
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ], [ %i.dp, %.lr.ph75.i.i ] ; 2 uses
  %.sroa.046.1.lcssa.i.i = phi ptr [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.15.173.i.i, %.lr.ph75.i.i ]
  %.val.i.i.i21.i.i = load ptr, ptr %i.dd, align 8, !noalias !134877, !nonnull !14, !align !584, !noundef !14
  %i.ei = getelementptr i8, ptr %i.dd, i64 8
  %.val1.i.i.i22.i.i = load i64, ptr %i.ei, align 8, !noalias !134877, !noundef !14 ; 2 uses
  %i.ej = sub i64 %.val1.i.i.i22.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i22.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ek = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i21.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i25.i.i), !alias.scope !134880, !noalias !134877 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %spec.store.select.i.i.i.i.i.i26.i.i = select i1 %i.em, i64 %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.1.lcssa.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !134841, !noalias !134887
  store <2 x ptr> %i.dc, ptr %i.en, align 8, !alias.scope !134841, !noalias !134887
  %spec.store.select.i.i.i.i.i.lobit.i27.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i26.i.i, 63
  %i.eo = add i64 %spec.store.select.i.i.i.i.i.lobit.i27.i.i, %.sroa.27.1.lcssa.i.i ; 4 uses
  %.not5.i = icmp ult i64 %i.eo, %.sroa.14.068119
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17hb87a27d2859c18d3E.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h53a378b9ef7947a6E.exit.i
  tail call void @llvm.trap()
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort8unstable9quicksort9quicksort17hdfd3a085865c7570E:bb.a
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h38435efa30c3036aE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = lshr i64 %.sroa.14.0.lcssa, 1            ; 9 uses
  %i.k = icmp samesign ugt i64 %.sroa.14.0.lcssa, 15
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.14.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.14.0.lcssa ; 5 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8b9e79c20ffa73f3E(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8b9e79c20ffa73f3E(ptr noundef readonly %i.p, ptr noundef %i.q)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h51450f3f15aad0acE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 8, ptr noundef nonnull align 8 %i.e), !noalias !134967
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8b9e79c20ffa73f3E(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8b9e79c20ffa73f3E(ptr noundef readonly %i.u, ptr noundef %i.v)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h51450f3f15aad0acE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 8, ptr noundef nonnull %i.s), !noalias !134967
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8b9e79c20ffa73f3E(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.e)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h8b9e79c20ffa73f3E(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !134968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !134968
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.w = sub nsw i64 %.sroa.14.0.lcssa, %i.j      ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.08.05.1.i.i
  %.idx138 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx138 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !134968
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %.val9.i.1.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.1.i.i = load ptr, ptr %.val9.i.1.i.i, align 8, !noalias !134969, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val9.i.1.i.i, i64 8
  %.val1.i.i.i.1.i.i = load i64, ptr %i.ae, align 8, !noalias !134969, !noundef !14 ; 4 uses
  %.val2.i.i.i.1.i.i = load ptr, ptr %.val10.i.1.i.i, align 8, !noalias !134969, !nonnull !14, !align !584, !noundef !14
  %i.af = getelementptr i8, ptr %.val10.i.1.i.i, i64 8
  %.val3.i.i.i.1.i.i = load i64, ptr %i.af, align 8, !noalias !134969, !noundef !14 ; 2 uses
  %i.ag = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i.i.1.i.i
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i.i.1.i.i)
  %i.ah = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !134970, !noalias !134969 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.ak, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i

bb.h:                                             ; preds = %.lr.ph.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !134965, !noalias !134967
  %i.an = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.an, label %._crit_edge134, label %.lr.ph133

bb.i:                                             ; preds = %.lr.ph133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i131, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !134965, !noalias !134967
  %i.ao = icmp eq ptr %i.ap, %i.z
  br i1 %i.ao, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i29.1.i.i131 = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i131, i64 -16 ; 4 uses
  %.val8.i.1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.1.i.i = load ptr, ptr %.val8.i.1.i.i, align 8, !noalias !134969, !nonnull !14, !align !584, !noundef !14
  %i.aq = getelementptr i8, ptr %.val8.i.1.i.i, i64 8
  %.val3.i.i14.i.1.i.i = load i64, ptr %i.aq, align 8, !noalias !134969, !noundef !14 ; 2 uses
  %i.ar = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i14.i.1.i.i
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i14.i.1.i.i)
  %i.as = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !134977, !noalias !134969 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.au, i64 %i.ar, i64 %i.at
  %i.av = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.av, label %bb.i, label %._crit_edge134

._crit_edge134:                                   ; preds = %bb.i, %.lr.ph133, %bb.h
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %.sroa.0.0.i29.1.i.i131, %.lr.ph133 ] ; 2 uses
  store ptr %.val9.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !134965, !noalias !134984
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !134965, !noalias !134984
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i: ; preds = %._crit_edge134, %.lr.ph.1.i.i
  %i.aw = icmp ult i64 %.sroa.08.16.1.i.i, %i.w   ; 2 uses
  %i.ax = zext i1 %i.aw to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.ax
  br i1 %i.aw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h51450f3f15aad0acE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h38435efa30c3036aE.exit unwind label %bb.j

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.az, i1 false), !alias.scope !134968, !noalias !134989
  resume { ptr, i32 } %i.ay

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !134968
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val9.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14 ; 3 uses
  %.val10.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val9.i.i.i, align 8, !noalias !134969, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val9.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !134969, !noundef !14 ; 4 uses
  %.val2.i.i.i.i.i = load ptr, ptr %.val10.i.i.i, align 8, !noalias !134969, !nonnull !14, !align !584, !noundef !14
  %i.be = getelementptr i8, ptr %.val10.i.i.i, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !134969, !noundef !14 ; 2 uses
  %i.bf = sub i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.bg = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !134970, !noalias !134969 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 %i.bf, i64 %i.bh
  %i.bj = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.k, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !134965, !noalias !134967
  %i.bm = icmp eq i64 %.sroa.08.05.i.i, 1
  br i1 %i.bm, label %._crit_edge127, label %.lr.ph126

bb.l:                                             ; preds = %.lr.ph126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.i.i124, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !134965, !noalias !134967
  %i.bn = icmp eq ptr %i.bo, %i.e
  br i1 %i.bn, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i29.i.i124 = phi ptr [ %i.bo, %bb.l ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i29.i.i124, i64 -16 ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !134965, !noalias !134967, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i13.i.i.i = load ptr, ptr %.val8.i.i.i, align 8, !noalias !134969, !nonnull !14, !align !584, !noundef !14
  %i.bp = getelementptr i8, ptr %.val8.i.i.i, i64 8
  %.val3.i.i14.i.i.i = load i64, ptr %i.bp, align 8, !noalias !134969, !noundef !14 ; 2 uses
  %i.bq = sub i64 %.val1.i.i.i.i.i, %.val3.i.i14.i.i.i
  %..i.i.i.i.i15.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i14.i.i.i)
  %i.br = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.i.i, i64 %..i.i.i.i.i15.i.i.i), !alias.scope !134977, !noalias !134969 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp eq i32 %i.br, 0
  %spec.store.select.i.i.i.i.i16.i.i.i = select i1 %i.bt, i64 %i.bq, i64 %i.bs
  %i.bu = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i, 0
  br i1 %i.bu, label %bb.l, label %._crit_edge127

._crit_edge127:                                   ; preds = %bb.l, %.lr.ph126, %bb.k
  %.sroa.0.0.i29.lcssa.i.i = phi ptr [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %.sroa.0.0.i29.i.i124, %.lr.ph126 ] ; 2 uses
  store ptr %.val9.i.i.i, ptr %.sroa.0.0.i29.lcssa.i.i, align 8, !alias.scope !134965, !noalias !134984
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.i.i, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !134965, !noalias !134984
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5daea8c898d63e37E.exit.i.i: ; preds = %._crit_edge127, %.lr.ph.i.i
  %i.bv = icmp samesign ult i64 %.sroa.08.16.i.i, %i.j ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  %.sroa.08.1.i.i = add nuw i64 %.sroa.08.16.i.i, %i.bw
  br i1 %i.bv, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17h38435efa30c3036aE.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !134959
  br label %bb.p

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.069.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.068.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h7b686f9f2d723326E(ptr noalias noundef nonnull align 8 %.sroa.0.069.lcssa, i64 noundef %.sroa.14.068.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.p

.lr.ph122:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.066121 = phi i32 [ %i.bx, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.067120 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.14.068119 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.069118 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.bx = add nsw i32 %.sroa.024.066121, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134994)
  %i.by = lshr i64 %.sroa.14.068119, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.by, 112
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %.idx2.i ; 3 uses
  %i.cb = icmp ult i64 %.sroa.14.068119, 64
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph122
  %i.cc = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h0dede4a16ae8c7baE(ptr noundef nonnull readonly align 8 %.sroa.0.069118, ptr noundef readonly %i.bz, ptr noundef readonly %i.ca, i64 noundef %i.by)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4409ac4f3a82da9cE.exit

bb.n:                                             ; preds = %.lr.ph122
  %.val6.i = load ptr, ptr %.sroa.0.069118, align 8, !alias.scope !134994, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val7.i = load ptr, ptr %i.bz, align 8, !alias.scope !134994, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.val6.i, align 8, !noalias !134994, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val6.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.cd, align 8, !noalias !134994, !noundef !14 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.val7.i, align 8, !noalias !134994, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val7.i, i64 8
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !noalias !134994, !noundef !14 ; 4 uses
  %i.cf = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i.i)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !134997, !noalias !134994 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ci, i64 %i.cf, i64 %i.ch ; 2 uses
  %.val5.i = load ptr, ptr %i.ca, align 8, !alias.scope !134994, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val2.i.i10.i = load ptr, ptr %.val5.i, align 8, !noalias !134994, !nonnull !14, !align !584, !noundef !14 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val5.i, i64 8
  %.val3.i.i11.i = load i64, ptr %i.cj, align 8, !noalias !134994, !noundef !14 ; 4 uses
  %i.ck = sub i64 %.val1.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i11.i)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i12.i), !alias.scope !135004, !noalias !134994 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %spec.store.select.i.i.i.i.i13.i = select i1 %i.cn, i64 %i.ck, i64 %i.cm
  %i.co = xor i64 %spec.store.select.i.i.i.i.i13.i, %spec.store.select.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4409ac4f3a82da9cE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = sub i64 %.val3.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val3.i.i11.i)
  %i.cr = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val2.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i18.i), !alias.scope !135011, !noalias !134994 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 0
  %spec.store.select.i.i.i.i.i19.i = select i1 %i.ct, i64 %i.cq, i64 %i.cs
  %i.cu = xor i64 %spec.store.select.i.i.i.i.i19.i, %spec.store.select.i.i.i.i.i.i
  %i.cv = icmp slt i64 %i.cu, 0
  %..i.i = select i1 %i.cv, ptr %i.ca, ptr %i.bz
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4409ac4f3a82da9cE.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h4409ac4f3a82da9cE.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cc, %bb.m ], [ %.sroa.0.069118, %bb.n ], [ %..i.i, %bb.o ]
  %i.cw = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cx = ptrtoint ptr %.sroa.0.069118 to i64
  %i.cy = sub nuw i64 %i.cw, %i.cx                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cy, 4
  %i.cz = icmp ult i64 %.sroa.0.0.i, %.sroa.14.068119
  tail call void @llvm.assume(i1 %i.cz)
  %.not = icmp eq ptr %.sroa.021.067120, null
  br i1 %.not, label %bb.q, label %bb.s

bb.p:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h38435efa30c3036aE.exit
  ret void

bb.q:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h4409ac4f3a82da9cE.exit, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135018)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 %i.cy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069118, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !135021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135027)
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !alias.scope !135029, !noalias !135027
  %i.dd = load ptr, ptr %i.db, align 8, !alias.scope !135029, !noalias !135027, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %i.de = getelementptr [16 x i8], ptr %.sroa.0.069118, i64 %.sroa.14.068119 ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16    ; 2 uses
  %.sroa.15.066.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.069118, i64 32 ; 3 uses
  %i.dg = icmp ult ptr %.sroa.15.066.i.i, %i.df
  %.val1.i20.pre.pre.i.i = load ptr, ptr %.sroa.0.069118, align 8, !alias.scope !135030, !noalias !135024 ; 2 uses
  %.val2.i.i.i23.i.pre8.pre.i = load ptr, ptr %.val1.i20.pre.pre.i.i, align 8, !noalias !135031 ; 4 uses
  %i.dh = getelementptr i8, ptr %.val1.i20.pre.pre.i.i, i64 8
  %.val3.i.i.i33.i.i = load i64, ptr %i.dh, align 8, !noalias !135031 ; 8 uses
  br i1 %i.dg, label %.lr.ph.i.i36, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i36, %bb.q
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.eg, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.046.0.lcssa.i.i = phi ptr [ %i.db, %bb.q ], [ %i.dz, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.066.i.i, %bb.q ], [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.di = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.de
  br i1 %i.di, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3341d72ef98bf44eE.exit.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph75.i.i
  %.sroa.046.174.i.i = phi ptr [ %.sroa.15.173.i.i, %.lr.ph75.i.i ], [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.15.173.i.i = phi ptr [ %i.dq, %.lr.ph75.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.27.172.i.i = phi i64 [ %i.dp, %.lr.ph75.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.i.i31 = load ptr, ptr %.sroa.15.173.i.i, align 8, !alias.scope !135029, !noalias !135032, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i.i.i32 = load ptr, ptr %.val.i.i.i31, align 8, !noalias !135035, !nonnull !14, !align !584, !noundef !14
  %i.dj = getelementptr i8, ptr %.val.i.i.i31, i64 8
  %.val1.i.i.i.i.i33 = load i64, ptr %i.dj, align 8, !noalias !135035, !noundef !14 ; 2 uses
  %i.dk = sub i64 %.val1.i.i.i.i.i33, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i33, i64 %.val3.i.i.i33.i.i)
  %i.dl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i32, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i.i.i34), !alias.scope !135036, !noalias !135035 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %spec.store.select.i.i.i.i.i.i.i.i35 = select i1 %i.dn, i64 %i.dk, i64 %i.dm
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.172.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.174.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !alias.scope !135029, !noalias !135032
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.173.i.i, i64 16, i1 false), !alias.scope !135029, !noalias !135032
  %spec.store.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i35, 63
  %i.dp = add i64 %spec.store.select.i.i.i.i.i.lobit.i.i.i, %.sroa.27.172.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.173.i.i, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.de
  br i1 %i.dr, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3341d72ef98bf44eE.exit.i, label %.lr.ph75.i.i

.lr.ph.i.i36:                                     ; preds = %bb.q, %.lr.ph.i.i36
  %.sroa.15.069.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.15.066.i.i, %bb.q ] ; 3 uses
  %.sroa.046.068.i.i = phi ptr [ %i.dz, %.lr.ph.i.i36 ], [ %i.db, %bb.q ] ; 3 uses
  %.sroa.27.067.i.i = phi i64 [ %i.eg, %.lr.ph.i.i36 ], [ 0, %bb.q ] ; 2 uses
  %.val.i28.i.i = load ptr, ptr %.sroa.15.069.i.i, align 8, !alias.scope !135029, !noalias !135043, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i30.i.i = load ptr, ptr %.val.i28.i.i, align 8, !noalias !135046, !nonnull !14, !align !584, !noundef !14
  %i.ds = getelementptr i8, ptr %.val.i28.i.i, i64 8
  %.val1.i.i.i31.i.i = load i64, ptr %i.ds, align 8, !noalias !135046, !noundef !14 ; 2 uses
  %i.dt = sub i64 %.val1.i.i.i31.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i34.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i31.i.i, i64 %.val3.i.i.i33.i.i)
  %i.du = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i30.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i34.i.i), !alias.scope !135047, !noalias !135046 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %spec.store.select.i.i.i.i.i.i35.i.i = select i1 %i.dw, i64 %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.067.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.068.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false), !alias.scope !135029, !noalias !135043
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, i64 16, i1 false), !alias.scope !135029, !noalias !135043
  %spec.store.select.i.i.i.i.i.lobit.i36.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i35.i.i, 63
  %i.dy = add i64 %spec.store.select.i.i.i.i.i.lobit.i36.i.i, %.sroa.27.067.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 32 ; 4 uses
  %.val.i37.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !135029, !noalias !135054, !nonnull !14, !align !240, !noundef !14 ; 2 uses
  %.val.i.i.i39.i.i = load ptr, ptr %.val.i37.i.i, align 8, !noalias !135057, !nonnull !14, !align !584, !noundef !14
  %i.ea = getelementptr i8, ptr %.val.i37.i.i, i64 8
  %.val1.i.i.i40.i.i = load i64, ptr %i.ea, align 8, !noalias !135057, !noundef !14 ; 2 uses
  %i.eb = sub i64 %.val1.i.i.i40.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i43.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i40.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i39.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i43.i.i), !alias.scope !135058, !noalias !135057 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i44.i.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dy ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !alias.scope !135029, !noalias !135054
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !alias.scope !135029, !noalias !135054
  %spec.store.select.i.i.i.i.i.lobit.i45.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i44.i.i, 63
  %i.eg = add i64 %spec.store.select.i.i.i.i.i.lobit.i45.i.i, %i.dy ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 48 ; 3 uses
  %i.eh = icmp ult ptr %.sroa.15.0.i.i, %i.df
  br i1 %i.eh, label %.lr.ph.i.i36, label %.preheader.i.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3341d72ef98bf44eE.exit.i: ; preds = %.lr.ph75.i.i, %.preheader.i.i
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ], [ %i.dp, %.lr.ph75.i.i ] ; 2 uses
  %.sroa.046.1.lcssa.i.i = phi ptr [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.15.173.i.i, %.lr.ph75.i.i ]
  %.val.i.i.i21.i.i = load ptr, ptr %i.dd, align 8, !noalias !135065, !nonnull !14, !align !584, !noundef !14
  %i.ei = getelementptr i8, ptr %i.dd, i64 8
  %.val1.i.i.i22.i.i = load i64, ptr %i.ei, align 8, !noalias !135065, !noundef !14 ; 2 uses
  %i.ej = sub i64 %.val1.i.i.i22.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i22.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ek = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i21.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i25.i.i), !alias.scope !135068, !noalias !135065 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %spec.store.select.i.i.i.i.i.i26.i.i = select i1 %i.em, i64 %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.1.lcssa.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !135029, !noalias !135075
  store <2 x ptr> %i.dc, ptr %i.en, align 8, !alias.scope !135029, !noalias !135075
  %spec.store.select.i.i.i.i.i.lobit.i27.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i26.i.i, 63
  %i.eo = add i64 %spec.store.select.i.i.i.i.i.lobit.i27.i.i, %.sroa.27.1.lcssa.i.i ; 4 uses
  %.not5.i = icmp ult i64 %i.eo, %.sroa.14.068119
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17h48c9a9af7f395095E.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h3341d72ef98bf44eE.exit.i
  tail call void @llvm.trap()
end_hunk_3
begin_hunk_4_@"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h0a8421e280a26ea1E":bb.a
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5f4907df04a240f1E.exit", !prof !121

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = add i16 %.sroa.06.0.i33.i, -1
  %i.af = and i16 %i.ae, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i, %i.ag
  br label %bb.c

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5f4907df04a240f1E.exit": ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ai = phi ptr [ %i.x, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -32
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5f4907df04a240f1E.exit"
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h5f4907df04a240f1E.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @"_ZN9hashbrown3map39VacantEntryRef$LT$K$C$Q$C$V$C$S$C$A$GT$6insert17h70817ebea4af6c3dE"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !align !240, !noundef !14 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load ptr, ptr %0, align 8, !nonnull !14, !align !584, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !14 ; 8 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !2995

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.j, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !256733
  %i.k = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 1) #79, !noalias !256733 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #80, !noalias !256747
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %bb.b
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.k, %bb.b ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.f, i64 %i.h, i1 false), !noalias !256748
  store i64 %i.h, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256749)
  %.val13.i = load ptr, ptr %i.c, align 8, !alias.scope !256749, !noalias !256752, !nonnull !14, !noundef !14 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.val14.i = load i64, ptr %i.o, align 8, !alias.scope !256749, !noalias !256752, !noundef !14 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val14.i, %i.e       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !256755
  %i.q = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !36423

.lr.ph.i.i:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit", %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit" ]
  %i.s = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit" ]
  %i.t = add i64 %i.s, 16                         ; 2 uses
  %i.u = add i64 %i.t, %.sroa.0.010.i.i
  %.sroa.0.0.i.i = and i64 %i.u, %.val14.i        ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !256755
  %i.w = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !36424

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit" ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.r, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17ha3603fc8fe36937fE.exit" ], [ %i.x, %.lr.ph.i.i ]
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.0.0.lcssa.i.i, %i.z
  %i.ab = and i64 %i.aa, %.val14.i                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !256758, !noundef !14 ; 2 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i, !prof !121

bb.d:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val13.i, align 16, !noalias !256758
  %i.af = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %i.ah = icmp ne i16 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.aj
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !256758
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.ak = phi i8 [ %.pre.i, %bb.d ], [ %i.ad, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i = phi i64 [ %i.aj, %bb.d ], [ %i.ab, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !256749, !noalias !256752, !noundef !14 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = trunc i8 %i.ak to i1
  %or.cond.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i, label %bb.e, label %bb.g, !prof !10038

bb.e:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i
  %i.ap = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hac97b413d871ebdcE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.h, !noalias !256759 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %.val11.i = load ptr, ptr %i.c, align 8, !alias.scope !256749, !noalias !256752
  %.val12.i = load i64, ptr %i.o, align 8, !alias.scope !256749, !noalias !256752, !noundef !14
  %i.aq = tail call fastcc noundef i64 @_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E(ptr %.val11.i, i64 %.val12.i, i64 noundef %i.e), !noalias !256759
  %i.ar = call fastcc noundef nonnull ptr @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17hd143236e79d044a7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.e, i64 noundef %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h4232a2fb01ebf90fE.exit"

bb.g:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %.sroa.0.0.i5.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256760)
  %i.at = and i8 %i.ak, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = sub i64 %i.am, %i.au
  store i64 %i.av, ptr %i.al, align 8, !alias.scope !256763, !noalias !256764
  %i.aw = lshr i64 %i.e, 57
  %i.ax = trunc nuw nsw i64 %i.aw to i8           ; 2 uses
  %i.ay = add i64 %.sroa.0.0.i5.i.i, -16
  %i.az = and i64 %i.ay, %.val14.i
  store i8 %i.ax, ptr %i.as, align 1, !noalias !256766
  %i.ba = getelementptr i8, ptr %.val13.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store i8 %i.ax, ptr %i.bb, align 1, !noalias !256766
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !256763, !noalias !256764, !noundef !14
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !alias.scope !256763, !noalias !256764
  %i.bf = sub nsw i64 0, %.sroa.0.0.i5.i.i
  %i.bg = getelementptr inbounds [32 x i8], ptr %.val13.i, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !256767
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h4232a2fb01ebf90fE.exit"

"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h9e80118b1b96b028E.exit.i": ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %lpad.thr_comm.i

bb.h:                                             ; preds = %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.j, label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h9e80118b1b96b028E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !256768
  br label %"_ZN4core3ptr56drop_in_place$LT$$LP$alloc..string..String$C$i64$RP$$GT$17h9e80118b1b96b028E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6insert17h4232a2fb01ebf90fE.exit": ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.ar, %bb.f ], [ %i.bg, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  ret ptr %i.bi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 1, 601) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !14
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !14
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h442f32bc4a86bddcE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #81
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !14 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !256773
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !36423

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !256773
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !36424

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !14
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !121

bb.g:                                             ; preds = %._crit_edge.i15
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !15

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !14
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !14
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l
end_hunk_4
begin_hunk_5_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h28db84a7009ea9bbE":bb.a
  %i.cl = insertvalue { i64, i64 } %i.ck, i64 %.sroa.4.0.i, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h69235af1361a24c4E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h69235af1361a24c4E.exit: ; preds = %bb.c, %_ZN9hashbrown3raw13RawTableInner12resize_inner17hf0e46be2dd20196eE.exit.i
  %.merged.i = phi { i64, i64 } [ %i.o, %bb.c ], [ %i.cl, %_ZN9hashbrown3raw13RawTableInner12resize_inner17hf0e46be2dd20196eE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %.merged.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h32ba5d895e45f705E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256832)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !256832, !noalias !256835, !noundef !14 ; 3 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !256832, !noalias !256835, !noundef !14 ; 4 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1                          ; 8 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 3 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.o = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext %2), !noalias !256837
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hdf503cc2212be110E.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.f) ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !256841
  %i.q = icmp ult i64 %.sroa.0.0.i8, 15
  br i1 %i.q, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %.sroa.0.0.i8, 2305843009213693951
  br i1 %i.r, label %bb.j, label %bb.f, !prof !121

.thread.i:                                        ; preds = %bb.d
  %i.s = icmp samesign ult i64 %.sroa.0.0.i8, 4
  %i.t = and i64 %.sroa.0.0.i8, 8
  %..i.i = add nuw nsw i64 %i.t, 8
  %.sroa.03.0.i.i = select i1 %i.s, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw i64 %.sroa.0.0.i8, 3
  %i.v = udiv i64 %i.u, 7
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = lshr i64 -1, %i.x                        ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %or.cond7.i.i = icmp samesign ugt i64 %i.y, 2305843009213693949
  br i1 %or.cond7.i.i, label %bb.h, label %bb.g, !prof !234405

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph8.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.z, %bb.f ] ; 5 uses
  %i.aa = shl nuw i64 %.sroa.4.0.i.ph8.i, 3
  %i.ab = add nuw i64 %i.aa, 8
  %i.ac = and i64 %i.ab, -16                      ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph8.i, 16  ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.h, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i, !prof !2995

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i: ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !256843
  %i.ah = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !256843 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext %2), !noalias !256843
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread

bb.i:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i
  %i.ak = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext %2, i64 noundef 16, i64 noundef %i.ae), !noalias !256843
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.al = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext %2), !noalias !256848
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit: ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i
  %i.am = icmp samesign ult i64 %.sroa.4.0.i.ph8.i, 9
  %i.an = add nsw i64 %.sroa.4.0.i.ph8.i, -1      ; 3 uses
  %i.ao = lshr i64 %.sroa.4.0.i.ph8.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.09.0.i.i = select i1 %i.am, i64 %i.an, i64 %i.ap ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aq, i8 -1, i64 %i.ad, i1 false), !noalias !256848
  store ptr %i.c, ptr %i.b, align 8, !noalias !256841
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !256841
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !256841
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aq, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !256841
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.an, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !256841
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.09.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !256841
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !256841
  %i.ar = load i64, ptr %i.d, align 8, !alias.scope !256849, !noalias !256850, !noundef !14
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.l

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.al, %bb.j ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %.sroa.12.029 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.031 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256841
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h520901a5eda3e53dE.exit.i

bb.k:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #81
  br label %common.resume

bb.l:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !256849, !noalias !256850, !nonnull !14, !noundef !14
  br label %.noexc3

.noexc3:                                          ; preds = %.noexc3, %bb.l
  %.sroa.015.0 = phi ptr [ %i.au, %bb.l ], [ %i.av, %.noexc3 ] ; 2 uses
  %.sroa.13.0.in.in = load <16 x i8>, ptr %.sroa.015.0, align 16
  %.sroa.13.0.in = icmp sgt <16 x i8> %.sroa.13.0.in.in, splat (i8 -1)
  %.sroa.13.0 = bitcast <16 x i1> %.sroa.13.0.in to i16
  %.not.i2 = icmp eq i16 %.sroa.13.0, 0
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 16
  br i1 %.not.i2, label %.noexc3, label %bb.n

bb.m:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit
  %i.aw = ptrtoint ptr %i.aq to i64
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !256851, !noalias !256854
  store i64 %i.aw, ptr %0, align 8, !alias.scope !256851, !noalias !256854
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !256856, !noalias !256858 ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !alias.scope !256856, !noalias !256858
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.09.0.i.i, ptr %i.ax, align 8, !alias.scope !256860, !noalias !256862
  %i.ay = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ay, label %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i: ; preds = %bb.m
  %i.az = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i to ptr
  %i.ba = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 3 ; 2 uses
  %i.bb = add i64 %i.ba, 8
  %i.bc = add i64 %i.ba, 23                       ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %i.bb
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = and i64 %i.bc, -16                      ; 3 uses
  %i.bf = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bg = add i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = icmp uge i64 %i.bg, %i.be
  %i.bi = icmp ult i64 %i.bg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bh)
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = sub nsw i64 0, %i.be
  %i.bk = getelementptr inbounds i8, ptr %i.az, i64 %i.bj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bk, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !256864
  br label %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE.exit"

"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE.exit": ; preds = %bb.m, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h08f7ba962753a076E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256841
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h520901a5eda3e53dE.exit.i

bb.n:                                             ; preds = %.noexc3
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5995) #80
          to label %.noexc9 unwind label %bb.k

.noexc9:                                          ; preds = %bb.n
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.ch, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256869)
  %.val11.i = load ptr, ptr %0, align 8, !alias.scope !256869 ; 8 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bl = lshr i64 %i.k, 4
  %i.bm = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.bm, 0
  %i.bn = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.bl, %i.bn ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.bo = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.03.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bw, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.03.07.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.bp, align 16, !noalias !256869
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.bq = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.br = or <2 x i64> %i.bq, splat (i64 -9187201950435737472)
  store <2 x i64> %i.br, ptr %i.bp, align 16, !noalias !256869
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %i.bs = icmp ult i64 %i.k, 16
  br i1 %i.bs, label %._crit_edge.thread.i.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i, !prof !16405

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.03.07.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.bw, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.03.07.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.bt, align 16, !noalias !256869
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.bu = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.bv = or <2 x i64> %i.bu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.bv, ptr %i.bt, align 16, !noalias !256869
  %i.bw = add i64 %.sroa.03.07.i.i, 32            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.03.07.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.by, align 16, !noalias !256869
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.bz = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ca = or <2 x i64> %i.bz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ca, ptr %i.by, align 16, !noalias !256869
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.o
  br label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i: ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.sink10.i.i = phi i64 [ 16, %._crit_edge.thread.i.i ], [ %i.k, %._crit_edge.i.i ]
  %.sink9.i.i = phi i64 [ %i.k, %._crit_edge.thread.i.i ], [ 16, %._crit_edge.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sink10.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull align 1 %.val11.i, i64 %.sink9.i.i, i1 false), !noalias !256869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256869
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.cc, align 8, !noalias !256869
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 8, ptr %i.cd, align 8, !noalias !256869
  store ptr %0, ptr %i.a, align 8, !noalias !256869
  %exitcond.not.i41 = icmp eq i64 %i.k, 0
  br i1 %exitcond.not.i41, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.ce = add i64 %.sroa.05.0.i42, 1
  %exitcond.not.i = icmp eq i64 %.sroa.05.0.i42, %i.i
  br i1 %exitcond.not.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i, %bb.q
  %.sroa.05.0.i42 = phi i64 [ %i.ce, %bb.q ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.05.0.i42
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !14
  %.not.i12 = icmp eq i8 %i.cg, -128
  br i1 %.not.i12, label %bb.r, label %bb.q

bb.r:                                             ; preds = %.lr.ph
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @252, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5995) #80
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17haca4a174f4fbc248E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #81
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit: ; preds = %bb.q, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17h3e48c736e3a936eeE.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = sub i64 %.sroa.03.0.i, %i.e
  store i64 %i.ck, ptr %i.cj, align 8, !alias.scope !256869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256869
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h520901a5eda3e53dE.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17h520901a5eda3e53dE.exit.i: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread, %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE.exit", %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit
  %.sroa.4.0.i = phi i64 [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit ], [ %.sroa.12.029, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread ], [ undef, %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE.exit" ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hc47e9b0fe462513fE.exit ], [ %.sroa.7.031, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h313190b0ed74a037E.exit.thread ], [ -9223372036854775807, %"_ZN4core3ptr207drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$hashbrown..alloc..inner..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h86f26773371802bbE.exit" ]
  %i.cl = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cm = insertvalue { i64, i64 } %i.cl, i64 %.sroa.4.0.i, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hdf503cc2212be110E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hdf503cc2212be110E.exit: ; preds = %bb.c, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h520901a5eda3e53dE.exit.i
  %.merged.i = phi { i64, i64 } [ %i.o, %bb.c ], [ %i.cm, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h520901a5eda3e53dE.exit.i ]
  ret { i64, i64 } %.merged.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h3c51c76c034a3af9E"(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !256872)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !256872, !noalias !256875, !noundef !14 ; 5 uses
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !256872, !noalias !256875, !noundef !14 ; 6 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.f, %i.n
  br i1 %.not.i, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !256878
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h69235af1361a24c4E.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !256879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256882
  call fastcc void @_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h044c0bb2e18f3ec5E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.a, i64 noundef range(i64 1, 601) 32, i64 noundef %.sroa.0.0.i9, i1 noundef zeroext %3)
  %i.q = load ptr, ptr %i.a, align 8, !noalias !256882, !noundef !14 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !256882 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !256882 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256882
  br i1 %i.r, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hf0e46be2dd20196eE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !256885, !noalias !256886, !nonnull !14, !noundef !14 ; 5 uses
  %i.y = icmp eq i64 %i.e, 0
  br i1 %i.y, label %._crit_edge30, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e
  %.val619 = load <16 x i8>, ptr %i.x, align 16
  %i.z = icmp sgt <16 x i8> %.val619, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %.sroa.0.029 = phi ptr [ %.sroa.0.1.lcssa, %bb.h ], [ %i.x, %.preheader.preheader ] ; 2 uses
  %.sroa.5.028 = phi i64 [ %.sroa.5.1.lcssa, %bb.h ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.027 = phi i64 [ %i.az, %bb.h ], [ %i.e, %.preheader.preheader ]
  %.sroa.13.026 = phi i16 [ %i.ax, %bb.h ], [ %i.aa, %.preheader.preheader ] ; 2 uses
  %.not.i221 = icmp eq i16 %.sroa.13.026, 0
  br i1 %.not.i221, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.123 = phi ptr [ %i.ab, %.noexc3 ], [ %.sroa.0.029, %.preheader ] ; 2 uses
  %.sroa.5.122 = phi i64 [ %i.ae, %.noexc3 ], [ %.sroa.5.028, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.123) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.123, i64 16 ; 3 uses
  %.val520 = load <16 x i8>, ptr %i.ab, align 16
  %i.ac = icmp sgt <16 x i8> %.val520, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %i.ae = add i64 %.sroa.5.122, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ad, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge30:                                    ; preds = %bb.h, %bb.e
  %i.af = sub i64 %i.v, %i.e
  store i64 %i.w, ptr %0, align 8, !alias.scope !256887, !noalias !256890
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !256892, !noalias !256894
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !alias.scope !256896, !noalias !256898
end_hunk_5
begin_hunk_6_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8ab3b7ed76ed8c9eE":bb.a
  %.sroa.02.0.i.i13 = select i1 %i.bp, i64 %i.bq, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i, i64 %i.ai ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i8 -1, i64 %i.aj, i1 false), !noalias !257111
  store ptr %i.h, ptr %i.d, align 8, !noalias !257104
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !257104
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !257104
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bt, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !257104
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.bq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !257104
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.02.0.i.i13, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !257104
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !257104
  %i.bu = load ptr, ptr %0, align 8, !alias.scope !257112, !noalias !257113, !nonnull !14, !noundef !14 ; 3 uses
  %i.bv = load i64, ptr %i.i, align 8, !alias.scope !257112, !noalias !257113, !noundef !14 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = ptrtoint ptr %i.bt to i64
  br i1 %i.bw, label %._crit_edge53, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17haf469d5a2812ae37E.exit
  %.val634 = load <16 x i8>, ptr %i.bu, align 16
  %i.by = icmp sgt <16 x i8> %.val634, splat (i8 -1)
  %i.bz = bitcast <16 x i1> %i.by to i16
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17haf469d5a2812ae37E.exit.thread: ; preds = %bb.j, %bb.l, %bb.n
  %.sroa.7.033 = phi i64 [ 0, %bb.n ], [ 16, %bb.l ], [ 0, %bb.j ]
  %.sroa.11.032 = phi i64 [ undef, %bb.n ], [ %i.ak, %bb.l ], [ undef, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !257104
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hb3acf932a33f8cb3E.exit

bb.p:                                             ; preds = %._crit_edge
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h06623d247e055f9fE"(ptr noalias noundef align 8 dereferenceable(56) %i.d) #81
  br label %common.resume

.preheader:                                       ; preds = %.preheader.preheader, %bb.t
  %.sroa.0.052 = phi ptr [ %.sroa.0.1.lcssa, %bb.t ], [ %i.bu, %.preheader.preheader ] ; 2 uses
  %.sroa.5.051 = phi i64 [ %.sroa.5.1.lcssa, %bb.t ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.050 = phi i64 [ %i.de, %bb.t ], [ %i.bv, %.preheader.preheader ]
  %.sroa.13.049 = phi i16 [ %i.dc, %bb.t ], [ %i.bz, %.preheader.preheader ] ; 2 uses
  %.not.i244 = icmp eq i16 %.sroa.13.049, 0
  br i1 %.not.i244, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.146 = phi ptr [ %i.cb, %.noexc3 ], [ %.sroa.0.052, %.preheader ] ; 2 uses
  %.sroa.5.145 = phi i64 [ %i.ce, %.noexc3 ], [ %.sroa.5.051, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.146) ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.146, i64 16 ; 3 uses
  %.val535 = load <16 x i8>, ptr %i.cb, align 16
  %i.cc = icmp sgt <16 x i8> %.val535, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %i.ce = add i64 %.sroa.5.145, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.cd, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge53.loopexit:                           ; preds = %bb.t
  %.pre63 = load i64, ptr %i.i, align 8, !alias.scope !257112, !noalias !257113
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !257114, !noalias !257117
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17haf469d5a2812ae37E.exit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge53.loopexit ], [ %i.bu, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17haf469d5a2812ae37E.exit ]
  %i.cf = phi i64 [ %.pre63, %._crit_edge53.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17haf469d5a2812ae37E.exit ]
  %i.cg = sub i64 %.sroa.02.0.i.i13, %i.cf
  store i64 %i.bx, ptr %0, align 8, !alias.scope !257114, !noalias !257117
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.m, align 8, !alias.scope !257119, !noalias !257121 ; 3 uses
  store i64 %i.bq, ptr %i.m, align 8, !alias.scope !257119, !noalias !257121
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cg, ptr %i.ch, align 8, !alias.scope !257123, !noalias !257125
  %i.ci = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ci, label %"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h06623d247e055f9fE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i: ; preds = %._crit_edge53
  %i.cj = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 24 ; 2 uses
  %i.ck = add i64 %i.cj, 24
  %i.cl = add i64 %i.cj, 39                       ; 2 uses
  %i.cm = icmp uge i64 %i.cl, %i.ck
  call void @llvm.assume(i1 %i.cm)
  %i.cn = and i64 %i.cl, -16                      ; 3 uses
  %i.co = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.cp = add i64 %i.co, %i.cn                    ; 3 uses
  %i.cq = icmp uge i64 %i.cp, %i.cn
  %i.cr = icmp ult i64 %i.cp, 9223372036854775793
  call void @llvm.assume(i1 %i.cq)
  call void @llvm.assume(i1 %i.cr)
  %i.cs = sub nsw i64 0, %i.cn
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.cs
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !noalias !257127, !nonnull !14, !align !240, !noundef !14
  %i.cu = getelementptr i8, ptr %.val.i.i.i, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !257127, !nonnull !14, !noundef !14
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !257127, !nonnull !14, !noundef !14 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ct
  br i1 %i.cx, label %bb.q, label %"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h06623d247e055f9fE.exit"

bb.q:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cp
  store ptr %i.cy, ptr %i.cv, align 8, !noalias !257127
  br label %"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h06623d247e055f9fE.exit"

"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h06623d247e055f9fE.exit": ; preds = %._crit_edge53, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !257104
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hb3acf932a33f8cb3E.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.049, %.preheader ], [ %i.cd, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.051, %.preheader ], [ %i.ce, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.052, %.preheader ], [ %i.cb, %.noexc3 ]
  %i.cz = add i16 %.sroa.13.1.lcssa, -1
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = and i16 %i.cz, %.sroa.13.1.lcssa
  %i.dd = add i64 %.sroa.5.1.lcssa, %i.db         ; 2 uses
  %i.de = add i64 %.sroa.9.050, -1                ; 2 uses
  %i.df = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9c07f41c87416a8cE"(ptr noundef nonnull align 1 %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dd)
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.r:                                             ; preds = %._crit_edge
  %.sroa.0.07.i.i = and i64 %i.df, %i.bq          ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.dg, align 1, !noalias !257134
  %i.dh = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.di = bitcast <16 x i1> %i.dh to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.di, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !36423

.lr.ph.i.i:                                       ; preds = %bb.r, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i14, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.r ]
  %i.dj = phi i64 [ %i.dk, %.lr.ph.i.i ], [ 0, %bb.r ]
  %i.dk = add i64 %i.dj, 16                       ; 2 uses
  %i.dl = add i64 %i.dk, %.sroa.0.010.i.i
  %.sroa.0.0.i.i14 = and i64 %i.dl, %i.bq         ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.0.i.i14
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.dm, align 1, !noalias !257134
  %i.dn = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !36424

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.r ], [ %.sroa.0.0.i.i14, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.di, %bb.r ], [ %i.do, %.lr.ph.i.i ]
  %i.dp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.dq
  %i.ds = and i64 %i.dr, %i.bq                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noundef !14
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %bb.s, label %bb.t, !prof !121

bb.s:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.bt, align 16
  %i.dw = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16          ; 2 uses
  %i.dy = icmp ne i16 %i.dx, 0
  call void @llvm.assume(i1 %i.dy)
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dx, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ea, %bb.s ], [ %i.ds, %._crit_edge.i.i ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.0.i5.i.i
  %i.ec = lshr i64 %i.df, 57
  %i.ed = trunc nuw nsw i64 %i.ec to i8           ; 2 uses
  %i.ee = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.ef = and i64 %i.ee, %i.bq
  store i8 %i.ed, ptr %i.eb, align 1
  %i.eg = getelementptr i8, ptr %i.bt, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  store i8 %i.ed, ptr %i.eh, align 1
  %i.ei = load ptr, ptr %0, align 8, !alias.scope !257112, !noalias !257113, !nonnull !14, !noundef !14
  %.neg.i.i = mul i64 %i.dd, -24
  %i.ej = getelementptr i8, ptr %i.ei, i64 %.neg.i.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %.neg61.i.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.el = getelementptr i8, ptr %i.bt, i64 %.neg61.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.em, ptr noundef nonnull align 1 dereferenceable(24) %i.ek, i64 24, i1 false)
  %i.en = icmp eq i64 %i.de, 0
  br i1 %i.en, label %._crit_edge53.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.x, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.fq, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !257137)
  %.val10 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.p, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.eo = lshr i64 %i.p, 4
  %i.ep = and i64 %i.p, 15
  %.not9.i.i.i = icmp ne i64 %i.ep, 0
  %i.eq = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.eo, %i.eq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.er = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.er, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.v

._crit_edge.i.unr-lcssa:                          ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.03.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ez, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod108 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod108)
  %i.es = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.es, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.et = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.eu = or <2 x i64> %i.et, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eu, ptr %i.es, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.ev = icmp ult i64 %i.p, 16
  br i1 %i.ev, label %._crit_edge.thread.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, !prof !16405

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.new
  %.sroa.03.07.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ez, %bb.v ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.v ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.ew, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.ex = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.ey = or <2 x i64> %i.ex, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ey, ptr %i.ew, align 16
  %i.ez = add i64 %.sroa.03.07.i, 32              ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.fb, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.fc = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.fd = or <2 x i64> %i.fc, splat (i64 -9187201950435737472)
  store <2 x i64> %i.fd, ptr %i.fb, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.v

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.u
  br label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.p, %._crit_edge.i ]
  %.sink9.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ 16, %._crit_edge.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fe, ptr nonnull align 1 %.val10, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !257140
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.ff, align 8, !noalias !257140
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 24, ptr %i.fg, align 8, !noalias !257140
  store ptr %0, ptr %i.c, align 8, !noalias !257140
  %i.fh = load i64, ptr %i.m, align 8, !alias.scope !257142, !noalias !257143, !noundef !14
  %i.fi = add i64 %i.fh, 1                        ; 2 uses
  %.not = icmp eq i64 %i.fi, 0
  br i1 %.not, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hecc40722617590deE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, %bb.ad
  %.sroa.05.1.i.i43 = phi i64 [ %.sroa.05.1.i.i, %bb.ad ], [ 1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 3 uses
  %.sroa.05.0.i.i42 = phi i64 [ %.sroa.05.1.i.i43, %bb.ad ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 8 uses
  %i.fj = load ptr, ptr %0, align 8, !noalias !257143, !nonnull !14, !noundef !14 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.sroa.05.0.i.i42
  %i.fl = load i8, ptr %i.fk, align 1, !noalias !257143, !noundef !14
  %.not.i.i = icmp eq i8 %i.fl, -128
  br i1 %.not.i.i, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %.lr.ph
  %.neg.i6.i = xor i64 %.sroa.05.0.i.i42, -1
  %.neg10.i.i = mul i64 %.neg.i6.i, 24
  %i.fm = getelementptr inbounds i8, ptr %i.fj, i64 %.neg10.i.i ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %.preheader.i.preheader, %bb.w
  %i.fp = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h9c07f41c87416a8cE"(ptr noundef nonnull align 1 %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.05.0.i.i42)
          to label %bb.y unwind label %bb.x, !noalias !257143 ; 3 uses

bb.x:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54e0d6e92b86b87bE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #81
          to label %common.resume unwind label %bb.ae, !noalias !257143

bb.y:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %.val7 = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %.val8 = load i64, ptr %i.m, align 8, !noundef !14 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.fp           ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.fr, align 1, !noalias !257144
  %i.fs = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ft = bitcast <16 x i1> %i.fs to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ft, 0
  br i1 %.not.i9.i, label %.lr.ph.i17, label %._crit_edge.i16, !prof !36423

.lr.ph.i17:                                       ; preds = %bb.y, %.lr.ph.i17
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i18, %.lr.ph.i17 ], [ %.sroa.0.07.i, %bb.y ]
  %i.fu = phi i64 [ %i.fv, %.lr.ph.i17 ], [ 0, %bb.y ]
  %i.fv = add i64 %i.fu, 16                       ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.0.010.i
  %.sroa.0.0.i18 = and i64 %i.fw, %.val8          ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i18
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.fx, align 1, !noalias !257144
  %i.fy = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fz = bitcast <16 x i1> %i.fy to i16          ; 2 uses
  %.not.i.i19 = icmp eq i16 %i.fz, 0
  br i1 %.not.i.i19, label %.lr.ph.i17, label %._crit_edge.i16, !prof !36424

._crit_edge.i16:                                  ; preds = %.lr.ph.i17, %bb.y
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.y ], [ %.sroa.0.0.i18, %.lr.ph.i17 ]
  %.lcssa.i = phi i16 [ %i.ft, %bb.y ], [ %i.fz, %.lr.ph.i17 ]
  %i.ga = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = add i64 %.sroa.0.0.lcssa.i, %i.gb
  %i.gd = and i64 %i.gc, %.val8                   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noundef !14
  %i.gg = icmp sgt i8 %i.gf, -1
  br i1 %i.gg, label %bb.z, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit, !prof !121

bb.z:                                             ; preds = %._crit_edge.i16
  %.val62.i.i = load <16 x i8>, ptr %.val7, align 16
  %i.gh = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.gi = bitcast <16 x i1> %i.gh to i16          ; 2 uses
  %i.gj = icmp ne i16 %i.gi, 0
  call void @llvm.assume(i1 %i.gj)
  %i.gk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gi, i1 true)
  %i.gl = zext nneg i16 %i.gk to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit: ; preds = %bb.z, %._crit_edge.i16
  %.sroa.0.0.i5.i = phi i64 [ %i.gl, %bb.z ], [ %i.gd, %._crit_edge.i16 ] ; 4 uses
  %i.gm = sub i64 %.sroa.05.0.i.i42, %.sroa.0.07.i
  %i.gn = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.go = xor i64 %i.gn, %i.gm
  %.unshifted.i.i = and i64 %i.go, %.val8
  %i.gp = icmp ult i64 %.unshifted.i.i, 16
  br i1 %i.gp, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %i.gq = lshr i64 %i.fp, 57
  %i.gr = trunc nuw nsw i64 %i.gq to i8           ; 2 uses
  %i.gs = add i64 %.sroa.05.0.i.i42, -16
  %i.gt = and i64 %.val8, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.05.0.i.i42
  store i8 %i.gr, ptr %i.gu, align 1, !noalias !257143
  %i.gv = load ptr, ptr %0, align 8, !noalias !257143, !nonnull !14, !noundef !14
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gt
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  store i8 %i.gr, ptr %i.gx, align 1, !noalias !257143
  br label %bb.ad

bb.ab:                                            ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %.neg11.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i.i = mul i64 %.neg11.i.i, 24
  %i.gy = getelementptr inbounds i8, ptr %.val7, i64 %.neg12.i.i ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !noalias !257143, !noundef !14
  %i.hb = lshr i64 %i.fp, 57
  %i.hc = trunc nuw nsw i64 %i.hb to i8           ; 2 uses
  %i.hd = add i64 %.sroa.0.0.i5.i, -16
  %i.he = and i64 %i.hd, %.val8
  store i8 %i.hc, ptr %i.gz, align 1, !noalias !257143
  %i.hf = load ptr, ptr %0, align 8, !noalias !257143, !nonnull !14, !noundef !14
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.he
  %i.hh = getelementptr i8, ptr %i.hg, i64 16
  store i8 %i.hc, ptr %i.hh, align 1, !noalias !257143
  %i.hi = icmp eq i8 %i.ha, -1
  br i1 %i.hi, label %bb.ac, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !257147), !noalias !257143
  call void @llvm.experimental.noalias.scope.decl(metadata !257150), !noalias !257143
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.fm, align 1, !alias.scope !257147, !noalias !257152
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.gy, align 1, !alias.scope !257150, !noalias !257153
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.fm, align 1, !alias.scope !257147, !noalias !257152
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.gy, align 1, !alias.scope !257150, !noalias !257153
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257154), !noalias !257143
  call void @llvm.experimental.noalias.scope.decl(metadata !257156), !noalias !257143
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.fn, align 1, !alias.scope !257154, !noalias !257158
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.hj, align 1, !alias.scope !257156, !noalias !257159
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.fn, align 1, !alias.scope !257154, !noalias !257158
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.hj, align 1, !alias.scope !257156, !noalias !257159
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257160), !noalias !257143
  call void @llvm.experimental.noalias.scope.decl(metadata !257162), !noalias !257143
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.fo, align 1, !alias.scope !257160, !noalias !257164
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.hk, align 1, !alias.scope !257162, !noalias !257165
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.fo, align 1, !alias.scope !257160, !noalias !257164
end_hunk_6
begin_hunk_7_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hac97b413d871ebdcE":bb.a
  %i.w = load i64, ptr %i.v, align 8, !noalias !257175 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !257175 ; 3 uses
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !257175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !257175
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h93c8fdb471ef5d10E.exit

bb.f:                                             ; preds = %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6215518bc3882578E"(ptr noalias noundef align 8 dereferenceable(56) %i.c) #81
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !257175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !257175
  store ptr %i.g, ptr %i.c, align 8, !noalias !257175
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !257175
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !257175
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.t, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !257175
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.w, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !257175
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.y, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !257175
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !257175
  %i.aa = load ptr, ptr %0, align 8, !alias.scope !257177, !noalias !257178, !nonnull !14, !noundef !14 ; 3 uses
  %i.ab = load i64, ptr %i.h, align 8, !alias.scope !257177, !noalias !257178, !noundef !14 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = ptrtoint ptr %i.t to i64
  br i1 %i.ac, label %._crit_edge43, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %.val624 = load <16 x i8>, ptr %i.aa, align 16
  %i.ae = icmp sgt <16 x i8> %.val624, splat (i8 -1)
  %i.af = bitcast <16 x i1> %i.ae to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.k
  %.sroa.0.042 = phi ptr [ %.sroa.0.1.lcssa, %bb.k ], [ %i.aa, %.preheader.preheader ] ; 2 uses
  %.sroa.5.041 = phi i64 [ %.sroa.5.1.lcssa, %bb.k ], [ 0, %.preheader.preheader ] ; 2 uses
  %.sroa.9.040 = phi i64 [ %i.bf, %bb.k ], [ %i.ab, %.preheader.preheader ]
  %.sroa.13.039 = phi i16 [ %i.bd, %bb.k ], [ %i.af, %.preheader.preheader ] ; 2 uses
  %.not.i234 = icmp eq i16 %.sroa.13.039, 0
  br i1 %.not.i234, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.0.136 = phi ptr [ %i.ag, %.noexc3 ], [ %.sroa.0.042, %.preheader ] ; 2 uses
  %.sroa.5.135 = phi i64 [ %i.aj, %.noexc3 ], [ %.sroa.5.041, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.136) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.136, i64 16 ; 3 uses
  %.val525 = load <16 x i8>, ptr %i.ag, align 16
  %i.ah = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %i.aj = add i64 %.sroa.5.135, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ai, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge43.loopexit:                           ; preds = %bb.k
  %.pre53 = load i64, ptr %i.h, align 8, !alias.scope !257177, !noalias !257178
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !257179, !noalias !257182
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %bb.g
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge43.loopexit ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ak = phi i64 [ %.pre53, %._crit_edge43.loopexit ], [ 0, %bb.g ]
  %i.al = sub i64 %i.y, %i.ak
  store i64 %i.ad, ptr %0, align 8, !alias.scope !257179, !noalias !257182
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.l, align 8, !alias.scope !257184, !noalias !257186 ; 3 uses
  store i64 %i.w, ptr %i.l, align 8, !alias.scope !257184, !noalias !257186
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.am, align 8, !alias.scope !257188, !noalias !257190
  %i.an = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.an, label %"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6215518bc3882578E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i: ; preds = %._crit_edge43
  %i.ao = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5 ; 2 uses
  %i.ap = add i64 %i.ao, 32
  %i.aq = add i64 %i.ao, 47                       ; 2 uses
  %i.ar = icmp uge i64 %i.aq, %i.ap
  call void @llvm.assume(i1 %i.ar)
  %i.as = and i64 %i.aq, -32                      ; 3 uses
  %i.at = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.au = add i64 %i.at, %i.as                    ; 4 uses
  %i.av = icmp uge i64 %i.au, %i.as
  %i.aw = icmp ult i64 %i.au, 9223372036854775793
  call void @llvm.assume(i1 %i.av)
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6215518bc3882578E.exit", label %bb.h

bb.h:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i
  %i.ay = sub nsw i64 0, %i.as
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.ay
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 16) #79, !noalias !257192
  br label %"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6215518bc3882578E.exit"

"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6215518bc3882578E.exit": ; preds = %._crit_edge43, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !257175
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h93c8fdb471ef5d10E.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.039, %.preheader ], [ %i.ai, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.041, %.preheader ], [ %i.aj, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.042, %.preheader ], [ %i.ag, %.noexc3 ]
  %i.ba = add i16 %.sroa.13.1.lcssa, -1
  %i.bb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.sroa.13.1.lcssa
  %i.be = add i64 %.sroa.5.1.lcssa, %i.bc         ; 2 uses
  %i.bf = add i64 %.sroa.9.040, -1                ; 2 uses
  %i.bg = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h45590411ee05e804E"(ptr noundef nonnull align 1 %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.be)
          to label %bb.i unwind label %bb.f       ; 2 uses

bb.i:                                             ; preds = %._crit_edge
  %.sroa.0.07.i.i = and i64 %i.bg, %i.w           ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !257199
  %i.bi = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !36423

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.i ]
  %i.bk = phi i64 [ %i.bl, %.lr.ph.i.i ], [ 0, %bb.i ]
  %i.bl = add i64 %i.bk, 16                       ; 2 uses
  %i.bm = add i64 %i.bl, %.sroa.0.010.i.i
  %.sroa.0.0.i.i12 = and i64 %i.bm, %i.w          ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.bn, align 1, !noalias !257199
  %i.bo = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !36424

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.i ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bj, %bb.i ], [ %i.bp, %.lr.ph.i.i ]
  %i.bq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = add i64 %.sroa.0.0.lcssa.i.i, %i.br
  %i.bt = and i64 %i.bs, %i.w                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !14
  %i.bw = icmp sgt i8 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %bb.k, !prof !121

bb.j:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.t, align 16
  %i.bx = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %i.bz = icmp ne i16 %i.by, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.by, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.cb, %bb.j ], [ %i.bt, %._crit_edge.i.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i5.i.i
  %i.cd = lshr i64 %i.bg, 57
  %i.ce = trunc nuw nsw i64 %i.cd to i8           ; 2 uses
  %i.cf = add i64 %.sroa.0.0.i5.i.i, -16
  %i.cg = and i64 %i.cf, %i.w
  store i8 %i.ce, ptr %i.cc, align 1
  %i.ch = getelementptr i8, ptr %i.t, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store i8 %i.ce, ptr %i.ci, align 1
  %i.cj = load ptr, ptr %0, align 8, !alias.scope !257177, !noalias !257178, !nonnull !14, !noundef !14
  %i.ck = shl i64 %i.be, 5
  %i.cl = sub nuw nsw i64 -32, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 %i.cl
  %i.cn = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.co = sub nuw nsw i64 -32, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.t, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cp, ptr noundef nonnull align 1 dereferenceable(32) %i.cm, i64 32, i1 false)
  %i.cq = icmp eq i64 %i.bf, 0
  br i1 %i.cq, label %._crit_edge43.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.o, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.du, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !257202)
  %.val10 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.o, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cr = lshr i64 %i.o, 4
  %i.cs = and i64 %i.o, 15
  %.not9.i.i.i = icmp ne i64 %i.cs, 0
  %i.ct = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cr, %i.ct ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.cu = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.m

._crit_edge.i.unr-lcssa:                          ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.03.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.dc, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod94 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod94)
  %i.cv = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cv, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cw = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cx = or <2 x i64> %i.cw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cx, ptr %i.cv, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.cy = icmp ult i64 %i.o, 16
  br i1 %i.cy, label %._crit_edge.thread.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, !prof !16405

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.new
  %.sroa.03.07.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.dc, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.m ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cz, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.da = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.db = or <2 x i64> %i.da, splat (i64 -9187201950435737472)
  store <2 x i64> %i.db, ptr %i.cz, align 16
  %i.dc = add i64 %.sroa.03.07.i, 32              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.de, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.df = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.dg = or <2 x i64> %i.df, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dg, ptr %i.de, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.m

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.l
  br label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ]
  %.sink9.i = phi i64 [ %i.o, %._crit_edge.thread.i ], [ 16, %._crit_edge.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %.val10, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !257205
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN4core3ops8function6FnOnce9call_once17h39db278b2b538445E, ptr %i.di, align 8, !noalias !257205
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.dj, align 8, !noalias !257205
  store ptr %0, ptr %i.a, align 8, !noalias !257205
  %i.dk = load i64, ptr %i.l, align 8, !alias.scope !257207, !noalias !257208, !noundef !14
  %i.dl = add i64 %i.dk, 1                        ; 2 uses
  %.not = icmp eq i64 %i.dl, 0
  br i1 %.not, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hecc40722617590deE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, %bb.u
  %.sroa.05.1.i.i33 = phi i64 [ %.sroa.05.1.i.i, %bb.u ], [ 1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 3 uses
  %.sroa.05.0.i.i32 = phi i64 [ %.sroa.05.1.i.i33, %bb.u ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 8 uses
  %i.dm = load ptr, ptr %0, align 8, !noalias !257208, !nonnull !14, !noundef !14 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.05.0.i.i32
  %i.do = load i8, ptr %i.dn, align 1, !noalias !257208, !noundef !14
  %.not.i.i = icmp eq i8 %i.do, -128
  br i1 %.not.i.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %.lr.ph
  %.neg.i.i = xor i64 %.sroa.05.0.i.i32, -1
  %.neg10.i.i = shl i64 %.neg.i.i, 5
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %.neg10.i.i ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %.preheader.i.preheader, %bb.n
  %i.dt = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h45590411ee05e804E"(ptr noundef nonnull align 1 %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.05.0.i.i32)
          to label %bb.p unwind label %bb.o, !noalias !257208 ; 3 uses

bb.o:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h54e0d6e92b86b87bE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #81
          to label %common.resume unwind label %bb.v, !noalias !257208

bb.p:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %.val7 = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %.val8 = load i64, ptr %i.l, align 8, !noundef !14 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.dt           ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.dv, align 1, !noalias !257209
  %i.dw = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dx, 0
  br i1 %.not.i9.i, label %.lr.ph.i15, label %._crit_edge.i14, !prof !36423

.lr.ph.i15:                                       ; preds = %bb.p, %.lr.ph.i15
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i16, %.lr.ph.i15 ], [ %.sroa.0.07.i, %bb.p ]
  %i.dy = phi i64 [ %i.dz, %.lr.ph.i15 ], [ 0, %bb.p ]
  %i.dz = add i64 %i.dy, 16                       ; 2 uses
  %i.ea = add i64 %i.dz, %.sroa.0.010.i
  %.sroa.0.0.i16 = and i64 %i.ea, %.val8          ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i16
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.eb, align 1, !noalias !257209
  %i.ec = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i.i17 = icmp eq i16 %i.ed, 0
  br i1 %.not.i.i17, label %.lr.ph.i15, label %._crit_edge.i14, !prof !36424

._crit_edge.i14:                                  ; preds = %.lr.ph.i15, %bb.p
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.p ], [ %.sroa.0.0.i16, %.lr.ph.i15 ]
  %.lcssa.i = phi i16 [ %i.dx, %bb.p ], [ %i.ed, %.lr.ph.i15 ]
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  %i.eg = add i64 %.sroa.0.0.lcssa.i, %i.ef
  %i.eh = and i64 %i.eg, %.val8                   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !14
  %i.ek = icmp sgt i8 %i.ej, -1
  br i1 %i.ek, label %bb.q, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit, !prof !121

bb.q:                                             ; preds = %._crit_edge.i14
  %.val62.i.i = load <16 x i8>, ptr %.val7, align 16
  %i.el = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.em = bitcast <16 x i1> %i.el to i16          ; 2 uses
  %i.en = icmp ne i16 %i.em, 0
  call void @llvm.assume(i1 %i.en)
  %i.eo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.em, i1 true)
  %i.ep = zext nneg i16 %i.eo to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit: ; preds = %bb.q, %._crit_edge.i14
  %.sroa.0.0.i5.i = phi i64 [ %i.ep, %bb.q ], [ %i.eh, %._crit_edge.i14 ] ; 4 uses
  %i.eq = sub i64 %.sroa.05.0.i.i32, %.sroa.0.07.i
  %i.er = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.es = xor i64 %i.er, %i.eq
  %.unshifted.i.i = and i64 %i.es, %.val8
  %i.et = icmp ult i64 %.unshifted.i.i, 16
  br i1 %i.et, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %i.eu = lshr i64 %i.dt, 57
  %i.ev = trunc nuw nsw i64 %i.eu to i8           ; 2 uses
  %i.ew = add i64 %.sroa.05.0.i.i32, -16
  %i.ex = and i64 %.val8, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.05.0.i.i32
  store i8 %i.ev, ptr %i.ey, align 1, !noalias !257208
  %i.ez = load ptr, ptr %0, align 8, !noalias !257208, !nonnull !14, !noundef !14
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  store i8 %i.ev, ptr %i.fb, align 1, !noalias !257208
  br label %bb.u

bb.s:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %.neg11.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i.i = shl i64 %.neg11.i.i, 5
  %i.fc = getelementptr inbounds i8, ptr %.val7, i64 %.neg12.i.i ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !noalias !257208, !noundef !14
  %i.ff = lshr i64 %i.dt, 57
  %i.fg = trunc nuw nsw i64 %i.ff to i8           ; 2 uses
  %i.fh = add i64 %.sroa.0.0.i5.i, -16
  %i.fi = and i64 %i.fh, %.val8
  store i8 %i.fg, ptr %i.fd, align 1, !noalias !257208
  %i.fj = load ptr, ptr %0, align 8, !noalias !257208, !nonnull !14, !noundef !14
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.fi
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  store i8 %i.fg, ptr %i.fl, align 1, !noalias !257208
  %i.fm = icmp eq i8 %i.fe, -1
  br i1 %i.fm, label %bb.t, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !257212), !noalias !257208
  call void @llvm.experimental.noalias.scope.decl(metadata !257215), !noalias !257208
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dp, align 1, !alias.scope !257212, !noalias !257217
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fc, align 1, !alias.scope !257215, !noalias !257218
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.dp, align 1, !alias.scope !257212, !noalias !257217
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fc, align 1, !alias.scope !257215, !noalias !257218
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257219), !noalias !257208
  call void @llvm.experimental.noalias.scope.decl(metadata !257221), !noalias !257208
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dq, align 1, !alias.scope !257219, !noalias !257223
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fn, align 1, !alias.scope !257221, !noalias !257224
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dq, align 1, !alias.scope !257219, !noalias !257223
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fn, align 1, !alias.scope !257221, !noalias !257224
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257225), !noalias !257208
  call void @llvm.experimental.noalias.scope.decl(metadata !257227), !noalias !257208
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.dr, align 1, !alias.scope !257225, !noalias !257229
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.fo, align 1, !alias.scope !257227, !noalias !257230
end_hunk_7
