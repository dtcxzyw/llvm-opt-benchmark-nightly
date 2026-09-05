Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/adig?download=true
inline.NumInlined: 39
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %.0.i28 = phi ptr [ %i.de, %bb.ay ], [ %i.cq, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 296), align 8, !tbaa !25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %i.df = phi i32 [ %.pre.i, %bb.az ], [ %i.db, %bb.aw ]
  %.115.i = phi ptr [ %.014.i, %bb.az ], [ null, %bb.aw ] ; 4 uses
  %.1.i = phi ptr [ %.0.i28, %bb.az ], [ %i.cq, %bb.aw ]
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 292), align 4, !tbaa !42
  %i.di = call i32 @ares_dns_record_query_add(ptr noundef %i.dg, ptr noundef %.1.i, i32 noundef %i.df, i32 noundef %i.dh) #13 ; 2 uses
  %.not28.i = icmp eq i32 %i.di, 0
  br i1 %.not28.i, label %bb.bb, label %enqueue_query.exit

bb.bb:                                            ; preds = %bb.ba
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 60), align 4, !tbaa !22
  %.not29.i = icmp eq i32 %i.dj, 0
  br i1 %.not29.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.dl = call i32 @ares_dns_record_rr_add(ptr noundef nonnull %i.b, ptr noundef %i.dk, i32 noundef 3, ptr noundef nonnull @.str.66, i32 noundef 41, i32 noundef 1, i32 noundef 0) #13 ; 2 uses
  %.not30.i = icmp eq i32 %i.dl, 0
  br i1 %.not30.i, label %bb.bd, label %enqueue_query.exit

bb.bd:                                            ; preds = %bb.bc
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.dn = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 64), align 8, !tbaa !40
  %i.do = trunc i64 %i.dn to i16
  %i.dp = call i32 @ares_dns_rr_set_u16(ptr noundef %i.dm, i32 noundef 4101, i16 noundef zeroext %i.do) #13 ; 0 uses
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.dr = call i32 @ares_dns_rr_set_u8(ptr noundef %i.dq, i32 noundef 4103, i8 noundef zeroext 0) #13 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 104), align 8, !tbaa !67
  %.not31.i = icmp eq i32 %i.ds, 0
  br i1 %.not31.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !62
  call fastcc void @print_record(ptr noundef %i.dt)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 40), align 8, !tbaa !52
  %.not32.i = icmp eq i32 %i.du, 0
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  br i1 %.not32.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dw = call i32 @ares_search_dnsrec(ptr noundef %i.cp, ptr noundef %i.dv, ptr noundef nonnull @callback, ptr noundef null) #13
  br label %enqueue_query.exit

bb.bi:                                            ; preds = %bb.bg
  %i.dx = call i32 @ares_send_dnsrec(ptr noundef %i.cp, ptr noundef %i.dv, ptr noundef nonnull @callback, ptr noundef null, ptr noundef null) #13
  br label %enqueue_query.exit

enqueue_query.exit:                               ; preds = %bb.av, %bb.ba, %bb.bc, %bb.bh, %bb.bi
  %.019.i = phi i32 [ %i.da, %bb.av ], [ %i.di, %bb.ba ], [ %i.dl, %bb.bc ], [ %i.dw, %bb.bh ], [ %i.dx, %bb.bi ] ; 2 uses
  %.2.i = phi ptr [ null, %bb.av ], [ %.115.i, %bb.ba ], [ %.115.i, %bb.bc ], [ %.115.i, %bb.bh ], [ %.115.i, %bb.bi ]
  call void @ares_free_string(ptr noundef %.2.i) #13
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !62
  call void @ares_dns_record_destroy(ptr noundef %i.dy) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not25 = icmp eq i32 %.019.i, 0
  br i1 %.not25, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %enqueue_query.exit
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 304), align 8, !tbaa !27
  %i.eb = call ptr @ares_strerror(i32 noundef %.019.i) #13
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.9, ptr noundef %i.ea, ptr noundef %i.eb) #14 ; 0 uses
  br label %bb.bn

bb.bk:                                            ; preds = %enqueue_query.exit
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !35  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ee = call i32 @ares_fds(ptr noundef %i.ed, ptr noundef nonnull %2, ptr noundef nonnull %3) #13 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %event_loop.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk, %.preheader.preheader.i
  %i.eg = phi i32 [ %i.ep, %.preheader.preheader.i ], [ %i.ee, %bb.bk ]
  %i.eh = call ptr @ares_timeout(ptr noundef %i.ed, ptr noundef null, ptr noundef nonnull %4) #13 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %event_loop.exit, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph
  %i.ej = call i32 @select(i32 noundef %i.eg, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.eh) #13
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.bm, label %.preheader.preheader.i

