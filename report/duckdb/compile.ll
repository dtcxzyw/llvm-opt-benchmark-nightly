inline.NumInlined: 734
inline.NumDeleted: 343
begin_hunk_0_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a

bb.n:                                             ; preds = %bb.l
  %i.cc = zext i16 %i.ca to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 4                ; 2 uses
  %i.ce = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #21 ; 4 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cc
  %9 = add nsw i64 %i.cd, -16                     ; 2 uses
  %10 = lshr exact i64 %9, 4
  %11 = add nuw nsw i64 %10, 1
  %xtraiter = and i64 %11, 7                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %12 = phi ptr [ %15, %.prol.preheader ], [ %i.ce, %bb.n ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.n ]
  store i32 0, ptr %12, align 4, !tbaa !73
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i64 0, ptr %13, align 4
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i8 0, ptr %14, align 4, !tbaa !74
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !195

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.unr = phi ptr [ %i.ce, %bb.n ], [ %15, %.prol.preheader ]
  %16 = icmp ult i64 %9, 112
  br i1 %16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.prol.loopexit, %bb.o
  %i.cg = phi ptr [ %i.cj, %bb.o ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store i32 0, ptr %i.cg, align 4, !tbaa !73
  %17 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i64 0, ptr %17, align 4
  %18 = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i8 0, ptr %18, align 4, !tbaa !74
  %19 = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 0, ptr %19, align 4, !tbaa !73
  %20 = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  store i64 0, ptr %20, align 4
  %21 = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  store i8 0, ptr %21, align 4, !tbaa !74
  %22 = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i32 0, ptr %22, align 4, !tbaa !73
  %23 = getelementptr inbounds nuw i8, ptr %i.cg, i64 36
  store i64 0, ptr %23, align 4
  %24 = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  store i8 0, ptr %24, align 4, !tbaa !74
  %25 = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store i32 0, ptr %25, align 4, !tbaa !73
  %26 = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  store i64 0, ptr %26, align 4
  %27 = getelementptr inbounds nuw i8, ptr %i.cg, i64 60
  store i8 0, ptr %27, align 4, !tbaa !74
  %28 = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  store i32 0, ptr %28, align 4, !tbaa !73
  %29 = getelementptr inbounds nuw i8, ptr %i.cg, i64 68
  store i64 0, ptr %29, align 4
  %30 = getelementptr inbounds nuw i8, ptr %i.cg, i64 76
  store i8 0, ptr %30, align 4, !tbaa !74
  %31 = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  store i32 0, ptr %31, align 4, !tbaa !73
  %32 = getelementptr inbounds nuw i8, ptr %i.cg, i64 84
  store i64 0, ptr %32, align 4
  %33 = getelementptr inbounds nuw i8, ptr %i.cg, i64 92
  store i8 0, ptr %33, align 4, !tbaa !74
  %34 = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  store i32 0, ptr %34, align 4, !tbaa !73
  %35 = getelementptr inbounds nuw i8, ptr %i.cg, i64 100
  store i64 0, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %i.cg, i64 108
  store i8 0, ptr %36, align 4, !tbaa !74
  %37 = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  store i32 0, ptr %37, align 4, !tbaa !73
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 116
  store i64 0, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 124
  store i8 0, ptr %i.ci, align 4, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cf
  br i1 %i.ck, label %bb.p, label %bb.o

bb.p:                                             ; preds = %bb.o, %.prol.loopexit
  store ptr %i.ce, ptr %i.by, align 8, !tbaa !182
  %.pre110.pre.pre = load i32, ptr %i.bg, align 8, !tbaa !188
  br label %.thread
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a
  %i.dm = load i32, ptr %i.bg, align 8, !tbaa !188
  %i.dn = add nsw i32 %i.dm, 1
  store i32 %i.dn, ptr %i.bg, align 8, !tbaa !188
  br label %.backedge, !llvm.loop !197

._crit_edge115:                                   ; preds = %bb.u, %._crit_edge
  %i.do = phi ptr [ %.pre, %._crit_edge ], [ %i.cz, %bb.u ]
end_hunk_1
begin_hunk_2_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a

_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.backedge, !llvm.loop !197

.thread105:                                       ; preds = %bb.s, %bb.r
  %i.dw = getelementptr inbounds i8, ptr %i.bd, i64 -60
end_hunk_2
begin_hunk_3_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a
  br i1 %i.eu, label %bb.ac, label %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3topEv.exit101

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %i.aj, align 8, !tbaa !170, !noalias !198
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !71
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 504
end_hunk_3
begin_hunk_4_@_ZN10duckdb_re26Regexp6WalkerINS_4FragEE12WalkInternalEPS0_S2_b:bb.a
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit100, %bb.v, %bb.af
  br label %bb.g, !llvm.loop !197

.loopexit.loopexit:                               ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit.thread, %_ZNSt5stackIN10duckdb_re29WalkStateINS0_4FragEEESt5dequeIS3_SaIS3_EEE3popEv.exit
  %.0..0..0..fca.0.load.pre = load i64, ptr %5, align 8
end_hunk_4
begin_hunk_5_@_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
end_hunk_5
begin_hunk_6_@_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !201

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
end_hunk_6
begin_hunk_7_@_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !201

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
end_hunk_7
begin_hunk_8_@llvm.umax.i64
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv: argument 0"}
!194 = distinct !{!194, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv"}
!195 = distinct !{!195, !196}
!196 = !{!"llvm.loop.unroll.disable"}
!197 = distinct !{!197, !62}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv: argument 0"}
!200 = distinct !{!200, !"_ZNSt5dequeIN10duckdb_re29WalkStateINS0_4FragEEESaIS3_EE3endEv"}
!201 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_8
