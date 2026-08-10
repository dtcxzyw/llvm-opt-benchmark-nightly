inline.NumInlined: 130
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@pgstat_report_stat:bb.a
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
  %i.ae = load ptr, ptr @pgstat_kind_custom_infos, align 8, !nonnull !9, !noundef !9
  %i.af = sext i32 %.sroa.0.0.copyload.i to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -192
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %pgstat_get_kind_info.exit.i

pgstat_get_kind_info.exit.i:                      ; preds = %bb.l, %bb.k
  %.1.i.i = phi ptr [ %i.ac, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call zeroext i1 %i.ak(ptr noundef nonnull %i.x, i1 noundef zeroext %i.u) #16, !inline_history !19
  %i.am = getelementptr i8, ptr %.11419.i, i64 8  ; 2 uses
  %.114.val.i = load ptr, ptr %i.am, align 8      ; 3 uses
  %.not17.i = icmp eq ptr %.114.val.i, @pgStatPending
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
  %i.au = load ptr, ptr @pgstat_kind_custom_infos, align 8, !nonnull !9, !noundef !9
  %i.av = sext i32 %i.ao to i64
  %i.aw = getelementptr [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -192
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %pgstat_get_kind_info.exit.i.i

pgstat_get_kind_info.exit.i.i:                    ; preds = %bb.o, %bb.n
  %.1.i.i.i = phi ptr [ %i.as, %bb.n ], [ %i.ay, %bb.o ]
  %i.az = getelementptr inbounds i8, ptr %.11419.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %pgstat_delete_pending_entry.exit.i, label %bb.p

bb.p:                                             ; preds = %pgstat_get_kind_info.exit.i.i
  tail call void %i.bc(ptr noundef nonnull %i.x) #16, !inline_history !20
  br label %pgstat_delete_pending_entry.exit.i

pgstat_delete_pending_entry.exit.i:               ; preds = %bb.p, %pgstat_get_kind_info.exit.i.i
  tail call void @pfree(ptr noundef %i.ba) #16
  store ptr null, ptr %i.az, align 8
  %i.bd = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.be = load ptr, ptr %.11419.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %.11419.i, align 8
  store ptr %i.bg, ptr %i.bd, align 8
  br label %bb.q

bb.q:                                             ; preds = %pgstat_delete_pending_entry.exit.i, %pgstat_get_kind_info.exit.i
  %.1.i = phi i1 [ %.01220.i, %pgstat_delete_pending_entry.exit.i ], [ true, %pgstat_get_kind_info.exit.i ] ; 3 uses
  %.not22.i = icmp eq ptr %.114.val.i, null
  %.not.i = or i1 %.not17.i, %.not22.i
  br i1 %.not.i, label %pgstat_flush_pending_entries.exit, label %.lr.ph.i, !llvm.loop !21

pgstat_flush_pending_entries.exit:                ; preds = %bb.q
  %i.bh = load i8, ptr @pgstat_report_fixed, align 1, !range !10, !noundef !9
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %pgstat_flush_pending_entries.exit.thread, %pgstat_flush_pending_entries.exit
  %.02340.ph = phi i1 [ %.1.i, %pgstat_flush_pending_entries.exit ], [ false, %pgstat_flush_pending_entries.exit.thread ]
  br label %.preheader

pgstat_flush_pending_entries.exit.thread:         ; preds = %bb.j
  %i.bj = load i8, ptr @pgstat_report_fixed, align 1, !range !10, !noundef !9
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.preheader.preheader, label %.thread59

.thread59:                                        ; preds = %pgstat_flush_pending_entries.exit.thread
  store i64 %.022, ptr @pgstat_report_stat.last_flush, align 8
  br label %bb.y

.split:                                           ; preds = %pgstat_get_kind_info.exit.thread
  store i64 %.022, ptr @pgstat_report_stat.last_flush, align 8
  br i1 %.124, label %bb.w, label %bb.y

.preheader:                                       ; preds = %.preheader.preheader, %pgstat_get_kind_info.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %pgstat_get_kind_info.exit.thread ], [ 1, %.preheader.preheader ] ; 4 uses
  %.02340 = phi i1 [ %.124, %pgstat_get_kind_info.exit.thread ], [ %.02340.ph, %.preheader.preheader ] ; 5 uses
  %i.bl = icmp samesign ult i64 %indvars.iv, 14
  br i1 %i.bl, label %pgstat_get_kind_info.exit.thread34, label %bb.r

pgstat_get_kind_info.exit.thread34:               ; preds = %.preheader
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

bb.t:                                             ; preds = %pgstat_get_kind_info.exit.thread34, %pgstat_get_kind_info.exit
  %.1.i3137 = phi ptr [ %i.bm, %pgstat_get_kind_info.exit.thread34 ], [ %i.bs, %pgstat_get_kind_info.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i3137, i64 112
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.bu, null
  br i1 %.not30, label %pgstat_get_kind_info.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = tail call zeroext i1 %i.bu(i1 noundef zeroext %i.u) #16
  %i.bw = or i1 %.02340, %i.bv
  br label %pgstat_get_kind_info.exit.thread

pgstat_get_kind_info.exit.thread:                 ; preds = %bb.r, %bb.s, %bb.t, %pgstat_get_kind_info.exit, %bb.u
  %.124 = phi i1 [ %i.bw, %bb.u ], [ %.02340, %pgstat_get_kind_info.exit ], [ %.02340, %bb.t ], [ %.02340, %bb.s ], [ %.02340, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %.split, label %.preheader, !llvm.loop !22

bb.v:                                             ; preds = %pgstat_flush_pending_entries.exit
  store i64 %.022, ptr @pgstat_report_stat.last_flush, align 8
  br i1 %.1.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.split, %bb.v
  %i.bx = load i64, ptr @pgstat_report_stat.pending_since, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  store i64 %.022, ptr @pgstat_report_stat.pending_since, align 8
  br label %bb.z

bb.y:                                             ; preds = %.thread59, %.split, %bb.v
  store i64 0, ptr @pgstat_report_stat.pending_since, align 8
  store i8 0, ptr @pgstat_report_fixed, align 1
  br label %bb.z

bb.z:                                             ; preds = %.thread, %bb.w, %bb.x, %bb.h, %bb.i, %bb.b, %bb.y
  %.0 = phi i64 [ 10000, %bb.h ], [ 0, %bb.y ], [ 0, %bb.b ], [ 10000, %bb.i ], [ 10000, %bb.x ], [ 10000, %bb.w ], [ 0, %.thread ]
  ret i64 %.0
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
  %.pr.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.k = icmp eq ptr %.pr.i.pre, null
  br i1 %i.k, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.1.i

pgstat_get_kind_info.exit.1.i:                    ; preds = %pgstat_get_kind_info.exit.thread.i, %bb.b, %pgstat_get_kind_info.exit.i
  %i.l = phi ptr [ %.pr.i.pre, %pgstat_get_kind_info.exit.thread.i ], [ %i.a, %pgstat_get_kind_info.exit.i ], [ %i.a, %bb.b ] ; 3 uses
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
  %.pr33.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.v = icmp eq ptr %.pr33.i.pre, null
  br i1 %i.v, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.2.i

pgstat_get_kind_info.exit.2.i:                    ; preds = %pgstat_get_kind_info.exit.thread.1.i, %bb.c, %pgstat_get_kind_info.exit.1.i
  %.pr33.i36 = phi ptr [ %.pr33.i.pre, %pgstat_get_kind_info.exit.thread.1.i ], [ %i.l, %bb.c ], [ %i.l, %pgstat_get_kind_info.exit.1.i ] ; 3 uses
  %i.w = getelementptr i8, ptr %.pr33.i36, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 3 uses
  %.not.2.i = icmp eq ptr %i.x, null
  br i1 %.not.2.i, label %pgstat_get_kind_info.exit.3.i, label %bb.d

bb.d:                                             ; preds = %pgstat_get_kind_info.exit.2.i
  %i.y = load i8, ptr %i.x, align 8
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %pgstat_get_kind_info.exit.thread.2.i, label %pgstat_get_kind_info.exit.3.i

pgstat_get_kind_info.exit.thread.2.i:             ; preds = %bb.d
  %i.aa = load ptr, ptr @TopMemoryContext, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call ptr @MemoryContextAlloc(ptr noundef %i.aa, i64 noundef %i.ad) #16
  store ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58808), align 8
  %.pr34.pr.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.af = icmp eq ptr %.pr34.pr.i.pre, null
  br i1 %i.af, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.3.i

pgstat_get_kind_info.exit.3.i:                    ; preds = %pgstat_get_kind_info.exit.thread.2.i, %bb.d, %pgstat_get_kind_info.exit.2.i
  %.pr34.pr.i38 = phi ptr [ %.pr34.pr.i.pre, %pgstat_get_kind_info.exit.thread.2.i ], [ %.pr33.i36, %bb.d ], [ %.pr33.i36, %pgstat_get_kind_info.exit.2.i ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.pr34.pr.i38, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.3.i = icmp eq ptr %i.ah, null
  br i1 %.not.3.i, label %pgstat_get_kind_info.exit.4.i, label %bb.e

bb.e:                                             ; preds = %pgstat_get_kind_info.exit.3.i
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %pgstat_get_kind_info.exit.thread.3.i, label %pgstat_get_kind_info.exit.4.i

pgstat_get_kind_info.exit.thread.3.i:             ; preds = %bb.e
  %i.ak = load ptr, ptr @TopMemoryContext, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = tail call ptr @MemoryContextAlloc(ptr noundef %i.ak, i64 noundef %i.an) #16
  store ptr %i.ao, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58816), align 8
  %.pr35.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.ap = icmp eq ptr %.pr35.i.pre, null
  br i1 %i.ap, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.4.i

pgstat_get_kind_info.exit.4.i:                    ; preds = %pgstat_get_kind_info.exit.thread.3.i, %bb.e, %pgstat_get_kind_info.exit.3.i
  %.pr35.i40 = phi ptr [ %.pr35.i.pre, %pgstat_get_kind_info.exit.thread.3.i ], [ %.pr34.pr.i38, %bb.e ], [ %.pr34.pr.i38, %pgstat_get_kind_info.exit.3.i ] ; 3 uses
  %i.aq = getelementptr i8, ptr %.pr35.i40, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %.not.4.i = icmp eq ptr %i.ar, null
  br i1 %.not.4.i, label %pgstat_get_kind_info.exit.5.i, label %bb.f

bb.f:                                             ; preds = %pgstat_get_kind_info.exit.4.i
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %pgstat_get_kind_info.exit.thread.4.i, label %pgstat_get_kind_info.exit.5.i

pgstat_get_kind_info.exit.thread.4.i:             ; preds = %bb.f
  %i.au = load ptr, ptr @TopMemoryContext, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call ptr @MemoryContextAlloc(ptr noundef %i.au, i64 noundef %i.ax) #16
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58824), align 8
  %.pr36.pr.pr.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.az = icmp eq ptr %.pr36.pr.pr.i.pre, null
  br i1 %i.az, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.5.i

pgstat_get_kind_info.exit.5.i:                    ; preds = %pgstat_get_kind_info.exit.thread.4.i, %bb.f, %pgstat_get_kind_info.exit.4.i
  %.pr36.pr.pr.i42 = phi ptr [ %.pr36.pr.pr.i.pre, %pgstat_get_kind_info.exit.thread.4.i ], [ %.pr35.i40, %bb.f ], [ %.pr35.i40, %pgstat_get_kind_info.exit.4.i ] ; 3 uses
  %i.ba = getelementptr i8, ptr %.pr36.pr.pr.i42, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not.5.i = icmp eq ptr %i.bb, null
  br i1 %.not.5.i, label %pgstat_get_kind_info.exit.6.i, label %bb.g

bb.g:                                             ; preds = %pgstat_get_kind_info.exit.5.i
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = trunc i8 %i.bc to i1
  br i1 %i.bd, label %pgstat_get_kind_info.exit.thread.5.i, label %pgstat_get_kind_info.exit.6.i

pgstat_get_kind_info.exit.thread.5.i:             ; preds = %bb.g
  %i.be = load ptr, ptr @TopMemoryContext, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = tail call ptr @MemoryContextAlloc(ptr noundef %i.be, i64 noundef %i.bh) #16
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58832), align 8
  %.pr37.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.bj = icmp eq ptr %.pr37.i.pre, null
  br i1 %i.bj, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.6.i