bb.bm:                                            ; preds = %bb.bl
  %i.el = tail call ptr @__errno_location() #15
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23 ; 2 uses
  switch i32 %i.em, label %.thread33.i [
    i32 11, label %.preheader.preheader.i
    i32 4, label %.preheader.preheader.i
  ]

.thread33.i:                                      ; preds = %bb.bm
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.eo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.175, i32 noundef %i.em) #14 ; 0 uses
  br label %event_loop.exit

.preheader.preheader.i:                           ; preds = %bb.bm, %bb.bm, %bb.bl
  call void @ares_process(ptr noundef %i.ed, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ep = call i32 @ares_fds(ptr noundef %i.ed, ptr noundef nonnull %2, ptr noundef nonnull %3) #13 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %event_loop.exit, label %.lr.ph

event_loop.exit:                                  ; preds = %.lr.ph, %.preheader.preheader.i, %bb.bk, %.thread33.i
  %.4.i = phi i32 [ 1, %.thread33.i ], [ 0, %bb.bk ], [ 0, %.preheader.preheader.i ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bn

bb.bn:                                            ; preds = %event_loop.exit, %bb.bj, %bb.as, %bb.ap, %bb.s, %bb.q, %bb.d
  %.0 = phi i32 [ 0, %bb.q ], [ 1, %bb.s ], [ 1, %bb.ap ], [ 1, %bb.as ], [ 1, %bb.bj ], [ %.4.i, %event_loop.exit ], [ 1, %bb.d ]
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 312), align 8, !tbaa !28
  call void @free(ptr noundef %i.er) #13
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 304), align 8, !tbaa !27
  call void @free(ptr noundef %i.es) #13
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 32), align 8, !tbaa !58
  call void @free(ptr noundef %i.et) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) @global_config, i8 0, i64 576, i1 false)
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !35
  call void @ares_destroy(ptr noundef %i.eu) #13
  call void @ares_library_cleanup() #13
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.b
  %.011 = phi i32 [ 1, %bb.b ], [ %.0, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  ret i32 %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ares_library_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @ares_strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @read_cmdline(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %2, %0
  br i1 %i.a, label %.preheader.lr.ph, label %.critedge160.thread

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = add nsw i32 %0, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge160
  %.0118229 = phi i32 [ %2, %.preheader.lr.ph ], [ %i.cu, %.critedge160 ] ; 7 uses
  %.phi.trans.insert = sext i32 %.0118229 to i64
  %.phi.trans.insert269 = getelementptr inbounds [8 x i8], ptr %1, i64 %.phi.trans.insert
  %i.c = sext i32 %.0118229 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %bb.ao, %.preheader
  %.0117228 = phi i64 [ 0, %.preheader ], [ %i.cp, %bb.ao ] ; 5 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr @dig_options, i64 %.0117228 ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 6 uses
  %.not141 = icmp eq ptr %i.g, null               ; 5 uses
  br i1 %.not141, label %bb.c, label %.critedge6

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 1, %.0117228
  %i.i = and i64 %i.h, 1644955688766
  %.not142.not = icmp eq i64 %i.i, 0
  br i1 %.not142.not, label %.critedge6, label %.critedge

.critedge6:                                       ; preds = %bb.b, %bb.c
  %3 = add i64 %.0117228, -41
  %.not143 = icmp ult i64 %3, -2                  ; 3 uses
  br i1 %.not143, label %bb.d, label %.critedge6._crit_edge

.critedge6._crit_edge:                            ; preds = %.critedge6
  %.pre = load ptr, ptr %.phi.trans.insert269, align 8, !tbaa !30
  br label %bb.e

bb.d:                                             ; preds = %.critedge6
  %i.j = load i8, ptr %i.e, align 8, !tbaa !70
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31
  %.not144 = icmp eq i8 %i.j, %i.l
  br i1 %.not144, label %bb.e, label %bb.ao

bb.e:                                             ; preds = %.critedge6._crit_edge, %bb.d
  %i.m = phi ptr [ %.pre, %.critedge6._crit_edge ], [ %i.k, %bb.d ]
  %spec.select.idx = zext i1 %.not143 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.idx ; 2 uses
  %i.n = tail call i32 @ares_streq_max(ptr noundef %spec.select, ptr noundef nonnull @.str.10, i64 noundef 2) #13
  %.not146 = icmp eq i32 %i.n, 0                  ; 2 uses
  %.1109.idx = select i1 %.not146, i64 0, i64 2
  %.1109 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.1109.idx ; 6 uses
  %i.o = shl nuw i64 1, %.0117228                 ; 3 uses
  %i.p = and i64 %i.o, 2125849354239
  %.not147.not = icmp eq i64 %i.p, 0              ; 2 uses
  br i1 %.not147.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !71
  %i.s = sext i8 %i.r to i32
  %i.t = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1109, i32 noundef %i.s) #16 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call i64 @ares_strlen(ptr noundef nonnull %.1109) #13
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %.1109 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aa = tail call i64 @ares_strlen(ptr noundef %.1109) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1111 = phi ptr [ null, %bb.i ], [ null, %bb.g ], [ %i.z, %bb.h ]
  %.1107 = phi i64 [ %i.aa, %bb.i ], [ %i.v, %bb.g ], [ %i.y, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 11 uses
  br i1 %.not143, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 2 uses
  %i.ad = tail call i32 @ares_streq_max(ptr noundef %.1109, ptr noundef %i.ac, i64 noundef %.1107) #13
  %.not149 = icmp eq i32 %i.ad, 0
  br i1 %.not149, label %bb.ao, label %.thread

.thread:                                          ; preds = %bb.k
  %i.ae = and i64 %i.o, 1576093540114
  %.not150.not162 = icmp ne i64 %i.ae, 0
  %brmerge = or i1 %.not150.not162, %.not147.not
  br i1 %brmerge, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.af = icmp eq i32 %.0118229, %i.b
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load i8, ptr %i.e, align 8, !tbaa !70
  %i.ah = sext i8 %i.ag to i32
  %i.ai = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.11, i32 noundef %i.ah, ptr noundef %i.ac) #13 ; 0 uses
  br label %.critedge160.thread

bb.n:                                             ; preds = %bb.l
  %i.aj = add nsw i32 %.0118229, 1                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.thread, %bb.n
  %.2120 = phi i32 [ %i.aj, %bb.n ], [ %.0118229, %.thread ], [ %.0118229, %bb.j ]
  %.3113 = phi ptr [ %i.am, %bb.n ], [ %.1111, %.thread ], [ %.1109, %bb.j ] ; 9 uses
  %.0114303 = zext i1 %.not146 to i32             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !73
  switch i32 %i.ao, label %.critedge160 [
    i32 0, label %bb.o
    i32 1, label %bb.q
    i32 2, label %bb.x
    i32 3, label %bb.ae
    i32 4, label %bb.al
  ]

bb.o:                                             ; preds = %.loopexit
  br i1 %.not141, label %.thread167, label %bb.p

.thread167:                                       ; preds = %bb.o
  %i.ap = load i8, ptr %i.e, align 8, !tbaa !70
  %i.aq = sext i8 %i.ap to i32
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.as = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.aq, ptr noundef %i.ar) #13 ; 0 uses
  br label %.critedge160.thread

