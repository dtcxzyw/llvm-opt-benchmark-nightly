inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Curl_dnscache_get:bb.a
  %.not.i15 = icmp eq ptr %.0.i, null
  br i1 %.not.i15, label %fetch_addr.exit.thread.thread, label %bb.f

bb.f:                                             ; preds = %dnscache_lock.exit
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 255) ; 3 uses
  call void @Curl_strntolower(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef %spec.select.i.i) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i.i
  %i.p = zext i16 %3 to i32                       ; 2 uses
  %i.q = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.o, i64 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.p) #6
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %spec.select.i.i, %i.r       ; 2 uses
  %i.t = add nsw i64 %i.s, 1
  %i.u = call ptr @Curl_hash_pick(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.t) #6 ; 2 uses
  %.not53.i = icmp eq ptr %i.u, null
  br i1 %.not53.i, label %bb.g, label %.thread75.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 16384
  %.not54.i = icmp eq i32 %i.x, 0
  br i1 %.not54.i, label %fetch_addr.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @Curl_strntolower(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, i64 noundef 1) #6
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.z = call i32 (ptr, i64, ptr, ...) @curl_msnprintf(ptr noundef nonnull %i.y, i64 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %i.p) #6
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, 1
  %i.ac = add nsw i64 %i.aa, 2
  %i.ad = call ptr @Curl_hash_pick(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.ac) #6 ; 2 uses
  %.not55.i = icmp eq ptr %i.ad, null
  br i1 %.not55.i, label %fetch_addr.exit.thread.thread, label %.thread75.i

.thread75.i:                                      ; preds = %bb.h, %bb.f
  %.04180.i = phi i64 [ %i.ab, %bb.h ], [ %i.s, %bb.f ]
  %.04279.i = phi ptr [ %i.ad, %bb.h ], [ %i.u, %bb.f ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !81
  %.not56.i = icmp eq i64 %i.af, -1
  br i1 %.not56.i, label %.thread86.i, label %bb.i

bb.i:                                             ; preds = %.thread75.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ag = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !89
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !82
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aj, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %.04279.i, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !90
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.04279.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !93
  %.not17.i.i = icmp eq i32 %i.an, 0
  br i1 %.not17.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = call i64 @curlx_ptimediff_ms(ptr noundef nonnull %5, ptr noundef nonnull %i.ak) #6
  %i.ap = load ptr, ptr %.04279.i, align 8, !tbaa !94
  %.not18.i.i = icmp eq ptr %i.ap, null
  %i.aq = zext i1 %.not18.i.i to i64
  %spec.select.i71.i = shl nsw i64 %i.ao, %i.aq
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !82
  %.not19.i.i = icmp slt i64 %spec.select.i71.i, %i.ar
  br i1 %.not19.i.i, label %bb.o, label %dnscache_entry_is_stale.exit.i

dnscache_entry_is_stale.exit.i:                   ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.at = load i64, ptr %i.as, align 1
  %i.au = and i64 %i.at, 536870912
  %.not59.i = icmp eq i64 %i.au, 0
  br i1 %.not59.i, label %.thread90.i, label %bb.l

bb.l:                                             ; preds = %dnscache_entry_is_stale.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !95 ; 2 uses
  %.not60.i = icmp eq ptr %i.aw, null
  br i1 %.not60.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !96
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.n, label %.thread90.i

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #6
  br label %.thread90.i

.thread90.i:                                      ; preds = %bb.n, %bb.m, %dnscache_entry_is_stale.exit.i
  %i.ba = add nsw i64 %.04180.i, 1
  %i.bb = call i32 @Curl_hash_delete(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.a, i64 noundef %i.ba) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %fetch_addr.exit.thread.thread

bb.o:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %.thread86.i

.thread86.i:                                      ; preds = %bb.o, %.thread75.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.04279.i, i64 30
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !98
  %i.be = and i8 %i.bd, %1
  %.not62.i = icmp eq i8 %i.be, %1
  br i1 %.not62.i, label %bb.p, label %fetch_addr.exit.thread.thread

bb.p:                                             ; preds = %.thread86.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.04279.i, i64 31
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !99
  %i.bh = and i8 %i.bg, %1
  %.not63.i = icmp eq i8 %i.bh, 0
  br i1 %.not63.i, label %bb.q, label %fetch_addr.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = and i64 %i.bj, 536870912
  %.not65.i = icmp eq i64 %i.bk, 0
  br i1 %.not65.i, label %fetch_addr.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 2 uses
  %.not66.i = icmp eq ptr %i.bm, null
  br i1 %.not66.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !96
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.br = icmp sgt i32 %i.bq, 0
  %or.cond.i17 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond.i17, label %bb.u, label %fetch_addr.exit.thread

bb.t:                                             ; preds = %bb.r
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !96
  %.old1.i = icmp sgt i32 %.old.i, 0
  br i1 %.old1.i, label %bb.u, label %fetch_addr.exit.thread

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = call ptr @Curl_resolv_query_str(i8 noundef zeroext %1) #6
  call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %i.bs) #6
  br label %fetch_addr.exit.thread

