inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 -48, 4294967296) i64 @_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(address) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, ptr noundef captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = add i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_:bb.a
  %.val108 = load i32, ptr %2, align 1, !tbaa !3
  br label %.lr.ph

.preheader111.loopexit:                           ; preds = %.lr.ph
  %.pre = ptrtoint ptr %i.bq to i64
  br label %.preheader111

.preheader111:                                    ; preds = %.preheader111.loopexit, %bb.c
  %.pn.lcssa120.pre-phi = phi i64 [ %.pre, %.preheader111.loopexit ], [ %i.a, %bb.c ] ; 2 uses
  %.pn.lcssa = phi ptr [ %i.bq, %.preheader111.loopexit ], [ %2, %bb.c ] ; 4 uses
  %i.l = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.l, label %.lr.ph117.preheader, label %vector.body.preheader

.lr.ph117.preheader:                              ; preds = %.preheader111
  %i.m = add i64 %3, %i.a                         ; 2 uses
  %i.n = sub i64 %i.m, %.pn.lcssa120.pre-phi      ; 2 uses
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.n
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117.prol.loopexit, label %.lr.ph117.prol
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_:bb.a

.lr.ph117.prol.loopexit:                          ; preds = %.lr.ph117.prol, %.lr.ph117.preheader
  %.199116.unr = phi ptr [ %.pn.lcssa, %.lr.ph117.preheader ], [ %i.o, %.lr.ph117.prol ]
  %i.u = sub i64 %.pn.lcssa120.pre-phi, %i.m
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %vector.body.preheader, label %.lr.ph117

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_:bb.a
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %.val106 = load i32, ptr %i.at, align 1, !tbaa !3 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn113, i64 16 ; 4 uses
  %i.br = and i32 %.val107, 255
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bs ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_:bb.a
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !3
  %.098 = getelementptr inbounds nuw i8, ptr %.pn113, i64 20 ; 2 uses
  %i.dj = icmp ult ptr %.098, %i.j
  br i1 %i.dj, label %.lr.ph, label %.preheader111.loopexit, !llvm.loop !19

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL24HIST_count_parallel_wkspEPjS0_PKvmNS_17HIST_checkInput_eES0_:bb.a
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !3
  %exitcond.not.3 = icmp eq ptr %i.eu, %scevgep
  br i1 %exitcond.not.3, label %vector.body.preheader, label %.lr.ph117, !llvm.loop !21

vector.body.preheader:                            ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117, %.preheader111
  br label %vector.body
end_hunk_5