bb.p:                                             ; preds = %bb.o
  store i32 %.0114303, ptr %i.g, align 4, !tbaa !23
  br label %.critedge160

bb.q:                                             ; preds = %.loopexit
  br i1 %.not141, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = load i8, ptr %i.e, align 8, !tbaa !70
  %i.au = sext i8 %i.at to i32
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.aw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.au, ptr noundef %i.av) #13 ; 0 uses
  br label %.critedge160.thread

bb.s:                                             ; preds = %bb.q
  %i.ax = icmp eq ptr %.3113, null
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = load i8, ptr %i.e, align 8, !tbaa !70
  %i.az = sext i8 %i.ay to i32
  %i.ba = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.bb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.az, ptr noundef %i.ba) #13 ; 0 uses
  br label %.critedge160.thread

bb.u:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %.not157 = icmp eq ptr %i.bc, null
  br i1 %.not157, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @free(ptr noundef nonnull %i.bc) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.bd = tail call noalias ptr @strdup(ptr noundef nonnull %.3113) #13
  store ptr %i.bd, ptr %i.g, align 8, !tbaa !30
  br label %.critedge160

bb.x:                                             ; preds = %.loopexit
  br i1 %.not141, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.be = load i8, ptr %i.e, align 8, !tbaa !70
  %i.bf = sext i8 %i.be to i32
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.bh = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.bf, ptr noundef %i.bg) #13 ; 0 uses
  br label %.critedge160.thread

bb.z:                                             ; preds = %bb.x
  %i.bi = icmp eq ptr %.3113, null
  br i1 %i.bi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bj = load i8, ptr %i.e, align 8, !tbaa !70
  %i.bk = sext i8 %i.bj to i32
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.bm = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.bk, ptr noundef %i.bl) #13 ; 0 uses
  br label %.critedge160.thread