fetch_addr.exit.thread.thread:                    ; preds = %bb.g, %bb.h, %.thread86.i, %.thread90.i, %dnscache_lock.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.w

fetch_addr.exit.thread:                           ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.w

fetch_addr.exit:                                  ; preds = %bb.p
  %i.bt = load ptr, ptr %.04279.i, align 8, !tbaa !94
  %.not68.i.not = icmp eq ptr %i.bt, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not68.i.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %fetch_addr.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.04279.i, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !100
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !100
  br label %bb.w

bb.w:                                             ; preds = %fetch_addr.exit, %fetch_addr.exit.thread, %fetch_addr.exit.thread.thread, %bb.v
  %.044.i25 = phi i32 [ 0, %bb.v ], [ 6, %fetch_addr.exit.thread ], [ 0, %fetch_addr.exit.thread.thread ], [ 6, %fetch_addr.exit ]
  %.0 = phi ptr [ %.04279.i, %bb.v ], [ null, %fetch_addr.exit.thread ], [ null, %fetch_addr.exit.thread.thread ], [ null, %fetch_addr.exit ]
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not.i18 = icmp ne ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.bz = icmp eq ptr %.0.i, %i.by
  %or.cond.i19 = select i1 %.not.i18, i1 %i.bz, i1 false
  br i1 %or.cond.i19, label %bb.x, label %dnscache_unlock.exit

bb.x:                                             ; preds = %bb.w
  %i.ca = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 3) #6 ; 0 uses
  br label %dnscache_unlock.exit

dnscache_unlock.exit:                             ; preds = %bb.w, %bb.x
  store ptr %.0, ptr %4, align 8, !tbaa !101
  ret i32 %.044.i25
}

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @dns_shuffle_addr(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %.not4.i = icmp eq ptr %i.a, null
  br i1 %.not4.i, label %num_addresses.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.i ], [ 0, %bb.a ] ; 13 uses
  %.06.i = phi i32 [ %i.d, %.lr.ph.i ], [ 0, %bb.a ] ; 3 uses
  %.035.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.a, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.035.i, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = add nuw i32 %.06.i, 1                    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  %indvars.iv.next78 = add nuw i64 %indvars.iv77, 1
  br i1 %.not.i, label %num_addresses.exit, label %.lr.ph.i, !llvm.loop !107

num_addresses.exit:                               ; preds = %.lr.ph.i
  %.not68 = icmp eq i32 %.06.i, 0
  br i1 %.not68, label %num_addresses.exit.thread, label %bb.b

bb.b:                                             ; preds = %num_addresses.exit
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.f = load i64, ptr %i.e, align 1
  %i.g = and i64 %i.f, 536870912
  %.not63 = icmp eq i64 %i.g, 0
  br i1 %.not63, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %.not64 = icmp eq ptr %i.i, null
  br i1 %.not64, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !96
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !96
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.d) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %i.o = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !108
  %i.p = zext i32 %i.d to i64                     ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr %i.o(i64 noundef %i.q) #6  ; 21 uses
  %.not65 = icmp eq ptr %i.r, null
  br i1 %.not65, label %num_addresses.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.s, ptr %i.r, align 8, !tbaa !103
  %i.t = add i64 %indvars.iv77, -1                ; 2 uses
  %xtraiter = and i64 %indvars.iv77, 3            ; 3 uses
  %i.u = icmp ult i64 %i.t, 3
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %indvars.iv77, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.3, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.v = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104  ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !103
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !103
  %i.ae = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !104
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !103
  %i.ak = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 24
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !103
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.j, !llvm.loop !109

