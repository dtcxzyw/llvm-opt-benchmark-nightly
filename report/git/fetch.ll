inline.NumInlined: 181
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@set_head:bb.a
  %.not40 = icmp eq i32 %i.bc, 0
  br i1 %.not40, label %.thread48, label %bb.n

.thread48:                                        ; preds = %bb.m
  %i.bd = icmp ne i32 %i.f, 2
  %i.be = zext i1 %i.bd to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !246
  %.not53 = icmp eq i32 %i.bg, 0                  ; 2 uses
  %i.bh = icmp ne i32 %i.f, 2
  %narrow = and i1 %i.bh, %.not53
  %i.bi = zext i1 %narrow to i32                  ; 2 uses
  br i1 %.not53, label %bb.o, label %.thread50

.thread50:                                        ; preds = %bb.n
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull @.str.180, i64 noundef 4) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.256, ptr noundef nonnull %i.bb) #18
  br label %bb.p

bb.o:                                             ; preds = %.thread48, %bb.n
  %i.bj = phi i32 [ %i.be, %.thread48 ], [ %i.bi, %bb.n ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !96
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.257, ptr noundef %i.bl) #18
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !96
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.258, ptr noundef %i.bm, ptr noundef nonnull %i.bb) #18
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !110
  %i.bp = call i32 @refs_ref_exists(ptr noundef %i.k, ptr noundef %i.bo) #18
  %.not41 = icmp eq i32 %i.bp, 0
  br i1 %.not41, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread50, %bb.o
  %i.bq = phi i32 [ %i.bi, %.thread50 ], [ %i.bj, %bb.o ]
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !110
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !110
  %i.bv = call i32 @refs_update_symref_extended(ptr noundef %i.k, ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef nonnull @.str.96, ptr noundef nonnull %5, i32 noundef %i.bq) #18 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = load i32, ptr @verbosity, align 4, !tbaa !15
  %i.by = icmp sgt i32 %i.bx, -1
  %i.bz = icmp eq i32 %i.f, 1
  %or.cond = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %.not42 = icmp eq ptr %i.h, null
  br i1 %.not42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.bb) #20
  %.not43 = icmp eq i32 %i.ca, 0
  br i1 %.not43, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !96 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.report_set_head.buf_prefix, i64 24, i1 false)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.259, ptr noundef %i.cc) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !110 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !110
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.07.i.i = phi ptr [ %i.ce, %bb.t ], [ %i.ci, %bb.v ] ; 5 uses
  %.06.i.i = phi ptr [ %i.cg, %bb.t ], [ %i.ck, %bb.v ] ; 2 uses
  %i.ch = load i8, ptr %.06.i.i, align 1, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i, label %skip_prefix_impl.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1
  %i.cj = load i8, ptr %.07.i.i, align 1, !tbaa !133
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.cl = icmp eq i8 %i.cj, %i.ch
  br i1 %i.cl, label %bb.u, label %skip_prefix_impl.exit.thread.i, !llvm.loop !247

skip_prefix_impl.exit.i:                          ; preds = %bb.u
  %.not.i = icmp eq ptr %.07.i.i, null
  br i1 %.not.i, label %skip_prefix_impl.exit.thread.i, label %bb.w

bb.w:                                             ; preds = %skip_prefix_impl.exit.i
  %i.cm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.07.i.i, ptr noundef nonnull dereferenceable(1) %i.bb) #20
  %.not13.i = icmp eq i32 %i.cm, 0
  br i1 %.not13.i, label %skip_prefix_impl.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.260, ptr noundef %i.cc, ptr noundef nonnull %i.bb, ptr noundef nonnull %.07.i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(333) %i.b, ptr noundef nonnull align 16 dereferenceable(333) @__const.set_head_advice_msg.message_advice_set_head, i64 333, i1 false)
  %i.co = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not4.i.i.i, label %set_head_advice_msg.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %i.b, i32 noundef 5) #18
  br label %set_head_advice_msg.exit.i

set_head_advice_msg.exit.i:                       ; preds = %bb.y, %bb.x
  %.0.i.i.i = phi ptr [ %i.cp, %bb.y ], [ %i.b, %bb.x ]
  call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 10, ptr noundef %.0.i.i.i, ptr noundef %i.cc, ptr noundef nonnull %i.bb, ptr noundef %i.cc, ptr noundef %i.cc, ptr noundef nonnull %i.bb) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %report_set_head.exit

skip_prefix_impl.exit.thread.i:                   ; preds = %bb.v, %bb.w, %skip_prefix_impl.exit.i
  %.not14.i = icmp eq i32 %i.bv, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = load i64, ptr %i.cq, align 8
  %.not15.i = icmp eq i64 %i.cr, 0
  %or.cond52 = select i1 %.not14.i, i1 true, i1 %.not15.i
  br i1 %or.cond52, label %report_set_head.exit, label %bb.z