pgstat_get_kind_info.exit.6.i:                    ; preds = %pgstat_get_kind_info.exit.thread.5.i, %bb.g, %pgstat_get_kind_info.exit.5.i
  %.pr37.i44 = phi ptr [ %.pr37.i.pre, %pgstat_get_kind_info.exit.thread.5.i ], [ %.pr36.pr.pr.i42, %bb.g ], [ %.pr36.pr.pr.i42, %pgstat_get_kind_info.exit.5.i ] ; 3 uses
  %i.bk = getelementptr i8, ptr %.pr37.i44, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %.not.6.i = icmp eq ptr %i.bl, null
  br i1 %.not.6.i, label %pgstat_get_kind_info.exit.7.i, label %bb.h

bb.h:                                             ; preds = %pgstat_get_kind_info.exit.6.i
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = trunc i8 %i.bm to i1
  br i1 %i.bn, label %pgstat_get_kind_info.exit.thread.6.i, label %pgstat_get_kind_info.exit.7.i

pgstat_get_kind_info.exit.thread.6.i:             ; preds = %bb.h
  %i.bo = load ptr, ptr @TopMemoryContext, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call ptr @MemoryContextAlloc(ptr noundef %i.bo, i64 noundef %i.br) #16
  store ptr %i.bs, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58840), align 8
  %.pr38.pr.pr.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.bt = icmp eq ptr %.pr38.pr.pr.i.pre, null
  br i1 %i.bt, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.7.i

