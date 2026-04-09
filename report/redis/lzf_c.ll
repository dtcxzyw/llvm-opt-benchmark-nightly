begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lzf_compress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca [65536 x ptr], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.e = icmp ne i64 %1, 0
  %i.f = icmp ne i64 %3, 0
end_hunk_0
begin_hunk_1_@lzf_compress:bb.a
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ez ; 7 uses
  %.not261 = icmp ult ptr %i.fa, %i.h
  br i1 %.not261, label %bb.ac, label %.thread.thread297, !prof !19

bb.ac:                                            ; preds = %bb.ab
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -2 ; 2 uses
end_hunk_1
begin_hunk_2_@lzf_compress:bb.a
  %.3210 = phi i32 [ %i.fw, %bb.ac ], [ %i.v, %bb.ae ], [ %i.v, %bb.af ]
  %.3205 = phi i32 [ 0, %bb.ac ], [ %i.gb, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %i.gj = icmp ult ptr %.3214, %i.h
  br i1 %i.gj, label %bb.c, label %.thread.thread297

.thread.thread297:                                ; preds = %.thread, %bb.ab, %bb.b
  %.5222 = phi ptr [ %i.g, %bb.b ], [ %i.ex, %bb.ab ], [ %.4221, %.thread ] ; 7 uses
  %.4215 = phi ptr [ %0, %bb.b ], [ %i.fa, %bb.ab ], [ %.3214, %.thread ] ; 5 uses
  %.4206 = phi i32 [ 0, %bb.b ], [ 0, %bb.ab ], [ %.3205, %.thread ] ; 4 uses
  %.4215343 = ptrtoint ptr %.4215 to i64          ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.5222, i64 3
  %i.gl = icmp ugt ptr %i.gk, %i.d
  br i1 %i.gl, label %.thread286, label %.preheader
end_hunk_2
begin_hunk_3_@lzf_compress:bb.a

.lr.ph316.preheader:                              ; preds = %.preheader
  %i.gn = add i64 %1, %i.a                        ; 2 uses
  %i.go = sub i64 %i.gn, %.4215343
  %.neg344 = add i64 %.4215343, 1
  %xtraiter = and i64 %i.go, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph316.prol.loopexit, label %.lr.ph316.prol
end_hunk_3
begin_hunk_4_@lzf_compress:bb.a
  br label %.lr.ph316.prol.loopexit

.lr.ph316.prol.loopexit:                          ; preds = %.lr.ph316.prol, %bb.ag, %.lr.ph316.preheader
  %.5315.unr = phi i32 [ %.4206, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %.5216314.unr = phi ptr [ %.4215, %.lr.ph316.preheader ], [ %i.gq, %bb.ag ], [ %i.gq, %.lr.ph316.prol ]
  %.6223313.unr = phi ptr [ %.5222, %.lr.ph316.preheader ], [ %i.gw, %bb.ag ], [ %i.gs, %.lr.ph316.prol ]
  %.7.lcssa.unr.a = phi ptr [ poison, %.lr.ph316.preheader ], [ %i.gw, %bb.ag ], [ %i.gs, %.lr.ph316.prol ]
  %.6.lcssa.unr = phi i32 [ poison, %.lr.ph316.preheader ], [ 0, %bb.ag ], [ %i.gp, %.lr.ph316.prol ]
  %i.gx = icmp eq i64 %i.gn, %.neg344
  br i1 %i.gx, label %._crit_edge, label %.lr.ph316

.lr.ph316:                                        ; preds = %.lr.ph316.prol.loopexit, %bb.aj
  %.5315 = phi i32 [ %.6.1, %bb.aj ], [ %.5315.unr, %.lr.ph316.prol.loopexit ] ; 2 uses
  %.5216314 = phi ptr [ %i.hh, %bb.aj ], [ %.5216314.unr, %.lr.ph316.prol.loopexit ] ; 3 uses
  %.6223313 = phi ptr [ %.7.1, %bb.aj ], [ %.6223313.unr, %.lr.ph316.prol.loopexit ] ; 4 uses
  %i.gy = add nsw i32 %.5315, 1                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.5216314, i64 1
end_hunk_4
begin_hunk_5_@lzf_compress:bb.a
bb.aj:                                            ; preds = %bb.ai, %.lr.ph316.1
  %.7.1 = phi ptr [ %i.hn, %bb.ai ], [ %i.hj, %.lr.ph316.1 ] ; 2 uses
  %.6.1 = phi i32 [ 0, %bb.ai ], [ %i.hg, %.lr.ph316.1 ] ; 2 uses
  %4 = icmp ult ptr %i.hh, %i.c
  br i1 %4, label %.lr.ph316, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph316.prol.loopexit, %bb.aj, %.preheader
  %.6223.lcssa = phi ptr [ %.5222, %.preheader ], [ %.7.lcssa.unr.a, %.lr.ph316.prol.loopexit ], [ %.7.1, %bb.aj ] ; 2 uses
  %.5.lcssa = phi i32 [ %.4206, %.preheader ], [ %.6.lcssa.unr, %.lr.ph316.prol.loopexit ], [ %.6.1, %bb.aj ] ; 3 uses
  %i.ho = trunc i32 %.5.lcssa to i8
  %i.hp = add i8 %i.ho, -1
end_hunk_5
