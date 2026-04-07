begin_hunk_0_@resize:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store double %.pre-phi77, ptr %4, align 8, !tbaa !10
  store i32 3, ptr %i.at, align 8, !tbaa !8
  %i.bz = call fastcc ptr @newkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4), !inline_history !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %luaH_setnum.exit

end_hunk_0
begin_hunk_1_@resize:bb.a
._crit_edge74:                                    ; preds = %bb.h, %luaH_setnum.exit
  %lftr.wideiv = trunc i64 %.pre to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %bb.n, label %bb.h, !llvm.loop !32

bb.n:                                             ; preds = %._crit_edge74
  %i.cd = icmp sgt i32 %2, -2
end_hunk_1
begin_hunk_2_@resize:bb.a

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  %i.cu = call ptr @luaH_get(ptr noundef nonnull %1, ptr noundef nonnull %i.ct), !inline_history !33 ; 2 uses
  store i8 0, ptr %i.cm, align 2, !tbaa !34
  %.not.i58 = icmp eq ptr %i.cu, @luaO_nilobject_
  br i1 %.not.i58, label %bb.u, label %luaH_set.exit

end_hunk_2
begin_hunk_3_@resize:bb.a
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v, %bb.u
  %i.cz = call fastcc ptr @newkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ct), !inline_history !33
  br label %luaH_set.exit

luaH_set.exit:                                    ; preds = %bb.t, %bb.w
end_hunk_3
begin_hunk_4_@resize:bb.a
bb.x:                                             ; preds = %luaH_set.exit, %bb.s
  %i.dd = trunc nuw i64 %indvars.iv71 to i32
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.s, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.x, %bb.r
  %.not = icmp eq ptr %i.g, @dummynode_
end_hunk_4
begin_hunk_5_@luaH_new:bb.a
  %i.a = tail call ptr @luaM_realloc_(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef 64) #8 ; 9 uses
  tail call void @luaC_link(ptr noundef %0, ptr noundef %i.a, i8 noundef zeroext 5) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 -1, ptr %i.c, align 2, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
end_hunk_5
begin_hunk_6_@luaH_new:bb.a
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !37

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
end_hunk_6
begin_hunk_7_@setnodevector:bb.a
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_7
begin_hunk_8_@setnodevector:bb.a
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !39

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !18
end_hunk_8
begin_hunk_9_@setnodevector:bb.a
  store i8 %.024, ptr %i.ar, align 1, !tbaa !19
  %i.as = getelementptr inbounds [40 x i8], ptr %i.aq, i64 %.0
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !40
  ret void
}

end_hunk_9
begin_hunk_10_@luaH_getstr:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.e, label %bb.b, !llvm.loop !41

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010 = phi ptr [ %.0, %bb.c ], [ @luaO_nilobject_, %bb.d ]
end_hunk_10
begin_hunk_11_@luaH_get:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %luaH_getstr.exit, label %bb.c, !llvm.loop !41

bb.f:                                             ; preds = %bb.a
  %i.w = load double, ptr %1, align 8, !tbaa !10  ; 4 uses
end_hunk_11
begin_hunk_12_@luaH_get:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10 ; 2 uses
  %.not20 = icmp eq ptr %i.dh, null
  br i1 %.not20, label %luaH_getstr.exit, label %mainposition.exit, !llvm.loop !42

luaH_getstr.exit:                                 ; preds = %bb.j, %bb.k, %bb.e, %bb.d, %mainposition.exit, %bb.p, %bb.a, %luaH_getnum.exit.thread31
  %.2 = phi ptr [ @luaO_nilobject_, %bb.a ], [ %i.ah, %luaH_getnum.exit.thread31 ], [ %.0.i, %bb.d ], [ @luaO_nilobject_, %bb.p ], [ %.0, %mainposition.exit ], [ @luaO_nilobject_, %bb.e ], [ @luaO_nilobject_, %bb.k ], [ %.0.i21, %bb.j ]