bb.z:                                             ; preds = %skip_prefix_impl.exit.thread.i
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.261, ptr noundef %i.cc, ptr noundef nonnull %i.bb, ptr noundef %i.ce) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(333) %i.a, ptr noundef nonnull align 16 dereferenceable(333) @__const.set_head_advice_msg.message_advice_set_head, i64 333, i1 false)
  %i.ct = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i16.i = icmp eq i32 %i.ct, 0
  br i1 %.not4.i.i16.i, label %set_head_advice_msg.exit18.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 5) #18
  br label %set_head_advice_msg.exit18.i

set_head_advice_msg.exit18.i:                     ; preds = %bb.aa, %bb.z
  %.0.i.i17.i = phi ptr [ %i.cu, %bb.aa ], [ %i.a, %bb.z ]
  call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 10, ptr noundef %.0.i.i17.i, ptr noundef %i.cc, ptr noundef nonnull %i.bb, ptr noundef %i.cc, ptr noundef %i.cc, ptr noundef nonnull %i.bb) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %report_set_head.exit

report_set_head.exit:                             ; preds = %set_head_advice_msg.exit.i, %skip_prefix_impl.exit.thread.i, %set_head_advice_msg.exit18.i
  call void @strbuf_release(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.thread

.thread:                                          ; preds = %bb.a, %._crit_edge, %bb.p, %bb.o, %bb.q, %bb.s, %report_set_head.exit, %bb.l
  %.03247 = phi ptr [ %i.bb, %bb.o ], [ %i.bb, %report_set_head.exit ], [ %i.bb, %bb.s ], [ %i.bb, %bb.q ], [ null, %bb.l ], [ %i.bb, %bb.p ], [ null, %._crit_edge ], [ null, %bb.a ]
  call void @free(ptr noundef %.03247) #18
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !128
  call void @free_refs(ptr noundef %i.cv) #18
  call void @free_refs(ptr noundef %i.o) #18
  call void @string_list_clear(ptr noundef nonnull %7, i32 noundef 0) #18
  call void @strbuf_release(ptr noundef nonnull %3) #18
  call void @strbuf_release(ptr noundef nonnull %5) #18
  call void @strbuf_release(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare i32 @strmap_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @ref_transaction_abort(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ref_transaction_free(ptr noundef) local_unnamed_addr #3

declare void @strmap_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @git_path_fetch_head(ptr noundef) local_unnamed_addr #3

declare ptr @fopen_for_writing(ptr noundef) local_unnamed_addr #3

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @filter_prefetch_refspec(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = load i32, ptr @prefetch, align 4, !tbaa !15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !114  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph44, label %.loopexit

.lr.ph44:                                         ; preds = %.preheader, %bb.k
  %i.e = phi i32 [ %i.bb, %bb.k ], [ %i.c, %.preheader ]
  %.03143 = phi i32 [ %i.bc, %bb.k ], [ 0, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.report_set_head.buf_prefix, i64 24, i1 false)
  %i.f = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.g = sext i32 %.03143 to i64                  ; 5 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 16
  %.not34 = icmp eq i8 %i.j, 0
  br i1 %.not34, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.lr.ph44
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !132  ; 2 uses
  %.not35 = icmp eq ptr %i.l, null
  br i1 %.not35, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 2 uses
  %.not36 = icmp eq ptr %i.n, null
  br i1 %.not36, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_namespace, i64 32), align 16, !tbaa !248
  %i.p = call zeroext i1 @starts_with(ptr noundef nonnull %i.n, ptr noundef %i.o) #18
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !131 ; 2 uses
  br i1 %i.p, label %bb.e, label %._crit_edge47

._crit_edge47:                                    ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds [32 x i8], ptr %.pre50, i64 %i.g
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8, !tbaa !132
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ %.pre50, %bb.d ], [ %i.f, %bb.b ]
  %i.r = getelementptr inbounds [32 x i8], ptr %i.q, i64 %i.g
  call void @refspec_item_clear(ptr noundef %i.r) #18
  %.040 = add nsw i32 %.03143, 1                  ; 2 uses
  %i.s = load i32, ptr %i.b, align 4, !tbaa !114  ; 2 uses
  %i.t = icmp slt i32 %.040, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.u = sext i32 %.040 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv.a = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next47, %.lr.ph ] ; 2 uses
  %.0.in41 = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %i.w = getelementptr inbounds [32 x i8], ptr %i.v, i64 %indvars.iv.a
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %.0.in41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !tbaa.struct !250
  %indvars.iv.next = add nsw i64 %.0.in41, 1      ; 2 uses
  %i.y = load i32, ptr %i.b, align 4, !tbaa !114  ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  %indvars.iv.next47 = add nsw i64 %indvars.iv.a, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !251

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.lcssa = phi i32 [ %i.s, %bb.e ], [ %i.y, %.lr.ph ]
  %i.ab = add nsw i32 %.lcssa, -1                 ; 2 uses
  store i32 %i.ab, ptr %i.b, align 4, !tbaa !114
  %i.ac = add nsw i32 %.03143, -1
  br label %bb.k

bb.f:                                             ; preds = %._crit_edge47, %bb.c
  %i.ad = phi ptr [ %.pre49, %._crit_edge47 ], [ %i.l, %bb.c ] ; 11 uses
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ref_namespace, i64 112), align 16, !tbaa !248 ; 2 uses
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #20
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull %i.ae, i64 noundef %i.af) #18
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !133
  %i.ah = icmp eq i8 %i.ag, 114
  br i1 %i.ah, label %bb.g, label %skip_prefix_impl.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !133
  %i.ak = icmp eq i8 %i.aj, 101
  br i1 %i.ak, label %bb.h, label %skip_prefix_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !133
  %i.an = icmp eq i8 %i.am, 102
  br i1 %i.an, label %bb.i, label %skip_prefix_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !133
  %i.aq = icmp eq i8 %i.ap, 115
  br i1 %i.aq, label %bb.j, label %skip_prefix_impl.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !133
  %i.at = icmp eq i8 %i.as, 47
  %spec.select.idx = select i1 %i.at, i64 5, i64 0
  %spec.select = getelementptr i8, ptr %i.ad, i64 %spec.select.idx
  br label %skip_prefix_impl.exit