pgstat_get_kind_info.exit.7.i:                    ; preds = %pgstat_get_kind_info.exit.thread.6.i, %bb.h, %pgstat_get_kind_info.exit.6.i
  %.pr38.pr.pr.i46 = phi ptr [ %.pr38.pr.pr.i.pre, %pgstat_get_kind_info.exit.thread.6.i ], [ %.pr37.i44, %bb.h ], [ %.pr37.i44, %pgstat_get_kind_info.exit.6.i ] ; 3 uses
  %i.bu = getelementptr i8, ptr %.pr38.pr.pr.i46, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %.not.7.i = icmp eq ptr %i.bv, null
  br i1 %.not.7.i, label %pgstat_get_kind_info.exit.8.i, label %bb.i

bb.i:                                             ; preds = %pgstat_get_kind_info.exit.7.i
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %pgstat_get_kind_info.exit.thread.7.i, label %pgstat_get_kind_info.exit.8.i

pgstat_get_kind_info.exit.thread.7.i:             ; preds = %bb.i
  %i.by = load ptr, ptr @TopMemoryContext, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = tail call ptr @MemoryContextAlloc(ptr noundef %i.by, i64 noundef %i.cb) #16
  store ptr %i.cc, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58848), align 8
  %.pr39.i.pre = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.cd = icmp eq ptr %.pr39.i.pre, null
  br i1 %i.cd, label %pgstat_init_snapshot_fixed.exit.preheader, label %pgstat_get_kind_info.exit.8.i

