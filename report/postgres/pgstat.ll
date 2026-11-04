Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pgstat?download=true
inline.NumInlined: 130
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pgstat_before_server_shutdown:bb.a
  br i1 %i.dx, label %bb.as, label %pgstat_get_kind_info.exit82.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.dy = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %pgstat_get_kind_info.exit82.thread.i, label %pgstat_get_kind_info.exit82.i

pgstat_get_kind_info.exit82.i:                    ; preds = %bb.as
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not67.i = icmp eq ptr %i.eb, null
  br i1 %.not67.i, label %pgstat_get_kind_info.exit82.thread.i, label %bb.at

bb.at:                                            ; preds = %pgstat_get_kind_info.exit82.i, %pgstat_get_kind_info.exit82.thread92.i
  %.1.i8195.i = phi ptr [ %i.dv, %pgstat_get_kind_info.exit82.thread92.i ], [ %i.eb, %pgstat_get_kind_info.exit82.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.1.i8195.i, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not68.i = icmp eq ptr %i.ed, null
  br i1 %.not68.i, label %pgstat_get_kind_info.exit82.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void %i.ed(i32 noundef 0) #16, !inline_history !19
  br label %pgstat_get_kind_info.exit82.thread.i

pgstat_get_kind_info.exit82.thread.i:             ; preds = %bb.au, %bb.at, %pgstat_get_kind_info.exit82.i, %bb.as, %bb.ar
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %exitcond106.not.i = icmp eq i64 %indvars.iv.next104.i, 33
  br i1 %exitcond106.not.i, label %pgstat_write_statsfile.exit, label %bb.aq, !llvm.loop !20

pgstat_write_statsfile.exit:                      ; preds = %pgstat_get_kind_info.exit82.thread.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.av

bb.av:                                            ; preds = %pgstat_write_statsfile.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 10001) i64 @pgstat_report_stat(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @pgStatForceNextFlush, align 1
  br i1 %.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatPending, i64 8), align 8 ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %i.a, @pgStatPending
  %spec.select.i.not = and i1 %i.b, %i.c
  %i.d = load i8, ptr @pgstat_report_fixed, align 1, !range !9
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %spec.select.i.not, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.c, label %bb.z

.thread:                                          ; preds = %bb.a
  store i1 false, ptr @pgStatForceNextFlush, align 1
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatPending, i64 8), align 8 ; 2 uses
  %i.g = icmp ne ptr %i.f, null
  %i.h = icmp ne ptr %i.f, @pgStatPending
  %spec.select.i.not49 = and i1 %i.g, %i.h
  %i.i = load i8, ptr @pgstat_report_fixed, align 1, !range !9
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond50 = select i1 %spec.select.i.not49, i1 true, i1 %i.j
  br i1 %or.cond50, label %.thread52, label %bb.z

bb.c:                                             ; preds = %bb.b
  br i1 %0, label %.thread52, label %bb.d

.thread52:                                        ; preds = %.thread, %bb.c
  %i.k = tail call i64 @GetCurrentTimestamp() #16
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i64 @GetCurrentTransactionStopTimestamp() #16 ; 6 uses
  %i.m = load i64, ptr @pgstat_report_stat.pending_since, align 8 ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.m, i64 noundef %i.l, i32 noundef 60000) #16
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = load i64, ptr @pgstat_report_stat.last_flush, align 8 ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = tail call zeroext i1 @TimestampDifferenceExceeds(i64 noundef %i.p, i64 noundef %i.l, i32 noundef 1000) #16
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr @pgstat_report_stat.pending_since, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  store i64 %i.l, ptr @pgstat_report_stat.pending_since, align 8
  br label %bb.z

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.f, %.thread52
  %i.u = phi i1 [ false, %.thread52 ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.e ] ; 2 uses
  %.020 = phi i64 [ %i.k, %.thread52 ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.l, %bb.e ] ; 5 uses
  tail call void @pgstat_update_dbstats(i64 noundef %.020) #16
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pgStatPending, i64 8), align 8 ; 3 uses
  %i.w = icmp eq ptr %i.v, @pgStatPending
  %.not1821.i = icmp eq ptr %i.v, null
  %.not18.i = or i1 %i.w, %.not1821.i
  br i1 %.not18.i, label %pgstat_flush_pending_entries.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.q
  %.120.i = phi ptr [ %.1.val.i, %bb.q ], [ %i.v, %bb.j ] ; 5 uses
  %.01319.i = phi i1 [ %.114.i, %bb.q ], [ false, %bb.j ]
  %i.x = getelementptr inbounds i8, ptr %.120.i, i64 -32 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.y, align 8 ; 4 uses
  %i.z = add i32 %.sroa.0.0.copyload.i, -1
  %i.aa = icmp ult i32 %i.z, 13
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ab = zext nneg i32 %.sroa.0.0.copyload.i to i64
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.ab
  br label %pgstat_get_kind_info.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %.sroa.0.0.copyload.i, 33
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr @pgstat_kind_custom_infos, align 8, !nonnull !8, !noundef !8
  %i.af = sext i32 %.sroa.0.0.copyload.i to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -192
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %pgstat_get_kind_info.exit.i

