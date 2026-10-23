Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/9p?download=true
inline.NumInlined: 372
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@v9fs_attach:bb.a
  br i1 %.not5.i57, label %clunk_fid.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 32768
  %.not6.i58 = icmp eq i32 %i.ct, 0
  br i1 %.not6.i58, label %clunk_fid.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = zext i16 %i.cj to i32
  %i.cv = zext i8 %i.ck to i32
  %i.cw = zext i8 %i.cl to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.104, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cn, i64 noundef %i.cp) #23
  br label %clunk_fid.exit

clunk_fid.exit:                                   ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.n, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.q
  %.0 = phi i64 [ %i.bs, %bb.q ], [ -22, %bb.h ], [ -22, %bb.k ], [ -22, %bb.n ], [ %i.bw, %bb.u ], [ -22, %bb.g ], [ -22, %bb.j ], [ -22, %bb.m ], [ %i.bw, %bb.t ], [ %i.ch, %bb.v ], [ %i.ch, %bb.w ], [ %i.ch, %bb.x ], [ %i.ch, %bb.y ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.y, i64 260 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %.not.i59 = icmp eq i32 %i.cy, 0
  br i1 %.not.i59, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %clunk_fid.exit
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.aa:                                            ; preds = %clunk_fid.exit
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4
  %.not10.i = icmp eq i32 %i.cz, 0
  br i1 %.not10.i, label %bb.ab, label %put_fid.exit

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  %i.db = load i8, ptr %i.da, align 8, !range !14, !noundef !15
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ac, label %put_fid.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 7368
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = icmp eq i32 %i.de, %i.dh
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.dj) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %i.y) ; 0 uses
  br label %put_fid.exit

put_fid.exit:                                     ; preds = %bb.ae, %bb.ab, %bb.aa, %trace_v9fs_attach.exit, %bb.a
  %.1 = phi i64 [ %i.h, %bb.a ], [ -22, %trace_v9fs_attach.exit ], [ %.0, %bb.aa ], [ %.0, %bb.ab ], [ %.0, %bb.ae ]
  call void @pdu_complete(ptr noundef nonnull %0, i64 noundef %.1)
  call void @v9fs_string_free(ptr noundef nonnull %1) #23
  call void @v9fs_string_free(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_flush(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2, !annotation !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.105, ptr noundef nonnull %i.a) ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 4              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.i = load i8, ptr %i.h, align 2
  %i.j = load i16, ptr %i.a, align 2              ; 4 uses
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_v9fs_flush.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = load i16, ptr @_TRACE_V9FS_FLUSH_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.l, 0
  br i1 %.not3.i, label %trace_v9fs_flush.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not4.i = icmp eq i32 %i.n, 0
  br i1 %.not4.i, label %trace_v9fs_flush.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = zext i16 %i.g to i32
  %i.p = zext i8 %i.i to i32
  %i.q = sext i16 %i.j to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.107, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q) #23
  %.pre = load i16, ptr %i.f, align 4
  %.pre30 = load i16, ptr %i.a, align 2
  br label %trace_v9fs_flush.exit

trace_v9fs_flush.exit:                            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.r = phi i16 [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %.pre30, %bb.e ]
  %i.s = phi i16 [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.pre, %bb.e ]
  %i.t = zext i16 %i.s to i32
  %i.u = sext i16 %i.r to i32                     ; 2 uses
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %trace_v9fs_flush.exit
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.106) #23
  br label %.thread

bb.g:                                             ; preds = %trace_v9fs_flush.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.026 = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not27 = icmp eq ptr %.026, null
  br i1 %.not27, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.028 = phi ptr [ %.0, %bb.h ], [ %.026, %bb.g ] ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.028, i64 4
  %i.y = load i16, ptr %i.x, align 4
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp eq i32 %i.z, %i.u
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.028, i64 32
  %.0 = load ptr, ptr %i.ab, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !25

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.028, i64 7 ; 2 uses
  store i8 1, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  call void @qemu_co_queue_wait_impl(ptr noundef nonnull %i.ad, ptr noundef null, i32 noundef 0) #23
  %i.ae = call zeroext i1 @qemu_co_queue_next(ptr noundef nonnull %i.ad) #23
  br i1 %i.ae, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.028, i64 32 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i22 = icmp eq ptr %i.ai, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.028, i64 40 ; 2 uses
  %.pre21.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  br i1 %.not.i22, label %._crit_edge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %.pre21.i, ptr %i.aj, align 8
  %.pre.i = load ptr, ptr %i.ah, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %i.ak = phi ptr [ %.pre.i, %bb.k ], [ null, %bb.j ]
  store ptr %i.ak, ptr %.pre21.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.ag, align 8            ; 3 uses
  store ptr %i.al, ptr %i.ah, align 8
  %.not20.i = icmp eq ptr %i.al, null
  br i1 %.not20.i, label %pdu_free.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr %i.ah, ptr %i.am, align 8
  br label %pdu_free.exit

pdu_free.exit:                                    ; preds = %._crit_edge.i, %bb.l
  store ptr %.028, ptr %i.ag, align 8
  store ptr %i.ag, ptr %.phi.trans.insert.i, align 8
  br label %.thread