.unr-lcssa:                                       ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.i
  %indvars.iv.epil.init = phi i64 [ 1, %bb.i ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.k ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.aq = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.epil ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !103
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.k, !llvm.loop !110

.epilog-lcssa:                                    ; preds = %bb.k, %.unr-lcssa
  %i.av = shl nuw nsw i64 %i.p, 2                 ; 2 uses
  %i.aw = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !108
  %i.ax = tail call ptr %i.aw(i64 noundef %i.av) #6 ; 6 uses
  %.not66 = icmp eq ptr %i.ax, null
  br i1 %.not66, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.epilog-lcssa
  %i.ay = tail call i32 @Curl_rand_bytes(ptr noundef %0, ptr noundef nonnull %i.ax, i64 noundef %i.av) #6
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.preheader71.preheader, label %bb.m

.preheader71.preheader:                           ; preds = %bb.l
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv77, i64 1)
  %2 = sub i64 %i.p, %smin
  %xtraiter95 = and i64 %2, 1
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.preheader71.prol.loopexit, label %.preheader71.prol

.preheader71.prol:                                ; preds = %.preheader71.preheader
  %3 = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv77
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = trunc i64 %indvars.iv77 to i32
  %6 = add i32 %5, 1
  %7 = urem i32 %4, %6
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %8 ; 2 uses
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv77 ; 2 uses
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  store ptr %12, ptr %9, align 8, !tbaa !103
  store ptr %10, ptr %11, align 8, !tbaa !103
  %indvars.iv.next80.prol = add nsw i64 %indvars.iv77, -1
  br label %.preheader71.prol.loopexit

.preheader71.prol.loopexit:                       ; preds = %.preheader71.prol, %.preheader71.preheader
  %indvars.iv79.unr = phi i64 [ %indvars.iv77, %.preheader71.preheader ], [ %indvars.iv.next80.prol, %.preheader71.prol ]
  %13 = icmp slt i64 %indvars.iv77, 2
  br i1 %13, label %.preheader.preheader, label %.preheader71

.preheader71:                                     ; preds = %.preheader71.prol.loopexit, %.preheader71
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.a, %.preheader71 ], [ %indvars.iv79.unr, %.preheader71.prol.loopexit ] ; 6 uses
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv79
  %15 = load i32, ptr %14, align 4, !tbaa !85
  %16 = trunc i64 %indvars.iv79 to i32
  %17 = add i32 %16, 1
  %18 = urem i32 %15, %17
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %19 ; 2 uses
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv79 ; 2 uses
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  store ptr %23, ptr %20, align 8, !tbaa !103
  store ptr %21, ptr %22, align 8, !tbaa !103
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next80
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !85
  %i.bc = trunc i64 %indvars.iv.next80 to i32
  %i.bd = add i32 %i.bc, 1
  %i.be = urem i32 %i.bb, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next80 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !103
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !103
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !103
  %indvars.iv.next80.a = add nsw i64 %indvars.iv79, -2
  %i.bk = icmp sgt i64 %indvars.iv79, 2
  br i1 %i.bk, label %.preheader71, label %.preheader.preheader, !llvm.loop !112

.preheader.preheader:                             ; preds = %.preheader71, %.preheader71.prol.loopexit
  %xtraiter96 = and i64 %indvars.iv77, 3          ; 3 uses
  %i.bl = icmp ult i64 %i.t, 3
  br i1 %i.bl, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter101 = and i64 %indvars.iv77, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv82 = phi i64 [ 1, %.preheader.preheader.new ], [ %indvars.iv.next83.3, %.preheader ] ; 5 uses
  %niter102 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter102.next.3, %.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !103
  %i.bo = getelementptr i8, ptr %i.bm, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !103
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !103
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !103
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !104
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !103
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !104
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103
  %i.cf = getelementptr i8, ptr %i.cc, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !104
  %indvars.iv.next83.3 = add nuw nsw i64 %indvars.iv82, 4 ; 2 uses
  %niter102.next.3 = add nuw i64 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.unr-lcssa95, label %.preheader, !llvm.loop !113

