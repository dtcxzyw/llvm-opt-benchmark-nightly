Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/buffer?download=true
inline.NumInlined: 79
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evbuffer_add_buffer:bb.a
  %i.de = tail call i32 %i.dd(i32 noundef 0, ptr noundef nonnull %.058) #16 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_add_buffer_reference(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp ne ptr %i.d, null
  %i.g = icmp ugt ptr %i.b, %i.d
  %i.h = and i1 %i.f, %i.g
  %or.cond72 = select i1 %i.e, i1 %i.h, i1 false  ; 2 uses
  %.060 = select i1 %or.cond72, ptr %i.d, ptr %i.b ; 2 uses
  %.059 = select i1 %or.cond72, ptr %i.b, ptr %i.d ; 2 uses
  %.not = icmp eq ptr %.060, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.060) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ne ptr %i.b, %i.d
  %i.l = icmp ne ptr %.059, null
  %or.cond5 = and i1 %i.k, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %.059) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 4
  %.not68 = icmp ne i8 %i.v, 0
  %i.w = icmp eq ptr %0, %1
  %or.cond73 = or i1 %i.w, %.not68
  br i1 %or.cond73, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.g
  %.062.in = phi ptr [ %.062, %bb.g ], [ %1, %bb.f ]
  %.062 = load ptr, ptr %.062.in, align 8         ; 3 uses
  %.not69 = icmp eq ptr %.062, null
  br i1 %.not69, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %.062, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = and i32 %i.y, 131
  %.not70 = icmp eq i32 %i.z, 0
  br i1 %.not70, label %.preheader, label %.loopexit, !llvm.loop !27

bb.h:                                             ; preds = %.preheader
  %i.aa = icmp eq i64 %i.r, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %.not4.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i, label %evbuffer_free_all_chains.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.05.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ac = load ptr, ptr %.05.i, align 8           ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i)
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %evbuffer_free_all_chains.exit, label %.lr.ph.i, !llvm.loop !5

evbuffer_free_all_chains.exit:                    ; preds = %.lr.ph.i, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %0, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %evbuffer_free_all_chains.exit, %bb.h
  %.039.i = load ptr, ptr %1, align 8             ; 2 uses
  %.not40.i = icmp eq ptr %.039.i, null
  br i1 %.not40.i, label %APPEND_CHAIN_MULTICAST.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.u, %.lr.ph.i75
  %.041.i = phi ptr [ %.039.i, %.lr.ph.i75 ], [ %.0.i, %bb.u ] ; 8 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.041.i, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %.not31.i = icmp eq i64 %i.ai, 0
  br i1 %.not31.i, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.041.i, i64 32 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 64
  %.not32.i = icmp eq i32 %i.al, 0
  br i1 %.not32.i, label %.loopexit.i.i, label %bb.u

.loopexit.i.i:                                    ; preds = %bb.l
  %i.am = tail call ptr @event_mm_malloc_(i64 noundef 1024) #16 ; 14 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i.i
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.APPEND_CHAIN_MULTICAST) #16
  br label %APPEND_CHAIN_MULTICAST.exit

bb.n:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i8 0, i64 40, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store i64 976, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  store i32 1, ptr %i.ar, align 4
  %i.as = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.o

.thread.i.i:                                      ; preds = %bb.n
  %i.at = load i32, ptr %i.ae, align 8
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ae, align 8
  br label %evbuffer_incref_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.aw = tail call i32 %i.av(i32 noundef 0, ptr noundef nonnull %i.as) #16, !inline_history !28 ; 0 uses
  %.pr.i.i = load ptr, ptr %i.a, align 8          ; 2 uses
  %i.ax = load i32, ptr %i.ae, align 8
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.ae, align 8
  %.not6.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not6.i.i, label %evbuffer_incref_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ba = tail call i32 %i.az(i32 noundef 0, ptr noundef nonnull %.pr.i.i) #16, !inline_history !28 ; 0 uses
  br label %evbuffer_incref_.exit.i