pgstat_get_kind_info.exit.i:                      ; preds = %bb.l, %bb.k
  %.1.i.i = phi ptr [ %i.ac, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call zeroext i1 %i.ak(ptr noundef nonnull %i.x, i1 noundef zeroext %i.u) #16, !inline_history !21
  %i.am = getelementptr i8, ptr %.120.i, i64 8    ; 2 uses
  %.1.val.i = load ptr, ptr %i.am, align 8        ; 3 uses
  %.not17.i = icmp eq ptr %.1.val.i, @pgStatPending
  br i1 %i.al, label %bb.m, label %bb.q

bb.m:                                             ; preds = %pgstat_get_kind_info.exit.i
  %i.an = load ptr, ptr %i.x, align 8
  %i.ao = load i32, ptr %i.an, align 8            ; 4 uses
  %i.ap = add i32 %i.ao, -1
  %i.aq = icmp ult i32 %i.ap, 13
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.ar
  br label %pgstat_get_kind_info.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = icmp slt i32 %i.ao, 33
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load ptr, ptr @pgstat_kind_custom_infos, align 8, !nonnull !8, !noundef !8
  %i.av = sext i32 %i.ao to i64
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -192
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %pgstat_get_kind_info.exit.i.i

pgstat_get_kind_info.exit.i.i:                    ; preds = %bb.o, %bb.n
  %.1.i.i.i = phi ptr [ %i.as, %bb.n ], [ %i.ay, %bb.o ]
  %i.az = getelementptr inbounds i8, ptr %.120.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %pgstat_delete_pending_entry.exit.i, label %bb.p

bb.p:                                             ; preds = %pgstat_get_kind_info.exit.i.i
  tail call void %i.bc(ptr noundef nonnull %i.x) #16, !inline_history !22
  br label %pgstat_delete_pending_entry.exit.i

pgstat_delete_pending_entry.exit.i:               ; preds = %bb.p, %pgstat_get_kind_info.exit.i.i
  tail call void @pfree(ptr noundef %i.ba) #16
  store ptr null, ptr %i.az, align 8
  %i.bd = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.be = load ptr, ptr %.120.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %.120.i, align 8
  store ptr %i.bg, ptr %i.bd, align 8
  br label %bb.q

bb.q:                                             ; preds = %pgstat_delete_pending_entry.exit.i, %pgstat_get_kind_info.exit.i
  %.114.i = phi i1 [ %.01319.i, %pgstat_delete_pending_entry.exit.i ], [ true, %pgstat_get_kind_info.exit.i ] ; 3 uses
  %.not22.i = icmp eq ptr %.1.val.i, null
  %.not.i = or i1 %.not17.i, %.not22.i
  br i1 %.not.i, label %pgstat_flush_pending_entries.exit, label %.lr.ph.i, !llvm.loop !23

pgstat_flush_pending_entries.exit:                ; preds = %bb.q
  %i.bh = load i8, ptr @pgstat_report_fixed, align 1, !range !9, !noundef !8
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %pgstat_flush_pending_entries.exit.thread, %pgstat_flush_pending_entries.exit
  %.02139.ph = phi i1 [ %.114.i, %pgstat_flush_pending_entries.exit ], [ false, %pgstat_flush_pending_entries.exit.thread ]
  br label %.preheader

pgstat_flush_pending_entries.exit.thread:         ; preds = %bb.j
  %i.bj = load i8, ptr @pgstat_report_fixed, align 1, !range !9, !noundef !8
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.preheader.preheader, label %.thread57

.thread57:                                        ; preds = %pgstat_flush_pending_entries.exit.thread
  store i64 %.020, ptr @pgstat_report_stat.last_flush, align 8
  br label %bb.y

.split:                                           ; preds = %pgstat_get_kind_info.exit.thread
  store i64 %.020, ptr @pgstat_report_stat.last_flush, align 8
  br i1 %.1, label %bb.w, label %bb.y

.preheader:                                       ; preds = %.preheader.preheader, %pgstat_get_kind_info.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %pgstat_get_kind_info.exit.thread ], [ 1, %.preheader.preheader ] ; 4 uses
  %.02139 = phi i1 [ %.1, %pgstat_get_kind_info.exit.thread ], [ %.02139.ph, %.preheader.preheader ] ; 5 uses
  %i.bl = icmp samesign ult i64 %indvars.iv, 14
  br i1 %i.bl, label %pgstat_get_kind_info.exit.thread33, label %bb.r