.thread:                                          ; preds = %bb.h, %pdu_free.exit, %bb.i, %bb.f, %bb.g, %bb.a
  %.sink = phi i64 [ %i.d, %bb.a ], [ 7, %pdu_free.exit ], [ 7, %bb.g ], [ 7, %bb.f ], [ 7, %bb.i ], [ 7, %bb.h ]
  call void @pdu_complete(ptr noundef %0, i64 noundef %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_walk(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.V9fsPath, align 8           ; 14 uses
  %2 = alloca %struct.V9fsPath, align 8           ; 10 uses
  %i.a = alloca i16, align 2                      ; 14 uses
  %3 = alloca %struct.stat, align 8               ; 13 uses
  %4 = alloca %struct.stat, align 8               ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %5 = alloca %struct.V9fsQID, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !13
  %i.g = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) ; 3 uses
  %i.h = and i64 %i.g, 2147483648
  %.not167 = icmp eq i64 %i.h, 0
  br i1 %.not167, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext = shl i64 %i.g, 32
  %i.i = ashr exact i64 %sext, 32
  br label %bb.bb

bb.c:                                             ; preds = %bb.a
  %i.j = and i64 %i.g, 2147483647
  %i.k = add nuw nsw i64 %i.j, 7
  %i.l = load i16, ptr %i.a, align 2              ; 4 uses
  %i.m = icmp ugt i16 %i.l, 16
  br i1 %i.m, label %name_is_illegal.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %bb.i, label %p9array_new_V9fsPath.exit

p9array_new_V9fsPath.exit:                        ; preds = %bb.d
  %i.n = zext nneg i16 %i.l to i64
  call void @p9array_new_V9fsString(ptr noundef nonnull %i.d, i64 noundef %i.n) #23
  %i.o = load i16, ptr %i.a, align 2
  %i.p = zext i16 %i.o to i64
  %i.q = call noalias ptr @g_malloc0_n(i64 noundef %i.p, i64 noundef 16) #30 ; 4 uses
  %i.r = load i16, ptr %i.a, align 2
  %i.s = zext i16 %i.r to i64
  %i.t = call noalias ptr @g_malloc0_n(i64 noundef %i.s, i64 noundef 144) #30 ; 4 uses
  %i.u = load i16, ptr %i.a, align 2
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = or disjoint i64 %i.w, 8
  %i.y = call noalias ptr @g_malloc0(i64 noundef %i.x) #24 ; 2 uses
  store i64 %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load i16, ptr %i.a, align 2
  %.not255 = icmp eq i16 %i.aa, 0
  br i1 %.not255, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %p9array_new_V9fsPath.exit
  %.pre = load ptr, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ab = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.ag, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.0133227 = phi i64 [ %i.k, %.lr.ph.preheader ], [ %i.an, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef %.0133227, ptr noundef nonnull @.str.23, ptr noundef %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %name_is_illegal.exit.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i, label %name_is_illegal.exit.thread.loopexit, label %name_is_illegal.exit

name_is_illegal.exit:                             ; preds = %bb.e
  %i.al = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.aj, i32 noundef 47) #28
  %.not217 = icmp eq ptr %i.al, null
  br i1 %.not217, label %bb.f, label %name_is_illegal.exit.thread.loopexit

bb.f:                                             ; preds = %name_is_illegal.exit
  %i.am = and i64 %i.ad, 2147483647
  %i.an = add i64 %i.am, %.0133227
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load i16, ptr %i.a, align 2             ; 2 uses
  %i.ap = zext i16 %i.ao to i64
  %i.aq = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.ar = zext i16 %i.ao to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %p9array_new_V9fsPath.exit
  %.lcssa.a = phi i64 [ 0, %p9array_new_V9fsPath.exit ], [ %i.ar, %._crit_edge.loopexit ]
  %i.as = load i32, ptr @trace_events_enabled_count, align 4
  %.not156 = icmp eq i32 %i.as, 0
  br i1 %.not156, label %trace_v9fs_walk.exit, label %bb.g, !prof !16

bb.g:                                             ; preds = %._crit_edge
  %i.at = load i16, ptr @_TRACE_V9FS_WALK_DSTATE, align 2
  %.not157 = icmp eq i16 %i.at, 0
  br i1 %.not157, label %trace_v9fs_walk.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.d, align 8
  %i.av = call fastcc ptr @trace_v9fs_walk_wnames(ptr noundef %i.au, i64 noundef %.lcssa.a) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = load i32, ptr %i.b, align 4
  %i.bb = load i32, ptr %i.c, align 4
  %i.bc = load i16, ptr %i.a, align 2
  call fastcc void @trace_v9fs_walk(i16 noundef zeroext %i.ax, i8 noundef zeroext %i.az, i32 noundef %i.ba, i32 noundef %i.bb, i16 noundef zeroext %i.bc, ptr noundef %i.av)
  br label %trace_v9fs_walk.exit

bb.i:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bg = load i8, ptr %i.bf, align 2
  %i.bh = load i32, ptr %i.b, align 4
  %i.bi = load i32, ptr %i.c, align 4
  %i.bj = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i177 = icmp eq i32 %i.bj, 0
  br i1 %.not.i177, label %trace_v9fs_walk.exit, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.bk = load i16, ptr @_TRACE_V9FS_WALK_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.bk, 0
  br i1 %.not5.i, label %trace_v9fs_walk.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr @qemu_loglevel, align 4
  %i.bm = and i32 %i.bl, 32768
  %.not6.i = icmp eq i32 %i.bm, 0
  br i1 %.not6.i, label %trace_v9fs_walk.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = zext i16 %i.be to i32
  %i.bo = zext i8 %i.bg to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.112, i32 noundef %i.bn, i32 noundef %i.bo, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef 0, ptr noundef nonnull @.str.109) #23
  br label %trace_v9fs_walk.exit