evbuffer_incref_.exit.i:                          ; preds = %bb.p, %bb.o, %.thread.i.i
  store ptr %1, ptr %i.ap, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.041.i, i64 36 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %.041.i, ptr %i.be, align 8
  %i.bf = load i32, ptr %i.aj, align 8
  %i.bg = or i32 %i.bf, 8
  store i32 %i.bg, ptr %i.aj, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.041.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  store i64 %i.bi, ptr %i.ao, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.bk, ptr %i.bl, align 8
  %i.bm = load i64, ptr %i.ah, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 3 uses
  store i64 %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = or i32 %i.bp, 136
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.041.i, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  store ptr %i.bs, ptr %i.aq, align 8
  %i.bt = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.q, label %.lr.ph.i.i.i

bb.q:                                             ; preds = %evbuffer_incref_.exit.i
  store ptr %i.am, ptr %i.ag, align 8
  store ptr %i.am, ptr %0, align 8
  br label %evbuffer_chain_insert.exit.i

.lr.ph.i.i.i:                                     ; preds = %evbuffer_incref_.exit.i, %.critedge2.i.i.i
  %.0.i.i.i = phi ptr [ %i.cb, %.critedge2.i.i.i ], [ %i.bu, %evbuffer_incref_.exit.i ] ; 6 uses
  %.021.i.i.i = phi ptr [ %.0.i.i.i, %.critedge2.i.i.i ], [ %i.bt, %evbuffer_incref_.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bx = load i64, ptr %i.bw, align 8
  %.not13.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not13.i.i.i, label %bb.r, label %.critedge2.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = and i32 %i.bz, 48
  %.not14.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.r, %.lr.ph.i.i.i
  %i.cb = load ptr, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %evbuffer_free_trailing_empty_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0.i.i.i, %bb.r ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8     ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i.i)
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %evbuffer_free_all_chains.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

evbuffer_free_all_chains.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i
  store ptr null, ptr %.021.i.i.i, align 8
  br label %evbuffer_free_trailing_empty_chains.exit.i.i

evbuffer_free_trailing_empty_chains.exit.i.i:     ; preds = %.critedge2.i.i.i, %evbuffer_free_all_chains.exit.i.i.i
  %.018.i.i.i = phi ptr [ %.021.i.i.i, %evbuffer_free_all_chains.exit.i.i.i ], [ %.0.i.i.i, %.critedge2.i.i.i ] ; 2 uses
  store ptr %i.am, ptr %.018.i.i.i, align 8
  %i.cd = load i64, ptr %i.bn, align 8
  %.not.i34.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i34.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %evbuffer_free_trailing_empty_chains.exit.i.i
  store ptr %.018.i.i.i, ptr %i.af, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %evbuffer_free_trailing_empty_chains.exit.i.i
  store ptr %i.am, ptr %i.ag, align 8
  br label %evbuffer_chain_insert.exit.i

evbuffer_chain_insert.exit.i:                     ; preds = %bb.t, %bb.q
  %i.ce = load i64, ptr %i.bn, align 8
  %i.cf = load i64, ptr %i.q, align 8
  %i.cg = add i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.q, align 8
  br label %bb.u

bb.u:                                             ; preds = %evbuffer_chain_insert.exit.i, %bb.l, %bb.k
  %.0.i = load ptr, ptr %.041.i, align 8          ; 2 uses
  %.not.i76 = icmp eq ptr %.0.i, null
  br i1 %.not.i76, label %APPEND_CHAIN_MULTICAST.exit, label %bb.k, !llvm.loop !29