pgstat_get_kind_info.exit.8.i:                    ; preds = %pgstat_get_kind_info.exit.thread.7.i, %bb.i, %pgstat_get_kind_info.exit.7.i
  %.pr39.i48 = phi ptr [ %.pr39.i.pre, %pgstat_get_kind_info.exit.thread.7.i ], [ %.pr38.pr.pr.i46, %bb.i ], [ %.pr38.pr.pr.i46, %pgstat_get_kind_info.exit.7.i ]
  %i.ce = getelementptr i8, ptr %.pr39.i48, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not.8.i = icmp eq ptr %i.cf, null
  br i1 %.not.8.i, label %pgstat_init_snapshot_fixed.exit.preheader, label %bb.j

bb.j:                                             ; preds = %pgstat_get_kind_info.exit.8.i
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = trunc i8 %i.cg to i1
  br i1 %i.ch, label %bb.k, label %pgstat_init_snapshot_fixed.exit.preheader

bb.k:                                             ; preds = %bb.j
  %i.ci = load ptr, ptr @TopMemoryContext, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call ptr @MemoryContextAlloc(ptr noundef %i.ci, i64 noundef %i.cl) #16
  store ptr %i.cm, ptr getelementptr inbounds nuw (i8, ptr @pgStatLocal, i64 58856), align 8
  br label %pgstat_init_snapshot_fixed.exit.preheader

pgstat_init_snapshot_fixed.exit.preheader:        ; preds = %bb.a, %pgstat_get_kind_info.exit.thread.i, %pgstat_get_kind_info.exit.thread.1.i, %pgstat_get_kind_info.exit.thread.2.i, %pgstat_get_kind_info.exit.thread.3.i, %pgstat_get_kind_info.exit.thread.4.i, %pgstat_get_kind_info.exit.thread.5.i, %pgstat_get_kind_info.exit.thread.6.i, %pgstat_get_kind_info.exit.thread.7.i, %pgstat_get_kind_info.exit.8.i, %bb.j, %bb.k
  br label %pgstat_init_snapshot_fixed.exit

bb.l:                                             ; preds = %pgstat_get_kind_info.exit.thread
  tail call void @before_shmem_exit(ptr noundef nonnull @pgstat_shutdown_hook, i64 noundef 0) #16
  ret void

pgstat_init_snapshot_fixed.exit:                  ; preds = %pgstat_init_snapshot_fixed.exit.preheader, %pgstat_get_kind_info.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %pgstat_get_kind_info.exit.thread ], [ 1, %pgstat_init_snapshot_fixed.exit.preheader ] ; 4 uses
  %i.cn = icmp samesign ult i64 %indvars.iv, 14
  br i1 %i.cn, label %pgstat_get_kind_info.exit.thread8, label %bb.m