.unr-lcssa95:                                     ; preds = %.preheader
  %lcmp.mod98.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %.epilog-lcssa99, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa95, %.preheader.preheader
  %indvars.iv82.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next83.3, %.unr-lcssa95 ]
  %lcmp.mod100 = icmp ne i64 %xtraiter96, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv82.epil = phi i64 [ %indvars.iv.next83.epil, %.preheader.epil ], [ %indvars.iv82.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter97 = phi i64 [ %epil.iter97.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82.epil ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !103
  %i.ck = getelementptr i8, ptr %i.ci, i64 -8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !103
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !104
  %indvars.iv.next83.epil = add nuw nsw i64 %indvars.iv82.epil, 1
  %epil.iter97.next = add i64 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i64 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %.epilog-lcssa99, label %.preheader.epil, !llvm.loop !114

.epilog-lcssa99:                                  ; preds = %.preheader.epil, %.unr-lcssa95
  %i.cn = zext nneg i32 %.06.i to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !103
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store ptr null, ptr %i.cq, align 8, !tbaa !104
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !103
  store ptr %i.cr, ptr %1, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa99, %bb.l
  %i.cs = load ptr, ptr @Curl_cfree, align 8, !tbaa !108
  tail call void %i.cs(ptr noundef nonnull %i.ax) #6
  br label %bb.n

bb.n:                                             ; preds = %.epilog-lcssa, %bb.m
  %.055 = phi i32 [ 0, %bb.m ], [ 27, %.epilog-lcssa ]
  %i.ct = load ptr, ptr @Curl_cfree, align 8, !tbaa !108
  tail call void %i.ct(ptr noundef nonnull %i.r) #6
  br label %num_addresses.exit.thread

num_addresses.exit.thread:                        ; preds = %bb.a, %bb.n, %bb.h, %num_addresses.exit
  %.257 = phi i32 [ 0, %num_addresses.exit ], [ %.055, %bb.n ], [ 27, %bb.h ], [ 0, %bb.a ]
  ret i32 %.257
}

declare void @Curl_trc_dns(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @Curl_rand_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Curl_dnscache_mk_entry(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.split6, label %.split

.split6:                                          ; preds = %bb.a
  %i.a = tail call fastcc ptr @dnscache_entry_create(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef null, ptr noundef null, i64 noundef 0, i16 noundef zeroext %4, i1 noundef zeroext false)
  br label %bb.b

.split:                                           ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #7
  %i.c = tail call fastcc ptr @dnscache_entry_create(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %3, i64 noundef %i.b, i16 noundef zeroext %4, i1 noundef zeroext false)
  br label %bb.b

bb.b:                                             ; preds = %.split6, %.split
  %phi.call = phi ptr [ %i.c, %.split ], [ %i.a, %.split6 ]
  ret ptr %phi.call
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dnscache_entry_create(ptr noundef %0, i8 noundef zeroext %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i16 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !108
  %i.b = add i64 %5, 40
  %i.c = tail call ptr %i.a(i64 noundef 1, i64 noundef %i.b) #6 ; 20 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  store i8 %1, ptr %i.e, align 2, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i16 %6, ptr %i.f, align 4, !tbaa !115
  %.not65 = icmp eq i64 %5, 0
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 1 %4, i64 %5, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.h, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !93
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = tail call ptr @Curl_pgrs_now(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !89
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not66 = icmp eq ptr %2, null
  br i1 %.not66, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %.not67 = icmp eq ptr %i.k, null
  br i1 %.not67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.k, ptr %i.c, align 8, !tbaa !94
  store ptr null, ptr %2, align 8, !tbaa !103
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.not68 = icmp eq ptr %3, null
  br i1 %.not68, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load ptr, ptr %3, align 8, !tbaa !103    ; 2 uses
  %.not69 = icmp eq ptr %i.l, null
  br i1 %.not69, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.k, %.preheader
  %.051 = phi ptr [ %i.n, %.preheader ], [ %i.c, %bb.k ] ; 2 uses
  %i.m = load ptr, ptr %.051, align 8, !tbaa !103 ; 2 uses
  %.not70 = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br i1 %.not70, label %bb.l, label %.preheader, !llvm.loop !116

bb.l:                                             ; preds = %.preheader
  store ptr %i.l, ptr %.051, align 8, !tbaa !103
  store ptr null, ptr %3, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.o = zext i8 %1 to i32                        ; 2 uses
  %i.p = and i32 %i.o, 1
  %.not71 = icmp eq i32 %i.p, 0
  br i1 %.not71, label %dnscache_ai_has_family.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %.not5.not.i = icmp eq ptr %i.q, null
  br i1 %.not5.not.i, label %dnscache_ai_has_family.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.046.i = phi ptr [ %i.v, %bb.o ], [ %i.q, %bb.n ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.046.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = icmp eq i32 %i.s, 2
end_hunk_0
begin_hunk_1_@Curl_loadhostpairs:bb.a
  %.not.i148 = icmp ne ptr %i.dz, null
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 208
  %i.eb = icmp eq ptr %.0.i.ph, %i.ea
  %or.cond.i149 = select i1 %.not.i148, i1 %i.eb, i1 false
  br i1 %or.cond.i149, label %bb.bb, label %dnscache_unlock.exit150

bb.bb:                                            ; preds = %bb.ba
  %i.ec = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 3) #6 ; 0 uses
  br label %dnscache_unlock.exit150

.critedge136:                                     ; preds = %bb.az
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !8   ; 2 uses
  %.not.i151 = icmp ne ptr %i.ed, null
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 208
  %i.ef = icmp eq ptr %.0.i.ph, %i.ee
  %or.cond.i152 = select i1 %.not.i151, i1 %i.ef, i1 false
  br i1 %or.cond.i152, label %bb.bc, label %.thread175

bb.bc:                                            ; preds = %.critedge136
  %i.eg = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 3) #6 ; 0 uses
  br label %.thread175

dnscache_unlock.exit150:                          ; preds = %bb.bb, %bb.ba
  %i.eh = load i64, ptr %i.w, align 1
  %i.ei = and i64 %i.eh, 536870912
  %.not122 = icmp eq i64 %i.ei, 0
  br i1 %.not122, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %dnscache_unlock.exit150
  %i.ej = load ptr, ptr %i.x, align 8, !tbaa !95  ; 2 uses
  %.not123 = icmp eq ptr %i.ej, null
  br i1 %.not123, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !96
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.en = load i64, ptr %i.v, align 8, !tbaa !127
  %i.eo = trunc i64 %i.en to i32
  %i.ep = load ptr, ptr %1, align 8, !tbaa !125
  %i.eq = select i1 %i.bf, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.eo, ptr noundef %i.ep, i32 noundef %i.cz, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.eq) #6
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %dnscache_unlock.exit150
  %i.er = call i32 @curlx_str_casecompare(ptr noundef nonnull %1, ptr noundef nonnull @.str.8) #6
  %.not124 = icmp eq i32 %i.er, 0
  br i1 %.not124, label %dnscache_unlock.exit153, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.es = load i64, ptr %i.w, align 1
  %i.et = and i64 %i.es, 536870912
  %.not125 = icmp eq i64 %i.et, 0
  br i1 %.not125, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eu = load ptr, ptr %i.x, align 8, !tbaa !95  ; 2 uses
  %.not126 = icmp eq ptr %i.eu, null
  br i1 %.not126, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !96
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void (ptr, ptr, ...) @Curl_infof(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.cz) #6
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.ey = load i32, ptr %i.q, align 4
  %i.ez = or i32 %i.ey, 16384
  store i32 %i.ez, ptr %i.q, align 4
  br label %dnscache_unlock.exit153

dnscache_unlock.exit153:                          ; preds = %bb.bg, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.thread170

.thread175:                                       ; preds = %bb.bc, %.critedge136, %.critedge
  %.179.ph.ph = phi i32 [ 49, %.critedge ], [ 27, %.critedge136 ], [ 27, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %dnscache_get.exit

bb.bm:                                            ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.thread170

.thread170:                                       ; preds = %dnscache_unlock.exit, %dnscache_unlock.exit153, %dnscache_unlock.exit.thread, %bb.f, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.fa = getelementptr inbounds nuw i8, ptr %.077191, i64 8
  %.077 = load ptr, ptr %i.fa, align 8, !tbaa !120 ; 2 uses
  %.not94 = icmp eq ptr %.077, null
  br i1 %.not94, label %._crit_edge, label %bb.f, !llvm.loop !129

._crit_edge:                                      ; preds = %.thread170, %bb.e
  store ptr null, ptr %i.t, align 8, !tbaa !130
  br label %dnscache_get.exit

dnscache_get.exit:                                ; preds = %.thread175, %bb.d, %._crit_edge
  %.4 = phi i32 [ %.179.ph.ph, %.thread175 ], [ 0, %._crit_edge ], [ 2, %bb.d ]
  ret i32 %.4
}

declare i32 @curlx_str_single(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @curlx_str_until(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @curlx_str_number(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Curl_hash_delete(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @Curl_str2addr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @Curl_infof(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Curl_failf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @Curl_freeaddrinfo(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_hash_pick(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curlx_str_casecompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_share_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_hash_clean_with_criterium(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dnscache_entry_is_stale(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !93
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call i64 @curlx_ptimediff_ms(ptr noundef %0, ptr noundef nonnull %i.a) #6
  %i.f = load ptr, ptr %1, align 8, !tbaa !94
  %.not18 = icmp eq ptr %i.f, null
  %i.g = zext i1 %.not18 to i64
  %spec.select = shl nsw i64 %i.e, %i.g           ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !82
  %.not19 = icmp slt i64 %spec.select, %i.i
  br i1 %.not19, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !86
  %i.l = icmp sgt i64 %spec.select, %i.k
  br i1 %i.l, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i64 %spec.select, ptr %i.j, align 8, !tbaa !86
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.d, %bb.e, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i64 @curlx_ptimediff_ms(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Curl_share_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Curl_strntolower(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @curl_msnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !19, i64 120}
!9 = !{!"Curl_easy", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !11, i64 24, !12, i64 32, !5, i64 40, !5, i64 44, !13, i64 48, !18, i64 104, !18, i64 112, !19, i64 120, !20, i64 128, !23, i64 176, !24, i64 184, !32, i64 424, !43, i64 2200, !44, i64 2208, !45, i64 2216, !46, i64 2224, !49, i64 2784, !66, i64 4632, !67, i64 4640, !71, i64 4864}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11connectdata", !11, i64 0}
!13 = !{!"Curl_message", !14, i64 0, !17, i64 32}
!14 = !{!"Curl_llist_node", !15, i64 0, !11, i64 8, !16, i64 16, !16, i64 24}
!15 = !{!"p1 _ZTS10Curl_llist", !11, i64 0}
!16 = !{!"p1 _ZTS15Curl_llist_node", !11, i64 0}
!17 = !{!"CURLMsg", !5, i64 0, !11, i64 8, !6, i64 16}
!18 = !{!"p1 _ZTS10Curl_multi", !11, i64 0}
!19 = !{!"p1 _ZTS10Curl_share", !11, i64 0}
!20 = !{!"Curl_hash", !21, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !10, i64 40}
!21 = !{!"p2 _ZTS17Curl_hash_element", !22, i64 0}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p1 _ZTS8PslCache", !11, i64 0}
!24 = !{!"SingleRequest", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !25, i64 40, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !6, i64 76, !6, i64 77, !5, i64 80, !26, i64 88, !27, i64 96, !28, i64 104, !10, i64 168, !10, i64 176, !31, i64 184, !31, i64 192, !6, i64 200, !31, i64 208, !31, i64 216, !31, i64 224, !6, i64 232, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 233, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 234, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235, !5, i64 235}
!25 = !{!"curltime", !10, i64 0, !5, i64 8}
!26 = !{!"p1 _ZTS12Curl_cwriter", !11, i64 0}
!27 = !{!"p1 _ZTS12Curl_creader", !11, i64 0}
!28 = !{!"bufq", !29, i64 0, !29, i64 8, !29, i64 16, !30, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !5, i64 56}
!29 = !{!"p1 _ZTS9buf_chunk", !11, i64 0}
!30 = !{!"p1 _ZTS9bufc_pool", !11, i64 0}
!31 = !{!"p1 omnipotent char", !11, i64 0}
!32 = !{!"UserDefined", !33, i64 0, !11, i64 8, !31, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !5, i64 52, !11, i64 56, !11, i64 64, !10, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !34, i64 320, !35, i64 328, !36, i64 336, !34, i64 344, !34, i64 352, !34, i64 360, !10, i64 368, !37, i64 376, !37, i64 576, !34, i64 776, !40, i64 784, !6, i64 786, !6, i64 787, !41, i64 788, !10, i64 792, !5, i64 800, !5, i64 804, !11, i64 808, !34, i64 816, !10, i64 824, !10, i64 832, !6, i64 840, !6, i64 841, !6, i64 842, !34, i64 848, !34, i64 856, !34, i64 864, !5, i64 872, !6, i64 880, !6, i64 1480, !5, i64 1544, !10, i64 1552, !10, i64 1560, !11, i64 1568, !5, i64 1576, !11, i64 1584, !11, i64 1592, !11, i64 1600, !11, i64 1608, !11, i64 1616, !10, i64 1624, !10, i64 1632, !10, i64 1640, !10, i64 1648, !10, i64 1656, !5, i64 1664, !5, i64 1668, !5, i64 1672, !11, i64 1680, !11, i64 1688, !10, i64 1696, !42, i64 1704, !11, i64 1712, !11, i64 1720, !34, i64 1728, !5, i64 1736, !40, i64 1740, !40, i64 1742, !40, i64 1744, !40, i64 1746, !40, i64 1748, !40, i64 1750, !40, i64 1752, !6, i64 1754, !6, i64 1755, !6, i64 1756, !6, i64 1757, !6, i64 1758, !6, i64 1759, !6, i64 1760, !6, i64 1761, !6, i64 1762, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1763, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1764, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1765, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1766, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1767, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1768, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1769, !5, i64 1770, !5, i64 1770, !5, i64 1770}
!33 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!34 = !{!"p1 _ZTS10curl_slist", !11, i64 0}
!35 = !{!"p1 _ZTS13curl_httppost", !11, i64 0}
!36 = !{!"p1 _ZTS13curl_mimepart", !11, i64 0}
!37 = !{!"ssl_config_data", !38, i64 0, !10, i64 168, !11, i64 176, !11, i64 184, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 192, !5, i64 193, !5, i64 193, !5, i64 193}
!38 = !{!"ssl_primary_config", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !5, i64 160, !6, i64 164, !6, i64 165, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166, !5, i64 166}
!39 = !{!"p1 _ZTS9curl_blob", !11, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!"ssl_general_config", !5, i64 0}
!42 = !{!"p1 _ZTS8Curl_URL", !11, i64 0}
!43 = !{!"p1 _ZTS10CookieInfo", !11, i64 0}
!44 = !{!"p1 _ZTS4hsts", !11, i64 0}
!45 = !{!"p1 _ZTS10altsvcinfo", !11, i64 0}
!46 = !{!"Progress", !25, i64 0, !10, i64 16, !47, i64 24, !47, i64 128, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !25, i64 328, !25, i64 344, !25, i64 360, !25, i64 376, !25, i64 392, !6, i64 408, !6, i64 456, !5, i64 552, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556, !5, i64 556}
!47 = !{!"pgrs_dir", !10, i64 0, !10, i64 8, !10, i64 16, !48, i64 24}
!48 = !{!"Curl_rlimit", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !25, i64 56, !5, i64 72}
!49 = !{!"UrlState", !25, i64 0, !10, i64 16, !10, i64 24, !50, i64 32, !34, i64 64, !10, i64 72, !51, i64 80, !51, i64 88, !5, i64 96, !5, i64 100, !11, i64 104, !31, i64 112, !52, i64 120, !52, i64 192, !54, i64 264, !54, i64 280, !55, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !31, i64 336, !5, i64 344, !25, i64 352, !56, i64 368, !58, i64 424, !6, i64 456, !31, i64 1296, !31, i64 1304, !10, i64 1312, !5, i64 1320, !5, i64 1324, !5, i64 1328, !6, i64 1332, !10, i64 1368, !11, i64 1376, !11, i64 1384, !42, i64 1392, !59, i64 1400, !60, i64 1464, !60, i64 1488, !34, i64 1512, !36, i64 1520, !36, i64 1528, !10, i64 1536, !50, i64 1544, !58, i64 1576, !6, i64 1608, !61, i64 1704, !34, i64 1712, !62, i64 1720, !63, i64 1728, !53, i64 1776, !64, i64 1784, !65, i64 1832, !40, i64 1840, !6, i64 1842, !6, i64 1843, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1844, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1845, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846, !5, i64 1846}
!50 = !{!"dynbuf", !31, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!51 = !{!"p1 _ZTS9Curl_peer", !11, i64 0}
!52 = !{!"digestdata", !53, i64 0, !51, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !5, i64 64, !6, i64 68, !5, i64 69, !5, i64 69}
!53 = !{!"p1 _ZTS10Curl_creds", !11, i64 0}
!54 = !{!"auth", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 12}
!55 = !{!"p1 _ZTS17Curl_resolv_async", !11, i64 0}
!56 = !{!"Curl_tree", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !25, i64 32, !11, i64 48}
!57 = !{!"p1 _ZTS9Curl_tree", !11, i64 0}
!58 = !{!"Curl_llist", !16, i64 0, !16, i64 8, !11, i64 16, !10, i64 24}
!59 = !{!"urlpieces", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56}
!60 = !{!"bufref", !11, i64 0, !31, i64 8, !10, i64 16}
!61 = !{!"p1 _ZTS17Curl_header_store", !11, i64 0}
!62 = !{!"p1 _ZTS13curl_trc_feat", !11, i64 0}
!63 = !{!"store_netrc", !50, i64 0, !31, i64 32, !5, i64 40}
!64 = !{!"dynamically_allocated_data", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!65 = !{!"http_negotiation", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 4, !5, i64 4, !5, i64 4}
!66 = !{!"p1 _ZTS12WildcardData", !11, i64 0}
!67 = !{!"PureInfo", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !31, i64 56, !31, i64 64, !10, i64 72, !5, i64 80, !68, i64 84, !31, i64 184, !5, i64 192, !69, i64 200, !5, i64 216, !5, i64 220, !5, i64 220}
!68 = !{!"ip_quadruple", !6, i64 0, !6, i64 46, !40, i64 92, !40, i64 94, !6, i64 96}
!69 = !{!"curl_certinfo", !5, i64 0, !70, i64 8}
!70 = !{!"p2 _ZTS10curl_slist", !22, i64 0}
!71 = !{!"curl_tlssessioninfo", !5, i64 0, !11, i64 8}
!72 = !{!73, !5, i64 4}
!73 = !{!"Curl_share", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 16, !5, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !74, i64 88, !75, i64 96, !76, i64 208, !43, i64 256, !77, i64 264, !44, i64 288, !79, i64 296}
!74 = !{!"p1 _ZTS9Curl_easy", !11, i64 0}
!75 = !{!"cpool", !20, i64 0, !10, i64 48, !10, i64 56, !10, i64 64, !25, i64 72, !74, i64 88, !19, i64 96, !5, i64 104, !5, i64 104}
!76 = !{!"Curl_dnscache", !20, i64 0}
!77 = !{!"PslCache", !78, i64 0, !10, i64 8, !5, i64 16}
!78 = !{!"p1 _ZTS10psl_ctx_st", !11, i64 0}
!79 = !{!"p1 _ZTS15Curl_ssl_scache", !11, i64 0}
!80 = !{!9, !18, i64 104}
!81 = !{!9, !10, i64 1216}
!82 = !{!83, !10, i64 24}
!83 = !{!"dnscache_prune_data", !25, i64 0, !10, i64 16, !10, i64 24}
!84 = !{!10, !10, i64 0}
!85 = !{!5, !5, i64 0}
!86 = !{!83, !10, i64 16}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{i64 0, i64 8, !84, i64 8, i64 4, !85}
!90 = !{!91, !10, i64 8}
!91 = !{!"Curl_dns_entry", !92, i64 0, !25, i64 8, !5, i64 24, !40, i64 28, !6, i64 30, !6, i64 31, !6, i64 32}
!92 = !{!"p1 _ZTS13Curl_addrinfo", !11, i64 0}
!93 = !{!91, !5, i64 16}
!94 = !{!91, !92, i64 0}
!95 = !{!9, !62, i64 4504}
!96 = !{!97, !5, i64 8}
!97 = !{!"curl_trc_feat", !31, i64 0, !5, i64 8}
!98 = !{!91, !6, i64 30}
!99 = !{!91, !6, i64 31}
!100 = !{!91, !5, i64 24}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 _ZTS14Curl_dns_entry", !11, i64 0}
!103 = !{!92, !92, i64 0}
!104 = !{!105, !92, i64 40}
!105 = !{!"Curl_addrinfo", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !31, i64 24, !106, i64 32, !92, i64 40}
!106 = !{!"p1 _ZTS8sockaddr", !11, i64 0}
!107 = distinct !{!107, !88}
!108 = !{!11, !11, i64 0}
!109 = distinct !{!109, !88}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = distinct !{!112, !88}
!113 = distinct !{!113, !88}
!114 = distinct !{!114, !111}
!115 = !{!91, !40, i64 28}
!116 = distinct !{!116, !88}
!117 = !{!105, !5, i64 4}
!118 = distinct !{!118, !88}
!119 = distinct !{null}
!120 = !{!34, !34, i64 0}
!121 = !{!122, !31, i64 0}
!122 = !{!"curl_slist", !31, i64 0, !34, i64 8}
!123 = !{!31, !31, i64 0}
!124 = !{!6, !6, i64 0}
!125 = !{!126, !31, i64 0}
!126 = !{!"Curl_str", !31, i64 0, !10, i64 8}
!127 = !{!126, !10, i64 8}
!128 = distinct !{!128, !88}
!129 = distinct !{!129, !88}
!130 = !{!9, !34, i64 4296}
end_hunk_1
