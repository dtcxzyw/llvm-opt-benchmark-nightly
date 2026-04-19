inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@performEvictions:bb.a
bb.s:                                             ; preds = %.lr.ph258, %bb.ar
  %.0101257 = phi i32 [ 0, %.lr.ph258 ], [ %i.dz, %bb.ar ]
  %.0103256 = phi i64 [ 0, %.lr.ph258 ], [ %i.dy, %bb.ar ]
  %.0124255 = phi i32 [ undef, %.lr.ph258 ], [ %.9212, %bb.ar ]
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55 ; 3 uses
  %i.ap = and i32 %i.ao, 11
  %i.aq = icmp ne i32 %i.ap, 0
end_hunk_0
begin_hunk_1_@performEvictions:bb.a
  br label %.preheader234

.preheader234:                                    ; preds = %bb.t, %.loopexit233
  %.1125254 = phi i32 [ %.0124255, %bb.t ], [ %.5, %.loopexit233 ]
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph250, label %.thread222
end_hunk_1
begin_hunk_2_@performEvictions:bb.a

.loopexit233:                                     ; preds = %.thread, %bb.z
  %.5134 = phi ptr [ %i.ck, %bb.z ], [ null, %.thread ] ; 2 uses
  %.5 = phi i32 [ %i.bx, %bb.z ], [ %.3127, %.thread ] ; 3 uses
  %i.cl = icmp eq ptr %.5134, null
  br i1 %i.cl, label %.preheader234, label %.thread207.loopexit

end_hunk_2
begin_hunk_3_@performEvictions:bb.a
  %i.cp = load i32, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cq = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.cq, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cr = urem i32 %i.cq, %i.co                   ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [96 x i8], ptr %i.cs, i64 %i.ct
end_hunk_3
begin_hunk_4_@performEvictions:bb.a

.thread207:                                       ; preds = %.thread207.loopexit, %bb.ae
  %.pre-phi = phi i64 [ %.pre278, %.thread207.loopexit ], [ %i.ct, %bb.ae ]
  %.9212 = phi i32 [ %.5, %.thread207.loopexit ], [ %i.cr, %bb.ae ]
  %.9138211 = phi ptr [ %.5134, %.thread207.loopexit ], [ %i.de, %bb.ae ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
end_hunk_4
