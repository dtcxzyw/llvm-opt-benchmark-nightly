Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/dnscache?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
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
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !82
  %.not56.i = icmp eq i64 %i.af, -1
  br i1 %.not56.i, label %.thread86.i, label %bb.i

bb.i:                                             ; preds = %.thread75.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.ag = call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !89
  %i.ah = load i64, ptr %i.ae, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aj, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %.04279.i, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !92
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
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !84
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
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !97
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
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !97
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.br = icmp sgt i32 %i.bq, 0
  %or.cond.i17 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond.i17, label %bb.u, label %fetch_addr.exit.thread

bb.t:                                             ; preds = %bb.r
  %.old.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !97
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
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %.not.i18 = icmp ne ptr %i.bx, null
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.bz = icmp eq ptr %.0.i, %i.by
  %or.cond.i19 = select i1 %.not.i18, i1 %i.bz, i1 false
  br i1 %or.cond.i19, label %bb.x, label %dnscache_unlock.exit

bb.x:                                             ; preds = %bb.w
  %i.ca = call i32 @Curl_share_unlock(ptr noundef nonnull %0, i32 noundef 3) #6 ; 0 uses
  br label %dnscache_unlock.exit

dnscache_unlock.exit:                             ; preds = %bb.w, %bb.x
  store ptr %.0, ptr %4, align 8, !tbaa !102
  ret i32 %.044.i25
}

; Function Attrs: nounwind uwtable
define range(i32 0, 28) i32 @dns_shuffle_addr(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %.not4.i = icmp eq ptr %i.a, null
  br i1 %.not4.i, label %num_addresses.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.06.i = phi i32 [ %i.d, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %.035.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.a, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.035.i, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %i.d = add nuw i32 %.06.i, 1                    ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  %indvars.iv.next78 = add nuw i64 %indvars.iv77, 1
  br i1 %.not.i, label %num_addresses.exit, label %.lr.ph.i, !llvm.loop !110

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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !97
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @Curl_trc_feat_dns, i64 8), align 8, !tbaa !97
  %.old1 = icmp sgt i32 %.old, 0
  br i1 %.old1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  tail call void (ptr, ptr, ...) @Curl_trc_dns(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.d) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %i.o = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !107
  %i.p = zext i32 %i.d to i64                     ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr %i.o(i64 noundef %i.q) #6  ; 17 uses
  %.not65 = icmp eq ptr %i.r, null
  br i1 %.not65, label %num_addresses.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %1, align 8, !tbaa !103
  store ptr %i.s, ptr %i.r, align 8, !tbaa !103
  %2 = zext i32 %.06.i to i64                     ; 4 uses
  %i.t = add nsw i64 %i.p, -2                     ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.u = icmp ult i64 %i.t, 3
  br i1 %i.u, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %2, 4294967292
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %indvars.iv = phi i64 [ 1, %.new ], [ %indvars.iv.next.3, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.v = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106  ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !103
  %i.aa = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !106
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !103
  %i.ae = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !106
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !103
  %i.ak = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 24
  %i.am = getelementptr i8, ptr %i.ak, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !103
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.j, !llvm.loop !111

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
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !103
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.k, !llvm.loop !112

.epilog-lcssa:                                    ; preds = %bb.k, %.unr-lcssa
  %i.av = shl nuw nsw i64 %i.p, 2                 ; 2 uses
  %i.aw = load ptr, ptr @Curl_cmalloc, align 8, !tbaa !107
  %i.ax = tail call ptr %i.aw(i64 noundef %i.av) #6 ; 4 uses
  %.not66 = icmp eq ptr %i.ax, null
  br i1 %.not66, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.epilog-lcssa
  %i.ay = tail call i32 @Curl_rand_bytes(ptr noundef %0, ptr noundef nonnull %i.ax, i64 noundef %i.av) #6
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.preheader71, label %bb.m

.preheader71:                                     ; preds = %bb.l, %.preheader71
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.preheader71 ], [ %indvars.iv77, %bb.l ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv79
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !86
  %i.bc = trunc i64 %indvars.iv79 to i32
  %i.bd = add i32 %i.bc, 1
  %i.be = urem i32 %i.bb, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bf ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv79 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !103
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !103
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !103
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %i.bk = icmp sgt i64 %indvars.iv79, 1
  br i1 %i.bk, label %.preheader71, label %.preheader.preheader, !llvm.loop !113

.preheader.preheader:                             ; preds = %.preheader71
  %xtraiter96 = and i64 %2, 3                     ; 3 uses
  %i.bl = icmp ult i64 %i.t, 3
  br i1 %i.bl, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter101 = and i64 %2, 4294967292
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv82 = phi i64 [ 1, %.preheader.preheader.new ], [ %indvars.iv.next83.3, %.preheader ] ; 5 uses
  %niter102 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter102.next.3, %.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !103
  %i.bo = getelementptr i8, ptr %i.bm, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !103
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !103
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !103
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !106
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !103
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !103
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !106
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv82 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103
  %i.cf = getelementptr i8, ptr %i.cc, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !106
  %indvars.iv.next83.3 = add nuw nsw i64 %indvars.iv82, 4 ; 2 uses
  %niter102.next.3 = add nuw i64 %niter102, 4     ; 2 uses
  %niter102.ncmp.3 = icmp eq i64 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %.unr-lcssa95, label %.preheader, !llvm.loop !114

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
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !106
  %indvars.iv.next83.epil = add nuw nsw i64 %indvars.iv82.epil, 1
  %epil.iter97.next = add i64 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i64 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %.epilog-lcssa99, label %.preheader.epil, !llvm.loop !115

.epilog-lcssa99:                                  ; preds = %.preheader.epil, %.unr-lcssa95
  %i.cn = zext nneg i32 %.06.i to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !103
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store ptr null, ptr %i.cq, align 8, !tbaa !106
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !103
  store ptr %i.cr, ptr %1, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %.epilog-lcssa99, %bb.l
  %i.cs = load ptr, ptr @Curl_cfree, align 8, !tbaa !107
  tail call void %i.cs(ptr noundef nonnull %i.ax) #6
  br label %bb.n

bb.n:                                             ; preds = %.epilog-lcssa, %bb.m
  %.055 = phi i32 [ 0, %bb.m ], [ 27, %.epilog-lcssa ]
  %i.ct = load ptr, ptr @Curl_cfree, align 8, !tbaa !107
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
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !107
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
  store i16 %6, ptr %i.f, align 4, !tbaa !108
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
  store i64 0, ptr %i.h, align 8, !tbaa !92
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
  br i1 %.not70, label %bb.l, label %.preheader, !llvm.loop !117

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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !119
  %i.t = icmp eq i32 %i.s, 2
end_hunk_0