trace_v9fs_walk.exit:                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %._crit_edge, %bb.g, %bb.h
  %.0213 = phi ptr [ %i.q, %bb.h ], [ %i.q, %._crit_edge ], [ %i.q, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 5 uses
  %.0209 = phi ptr [ %i.z, %bb.h ], [ %i.z, %._crit_edge ], [ %i.z, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 4 uses
  %.0205 = phi ptr [ %i.t, %bb.h ], [ %i.t, %._crit_edge ], [ %i.t, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 4 uses
  %.0202 = phi ptr [ %i.av, %bb.h ], [ null, %._crit_edge ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ] ; 2 uses
  %i.bp = load i32, ptr %i.b, align 4
  %i.bq = call ptr @get_fid(ptr noundef %0, i32 noundef %i.bp) ; 9 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %trace_v9fs_walk.exit189, label %bb.m

bb.m:                                             ; preds = %trace_v9fs_walk.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  call void @g_free(ptr noundef null) #23
  %i.bu = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.bu, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.bu to i32
  %i.by = call ptr @g_memdup(ptr noundef %i.bw, i32 noundef %i.bx) #25
  store ptr %i.by, ptr %i.bt, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @g_free(ptr noundef null) #23
  %i.ca = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.ca, ptr %2, align 8
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = trunc i64 %i.ca to i32
  %i.cd = call ptr @g_memdup(ptr noundef %i.cb, i32 noundef %i.cc) #25 ; 4 uses
  store ptr %i.cd, ptr %i.bz, align 8
  %i.ce = call ptr @qemu_coroutine_self() #23
  %i.cf = call ptr @qemu_bh_new_full(ptr noundef nonnull @co_run_in_worker_bh, ptr noundef %i.ce, ptr noundef nonnull @.str.1, ptr noundef null) #23 ; 2 uses
  call void @qemu_bh_schedule(ptr noundef %i.cf) #23
  call void @qemu_coroutine_yield() #23
  call void @qemu_bh_delete(ptr noundef %i.cf) #23
  %i.cg = getelementptr i8, ptr %0, i64 7         ; 3 uses
  %.val172 = load i8, ptr %i.cg, align 1
  %.not158 = icmp eq i8 %.val172, 0
  br i1 %.not158, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.cm = call i32 %i.ck(ptr noundef nonnull %i.cl, ptr noundef nonnull %1, ptr noundef nonnull %4) #23 ; 3 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = tail call ptr @__errno_location() #26
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = sub i32 0, %i.cp                        ; 2 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  %i.cr = load i16, ptr %i.a, align 2             ; 2 uses
  %.not256 = icmp eq i16 %i.cr, 0
  br i1 %.not256, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph231, %bb.x
  %i.cu = phi i16 [ %i.cr, %.lr.ph231 ], [ %i.ev, %bb.x ]
  %indvars.iv265 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next266, %bb.x ] ; 9 uses
  %.0136228 = phi i32 [ %i.cm, %.lr.ph231 ], [ %.1137, %bb.x ]
  %.val171 = load i8, ptr %i.cg, align 1
  %.not159 = icmp eq i8 %.val171, 0
  br i1 %.not159, label %bb.r, label %.loopexit.loopexit

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 7400
  %.val175 = load i64, ptr %3, align 8
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = icmp eq i64 %i.cx, %.val175
  br i1 %i.cy, label %same_stat_id.exit, label %.same_stat_id.exit.thread_crit_edge

.same_stat_id.exit.thread_crit_edge:              ; preds = %bb.r
  %.pre272 = load ptr, ptr %i.d, align 8
  br label %same_stat_id.exit.thread

same_stat_id.exit:                                ; preds = %bb.r
  %.val176 = load i64, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 7408
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = icmp eq i64 %i.da, %.val176
  %.pre273 = load ptr, ptr %i.d, align 8          ; 3 uses
  br i1 %i.db, label %sub_0, label %same_stat_id.exit.thread

sub_0:                                            ; preds = %same_stat_id.exit
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.pre273, i64 %indvars.iv265
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 46, %i.dg
  %.not257 = icmp eq i8 %i.df, 46
  br i1 %.not257, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dj = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dk = zext i8 %i.dj to i32
  %i.dl = sub nsw i32 46, %i.dk
  %.not258 = icmp eq i8 %i.dj, 46
  br i1 %.not258, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nsw i32 0, %i.do
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.dq = phi i32 [ %i.dh, %sub_0 ], [ %i.dl, %sub_1 ], [ %i.dp, %sub_2 ]
  %.not160 = icmp eq i32 %i.dq, 0
  br i1 %.not160, label %bb.x, label %same_stat_id.exit.thread

same_stat_id.exit.thread:                         ; preds = %.same_stat_id.exit.thread_crit_edge, %.tail, %same_stat_id.exit
  %i.dr = phi ptr [ %.pre272, %.same_stat_id.exit.thread_crit_edge ], [ %.pre273, %.tail ], [ %.pre273, %same_stat_id.exit ]
  %i.ds = load ptr, ptr %i.ch, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 288
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %indvars.iv265
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.0209, i64 %indvars.iv265 ; 4 uses
  %i.dz = call i32 %i.du(ptr noundef nonnull %i.cl, ptr noundef nonnull %1, ptr noundef %i.dx, ptr noundef %i.dy) #23
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %same_stat_id.exit.thread
  %i.eb = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.ec = tail call ptr @__errno_location() #26
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = sub i32 0, %i.ed                        ; 2 uses
  br label %.loopexit

bb.t:                                             ; preds = %same_stat_id.exit.thread
  %.val170 = load i8, ptr %i.cg, align 1
  %.not161 = icmp eq i8 %.val170, 0
  br i1 %.not161, label %bb.u, label %.loopexit.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ef = load ptr, ptr %i.ch, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call i32 %i.eh(ptr noundef nonnull %i.cl, ptr noundef %i.dy, ptr noundef nonnull %3) #23 ; 2 uses
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ek = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.el = tail call ptr @__errno_location() #26
  %i.em = load i32, ptr %i.el, align 4
  %i.en = sub i32 0, %i.em                        ; 2 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw [144 x i8], ptr %.0205, i64 %indvars.iv265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.eo, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false)
  %i.ep = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.ep) #23
  store i64 0, ptr %i.ct, align 8
  %i.eq = load i64, ptr %i.dy, align 8            ; 2 uses
  store i64 %i.eq, ptr %1, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = trunc i64 %i.eq to i32
  %i.eu = call ptr @g_memdup(ptr noundef %i.es, i32 noundef %i.et) #25
  store ptr %i.eu, ptr %i.bt, align 8
  %.pre274 = load i16, ptr %i.a, align 2
  br label %bb.x

