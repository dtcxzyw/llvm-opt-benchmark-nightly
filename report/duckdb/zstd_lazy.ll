begin_hunk_0

bb.i:                                             ; preds = %.preheader164, %.thread
  %indvars.iv205 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next206, %.thread ] ; 2 uses
  %.0119188 = phi i32 [ 0, %.preheader164 ], [ %.2155, %.thread ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv205 ; 2 uses
  %.0121170 = load i32, ptr %i.bl, align 4, !tbaa !3 ; 3 uses
  %.not198 = icmp ult i32 %.0121170, %i.ag
end_hunk_0
begin_hunk_1

.lr.ph174:                                        ; preds = %bb.i
  %i.bm = icmp ult i32 %.0121170, %i.s
  %i.bn = zext i1 %i.bm to i32
  %i.bo = sub nuw i32 %.0121170, %i.ag
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bp
  %.0121 = load i32, ptr %i.bq, align 4, !tbaa !3 ; 3 uses
  %.not = icmp ult i32 %.0121, %i.ag
  br i1 %.not, label %.thread, label %.lr.ph174.1

.lr.ph174.1:                                      ; preds = %.lr.ph174
  %i.br = icmp ult i32 %.0121, %i.s
  %i.bs = zext i1 %i.br to i32
  %spec.select.1 = add nuw nsw i32 %i.bn, %i.bs
  %i.bt = sub nuw i32 %.0121, %i.ag
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bu
  %.0121.1 = load i32, ptr %i.bv, align 4, !tbaa !3 ; 3 uses
  %.not273 = icmp ult i32 %.0121.1, %i.ag
  br i1 %.not273, label %.thread, label %.lr.ph174.2

.lr.ph174.2:                                      ; preds = %.lr.ph174.1
  %i.bw = icmp ult i32 %.0121.1, %i.s
end_hunk_1
begin_hunk_2
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bz
  %.0121.2 = load i32, ptr %i.ca, align 4, !tbaa !3
  br i1 %.not197, label %.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph174.2, %bb.l
  %.1120180 = phi i32 [ %i.ce, %bb.l ], [ %.0119188, %.lr.ph174.2 ] ; 5 uses
  %.1122179 = phi i32 [ %i.cp, %bb.l ], [ %.0121.2, %.lr.ph174.2 ] ; 5 uses
  %.2125178 = phi i32 [ %.3, %bb.l ], [ %spec.select.2, %.lr.ph174.2 ] ; 2 uses
  %.1127177 = phi i32 [ %i.ch, %bb.l ], [ 0, %.lr.ph174.2 ] ; 5 uses
  %i.cb = icmp ult i32 %.1122179, %i.s
  br i1 %i.cb, label %bb.j, label %bb.k

end_hunk_2
begin_hunk_3
  %spec.select255 = select i1 %.not137, i32 0, i32 %i.cv
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %.lr.ph174.1, %._crit_edge182, %.lr.ph174.2, %bb.i, %._crit_edge182.thread241, %.thread157
  %.2155 = phi i32 [ %i.ce, %.thread157 ], [ %.0119188, %bb.i ], [ %.0119188, %.lr.ph174.2 ], [ %i.ce, %._crit_edge182.thread241 ], [ %.1120180, %._crit_edge182 ], [ %.0119188, %.lr.ph174.1 ], [ %.0119188, %.lr.ph174 ]
  %2 = phi i32 [ %i.cl, %.thread157 ], [ 0, %bb.i ], [ 0, %.lr.ph174.2 ], [ %i.cs, %._crit_edge182.thread241 ], [ %spec.select255, %._crit_edge182 ], [ 0, %.lr.ph174.1 ], [ 0, %.lr.ph174 ]
  store i32 %2, ptr %i.bl, align 4, !tbaa !3
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
end_hunk_3