pgstat_get_kind_info.exit.thread33:               ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %indvars.iv
  br label %bb.t

bb.r:                                             ; preds = %.preheader
  %i.bn = add nsw i64 %indvars.iv, -24            ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 9
  br i1 %i.bo, label %bb.s, label %pgstat_get_kind_info.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %pgstat_get_kind_info.exit.thread, label %pgstat_get_kind_info.exit

pgstat_get_kind_info.exit:                        ; preds = %bb.s
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not29 = icmp eq ptr %i.bs, null
  br i1 %.not29, label %pgstat_get_kind_info.exit.thread, label %bb.t

bb.t:                                             ; preds = %pgstat_get_kind_info.exit.thread33, %pgstat_get_kind_info.exit
  %.1.i36 = phi ptr [ %i.bm, %pgstat_get_kind_info.exit.thread33 ], [ %i.bs, %pgstat_get_kind_info.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i36, i64 112
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bu, null
  br i1 %.not30, label %pgstat_get_kind_info.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = tail call zeroext i1 %i.bu(i1 noundef zeroext %i.u) #16
  %1 = or i1 %.02139, %i.bv
  br label %pgstat_get_kind_info.exit.thread

pgstat_get_kind_info.exit.thread:                 ; preds = %bb.r, %bb.s, %bb.t, %pgstat_get_kind_info.exit, %bb.u
  %.1 = phi i1 [ %1, %bb.u ], [ %.02139, %pgstat_get_kind_info.exit ], [ %.02139, %bb.t ], [ %.02139, %bb.s ], [ %.02139, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %.split, label %.preheader, !llvm.loop !24

bb.v:                                             ; preds = %pgstat_flush_pending_entries.exit
  store i64 %.020, ptr @pgstat_report_stat.last_flush, align 8
  br i1 %.114.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.split, %bb.v
  %i.bw = load i64, ptr @pgstat_report_stat.pending_since, align 8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  store i64 %.020, ptr @pgstat_report_stat.pending_since, align 8
  br label %bb.z

bb.y:                                             ; preds = %.thread57, %.split, %bb.v
  store i64 0, ptr @pgstat_report_stat.pending_since, align 8
  store i8 0, ptr @pgstat_report_fixed, align 1
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.w, %bb.x, %bb.h, %bb.i, %bb.b, %bb.y
  %.024 = phi i64 [ 10000, %bb.h ], [ 0, %bb.y ], [ 0, %bb.b ], [ 10000, %bb.i ], [ 10000, %bb.x ], [ 10000, %bb.w ], [ 0, %.thread ]
  ret i64 %.024
}

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_initialize() local_unnamed_addr #0 {
bb.a:
  tail call void @pgstat_attach_shmem() #16
  %i.a = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.i

pgstat_get_kind_info.exit.i:                      ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %pgstat_get_kind_info.exit.1.i, label %bb.b

bb.b:                                             ; preds = %pgstat_get_kind_info.exit.i
  %i.d = load i8, ptr %i.c, align 8
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %pgstat_get_kind_info.exit.thread.i, label %pgstat_get_kind_info.exit.1.i

pgstat_get_kind_info.exit.thread.i:               ; preds = %bb.b
  %i.f = load ptr, ptr @TopMemoryContext, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = tail call ptr @MemoryContextAlloc(ptr noundef %i.f, i64 noundef %i.i) #16
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58792), align 8
  %.pre.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.k = icmp eq ptr %.pre.i, null
  br i1 %i.k, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.1.i

