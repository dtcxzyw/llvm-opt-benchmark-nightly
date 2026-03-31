begin_hunk_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %ares_reinit_rand.exit, %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !16
  switch i32 %i.c, label %ares_reinit_rand.exit [
    i32 1, label %.preheader.outer
end_hunk_0
begin_hunk_1
  %i.s = tail call i64 @fread(ptr noundef %i.p, i64 noundef 1, i64 noundef %i.q, ptr noundef %i.r) ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = add i64 %i.s, %.2                        ; 2 uses
  %i.v = icmp eq i64 %i.u, %2
  %.38 = zext i1 %i.v to i32
  %.130 = select i1 %i.t, i32 8, i32 %.38
  switch i32 %.130, label %.thread46 [
    i32 0, label %.preheader48
    i32 8, label %.loopexit49
  ]
end_hunk_1
begin_hunk_2
  %i.ap = tail call i32 @fclose(ptr noundef %i.ao) ; 0 uses
  br label %ares_reinit_rand.exit

ares_reinit_rand.exit:                            ; preds = %.backedge, %bb.e, %.loopexit49
  tail call fastcc void @ares_init_rand_engine(ptr noundef nonnull %0)
  br label %.backedge

.thread46:                                        ; preds = %.preheader48, %bb.c, %ares_rc4_prng.exit
  ret void
}

end_hunk_2