skip_prefix_impl.exit:                            ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.037 = phi ptr [ %i.ad, %bb.f ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ], [ %i.ad, %bb.g ], [ %spec.select, %bb.j ] ; 2 uses
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.037) #20
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull %.037, i64 noundef %i.au) #18
  %i.av = call ptr @strbuf_detach(ptr noundef nonnull %1, ptr noundef null) #18
  %i.aw = load ptr, ptr %0, align 8, !tbaa !131
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.g ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !132
  %i.az = load i8, ptr %i.ax, align 8
  %i.ba = or i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 8
  call void @free(ptr noundef nonnull %i.ad) #18
  %.pre = load i32, ptr %i.b, align 4, !tbaa !114
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph44, %skip_prefix_impl.exit, %._crit_edge
  %i.bb = phi i32 [ %.pre, %skip_prefix_impl.exit ], [ %i.ab, %._crit_edge ], [ %i.e, %.lr.ph44 ] ; 2 uses
  %.1 = phi i32 [ %.03143, %skip_prefix_impl.exit ], [ %i.ac, %._crit_edge ], [ %.03143, %.lr.ph44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.bc = add nsw i32 %.1, 1                      ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.lr.ph44, label %.loopexit, !llvm.loop !252

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  ret void
}

declare i32 @get_fetch_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_remote_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @refspec_item_init_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @refspec_item_clear(ptr noundef) local_unnamed_addr #3

declare ptr @apply_negative_refspecs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ref_remove_duplicates(ptr noundef) local_unnamed_addr #3

declare i32 @strhash(ptr noundef) local_unnamed_addr #3

declare i32 @refs_for_each_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_one_refname(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !253    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #20 ; 3 uses
  %i.e = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.d, i64 56) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.b, label %st_add.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.196, i64 noundef 56, i64 noundef %i.d) #19
  unreachable

st_add.exit.i:                                    ; preds = %bb.a
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.g, i64 1) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.c, label %refname_hash_add.exit

bb.c:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.196, i64 noundef %i.g, i64 noundef 1) #19
  unreachable

refname_hash_add.exit:                            ; preds = %st_add.exit.i
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.j) #18 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 1 %i.a, i64 %i.d, i1 false)
  %i.m = tail call i32 @strhash(ptr noundef nonnull %i.a) #18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !144
  store ptr null, ptr %i.k, align 8, !tbaa !145
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !146
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 %i.q, ptr %i.r, align 8, !tbaa !146
  tail call void @hashmap_add(ptr noundef %1, ptr noundef nonnull %i.k) #18
  ret i32 0
}

declare void @hashmap_clear_(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @strbuf_detach(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @branch_merge_matches(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @hashmap_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @refname_hash_entry_cmp(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.not = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.c = select i1 %.not, ptr %i.b, ptr %3
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.c) #20
  ret i32 %i.d
}

declare void @hashmap_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

declare ptr @hashmap_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @branch_checked_out(ptr noundef) local_unnamed_addr #3

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_init(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @term_columns() local_unnamed_addr #3

declare i32 @utf8_strwidth(ptr noundef) local_unnamed_addr #3

declare ptr @prettify_refname(ptr noundef) local_unnamed_addr #3

declare ptr @get_stale_heads(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ref_transaction_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @refs_delete_refs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @display_ref_update(ptr noundef nonnull %0, i8 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.strbuf, align 8             ; 7 uses
  %10 = alloca %struct.strbuf, align 8            ; 7 uses
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !108 ; 2 uses
  %i.b = load i32, ptr @verbosity, align 4, !tbaa !15
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110  ; 2 uses
  %.not9.i = icmp eq ptr %i.f, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
