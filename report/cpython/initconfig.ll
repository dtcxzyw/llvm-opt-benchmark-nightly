begin_hunk_0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = getelementptr i8, ptr %1, i64 64        ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !424, !noalias !418
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.r, label %config_get_env_dup.exit.thread.i
end_hunk_0
begin_hunk_1
bb.r:                                             ; preds = %bb.q
  %i.bb = load i32, ptr %i.y, align 8, !tbaa !300, !noalias !425
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %config_get_env_dup.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = call ptr @getenv(ptr noundef nonnull @.str.174) #29, !noalias !425 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i, label %config_get_env_dup.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !40, !noalias !425
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %config_get_env_dup.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !428
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29, !noalias !428
  br label %bb.ay

config_get_env_dup.exit.thread.i:                 ; preds = %config_get_env_dup.exit.i, %bb.t, %bb.s, %bb.r, %bb.q
  %i.bm = getelementptr i8, ptr %1, i64 296       ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !214, !noalias !418
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.z, label %config_get_env_dup.exit91.thread.i
end_hunk_2
begin_hunk_3
bb.z:                                             ; preds = %config_get_env_dup.exit.thread.i
  %i.bp = load i32, ptr %i.y, align 8, !tbaa !300, !noalias !431
  %.not.i85.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i85.i, label %config_get_env_dup.exit91.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = call ptr @getenv(ptr noundef nonnull @.str.177) #29, !noalias !431 ; 3 uses
  %.not10.i86.i = icmp eq ptr %i.bq, null
  br i1 %.not10.i86.i, label %config_get_env_dup.exit91.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !40, !noalias !431
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %config_get_env_dup.exit91.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !434
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !434
  br label %bb.ay

config_get_env_dup.exit91.thread.i:               ; preds = %config_get_env_dup.exit91.i, %bb.ab, %bb.aa, %bb.z, %config_get_env_dup.exit.thread.i
  %i.ca = getelementptr i8, ptr %1, i64 312       ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !225, !noalias !418
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ah, label %config_get_env_dup.exit98.thread.i
end_hunk_4
begin_hunk_5
bb.ah:                                            ; preds = %config_get_env_dup.exit91.thread.i
  %i.cd = load i32, ptr %i.y, align 8, !tbaa !300, !noalias !437
  %.not.i92.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i92.i, label %config_get_env_dup.exit98.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = call ptr @getenv(ptr noundef nonnull @.str.180) #29, !noalias !437 ; 3 uses
  %.not10.i93.i = icmp eq ptr %i.ce, null
  br i1 %.not10.i93.i, label %config_get_env_dup.exit98.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40, !noalias !437
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %config_get_env_dup.exit98.thread.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !440
end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29, !noalias !440
  br label %bb.ay

config_get_env_dup.exit98.thread.i:               ; preds = %config_get_env_dup.exit98.i, %bb.aj, %bb.ai, %bb.ah, %config_get_env_dup.exit91.thread.i
  %i.co = getelementptr i8, ptr %1, i64 20        ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !237, !noalias !418
  %i.cq = icmp slt i32 %i.cp, 0
end_hunk_6
