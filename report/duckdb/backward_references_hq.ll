begin_hunk_0
  %.not.i20 = icmp eq i32 %.0.i, 0
  br i1 %.not.i20, label %.lr.ph31.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %indvars.iv.next.i.lcssa = phi i64 [ 4, %.lr.ph.i ], [ 8, %.lr.ph.i.1 ], [ 12, %.lr.ph.i.2 ], [ 16, %.lr.ph.i.3 ]
  %.lcssa = phi i1 [ true, %.lr.ph.i ], [ true, %.lr.ph.i.1 ], [ true, %.lr.ph.i.2 ], [ false, %.lr.ph.i.3 ]
  br i1 %.lcssa, label %.lr.ph31.preheader.i, label %_ZL20ComputeDistanceCachemPKiPKN13duckdb_brotli10ZopfliNodeEPi.exit

.lr.ph31.preheader.i:                             ; preds = %.preheader.i, %bb.e
  %.021.lcssa37.i = phi i64 [ %indvars.iv.next.i.lcssa, %.preheader.i ], [ 0, %bb.e ] ; 2 uses
  %i.an = getelementptr nuw i8, ptr %9, i64 %.021.lcssa37.i
  %scevgep = getelementptr nuw i8, ptr %i.an, i64 8
  %i.ao = sub nuw nsw i64 16, %.021.lcssa37.i
end_hunk_0
begin_hunk_1
  %.022.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  %.022.in.i = load i32, ptr %.022.in.in.i, align 4, !tbaa !7 ; 2 uses
  %.not = icmp eq i32 %.022.in.i, 0
  br i1 %.not, label %.preheader.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.022.i.1 = zext i32 %.022.in.i to i64          ; 2 uses
end_hunk_1
begin_hunk_2
  %.022.in.in.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.1, i64 12
  %.022.in.i.1 = load i32, ptr %.022.in.in.i.1, align 4, !tbaa !7 ; 2 uses
  %.not27 = icmp eq i32 %.022.in.i.1, 0
  br i1 %.not27, label %.preheader.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %.022.i.2 = zext i32 %.022.in.i.1 to i64        ; 2 uses
end_hunk_2
begin_hunk_3
  %.022.in.in.i.2 = getelementptr inbounds nuw i8, ptr %.pn.i.2, i64 12
  %.022.in.i.2 = load i32, ptr %.022.in.in.i.2, align 4, !tbaa !7 ; 2 uses
  %.not28 = icmp eq i32 %.022.in.i.2, 0
  br i1 %.not28, label %.preheader.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %.022.i.3 = zext i32 %.022.in.i.2 to i64
end_hunk_3
begin_hunk_4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  br label %.preheader.i

_ZL20ComputeDistanceCachemPKiPKN13duckdb_brotli10ZopfliNodeEPi.exit: ; preds = %.lr.ph31.preheader.i, %.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !56 ; 3 uses
  %i.cb = add i64 %i.ca, 1                        ; 8 uses
end_hunk_4