bb.x:                                             ; preds = %.tail, %bb.w
  %i.ev = phi i16 [ %.pre274, %bb.w ], [ %i.cu, %.tail ] ; 2 uses
  %.1137 = phi i32 [ %i.ei, %bb.w ], [ %.0136228, %.tail ] ; 2 uses
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 3 uses
  %i.ew = zext i16 %i.ev to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next266, %i.ew
  br i1 %i.ex, label %bb.q, label %.loopexit.loopexit, !llvm.loop !27

.loopexit.loopexit:                               ; preds = %bb.x, %bb.q, %bb.t
  %indvars.iv.next266.lcssa.sink = phi i64 [ %indvars.iv265, %bb.q ], [ %indvars.iv265, %bb.t ], [ %indvars.iv.next266, %bb.x ]
  %.2138.ph = phi i32 [ -4, %bb.q ], [ -4, %bb.t ], [ %.1137, %bb.x ]
  %.0134.ph = phi i32 [ -4, %bb.q ], [ -4, %bb.t ], [ 0, %bb.x ]
  %indvars.le = trunc i64 %indvars.iv.next266.lcssa.sink to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.p, %bb.m, %bb.v, %bb.s, %bb.o
  %.2138 = phi i32 [ %i.en, %bb.v ], [ %i.cq, %bb.o ], [ -4, %bb.m ], [ %i.ee, %bb.s ], [ %i.cm, %bb.p ], [ %.2138.ph, %.loopexit.loopexit ] ; 3 uses
  %.0134 = phi i32 [ %i.en, %bb.v ], [ %i.cq, %bb.o ], [ -4, %bb.m ], [ %i.ee, %bb.s ], [ 0, %bb.p ], [ %.0134.ph, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.ek, %bb.v ], [ 0, %bb.o ], [ 0, %bb.m ], [ %i.eb, %bb.s ], [ 0, %bb.p ], [ %indvars.le, %.loopexit.loopexit ] ; 4 uses
  call void @qemu_coroutine_yield() #23
  %i.ey = icmp sgt i32 %.2138, -1
  %i.ez = icmp ne i32 %.1, 0                      ; 2 uses
  %or.cond = or i1 %i.ey, %i.ez
  %i.fa = icmp ne i32 %.2138, -4
  %or.cond3.not = and i1 %i.fa, %or.cond
  br i1 %or.cond3.not, label %bb.y, label %.thread

bb.y:                                             ; preds = %.loopexit
  %i.fb = call fastcc i32 @stat_to_qid(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 5 uses
  %i.fc = icmp sgt i32 %i.fb, -1
  %or.cond5 = or i1 %i.ez, %i.fc
  br i1 %or.cond5, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.fd = or i32 %i.fb, %.0134                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %4, i64 144, i1 false)
  %i.fe = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.fe) #23
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ff, align 8
  %i.fg = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.fg, ptr %1, align 8
  %i.fh = load ptr, ptr %i.bv, align 8
  %i.fi = trunc i64 %i.fg to i32
  %i.fj = call ptr @g_memdup(ptr noundef %i.fh, i32 noundef %i.fi) #25
  store ptr %i.fj, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.cd) #23
  %i.fk = load i64, ptr %i.bs, align 8            ; 2 uses
  store i64 %i.fk, ptr %2, align 8
  %i.fl = load ptr, ptr %i.bv, align 8
  %i.fm = trunc i64 %i.fk to i32
  %i.fn = call ptr @g_memdup(ptr noundef %i.fl, i32 noundef %i.fm) #25 ; 4 uses
  store ptr %i.fn, ptr %i.bz, align 8
  %i.fo = icmp sgt i32 %.1, 0
  br i1 %i.fo, label %.lr.ph247, label %same_stat_id.exit178.thread._crit_edge.thread

