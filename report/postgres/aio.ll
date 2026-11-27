Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/aio?download=true
inline.NumInlined: 60
inline.NumDeleted: 18
begin_hunk_0_@pgaio_submit_staged:bb.a
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1157, ptr noundef nonnull @__func__.pgaio_submit_staged) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pgaio_io_update_state(ptr noundef %0, i32 noundef range(i32 0, 8) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call zeroext i1 @errstart(i32 noundef 10, ptr noundef null) #13
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @errhidestmt(i1 noundef zeroext true) #13 ; 0 uses
  %i.c = tail call i32 @errhidecontext(i1 noundef zeroext true) #13 ; 0 uses
  %i.d = load ptr, ptr @pgaio_ctl, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %0 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 144
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call ptr @pgaio_io_get_op_name(ptr noundef %0) #13
  %i.m = tail call ptr @pgaio_io_get_target_name(ptr noundef %0) #13
  %i.n = load i8, ptr %0, align 8                 ; 2 uses
  %i.o = icmp ult i8 %i.n, 8
  br i1 %i.o, label %switch.lookup, label %pgaio_io_get_state_name.exit

switch.lookup:                                    ; preds = %bb.b
  %i.p = zext nneg i8 %i.n to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.pgaio_shutdown, i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %pgaio_io_get_state_name.exit

pgaio_io_get_state_name.exit:                     ; preds = %bb.b, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.b ]
  %i.q = zext nneg i32 %1 to i64
  %switch.gep8 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.pgaio_shutdown, i64 %i.q
  %switch.load9 = load ptr, ptr %switch.gep8, align 8
  %i.r = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.22, i32 noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %.0.i.i, ptr noundef nonnull %switch.load9) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 397, ptr noundef nonnull @__func__.pgaio_io_update_state) #13
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %pgaio_io_get_state_name.exit
  %.pre-phi = trunc nuw nsw i32 %1 to i8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !11
  store i8 %.pre-phi, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pgaio_io_release(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @pgaio_my_backend, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %0, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8
  tail call fastcc void @pgaio_io_reclaim(ptr noundef %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 258, ptr noundef nonnull @__func__.pgaio_io_release) #13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pgaio_io_reclaim(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.b = add i32 %i.a, 1
  store volatile i32 %i.b, ptr @InterruptHoldoffCount, align 4
  %i.c = load i8, ptr %0, align 8
  %i.d = icmp eq i8 %i.c, 6
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @pgaio_io_call_complete_local(ptr noundef nonnull %0) #13
  tail call fastcc void @pgaio_io_update_state(ptr noundef nonnull %0, i32 noundef 7)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.e, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.k = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #13
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @errhidestmt(i1 noundef zeroext true) #13 ; 0 uses
  %i.m = tail call i32 @errhidecontext(i1 noundef zeroext true) #13 ; 0 uses
  %i.n = load ptr, ptr @pgaio_ctl, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %0 to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 144
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call ptr @pgaio_io_get_op_name(ptr noundef nonnull %0) #13
  %i.w = tail call ptr @pgaio_io_get_target_name(ptr noundef nonnull %0) #13
  %i.x = load i8, ptr %0, align 8                 ; 2 uses
  %i.y = icmp ult i8 %i.x, 8
  br i1 %i.y, label %switch.lookup, label %pgaio_io_get_state_name.exit

switch.lookup:                                    ; preds = %bb.e
  %i.z = zext nneg i8 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.pgaio_shutdown, i64 %i.z
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %pgaio_io_get_state_name.exit

pgaio_io_get_state_name.exit:                     ; preds = %bb.e, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = and i32 %i.ac, 7                        ; 2 uses
  %i.ae = icmp samesign ult i32 %i.ad, 5
  br i1 %i.ae, label %switch.lookup38, label %pgaio_result_status_string.exit

switch.lookup38:                                  ; preds = %pgaio_io_get_state_name.exit
  %i.af = zext nneg i32 %i.ad to i64
  %switch.gep39 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.pgaio_result_status_string, i64 %i.af
  %switch.load40 = load ptr, ptr %switch.gep39, align 8
  br label %pgaio_result_status_string.exit

pgaio_result_status_string.exit:                  ; preds = %pgaio_io_get_state_name.exit, %switch.lookup38
  %.0.i = phi ptr [ %switch.load40, %switch.lookup38 ], [ null, %pgaio_io_get_state_name.exit ]
  %i.ag = and i32 %i.ab, 63
  %i.ah = lshr i32 %i.ab, 9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, i32 noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %.0.i.i, ptr noundef %.0.i, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.aj) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 708, ptr noundef nonnull @__func__.pgaio_io_reclaim) #13
  br label %bb.f