end_hunk_12
begin_hunk_13_@luaH_set:bb.a
bb.a:
  %i.a = tail call ptr @luaH_get(ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.b, align 2, !tbaa !34
  %.not = icmp eq ptr %i.a, @luaO_nilobject_
  br i1 %.not, label %bb.b, label %bb.e

end_hunk_13
begin_hunk_14_@newkey:bb.a
  br i1 %or.cond, label %bb.h, label %luaH_set.exit

bb.h:                                             ; preds = %mainposition.exit
  %.promoted.i = load ptr, ptr %i.e, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.bp = phi ptr [ %i.bq, %bb.j ], [ %.promoted.i, %bb.h ] ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -40 ; 6 uses
  store ptr %i.bq, ptr %i.e, align 8, !tbaa !40
  %i.br = icmp ugt ptr %i.bp, %i.bk
  br i1 %i.br, label %bb.j, label %rehash.exit

end_hunk_14
begin_hunk_15_@newkey:bb.a
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !10
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %getfreepos.exit, label %bb.i, !llvm.loop !43

rehash.exit:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
end_hunk_15
begin_hunk_16_@newkey:bb.a
  %i.dr = add <4 x i32> %vec.phi144, %i.dp        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dr, %i.dq
end_hunk_16
begin_hunk_17_@newkey:bb.a
  %spec.select.i = add nuw nsw i32 %.02238.i, %i.dy ; 2 uses
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, 1
  %.not.not.i = icmp slt i64 %indvars.iv.i74, %i.ca
  br i1 %.not.not.i, label %scalar.ph, label %._crit_edge.loopexit.i, !llvm.loop !47

._crit_edge.loopexit.i:                           ; preds = %scalar.ph
  %i.dz = add nsw i32 %.021.i, 1
end_hunk_17
begin_hunk_18_@newkey:bb.a
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ee = shl nsw i32 %.02841.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next46.i, 27
  br i1 %exitcond.not.i, label %numusearray.exit, label %bb.k, !llvm.loop !48

numusearray.exit:                                 ; preds = %bb.l, %._crit_edge.i
  %.025.lcssa.i = phi i32 [ %.02542.i, %bb.l ], [ %i.ed, %._crit_edge.i ] ; 2 uses
end_hunk_18
begin_hunk_19_@newkey:bb.a
  %.1.i71 = phi i32 [ %.015.i, %bb.n ], [ %i.fe, %countint.exit.i ] ; 2 uses
  %indvars.iv.next.i72 = add nsw i64 %indvars.iv.i70, -1
  %i.ff = icmp eq i64 %indvars.iv.i70, 0
  br i1 %i.ff, label %numusehash.exit, label %bb.n, !llvm.loop !49

numusehash.exit:                                  ; preds = %bb.r
  %i.fg = add nsw i32 %.113.i, %.025.lcssa.i
end_hunk_19
begin_hunk_20_@newkey:bb.a
  %i.ge = shl nsw i32 %.02230.i, 1
  %i.gf = and i32 %.02230.i, 2147483647           ; 2 uses
  %i.gg = icmp samesign ult i32 %i.gf, %i.fu
  br i1 %i.gg, label %.lr.ph.i, label %computesizes.exit, !llvm.loop !50

computesizes.exit:                                ; preds = %.lr.ph.i, %bb.u, %countint.exit
  %.219.i = phi i32 [ 0, %countint.exit ], [ %.118.i, %bb.u ], [ %.118.i, %.lr.ph.i ]
end_hunk_20
begin_hunk_21_@newkey:bb.a
  %i.gh = add i32 %.025.lcssa.i, 1
  %i.gi = add i32 %i.gh, %.1.i71
  %i.gj = sub i32 %i.gi, %.219.i
  tail call fastcc void @resize(ptr noundef %0, ptr noundef %1, i32 noundef %.2.i, i32 noundef %i.gj), !inline_history !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.gk = tail call ptr @luaH_get(ptr noundef %1, ptr noundef %2), !inline_history !33 ; 2 uses
  store i8 0, ptr %i.h, align 2, !tbaa !34
  %.not.i = icmp eq ptr %i.gk, @luaO_nilobject_
  br i1 %.not.i, label %bb.v, label %luaH_set.exit.thread

end_hunk_21
begin_hunk_22_@newkey:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %.043, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !10 ; 2 uses
  %.not51 = icmp eq ptr %i.io, %.0.i
  br i1 %.not51, label %bb.ac, label %.preheader, !llvm.loop !52

bb.ac:                                            ; preds = %.preheader
  %i.ip = getelementptr inbounds nuw i8, ptr %.043, i64 32
  store ptr %i.bq, ptr %i.ip, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i64 40, i1 false), !tbaa.struct !53
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr null, ptr %i.iq, align 8, !tbaa !10
  store i32 0, ptr %i.go, align 8, !tbaa !25