.lr.ph247:                                        ; preds = %bb.z
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %.1 to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph247, %bb.ac
  %i.fr = phi i64 [ 0, %.lr.ph247 ], [ %indvars.iv.next269, %bb.ac ] ; 6 uses
  %.1135245 = phi i32 [ %i.fd, %.lr.ph247 ], [ %.2, %bb.ac ] ; 2 uses
  %.1135244 = phi i32 [ %i.fb, %.lr.ph247 ], [ %.4, %bb.ac ]
  %6 = phi ptr [ %i.fn, %.lr.ph247 ], [ %i.hb, %bb.ac ] ; 3 uses
  %i.fs = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 7400
  %.val173 = load i64, ptr %3, align 8
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = icmp eq i64 %i.fu, %.val173
  br i1 %i.fv, label %same_stat_id.exit178, label %same_stat_id.exit178.thread

same_stat_id.exit178:                             ; preds = %bb.aa
  %.val174 = load i64, ptr %i.fp, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 7408
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = icmp eq i64 %i.fx, %.val174
  br i1 %i.fy, label %sub_0219, label %same_stat_id.exit178.thread

sub_0219:                                         ; preds = %same_stat_id.exit178
  %i.fz = load ptr, ptr %i.d, align 8
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8            ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 1             ; 2 uses
  %i.ge = zext i8 %i.gd to i32
  %i.gf = sub nsw i32 46, %i.ge
  %.not259 = icmp eq i8 %i.gd, 46
  br i1 %.not259, label %sub_1220, label %.tail218

sub_1220:                                         ; preds = %sub_0219
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gh = load i8, ptr %i.gg, align 1             ; 2 uses
  %i.gi = zext i8 %i.gh to i32
  %i.gj = sub nsw i32 46, %i.gi
  %.not260 = icmp eq i8 %i.gh, 46
  br i1 %.not260, label %sub_2221, label %.tail218

sub_2221:                                         ; preds = %sub_1220
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i32
  %i.gn = sub nsw i32 0, %i.gm
  br label %.tail218

.tail218:                                         ; preds = %sub_0219, %sub_1220, %sub_2221
  %i.go = phi i32 [ %i.gf, %sub_0219 ], [ %i.gj, %sub_1220 ], [ %i.gn, %sub_2221 ]
  %.not163 = icmp eq i32 %i.go, 0
  br i1 %.not163, label %bb.ac, label %same_stat_id.exit178.thread

same_stat_id.exit178.thread:                      ; preds = %bb.aa, %.tail218, %same_stat_id.exit178
  %i.gp = getelementptr inbounds nuw [144 x i8], ptr %.0205, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(144) %i.gp, i64 144, i1 false)
  %i.gq = call fastcc i32 @stat_to_qid(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %5) ; 3 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %same_stat_id.exit178.thread._crit_edge.split.loop.exit313, label %bb.ab

bb.ab:                                            ; preds = %same_stat_id.exit178.thread
  %i.gs = or i32 %i.gq, %.1135245
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.0209, i64 %i.fr ; 2 uses
  call void @g_free(ptr noundef %6) #23
  %i.gu = load i64, ptr %i.gt, align 8            ; 3 uses
  store i64 %i.gu, ptr %2, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gy = call ptr @g_memdup(ptr noundef %i.gw, i32 noundef %i.gx) #25 ; 3 uses
  store ptr %i.gy, ptr %i.bz, align 8
  %i.gz = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.gz) #23
  store i64 0, ptr %i.fq, align 8
  store i64 %i.gu, ptr %1, align 8
  %i.ha = call ptr @g_memdup(ptr noundef %i.gy, i32 noundef %i.gx) #25
  store ptr %i.ha, ptr %i.bt, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.tail218
  %i.hb = phi ptr [ %i.gy, %bb.ab ], [ %6, %.tail218 ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.ab ], [ %.1135244, %.tail218 ] ; 2 uses
  %.2 = phi i32 [ %i.gs, %bb.ab ], [ %.1135245, %.tail218 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.0213, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 16, i1 noundef false) #23
  %indvars.iv.next269 = add nuw nsw i64 %i.fr, 1  ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count
  br i1 %exitcond.not, label %same_stat_id.exit178.thread._crit_edge.loopexit, label %bb.aa, !llvm.loop !28

same_stat_id.exit178.thread._crit_edge.split.loop.exit313: ; preds = %same_stat_id.exit178.thread
  %i.hd = trunc nuw nsw i64 %i.fr to i32
  br label %same_stat_id.exit178.thread._crit_edge

same_stat_id.exit178.thread._crit_edge.loopexit:  ; preds = %bb.ac
  %i.he = icmp slt i32 %.2, 0
  br label %same_stat_id.exit178.thread._crit_edge

same_stat_id.exit178.thread._crit_edge:           ; preds = %same_stat_id.exit178.thread._crit_edge.loopexit, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313
  %.lcssa = phi ptr [ %6, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %i.hb, %same_stat_id.exit178.thread._crit_edge.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.hd, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %.1, %same_stat_id.exit178.thread._crit_edge.loopexit ] ; 3 uses
  %.5 = phi i32 [ %i.gq, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %.4, %same_stat_id.exit178.thread._crit_edge.loopexit ]
  %.3 = phi i1 [ true, %same_stat_id.exit178.thread._crit_edge.split.loop.exit313 ], [ %i.he, %same_stat_id.exit178.thread._crit_edge.loopexit ]
  br i1 %.3, label %bb.ad, label %bb.ae

same_stat_id.exit178.thread._crit_edge.thread:    ; preds = %bb.z
  %i.hf = icmp slt i32 %i.fd, 0
  br i1 %i.hf, label %.thread, label %bb.ae