APPEND_CHAIN_MULTICAST.exit:                      ; preds = %bb.u, %bb.j, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = add i64 %i.ci, %i.p
  store i64 %i.cj, ptr %i.ch, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e, %APPEND_CHAIN_MULTICAST.exit
  %.061 = phi i32 [ 0, %bb.e ], [ 0, %APPEND_CHAIN_MULTICAST.exit ], [ -1, %bb.f ], [ -1, %bb.g ]
  %i.ck = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.cl = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.cm = icmp ne ptr %i.cl, null
  %i.cn = icmp ugt ptr %i.ck, %i.cl
  %or.cond74 = and i1 %i.cn, %i.cm                ; 2 uses
  %.058 = select i1 %or.cond74, ptr %i.cl, ptr %i.ck ; 2 uses
  %.0 = select i1 %or.cond74, ptr %i.ck, ptr %i.cl ; 2 uses
  %i.co = icmp ne ptr %i.ck, %i.cl
  %i.cp = icmp ne ptr %.0, null
  %or.cond7 = and i1 %i.co, %i.cp
  br i1 %or.cond7, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cr = tail call i32 %i.cq(i32 noundef 0, ptr noundef nonnull %.0) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v
  %.not71 = icmp eq ptr %.058, null
  br i1 %.not71, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ct = tail call i32 %i.cs(i32 noundef 0, ptr noundef nonnull %.058) #16 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_prepend_buffer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp ne ptr %i.b, null
  %i.f = icmp ne ptr %i.d, null
  %i.g = icmp ugt ptr %i.b, %i.d
  %i.h = and i1 %i.f, %i.g
  %or.cond73 = select i1 %i.e, i1 %i.h, i1 false  ; 2 uses
  %.060 = select i1 %or.cond73, ptr %i.d, ptr %i.b ; 2 uses
  %.059 = select i1 %or.cond73, ptr %i.b, ptr %i.d ; 2 uses
  %.not = icmp eq ptr %.060, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.060) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp ne ptr %i.b, %i.d
  %i.l = icmp ne ptr %.059, null
  %or.cond5 = and i1 %i.k, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %.059) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not69 = icmp eq i64 %i.p, 0
  %i.s = icmp eq ptr %1, %0
  %or.cond74 = or i1 %i.s, %.not69
  br i1 %or.cond74, label %PRESERVE_PINNED.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 2
  %.not70 = icmp eq i8 %i.v, 0
  br i1 %.not70, label %bb.g, label %PRESERVE_PINNED.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 2
  %.not71 = icmp eq i8 %i.y, 0
  br i1 %.not71, label %bb.h, label %PRESERVE_PINNED.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %1, i64 8          ; 7 uses
  %.val.i = load ptr, ptr %i.z, align 8           ; 4 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.n, label %HAS_PINNED_R.exit.i

HAS_PINNED_R.exit.i:                              ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 16
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %HAS_PINNED_R.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 16
  %.not36.i = icmp eq i32 %i.ai, 0
  %spec.select.i = select i1 %.not36.i, ptr %i.af, ptr %i.ae ; 2 uses
  %i.aj = load ptr, ptr %spec.select.i, align 8   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 5 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 4 uses
  %.not37.i = icmp eq i64 %i.al, 0
  br i1 %.not37.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ugt i64 %i.al, 9223372036854775759
  br i1 %i.am, label %PRESERVE_PINNED.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nuw nsw i64 %i.al, 48               ; 2 uses
  %i.ao = icmp samesign ult i64 %i.al, 4611686018427387855
  br i1 %i.ao, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %bb.k, %.preheader.i.i
  %.0.i.i = phi i64 [ %i.aq, %.preheader.i.i ], [ 1024, %bb.k ] ; 3 uses
  %i.ap = icmp ult i64 %.0.i.i, %i.an
  %i.aq = shl nuw nsw i64 %.0.i.i, 1
  br i1 %i.ap, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.k
  %.1.i.i = phi i64 [ %i.an, %bb.k ], [ %.0.i.i, %.preheader.i.i ] ; 2 uses
  %i.ar = tail call ptr @event_mm_malloc_(i64 noundef %.1.i.i) #16 ; 9 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %PRESERVE_PINNED.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i8 0, i64 40, i1 false)
  %i.at = add i64 %.1.i.i, -48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  store i32 1, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  %i.bd = load i64, ptr %i.ak, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 1 %i.bc, i64 %i.bd, i1 false)
  %i.be = load i64, ptr %i.ak, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.ad, align 8
  store ptr %i.ar, ptr %i.bg, align 8
  store ptr %i.ar, ptr %i.z, align 8
  %i.bh = load i64, ptr %i.ak, align 8
  %i.bi = load i64, ptr %i.ba, align 8
  %i.bj = add i64 %i.bi, %i.bh
  store i64 %i.bj, ptr %i.ba, align 8
  store i64 0, ptr %i.ak, align 8
  br label %bb.n
end_hunk_0