end_hunk_22
begin_hunk_23_@luaH_setstr:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %luaH_getstr.exit.thread, label %bb.b, !llvm.loop !41

luaH_getstr.exit:                                 ; preds = %bb.c
  %.not = icmp eq ptr %.0.i, @luaO_nilobject_
end_hunk_23
begin_hunk_24_@luaH_getn:bb.a
  %.017. = select i1 %i.r, i32 %.01726, i32 %i.l  ; 3 uses
  %i.s = sub i32 %..018, %.017.
  %i.t = icmp ugt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %unbound_search.exit, !llvm.loop !54

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_24
begin_hunk_25_@luaH_getn:bb.a
bb.j:                                             ; preds = %luaH_getnum.exit.i
  %i.bc = shl i32 %.021.i, 1                      ; 2 uses
  %i.bd = icmp ugt i32 %i.bc, 2147483645
  br i1 %i.bd, label %.preheader46.i, label %bb.e, !llvm.loop !55

.preheader46.i:                                   ; preds = %bb.j, %luaH_getnum.exit35.i
  %.1.i = phi i32 [ %i.ce, %luaH_getnum.exit35.i ], [ 1, %bb.j ] ; 4 uses
end_hunk_25
begin_hunk_26_@luaH_getn:bb.a
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !8
  %.not25.i = icmp eq i32 %i.cd, 0
  %i.ce = add i32 %.1.i, 1
  br i1 %.not25.i, label %unbound_search.exit, label %.preheader46.i, !llvm.loop !56

.lr.ph.i:                                         ; preds = %.preheader.i, %luaH_getnum.exit45.i
  %.253.i = phi i32 [ %.2..i, %luaH_getnum.exit45.i ], [ %.020.i, %.preheader.i ] ; 2 uses
end_hunk_26
begin_hunk_27_@luaH_getn:bb.a
  %.2..i = select i1 %i.dh, i32 %.253.i, i32 %i.cg ; 3 uses
  %i.di = sub i32 %..122.i, %.2..i
  %i.dj = icmp ugt i32 %i.di, 1
  br i1 %i.dj, label %.lr.ph.i, label %unbound_search.exit, !llvm.loop !57

unbound_search.exit:                              ; preds = %.lr.ph, %luaH_getnum.exit35.i, %luaH_getnum.exit45.i, %.preheader, %.preheader.i, %bb.c
  %.0 = phi i32 [ %i.b, %bb.c ], [ %.2..i, %luaH_getnum.exit45.i ], [ %i.be, %luaH_getnum.exit35.i ], [ %.020.i, %.preheader.i ], [ 0, %.preheader ], [ %.017., %.lr.ph ]
end_hunk_27
begin_hunk_28_@llvm.vector.reduce.add.v4i32
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = !{ptr @luaH_setnum}
!32 = distinct !{!32, !21}
!33 = !{ptr @luaH_set}
!34 = !{!12, !6, i64 10}
!35 = distinct !{!35, !21}
!36 = !{!12, !15, i64 16}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !28}
!40 = !{!12, !17, i64 40}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !21, !46, !45}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !21}
!51 = distinct !{null}
!52 = distinct !{!52, !21}
!53 = !{i64 0, i64 8, !10, i64 8, i64 4, !4, i64 16, i64 24, !10}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
end_hunk_28
