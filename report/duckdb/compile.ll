inline.NumInlined: 734
inline.NumDeleted: 343
begin_hunk_0_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a

bb.n:                                             ; preds = %bb.l
  %i.cc = zext i16 %i.ca to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 4
  %i.ce = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #21 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cc
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %i.cg = phi ptr [ %i.ce, %bb.n ], [ %i.cj, %bb.o ] ; 4 uses
  store i32 0, ptr %i.cg, align 4, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i64 0, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i8 0, ptr %i.ci, align 4, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cf
  br i1 %i.ck, label %bb.p, label %bb.o

bb.p:                                             ; preds = %bb.o
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !182
  %.pre110.pre.pre = load i32, ptr %i.bg, align 8, !tbaa !188
  br label %.thread
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a
  %i.dm = load i32, ptr %i.bg, align 8, !tbaa !188
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.bg, align 8, !tbaa !188
  br label %.backedge, !llvm.loop !195

._crit_edge115:                                   ; preds = %bb.u, %._crit_edge
  %i.do = phi ptr [ %.pre, %._crit_edge ], [ %i.cz, %bb.u ]
end_hunk_1
begin_hunk_2_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.backedge, !llvm.loop !195

.thread105:                                       ; preds = %bb.s, %bb.r
  %i.dw = getelementptr inbounds i8, ptr %i.bd, i64 -60
end_hunk_2
begin_hunk_3_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a
  br i1 %i.eu, label %bb.ac, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %i.aj, align 8, !tbaa !170, !noalias !196
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !71
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 504
end_hunk_3
begin_hunk_4_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100, %bb.v, %bb.af
  br label %bb.g, !llvm.loop !195

.loopexit.loopexit:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.0..0..0..fca.0.load.pre = load i64, ptr %5, align 8
end_hunk_4
begin_hunk_5_@_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !199

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
end_hunk_5
begin_hunk_6_@_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !199

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
end_hunk_6
begin_hunk_7_@_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !199

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
end_hunk_7
begin_hunk_8_@llvm.umax.i64
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv: argument 0"}
!194 = distinct !{!194, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv"}
!195 = distinct !{!195, !62}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv: argument 0"}
!198 = distinct !{!198, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv"}
!199 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_8