pgstat_get_kind_info.exit.1.i:                    ; preds = %pgstat_get_kind_info.exit.thread.i, %bb.b, %pgstat_get_kind_info.exit.i
  %i.l = phi ptr [ %.pre.i, %pgstat_get_kind_info.exit.thread.i ], [ %i.a, %pgstat_get_kind_info.exit.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.1.i = icmp eq ptr %i.n, null
  br i1 %.not.1.i, label %pgstat_get_kind_info.exit.2.i, label %bb.c

bb.c:                                             ; preds = %pgstat_get_kind_info.exit.1.i
  %i.o = load i8, ptr %i.n, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %pgstat_get_kind_info.exit.thread.1.i, label %pgstat_get_kind_info.exit.2.i

pgstat_get_kind_info.exit.thread.1.i:             ; preds = %bb.c
  %i.q = load ptr, ptr @TopMemoryContext, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = tail call ptr @MemoryContextAlloc(ptr noundef %i.q, i64 noundef %i.t) #16
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58800), align 8
  %.pre18.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.v = icmp eq ptr %.pre18.i, null
  br i1 %i.v, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.2.i

pgstat_get_kind_info.exit.2.i:                    ; preds = %pgstat_get_kind_info.exit.thread.1.i, %bb.c, %pgstat_get_kind_info.exit.1.i
  %i.w = phi ptr [ %.pre18.i, %pgstat_get_kind_info.exit.thread.1.i ], [ %i.l, %bb.c ], [ %i.l, %pgstat_get_kind_info.exit.1.i ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.2.i = icmp eq ptr %i.y, null
  br i1 %.not.2.i, label %pgstat_get_kind_info.exit.3.i, label %bb.d

bb.d:                                             ; preds = %pgstat_get_kind_info.exit.2.i
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %pgstat_get_kind_info.exit.thread.2.i, label %pgstat_get_kind_info.exit.3.i

pgstat_get_kind_info.exit.thread.2.i:             ; preds = %bb.d
  %i.ab = load ptr, ptr @TopMemoryContext, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call ptr @MemoryContextAlloc(ptr noundef %i.ab, i64 noundef %i.ae) #16
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58808), align 8
  %.pre19.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.ag = icmp eq ptr %.pre19.i, null
  br i1 %i.ag, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.3.i

pgstat_get_kind_info.exit.3.i:                    ; preds = %pgstat_get_kind_info.exit.thread.2.i, %bb.d, %pgstat_get_kind_info.exit.2.i
  %i.ah = phi ptr [ %.pre19.i, %pgstat_get_kind_info.exit.thread.2.i ], [ %i.w, %bb.d ], [ %i.w, %pgstat_get_kind_info.exit.2.i ] ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not.3.i = icmp eq ptr %i.aj, null
  br i1 %.not.3.i, label %pgstat_get_kind_info.exit.4.i, label %bb.e

bb.e:                                             ; preds = %pgstat_get_kind_info.exit.3.i
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %pgstat_get_kind_info.exit.thread.3.i, label %pgstat_get_kind_info.exit.4.i

pgstat_get_kind_info.exit.thread.3.i:             ; preds = %bb.e
  %i.am = load ptr, ptr @TopMemoryContext, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = tail call ptr @MemoryContextAlloc(ptr noundef %i.am, i64 noundef %i.ap) #16
  store ptr %i.aq, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58816), align 8
  %.pre20.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.ar = icmp eq ptr %.pre20.i, null
  br i1 %i.ar, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.4.i