bb.ad:                                            ; preds = %same_stat_id.exit178.thread._crit_edge
  %.not165 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not165, label %.thread, label %v9fs_path_unlock.exit

bb.ae:                                            ; preds = %same_stat_id.exit178.thread._crit_edge.thread, %same_stat_id.exit178.thread._crit_edge
  %.0.lcssa292 = phi i32 [ 0, %same_stat_id.exit178.thread._crit_edge.thread ], [ %.0.lcssa, %same_stat_id.exit178.thread._crit_edge ] ; 3 uses
  %.lcssa295 = phi ptr [ %i.fn, %same_stat_id.exit178.thread._crit_edge.thread ], [ %.lcssa, %same_stat_id.exit178.thread._crit_edge ] ; 5 uses
  %i.hg = load i32, ptr %i.b, align 4
  %i.hh = load i32, ptr %i.c, align 4             ; 2 uses
  %i.hi = icmp eq i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.hj = load i32, ptr %i.bq, align 8
  %.not164 = icmp eq i32 %i.hj, 0
  br i1 %.not164, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8
  %i.hm = and i32 %i.hl, 2
  %.not.i179 = icmp eq i32 %i.hm, 0
  br i1 %.not.i179, label %v9fs_path_write_lock.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 7296
  call void @qemu_co_rwlock_wrlock(ptr noundef nonnull %i.hn) #23
  br label %v9fs_path_write_lock.exit

v9fs_path_write_lock.exit:                        ; preds = %bb.ag, %bb.ah
  call void @v9fs_path_copy(ptr noundef nonnull %i.bs, ptr noundef nonnull %2)
  %i.ho = load i32, ptr %i.hk, align 8
  %i.hp = and i32 %i.ho, 2
  %.not.i180 = icmp eq i32 %i.hp, 0
  br i1 %.not.i180, label %v9fs_path_unlock.exit, label %bb.ai

bb.ai:                                            ; preds = %v9fs_path_write_lock.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 7296
  call void @qemu_co_rwlock_unlock(ptr noundef nonnull %i.hq) #23
  br label %v9fs_path_unlock.exit

bb.aj:                                            ; preds = %bb.ae
  %i.hr = call fastcc ptr @alloc_fid(ptr noundef %i.f, i32 noundef %i.hh) ; 4 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bq, i64 256
  %i.hu = load i32, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 256
  store i32 %i.hu, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  call void @v9fs_path_copy(ptr noundef nonnull %i.hw, ptr noundef nonnull %2)
  br label %v9fs_path_unlock.exit

v9fs_path_unlock.exit:                            ; preds = %bb.ai, %v9fs_path_write_lock.exit, %bb.ak, %bb.ad
  %.0.lcssa291 = phi i32 [ %.0.lcssa, %bb.ad ], [ %.0.lcssa292, %bb.ak ], [ %.0.lcssa292, %v9fs_path_write_lock.exit ], [ %.0.lcssa292, %bb.ai ]
  %.lcssa297 = phi ptr [ %.lcssa, %bb.ad ], [ %.lcssa295, %bb.ak ], [ %.lcssa295, %v9fs_path_write_lock.exit ], [ %.lcssa295, %bb.ai ]
  %.0131 = phi ptr [ null, %bb.ad ], [ %i.hr, %bb.ak ], [ null, %v9fs_path_write_lock.exit ], [ null, %bb.ai ]
  %i.hx = trunc i32 %.0.lcssa291 to i16           ; 2 uses
  %i.hy = call i32 @v9fs_walk_marshal(ptr noundef nonnull %0, i16 noundef zeroext %i.hx, ptr noundef %.0213)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ia = load i16, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ic = load i8, ptr %i.ib, align 2
  call fastcc void @trace_v9fs_walk_return(i16 noundef zeroext %i.ia, i8 noundef zeroext %i.ic, i16 noundef zeroext %i.hx, ptr noundef %.0213)
  br label %.thread

.thread:                                          ; preds = %same_stat_id.exit178.thread._crit_edge.thread, %bb.aj, %bb.af, %bb.ad, %bb.y, %.loopexit, %v9fs_path_unlock.exit
  %7 = phi ptr [ %i.cd, %.loopexit ], [ %.lcssa297, %v9fs_path_unlock.exit ], [ %.lcssa, %bb.ad ], [ %i.cd, %bb.y ], [ %.lcssa295, %bb.af ], [ %.lcssa295, %bb.aj ], [ %i.fn, %same_stat_id.exit178.thread._crit_edge.thread ]
  %.6 = phi i32 [ %.2138, %.loopexit ], [ %i.hy, %v9fs_path_unlock.exit ], [ %.5, %bb.ad ], [ %i.fb, %bb.y ], [ -22, %bb.af ], [ -22, %bb.aj ], [ %i.fb, %same_stat_id.exit178.thread._crit_edge.thread ]
  %.1132 = phi ptr [ null, %.loopexit ], [ %.0131, %v9fs_path_unlock.exit ], [ null, %bb.ad ], [ null, %bb.y ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %same_stat_id.exit178.thread._crit_edge.thread ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.bq, i64 260 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4            ; 2 uses
  %.not.i181 = icmp eq i32 %i.ie, 0
  br i1 %.not.i181, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.am:                                            ; preds = %.thread
  %i.if = add i32 %i.ie, -1                       ; 2 uses
  store i32 %i.if, ptr %i.id, align 4
  %.not10.i = icmp eq i32 %i.if, 0
  br i1 %.not10.i, label %bb.an, label %put_fid.exit

bb.an:                                            ; preds = %bb.am
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bq, i64 264
  %i.ih = load i8, ptr %i.ig, align 8, !range !14, !noundef !15
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %bb.ao, label %put_fid.exit

bb.ao:                                            ; preds = %bb.an
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 7368
  %i.in = load i32, ptr %i.im, align 8
  %i.io = icmp eq i32 %i.ik, %i.in
  br i1 %i.io, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.ip) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.iq = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %i.bq) ; 0 uses
  br label %put_fid.exit