bb.ab:                                            ; preds = %bb.z
  %i.bn = tail call i32 @ares_str_isnum(ptr noundef nonnull %.3113) #13
  %.not156 = icmp eq i32 %i.bn, 0
  br i1 %.not156, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bo = load i8, ptr %i.e, align 8, !tbaa !70
  %i.bp = sext i8 %i.bo to i32
  %i.bq = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.br = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %i.bp, ptr noundef %i.bq) #13 ; 0 uses
  br label %.critedge160.thread

bb.ad:                                            ; preds = %bb.ab
  %i.bs = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %.3113, ptr noundef null, i32 noundef 10) #13
  store i64 %i.bs, ptr %i.g, align 8, !tbaa !26
  br label %.critedge160

bb.ae:                                            ; preds = %.loopexit
  br i1 %.not141, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i8, ptr %i.e, align 8, !tbaa !70
  %i.bu = sext i8 %i.bt to i32
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.bw = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %i.bu, ptr noundef %i.bv) #13 ; 0 uses
  br label %.critedge160.thread

bb.ag:                                            ; preds = %bb.ae
  %i.bx = icmp eq ptr %.3113, null
  br i1 %i.bx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.by = load i8, ptr %i.e, align 8, !tbaa !70
  %i.bz = sext i8 %i.by to i32
  %i.ca = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.cb = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %i.bz, ptr noundef %i.ca) #13 ; 0 uses
  br label %.critedge160.thread

bb.ai:                                            ; preds = %bb.ag
  %i.cc = tail call i32 @ares_str_isnum(ptr noundef nonnull %.3113) #13
  %.not155 = icmp eq i32 %i.cc, 0
  br i1 %.not155, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cd = load i8, ptr %i.e, align 8, !tbaa !70
  %i.ce = sext i8 %i.cd to i32
  %i.cf = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.cg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %i.ce, ptr noundef %i.cf) #13 ; 0 uses
  br label %.critedge160.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ch = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %.3113, ptr noundef null, i32 noundef 10) #13
  %i.ci = trunc i64 %i.ch to i16
  store i16 %i.ci, ptr %i.g, align 2, !tbaa !74
  br label %.critedge160

bb.al:                                            ; preds = %.loopexit
  %i.cj = and i64 %i.o, 1644955688766
  %.not153 = icmp eq i64 %i.cj, 0
  br i1 %.not153, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), ptr noundef nonnull align 1 dereferenceable(17) @.str.15, i64 17, i1 false)
  br label %.critedge160.thread

bb.an:                                            ; preds = %bb.al
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !75
  %i.cm = load i8, ptr %i.e, align 8, !tbaa !70
  %i.cn = load ptr, ptr %i.ab, align 8, !tbaa !72
  %i.co = tail call i32 %i.cl(i8 noundef signext %i.cm, ptr noundef %i.cn, i32 noundef %.0114303, ptr noundef %.3113) #13
  %.not154 = icmp eq i32 %i.co, 0
  br i1 %.not154, label %.critedge160.thread, label %.critedge160

bb.ao:                                            ; preds = %bb.d, %bb.k
  %i.cp = add i64 %.0117228, 1
  br label %bb.b

.critedge:                                        ; preds = %bb.c
  %i.cq = sext i32 %.0118229 to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.ct = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.16, ptr noundef %i.cs) #13 ; 0 uses
  br label %.critedge160.thread

.critedge160:                                     ; preds = %bb.ak, %bb.ad, %bb.w, %bb.p, %bb.an, %.loopexit
  %i.cu = add nsw i32 %.2120, 1                   ; 2 uses
  %i.cv = icmp slt i32 %i.cu, %0
  br i1 %i.cv, label %.preheader, label %.critedge160.thread