pgstat_get_kind_info.exit.4.i:                    ; preds = %pgstat_get_kind_info.exit.thread.3.i, %bb.e, %pgstat_get_kind_info.exit.3.i
  %i.as = phi ptr [ %.pre20.i, %pgstat_get_kind_info.exit.thread.3.i ], [ %i.ah, %bb.e ], [ %i.ah, %pgstat_get_kind_info.exit.3.i ] ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %.not.4.i = icmp eq ptr %i.au, null
  br i1 %.not.4.i, label %pgstat_get_kind_info.exit.5.i, label %bb.f

bb.f:                                             ; preds = %pgstat_get_kind_info.exit.4.i
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %pgstat_get_kind_info.exit.thread.4.i, label %pgstat_get_kind_info.exit.5.i

pgstat_get_kind_info.exit.thread.4.i:             ; preds = %bb.f
  %i.ax = load ptr, ptr @TopMemoryContext, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call ptr @MemoryContextAlloc(ptr noundef %i.ax, i64 noundef %i.ba) #16
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58824), align 8
  %.pre21.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.bc = icmp eq ptr %.pre21.i, null
  br i1 %i.bc, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.5.i

pgstat_get_kind_info.exit.5.i:                    ; preds = %pgstat_get_kind_info.exit.thread.4.i, %bb.f, %pgstat_get_kind_info.exit.4.i
  %i.bd = phi ptr [ %.pre21.i, %pgstat_get_kind_info.exit.thread.4.i ], [ %i.as, %bb.f ], [ %i.as, %pgstat_get_kind_info.exit.4.i ] ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %.not.5.i = icmp eq ptr %i.bf, null
  br i1 %.not.5.i, label %pgstat_get_kind_info.exit.6.i, label %bb.g

bb.g:                                             ; preds = %pgstat_get_kind_info.exit.5.i
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %pgstat_get_kind_info.exit.thread.5.i, label %pgstat_get_kind_info.exit.6.i

pgstat_get_kind_info.exit.thread.5.i:             ; preds = %bb.g
  %i.bi = load ptr, ptr @TopMemoryContext, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = tail call ptr @MemoryContextAlloc(ptr noundef %i.bi, i64 noundef %i.bl) #16
  store ptr %i.bm, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58832), align 8
  %.pre22.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.bn = icmp eq ptr %.pre22.i, null
  br i1 %i.bn, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.6.i

pgstat_get_kind_info.exit.6.i:                    ; preds = %pgstat_get_kind_info.exit.thread.5.i, %bb.g, %pgstat_get_kind_info.exit.5.i
  %i.bo = phi ptr [ %.pre22.i, %pgstat_get_kind_info.exit.thread.5.i ], [ %i.bd, %bb.g ], [ %i.bd, %pgstat_get_kind_info.exit.5.i ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %.not.6.i = icmp eq ptr %i.bq, null
  br i1 %.not.6.i, label %pgstat_get_kind_info.exit.7.i, label %bb.h

bb.h:                                             ; preds = %pgstat_get_kind_info.exit.6.i
  %i.br = load i8, ptr %i.bq, align 8
  %i.bs = trunc i8 %i.br to i1
  br i1 %i.bs, label %pgstat_get_kind_info.exit.thread.6.i, label %pgstat_get_kind_info.exit.7.i

pgstat_get_kind_info.exit.thread.6.i:             ; preds = %bb.h
  %i.bt = load ptr, ptr @TopMemoryContext, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = tail call ptr @MemoryContextAlloc(ptr noundef %i.bt, i64 noundef %i.bw) #16
  store ptr %i.bx, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58840), align 8
  %.pre23.i = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.by = icmp eq ptr %.pre23.i, null
  br i1 %i.by, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.7.i

pgstat_get_kind_info.exit.7.i:                    ; preds = %pgstat_get_kind_info.exit.thread.6.i, %bb.h, %pgstat_get_kind_info.exit.6.i
  %i.bz = phi ptr [ %.pre23.i, %pgstat_get_kind_info.exit.thread.6.i ], [ %i.bo, %bb.h ], [ %i.bo, %pgstat_get_kind_info.exit.6.i ] ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not.7.i = icmp eq ptr %i.cb, null
  br i1 %.not.7.i, label %pgstat_get_kind_info.exit.8.i, label %bb.i
end_hunk_0