put_fid.exit:                                     ; preds = %bb.am, %bb.an, %bb.aq
  %.not166 = icmp eq ptr %.1132, null
  br i1 %.not166, label %put_fid.exit185, label %bb.ar

bb.ar:                                            ; preds = %put_fid.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %.1132, i64 260 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4            ; 2 uses
  %.not.i182 = icmp eq i32 %i.is, 0
  br i1 %.not.i182, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.it = add i32 %i.is, -1                       ; 2 uses
  store i32 %i.it, ptr %i.ir, align 4
  %.not10.i183 = icmp eq i32 %i.it, 0
  br i1 %.not10.i183, label %bb.au, label %put_fid.exit185

bb.au:                                            ; preds = %bb.at
  %i.iu = getelementptr inbounds nuw i8, ptr %.1132, i64 264
  %i.iv = load i8, ptr %i.iu, align 8, !range !14, !noundef !15
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.av, label %put_fid.exit185

bb.av:                                            ; preds = %bb.au
  %i.ix = getelementptr inbounds nuw i8, ptr %.1132, i64 4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 7368
  %i.jb = load i32, ptr %i.ja, align 8
  %i.jc = icmp eq i32 %i.iy, %i.jb
  br i1 %i.jc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 7376
  call void @migrate_del_blocker(ptr noundef nonnull %i.jd) #23
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.je = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %.1132) ; 0 uses
  br label %put_fid.exit185