bb.f:                                             ; preds = %pgaio_result_status_string.exit, %bb.d
  %i.al = load i8, ptr %0, align 8
  %.not34 = icmp eq i8 %i.al, 1
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr @pgaio_my_backend, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.an, align 8
  store ptr %i.as, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 320 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.at, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.ax, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ResourceOwnerForgetAioHandle(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay) #13
  store ptr null, ptr %i.aw, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.az, align 8
  tail call fastcc void @pgaio_io_update_state(ptr noundef nonnull %0, i32 noundef 0)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !12
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.bc, align 1
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, -449
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = load ptr, ptr @pgaio_my_backend, align 8 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.k, label %dclist_push_head.exit

bb.k:                                             ; preds = %bb.j
  store ptr %i.bk, ptr %i.bk, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 0, ptr %i.bo, align 8
  br label %dclist_push_head.exit

dclist_push_head.exit:                            ; preds = %bb.j, %bb.k
  %i.bp = phi ptr [ %i.bm, %bb.j ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bp, ptr %i.br, align 8
  store ptr %i.bk, ptr %i.bq, align 8
  store ptr %i.bq, ptr %i.bp, align 8
  store ptr %i.bq, ptr %i.bl, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8
  %i.bv = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.bw = add i32 %i.bv, -1
  store volatile i32 %i.bw, ptr @InterruptHoldoffCount, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pgaio_io_release_resowner(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48 ; 3 uses
  %i.b = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.c = add i32 %i.b, 1
  store volatile i32 %i.c, ptr @InterruptHoldoffCount, align 4
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @ResourceOwnerForgetAioHandle(ptr noundef %i.e, ptr noundef %0) #13
  store ptr null, ptr %i.d, align 8
  %i.f = load i8, ptr %i.a, align 8
  switch i8 %i.f, label %bb.l [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.h
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 284, ptr noundef nonnull @__func__.pgaio_io_release_resowner) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @pgaio_my_backend, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.a, %i.k
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.j, align 8
  br i1 %1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #13
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 293, ptr noundef nonnull @__func__.pgaio_io_release_resowner) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  tail call fastcc void @pgaio_io_reclaim(ptr noundef nonnull %i.a)
  br label %bb.l

bb.h:                                             ; preds = %bb.a, %bb.a
  br i1 %1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #13
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 301, ptr noundef nonnull @__func__.pgaio_io_release_resowner) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  tail call void @pgaio_submit_staged()
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.q, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.s = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.t = add i32 %i.s, -1
  store volatile i32 %i.t, ptr @InterruptHoldoffCount, align 4
  ret void
}

declare void @ResourceOwnerForgetAioHandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @pgaio_io_set_flag(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = trunc i32 %1 to i8
  %i.d = or i8 %i.b, %i.c
  store i8 %i.d, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @pgaio_io_get_id(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @pgaio_ctl, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %0 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 144
  %i.h = trunc i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @pgaio_io_get_owner(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pgaio_io_get_wref(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @pgaio_ctl, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %0 to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 144
  %i.h = trunc i64 %i.g to i32
  store i32 %i.h, ptr %1, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.l, ptr %i.m, align 4
  %i.n = load i64, ptr %i.i, align 8
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.o, ptr %i.p, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pgaio_io_stage(ptr noundef initializes((2, 3), (20, 24)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile i32, ptr @InterruptHoldoffCount, align 4
  %i.b = add i32 %i.a, 1
  store volatile i32 %i.b, ptr @InterruptHoldoffCount, align 4
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.c, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.e, align 4
  tail call fastcc void @pgaio_io_update_state(ptr noundef %0, i32 noundef 2)
  %i.f = load ptr, ptr @pgaio_my_backend, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  tail call void @pgaio_io_call_stage(ptr noundef %0) #13
  tail call fastcc void @pgaio_io_update_state(ptr noundef %0, i32 noundef 3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1
  %i.j = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.b, label %pgaio_io_needs_synchronous_execution.exit

bb.b:                                             ; preds = %bb.a
end_hunk_0