pgstat_get_kind_info.exit.thread8:                ; preds = %pgstat_init_snapshot_fixed.exit
  %i.co = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %indvars.iv
  br label %bb.o

bb.m:                                             ; preds = %pgstat_init_snapshot_fixed.exit
  %i.cp = add nsw i64 %indvars.iv, -24            ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 9
  br i1 %i.cq, label %bb.n, label %pgstat_get_kind_info.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %pgstat_get_kind_info.exit.thread, label %pgstat_get_kind_info.exit

pgstat_get_kind_info.exit:                        ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %pgstat_get_kind_info.exit.thread, label %bb.o

bb.o:                                             ; preds = %pgstat_get_kind_info.exit.thread8, %pgstat_get_kind_info.exit
  %.1.i10 = phi ptr [ %i.co, %pgstat_get_kind_info.exit.thread8 ], [ %i.cu, %pgstat_get_kind_info.exit ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.1.i10, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %pgstat_get_kind_info.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.cx() #16
  br label %pgstat_get_kind_info.exit.thread

pgstat_get_kind_info.exit.thread:                 ; preds = %bb.m, %bb.n, %pgstat_get_kind_info.exit, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 33
  br i1 %exitcond.not, label %bb.l, label %pgstat_init_snapshot_fixed.exit, !llvm.loop !23
}

declare void @pgstat_attach_shmem() local_unnamed_addr #5

declare void @before_shmem_exit(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @pgstat_shutdown_hook(i32 %0, i64 %1) #0 {
bb.a:
  %i.a = load i32, ptr @MyDatabaseId, align 4     ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pgstat_report_disconnect(i32 noundef %i.a) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call i64 @pgstat_report_stat(i1 noundef zeroext true) ; 0 uses
  store ptr @pgStatPending, ptr @pgStatPending, align 8
  store ptr @pgStatPending, ptr getelementptr inbounds nuw (i8, ptr @pgStatPending, i64 8), align 8
  %i.c = load i32, ptr @MyProcNumber, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = tail call zeroext i1 @pgstat_drop_entry(i32 noundef 6, i32 noundef 0, i64 noundef %i.d, i1 noundef zeroext false) #16
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pgstat_request_entry_refs_gc() #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @pgstat_detach_shmem() #16
  ret void
}

declare i64 @GetCurrentTimestamp() local_unnamed_addr #5

declare i64 @GetCurrentTransactionStopTimestamp() local_unnamed_addr #5

declare zeroext i1 @TimestampDifferenceExceeds(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @pgstat_update_dbstats(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pgstat_force_next_flush() local_unnamed_addr #7 {
bb.a:
  store i1 true, ptr @pgStatForceNextFlush, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_reset_counters() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @GetCurrentTimestamp() #16
  %i.b = load i32, ptr @MyDatabaseId, align 4
  %i.c = zext i32 %i.b to i64
  tail call void @pgstat_reset_matching_entries(ptr noundef nonnull @match_db_entries, i64 noundef %i.c, i64 noundef %i.a) #16
  ret void
}

declare void @pgstat_reset_matching_entries(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i1 @match_db_entries(ptr nofree noundef readonly captures(none) %0, i64 %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = load i32, ptr @MyDatabaseId, align 4
  %i.d = icmp eq i32 %i.b, %i.c
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_reset(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.c
  br label %pgstat_get_kind_info.exit

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %0, -24                          ; 2 uses
  %i.f = icmp ult i32 %i.e, 9
  br i1 %i.f, label %bb.d, label %pgstat_get_kind_info.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @pgstat_kind_custom_infos, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %pgstat_get_kind_info.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %pgstat_get_kind_info.exit

pgstat_get_kind_info.exit:                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ null, %bb.c ], [ %i.k, %bb.e ]
  %i.l = tail call i64 @GetCurrentTimestamp() #16 ; 2 uses
  tail call void @pgstat_reset_entry(i32 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %i.l) #16
  %i.m = load i8, ptr %.1.i, align 8
  %i.n = and i8 %i.m, 2
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pgstat_get_kind_info.exit
  tail call void @pgstat_reset_database_timestamp(i32 noundef %1, i64 noundef %i.l) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %pgstat_get_kind_info.exit
  ret void
}

declare void @pgstat_reset_entry(i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @pgstat_reset_database_timestamp(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @pgstat_reset_of_kind(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 13
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [144 x i8], ptr @pgstat_kind_builtin_infos, i64 %i.c
  br label %pgstat_get_kind_info.exit

bb.c:                                             ; preds = %bb.a
  %i.e = add i32 %0, -24                          ; 2 uses
end_hunk_0
