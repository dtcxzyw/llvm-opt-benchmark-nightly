inline.NumInlined: 39
inline.NumDeleted: 8
begin_hunk_0_@exr_write_header:bb.a

bb.v:                                             ; preds = %bb.v, %.lr.ph145.new
  %indvars.iv156 = phi i64 [ 0, %.lr.ph145.new ], [ %indvars.iv.next157.3, %bb.v ] ; 5 uses
  %i.bu = phi i64 [ %.promoted, %.lr.ph145.new ], [ %i.dd, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph145.new ], [ %niter.next.3, %bb.v ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv156
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 2 uses
end_hunk_0
begin_hunk_1_@exr_write_header:bb.a
  store i64 %i.bu, ptr %i.bx, align 8, !tbaa !117
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 244
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !109
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  %i.cc = add i64 %i.cb, %i.bu                    ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv156
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !81 ; 2 uses
end_hunk_1
begin_hunk_2_@exr_write_header:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 244
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !109
  %i.cj = sext i32 %i.ci to i64
  %i.ck = shl nsw i64 %i.cj, 3
  %i.cl = add i64 %i.ck, %i.cc                    ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !81 ; 2 uses
end_hunk_2
begin_hunk_3_@exr_write_header:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 244
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !109
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 3
  %i.cu = add i64 %i.ct, %i.cl                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv156
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !81 ; 2 uses
end_hunk_3
begin_hunk_4_@exr_write_header:bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 244
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !109
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 3
  %i.dd = add i64 %i.dc, %i.cu                    ; 3 uses
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
end_hunk_4
