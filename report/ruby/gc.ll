inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@classext_memsize:bb.a
  %i.p = load i16, ptr %i.o, align 2, !tbaa !279
  %i.q = zext i16 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = add i64 %.2, 8
  %i.t = add i64 %i.s, %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_0
begin_hunk_1_@classext_superclasses_memsize:bb.a
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = load i64, ptr %3, align 8, !tbaa !59
  %i.i = add i64 %i.h, 8
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %3, align 8, !tbaa !59
  br label %bb.c

end_hunk_1
begin_hunk_2_@gc_sweep_finish_heap:bb.a

bb.f:                                             ; preds = %bb.e
  %i.au = sext i16 %.pre3.i to i64
  %i.av = add i64 %i.aq, 8
  %i.aw = add i64 %i.av, %i.au
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge2.i
  %i.ax = phi i16 [ %.pre.i, %._crit_edge2.i ], [ %.pre3.i, %bb.f ], [ %.pre3.i, %bb.e ] ; 2 uses
  %.1.i = phi i64 [ %i.ao, %._crit_edge2.i ], [ %i.aw, %bb.f ], [ %i.ar, %bb.e ] ; 5 uses
  %.neg.i = add i64 %i.an, 65536
  %2 = sub i64 %.neg.i, %.1.i
  %i.ay = sext i16 %i.ax to i64                   ; 3 uses
  %i.az = udiv i64 %2, %i.ay                      ; 3 uses
  %i.ba = getelementptr i8, ptr %i.af, i64 40
  store i64 %.1.i, ptr %i.ba, align 8, !tbaa !107
  %i.bb = trunc i64 %i.az to i16                  ; 2 uses
end_hunk_2
begin_hunk_3_@heap_page_allocate_and_initialize:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.cm = sext i16 %.pre3.i to i64
  %i.cn = add i64 %i.ci, 8
  %i.co = add i64 %i.cn, %i.cm
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge2.i
  %i.cp = phi i16 [ %.pre.i23, %._crit_edge2.i ], [ %.pre3.i, %bb.ae ], [ %.pre3.i, %bb.ad ] ; 2 uses
  %.1.i21 = phi i64 [ %.pre-phi35, %._crit_edge2.i ], [ %i.co, %bb.ae ], [ %i.cj, %bb.ad ] ; 5 uses
  %.neg.i = add i64 %.pre-phi, 65536
  %2 = sub i64 %.neg.i, %.1.i21
  %i.cq = sext i16 %i.cp to i64                   ; 3 uses
  %i.cr = udiv i64 %2, %i.cq                      ; 3 uses
  %i.cs = getelementptr i8, ptr %.0.ph, i64 40
  store i64 %.1.i21, ptr %i.cs, align 8, !tbaa !107
  %i.ct = trunc i64 %i.cr to i16                  ; 2 uses
end_hunk_3
begin_hunk_4_@gc_verify_compaction_references:bb.a
  %..046.3 = call i64 @llvm.umax.i64(i64 %..046.2, i64 %i.ca)
  %i.cb = getelementptr i8, ptr %i.bd, i64 784
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !340
  %..046.4 = call i64 @llvm.umax.i64(i64 %..046.3, i64 %i.cc)
  %i.cd = getelementptr i8, ptr %i.bd, i64 40     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr i8, ptr %i.bd, i64 920    ; 20 uses
  %8 = add i64 %..046.4, 2                        ; 5 uses
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !59 ; 2 uses
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !331
  %.not5087 = icmp eq i64 %i.cg, 0
end_hunk_4
begin_hunk_5_@gc_verify_compaction_references:bb.a
  br i1 %.not50, label %._crit_edge, label %.lr.ph, !llvm.loop !667

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.ci = sub i64 %8, %i.bu                       ; 2 uses
  %.not5188 = icmp eq i64 %i.ci, 0
  br i1 %.not5188, label %._crit_edge92, label %.lr.ph91

.lr.ph91:                                         ; preds = %._crit_edge, %.lr.ph91
  %.089 = phi i64 [ %i.ck, %.lr.ph91 ], [ %i.ci, %._crit_edge ]
  store i64 1, ptr %i.cf, align 8, !tbaa !331
  %i.cj = call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %i.bd, ptr noundef %i.cd) ; 0 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !331
end_hunk_5
begin_hunk_6_@gc_verify_compaction_references:bb.a
  br i1 %.not50.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !667

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge92
  %i.cr = sub i64 %8, %i.cn                       ; 2 uses
  %.not5188.1 = icmp eq i64 %i.cr, 0
  br i1 %.not5188.1, label %._crit_edge92.1, label %.lr.ph91.1

.lr.ph91.1:                                       ; preds = %._crit_edge.1, %.lr.ph91.1
  %.089.1 = phi i64 [ %i.ct, %.lr.ph91.1 ], [ %i.cr, %._crit_edge.1 ]
  store i64 1, ptr %i.cf, align 8, !tbaa !331
  %i.cs = call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %i.bd, ptr noundef %i.cl) ; 0 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !331
end_hunk_6
begin_hunk_7_@gc_verify_compaction_references:bb.a
  br i1 %.not50.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !667

._crit_edge.2:                                    ; preds = %.lr.ph.2, %._crit_edge92.1
  %i.da = sub i64 %8, %i.cw                       ; 2 uses
  %.not5188.2 = icmp eq i64 %i.da, 0
  br i1 %.not5188.2, label %._crit_edge92.2, label %.lr.ph91.2

.lr.ph91.2:                                       ; preds = %._crit_edge.2, %.lr.ph91.2
  %.089.2 = phi i64 [ %i.dc, %.lr.ph91.2 ], [ %i.da, %._crit_edge.2 ]
  store i64 1, ptr %i.cf, align 8, !tbaa !331
  %i.db = call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %i.bd, ptr noundef %i.cu) ; 0 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !331
end_hunk_7
begin_hunk_8_@gc_verify_compaction_references:bb.a
  br i1 %.not50.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !667

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge92.2
  %i.dj = sub i64 %8, %i.df                       ; 2 uses
  %.not5188.3 = icmp eq i64 %i.dj, 0
  br i1 %.not5188.3, label %._crit_edge92.3, label %.lr.ph91.3

.lr.ph91.3:                                       ; preds = %._crit_edge.3, %.lr.ph91.3
  %.089.3 = phi i64 [ %i.dl, %.lr.ph91.3 ], [ %i.dj, %._crit_edge.3 ]
  store i64 1, ptr %i.cf, align 8, !tbaa !331
  %i.dk = call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %i.bd, ptr noundef %i.dd) ; 0 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !331
end_hunk_8
begin_hunk_9_@gc_verify_compaction_references:bb.a
  br i1 %.not50.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !667

._crit_edge.4:                                    ; preds = %.lr.ph.4, %._crit_edge92.3
  %i.ds = sub i64 %8, %i.do                       ; 2 uses
  %.not5188.4 = icmp eq i64 %i.ds, 0
  br i1 %.not5188.4, label %._crit_edge92.4, label %.lr.ph91.4

.lr.ph91.4:                                       ; preds = %._crit_edge.4, %.lr.ph91.4
  %.089.4 = phi i64 [ %i.du, %.lr.ph91.4 ], [ %i.ds, %._crit_edge.4 ]
  store i64 1, ptr %i.cf, align 8, !tbaa !331
  %i.dt = call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %i.bd, ptr noundef %i.dm) ; 0 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !331
end_hunk_9