.critedge160.thread:                              ; preds = %.critedge160, %bb.an, %bb.a, %bb.aj, %bb.ah, %bb.af, %bb.ac, %bb.aa, %bb.y, %bb.t, %bb.r, %bb.am, %.thread167, %bb.m, %.critedge
  %.9 = phi i32 [ 1, %bb.a ], [ 0, %.critedge ], [ 0, %bb.m ], [ 0, %.thread167 ], [ 0, %bb.am ], [ 0, %bb.aj ], [ 0, %bb.r ], [ 0, %bb.t ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 1, %.critedge160 ], [ 0, %bb.an ]
  ret i32 %.9
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @print_help() unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @ares_version(ptr noundef null) #13
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef %i.a) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.64) ; 0 uses
  %puts.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.65) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %puts.3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.67) ; 0 uses
  %puts.4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.68) ; 0 uses
  %puts.5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.69) ; 0 uses
  %puts.6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.70) ; 0 uses
  %puts.7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.71) ; 0 uses
  %puts.8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.72) ; 0 uses
  %putchar5 = tail call i32 @putchar(i32 10)      ; 0 uses
  %puts.10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.73) ; 0 uses
  %puts.11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.74) ; 0 uses
  %puts.12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.75) ; 0 uses
  %puts.13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.76) ; 0 uses
  %puts.14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.77) ; 0 uses
  %puts.15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.78) ; 0 uses
  %puts.16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.79) ; 0 uses
  %puts.17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.80) ; 0 uses
  %puts.18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.81) ; 0 uses
  %puts.19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.82) ; 0 uses
  %puts.20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.83) ; 0 uses
  %puts.21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.84) ; 0 uses
  %puts.22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.85) ; 0 uses
  %putchar6 = tail call i32 @putchar(i32 10)      ; 0 uses
  %puts.24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.86) ; 0 uses
  %puts.25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.87) ; 0 uses
  %puts.26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.88) ; 0 uses
  %puts.27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.89) ; 0 uses
  %puts.28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.90) ; 0 uses
  %puts.29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.91) ; 0 uses
  %puts.30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.92) ; 0 uses
  %puts.31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.93) ; 0 uses
  %puts.32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.94) ; 0 uses
  %puts.33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.95) ; 0 uses
  %puts.34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.96) ; 0 uses
  %puts.35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.97) ; 0 uses
  %puts.36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.98) ; 0 uses
  %puts.37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.99) ; 0 uses
  %puts.38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.100) ; 0 uses
  %puts.39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.101) ; 0 uses
  %puts.40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.102) ; 0 uses
  %puts.41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.103) ; 0 uses
  %puts.42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.104) ; 0 uses
  %puts.43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.105) ; 0 uses
  %puts.44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.106) ; 0 uses
  %puts.45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.107) ; 0 uses
  %puts.46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.108) ; 0 uses
  %puts.47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.109) ; 0 uses
  %puts.48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.110) ; 0 uses
  %puts.49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.111) ; 0 uses
  %puts.50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.112) ; 0 uses
  %puts.51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.113) ; 0 uses
  %puts.52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.114) ; 0 uses
  %puts.53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.115) ; 0 uses
  %puts.54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.116) ; 0 uses
  %puts.55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.117) ; 0 uses
  %puts.56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.118) ; 0 uses
  %puts.57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.119) ; 0 uses
  %puts.58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.120) ; 0 uses
  %puts.59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.121) ; 0 uses
  %puts.60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.122) ; 0 uses
  %puts.61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.123) ; 0 uses
  %puts.62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.124) ; 0 uses
  %puts.63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.125) ; 0 uses
  %puts.64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.126) ; 0 uses
  %puts.65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.127) ; 0 uses
  %puts.66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.128) ; 0 uses
  %putchar7 = tail call i32 @putchar(i32 10)      ; 0 uses
  ret void
}

declare i32 @ares_init_options(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ares_set_servers_ports_csv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ares_version(ptr noundef) local_unnamed_addr #2

declare void @ares_destroy(ptr noundef) local_unnamed_addr #2

declare void @ares_library_cleanup() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ares_streq_max(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @ares_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i32 @ares_str_isnum(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opt_class_cb(i8 signext %0, ptr nofree readnone captures(none) %1, i32 %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_class_fromstr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_config, i64 292), ptr noundef %3) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.57, ptr noundef %3) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opt_type_cb(i8 signext %0, ptr nofree readnone captures(none) %1, i32 %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @ares_dns_rec_type_fromstr(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_config, i64 296), ptr noundef %3) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @global_config, i64 320), i64 noundef 256, ptr noundef nonnull @.str.58, ptr noundef %3) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @opt_ptr_cb(i8 signext %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  store i32 12, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 296), align 8, !tbaa !25
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 304), align 8, !tbaa !27
  tail call void @ares_free(ptr noundef %i.a) #13
  %i.b = tail call noalias ptr @strdup(ptr noundef %3) #13
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 304), align 8, !tbaa !27
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @opt_all_cb(i8 signext %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 96), align 8, !tbaa !29
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 100), align 4, !tbaa !32
  %i.a = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.b, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 108), align 4, !tbaa !23
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 124), align 4, !tbaa !24
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @opt_edns_cb(i8 signext %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @global_config, i64 60), align 4, !tbaa !22
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
end_hunk_0