put_fid.exit185:                                  ; preds = %bb.ax, %bb.au, %bb.at, %put_fid.exit
  %i.jf = load ptr, ptr %i.bt, align 8
  call void @g_free(ptr noundef %i.jf) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @g_free(ptr noundef %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %trace_v9fs_walk.exit189

name_is_illegal.exit.thread.loopexit:             ; preds = %.lr.ph, %name_is_illegal.exit, %bb.e
  %.7.ph = phi i32 [ -2, %bb.e ], [ -2, %name_is_illegal.exit ], [ %i.ae, %.lr.ph ]
  %.pre275 = load i16, ptr %i.a, align 2
  br label %name_is_illegal.exit.thread

name_is_illegal.exit.thread:                      ; preds = %name_is_illegal.exit.thread.loopexit, %bb.c
  %i.jg = phi i16 [ %i.l, %bb.c ], [ %.pre275, %name_is_illegal.exit.thread.loopexit ]
  %.1214 = phi ptr [ null, %bb.c ], [ %i.q, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %.1210 = phi ptr [ null, %bb.c ], [ %i.z, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %.1206 = phi ptr [ null, %bb.c ], [ %i.t, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %.7 = phi i32 [ -22, %bb.c ], [ %.7.ph, %name_is_illegal.exit.thread.loopexit ] ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ji = load i16, ptr %i.jh, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.jk = load i8, ptr %i.jj, align 2
  %i.jl = load i32, ptr %i.b, align 4
  %i.jm = load i32, ptr %i.c, align 4
  %i.jn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i186 = icmp eq i32 %i.jn, 0
  br i1 %.not.i186, label %trace_v9fs_walk.exit189, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %name_is_illegal.exit.thread
  %i.jo = load i16, ptr @_TRACE_V9FS_WALK_DSTATE, align 2
  %.not5.i187 = icmp eq i16 %i.jo, 0
  br i1 %.not5.i187, label %trace_v9fs_walk.exit189, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jp = load i32, ptr @qemu_loglevel, align 4
  %i.jq = and i32 %i.jp, 32768
  %.not6.i188 = icmp eq i32 %i.jq, 0
  br i1 %.not6.i188, label %trace_v9fs_walk.exit189, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jr = zext i16 %i.ji to i32
  %i.js = zext i8 %i.jk to i32
  %i.jt = zext i16 %i.jg to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.112, i32 noundef %i.jr, i32 noundef %i.js, i32 noundef %i.jl, i32 noundef %i.jm, i32 noundef %i.jt, ptr noundef nonnull @.str.110) #23
  br label %trace_v9fs_walk.exit189

trace_v9fs_walk.exit189:                          ; preds = %bb.ba, %bb.az, %bb.ay, %name_is_illegal.exit.thread, %trace_v9fs_walk.exit, %put_fid.exit185
  %.2215 = phi ptr [ %.0213, %put_fid.exit185 ], [ %.0213, %trace_v9fs_walk.exit ], [ %.1214, %name_is_illegal.exit.thread ], [ %.1214, %bb.ay ], [ %.1214, %bb.az ], [ %.1214, %bb.ba ]
  %.2211 = phi ptr [ %.0209, %put_fid.exit185 ], [ %.0209, %trace_v9fs_walk.exit ], [ %.1210, %name_is_illegal.exit.thread ], [ %.1210, %bb.ay ], [ %.1210, %bb.az ], [ %.1210, %bb.ba ]
  %.2207 = phi ptr [ %.0205, %put_fid.exit185 ], [ %.0205, %trace_v9fs_walk.exit ], [ %.1206, %name_is_illegal.exit.thread ], [ %.1206, %bb.ay ], [ %.1206, %bb.az ], [ %.1206, %bb.ba ]
  %.1203 = phi ptr [ %.0202, %put_fid.exit185 ], [ %.0202, %trace_v9fs_walk.exit ], [ null, %name_is_illegal.exit.thread ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %bb.ba ]
  %.8 = phi i32 [ %.6, %put_fid.exit185 ], [ -2, %trace_v9fs_walk.exit ], [ %.7, %name_is_illegal.exit.thread ], [ %.7, %bb.ay ], [ %.7, %bb.az ], [ %.7, %bb.ba ]
  %i.ju = sext i32 %.8 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %trace_v9fs_walk.exit189, %bb.b
  %.sink = phi i64 [ %i.ju, %trace_v9fs_walk.exit189 ], [ %i.i, %bb.b ]
  %.3216 = phi ptr [ %.2215, %trace_v9fs_walk.exit189 ], [ null, %bb.b ]
  %.3212 = phi ptr [ %.2211, %trace_v9fs_walk.exit189 ], [ null, %bb.b ] ; 3 uses
  %.3208 = phi ptr [ %.2207, %trace_v9fs_walk.exit189 ], [ null, %bb.b ]
  %.2204 = phi ptr [ %.1203, %trace_v9fs_walk.exit189 ], [ null, %bb.b ]
  call void @pdu_complete(ptr noundef %0, i64 noundef %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @g_free(ptr noundef %.2204) #23
  call void @p9array_auto_free_V9fsString(ptr noundef nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @g_free(ptr noundef %.3208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i190 = icmp eq ptr %.3212, null
  br i1 %.not.i190, label %p9array_auto_free_V9fsPath.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jv = getelementptr inbounds i8, ptr %.3212, i64 -8 ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 8
  %.not10.i191 = icmp eq i64 %i.jw, 0
  br i1 %.not10.i191, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.bc
  call void @g_free(ptr noundef nonnull %i.jv) #23
  br label %p9array_auto_free_V9fsPath.exit

.lr.ph.i:                                         ; preds = %bb.bc, %.lr.ph.i
  %.09.i = phi i64 [ %i.ka, %.lr.ph.i ], [ 0, %bb.bc ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %.3212, i64 %.09.i ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void @g_free(ptr noundef %i.jz) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i8 0, i64 16, i1 false)
  %i.ka = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.kb = load i64, ptr %i.jv, align 8
  %i.kc = icmp ult i64 %i.ka, %i.kb
  br i1 %i.kc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

p9array_auto_free_V9fsPath.exit:                  ; preds = %bb.bb, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @g_free(ptr noundef %.3216) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_create(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.statfs, align 8             ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.V9fsQID, align 8            ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %3 = alloca %struct.V9fsPath, align 8           ; 16 uses
  %4 = alloca %struct.stat, align 8               ; 11 uses
  %5 = alloca %struct.V9fsString, align 8         ; 14 uses
  %6 = alloca %struct.V9fsString, align 8         ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 0, ptr %5, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 0, ptr %6, align 8, !annotation !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 18 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store ptr null, ptr %i.i, align 8
  store i16 0, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.j, align 8
  %i.k = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.114, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6)
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %put_fid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load i16, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.q = load i8, ptr %i.p, align 2               ; 4 uses
  %i.r = load i32, ptr %i.a, align 4
  %i.s = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.t = load i32, ptr %i.b, align 4
  %i.u = load i8, ptr %i.c, align 1
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %trace_v9fs_create.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.w = load i16, ptr @_TRACE_V9FS_CREATE_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.w, 0
  br i1 %.not5.i, label %trace_v9fs_create.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not6.i = icmp eq i32 %i.y, 0
  br i1 %.not6.i, label %trace_v9fs_create.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = zext i16 %i.o to i32
  %i.aa = zext i8 %i.q to i32
  %i.ab = sext i8 %i.u to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.116, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.r, ptr noundef %i.s, i32 noundef %i.t, i32 noundef %i.ab) #23
  %.pre = load ptr, ptr %i.i, align 8
  %.val.pre = load i8, ptr %i.p, align 2
  br label %trace_v9fs_create.exit

trace_v9fs_create.exit:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.val = phi i8 [ %i.q, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %.val.pre, %bb.e ]
  %i.ac = phi ptr [ %i.s, %bb.b ], [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i, label %put_fid.exit, label %name_is_illegal.exit.i

name_is_illegal.exit.i:                           ; preds = %trace_v9fs_create.exit
  %i.ae = call ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.ac, i32 noundef 47) #28
  %.not1.i = icmp eq ptr %i.ae, null
  br i1 %.not1.i, label %sub_0.i, label %put_fid.exit

sub_0.i:                                          ; preds = %name_is_illegal.exit.i
  %.not6.i147 = icmp eq i8 %i.ad, 46
  br i1 %.not6.i147, label %.tail.i, label %check_name.exit

.tail.i:                                          ; preds = %sub_0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ag = load i8, ptr %i.af, align 1
  switch i8 %i.ag, label %check_name.exit [
    i8 0, label %bb.f
    i8 46, label %.tail2.i
  ]

end_hunk_0
