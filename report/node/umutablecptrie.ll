inline.NumInlined: 129
inline.NumDeleted: 58
begin_hunk_0_@umutablecptrie_clone_78:bb.a
  br i1 %i.ag, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp slt i32 %i.aa, 65537
  %2 = select i1 %i.ah, i32 4096, i32 69632       ; 2 uses
  %3 = shl nuw nsw i32 %2, 2
  %4 = zext nneg i32 %3 to i64
  %i.ai = tail call noalias ptr @uprv_malloc_78(i64 noundef %4) #11
  store ptr %i.ai, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
end_hunk_0
begin_hunk_1_@umutablecptrie_clone_78:bb.a
  br label %_ZN6icu_7812LocalPointerINS_12_GLOBAL__N_120MutableCodePointTrieEED2Ev.exit

_ZN6icu_7812LocalPointerINS_12_GLOBAL__N_120MutableCodePointTrieEEC2EPS2_R10UErrorCode.exit: ; preds = %bb.d
  store i32 %2, ptr %i.f, align 8
  %i.at = load i32, ptr %i.aj, align 8
  store i32 %i.at, ptr %i.k, align 8
  %i.au = load i32, ptr %i.y, align 8
end_hunk_1
begin_hunk_2_@umutablecptrie_buildImmutable_78:bb.a
  br i1 %i.cp, label %bb.t, label %_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i, !llvm.loop !22

_ZN6icu_7812_GLOBAL__N_120MutableCodePointTrie10maskValuesEj.exit.i: ; preds = %bb.l, %bb.t, %.preheader.i114.i, %.preheader.i.i, %bb.d
  %i.cq = icmp eq i32 %1, 0
  %i.cr = select i1 %i.cq, i32 65536, i32 4096    ; 7 uses
  %7 = lshr exact i32 %i.cr, 4                    ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.ct = load i32, ptr %i.cs, align 8            ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ct, 1114111
end_hunk_2
begin_hunk_3_@umutablecptrie_buildImmutable_78:bb.a
  %.sink.i.i = phi i32 [ %i.ya, %bb.cy ], [ 1048575, %bb.cx ]
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 %.sink.i.i, ptr %i.yf, align 8
  %8 = lshr exact i32 %i.cr, 6                    ; 5 uses
  %i.yg = load i32, ptr %i.cs, align 8
  %i.yh = ashr i32 %i.yg, 6
  %.not.i80.i.i = icmp sgt i32 %i.yh, %8
end_hunk_3
begin_hunk_4_@umutablecptrie_buildImmutable_78:bb.a
bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %9 = add nsw i32 %7, -4
  %10 = lshr exact i32 %9, 2
  %11 = add nuw nsw i32 %10, 1
  %wide.trip.count.i81.i.i = zext nneg i32 %11 to i64
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dg, %bb.db
end_hunk_4
begin_hunk_5_@umutablecptrie_buildImmutable_78:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24028) %.pre.i.i84.ph.i.i, i8 0, i64 24028, i1 false)
  store <4 x i32> <i32 6007, i32 12, i32 4095, i32 32>, ptr %i.nv, align 4
  call fastcc void @_ZN6icu_7812_GLOBAL__N_111MixedBlocks6extendItEEvPKT_iii(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, i32 noundef %8)
  %12 = and i32 %7, 4096                          ; 4 uses
  %i.zi = load i32, ptr %i.cs, align 8
  %i.zj = ashr i32 %i.zi, 4                       ; 4 uses
  %i.zk = icmp slt i32 %12, %i.zj                 ; 2 uses
  br i1 %i.zk, label %.preheader342.lr.ph.i.i.i, label %._crit_edge.i86.i.i

.preheader342.lr.ph.i.i.i:                        ; preds = %._crit_edge.i.i85.i.i
  %i.zl = load i32, ptr %i.yj, align 4
  %i.zm = zext nneg i32 %12 to i64
  %i.zn = zext nneg i32 %i.zj to i64
  br label %.preheader342.i.i.i

end_hunk_5
begin_hunk_6_@umutablecptrie_buildImmutable_78:bb.a
._crit_edge.i86.i.i:                              ; preds = %bb.do, %._crit_edge.i.i85.i.i
  %.0267.lcssa.i.i.i = phi i1 [ false, %._crit_edge.i.i85.i.i ], [ %.2269.i.i.i, %bb.do ] ; 3 uses
  %.0250.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i85.i.i ], [ %.3253.i.i.i, %bb.do ]
  %i.acj = sub nsw i32 %i.zj, %12
  %i.ack = ashr i32 %i.acj, 5                     ; 2 uses
  %i.acl = add nsw i32 %i.ack, 31
  %i.acm = ashr i32 %i.acl, 5
end_hunk_6
begin_hunk_7_@umutablecptrie_buildImmutable_78:bb.a
  br label %bb.fl

bb.dq:                                            ; preds = %._crit_edge.i86.i.i
  %13 = lshr exact i32 %i.cr, 5
  %14 = zext nneg i32 %13 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.act, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %14, i1 false)
  %i.adi = icmp slt i32 %i.acp, 4126
  br i1 %i.adi, label %bb.dt, label %bb.dr

end_hunk_7
begin_hunk_8_@umutablecptrie_buildImmutable_78:bb.a
  br i1 %i.zk, label %.lr.ph375.i.i.i, label %._crit_edge376.i.i.i

.lr.ph375.i.i.i:                                  ; preds = %bb.ef
  %i.aeg = zext nneg i32 %12 to i64
  %i.aeh = zext nneg i32 %i.zj to i64
  %.pre228.i.i = zext nneg i32 %i.acn to i64
  br label %bb.eg
end_hunk_8
