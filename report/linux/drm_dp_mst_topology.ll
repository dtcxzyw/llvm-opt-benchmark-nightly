Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_mst_topology?download=true
inline.NumInlined: 535
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@drm_dp_send_enum_path_resources:_kzalloc_noprof.exit
  br i1 %.not.i41, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.am = phi ptr [ %i.al, %bb.g ], [ null, %bb.f ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.am, i32 noundef 2, ptr noundef nonnull @.str.189) #23
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.an = load i8, ptr %i.d, align 8
  %i.ao = load i8, ptr %i.af, align 4
  %.not38 = icmp eq i8 %i.an, %i.ao
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.190) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = getelementptr i8, ptr %0, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i42 = icmp eq ptr %i.aq, null
  br i1 %.not.i42, label %__drm_to_dev.exit43, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  br label %__drm_to_dev.exit43

__drm_to_dev.exit43:                              ; preds = %bb.j, %bb.k
  %i.at = phi ptr [ %i.as, %bb.k ], [ null, %bb.j ]
  %i.au = load i8, ptr %i.af, align 4
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr i8, ptr %i.b, i64 350     ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = zext i16 %i.ax to i32
  %i.az = getelementptr i8, ptr %i.b, i64 352
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = zext i16 %i.ba to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.at, i32 noundef 2, ptr noundef nonnull @.str.191, i32 noundef %i.av, i32 noundef %i.ay, i32 noundef %i.bb) #23
  %i.bc = getelementptr i8, ptr %2, i64 18        ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = load i16, ptr %i.aw, align 2            ; 2 uses
  %.not39 = icmp eq i16 %i.bd, %i.be
  br i1 %.not39, label %bb.l, label %__drm_to_dev.exit43._crit_edge

__drm_to_dev.exit43._crit_edge:                   ; preds = %__drm_to_dev.exit43
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %i.b, i64 349
  %.pre.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 1, !range !19
  br label %bb.m

bb.l:                                             ; preds = %__drm_to_dev.exit43
  %i.bf = getelementptr i8, ptr %2, i64 1408
  %i.bg = load i8, ptr %i.bf, align 8, !range !19, !noundef !20
  %i.bh = getelementptr i8, ptr %i.b, i64 349
  %i.bi = load i8, ptr %i.bh, align 1, !range !19, !noundef !20 ; 2 uses
  %.not40 = icmp ne i8 %i.bg, %i.bi
  %spec.select52 = zext i1 %.not40 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %__drm_to_dev.exit43._crit_edge
  %i.bj = phi i8 [ %i.bi, %bb.l ], [ %.pre.pre, %__drm_to_dev.exit43._crit_edge ]
  %.036 = phi i32 [ %spec.select52, %bb.l ], [ 1, %__drm_to_dev.exit43._crit_edge ]
  store i16 %i.be, ptr %i.bc, align 2
  %i.bk = getelementptr i8, ptr %2, i64 1408
  store i8 %i.bj, ptr %i.bk, align 8
  br label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit, %bb.m, %drm_dp_queue_down_tx.exit
  %.1 = phi i32 [ 0, %__drm_to_dev.exit ], [ %.036, %bb.m ], [ %i.ac, %drm_dp_queue_down_tx.exit ]
  call void @kfree(ptr noundef nonnull %i.b) #23
  br label %bb.o

bb.o:                                             ; preds = %_kzalloc_noprof.exit, %bb.n
  %.0 = phi i32 [ %.1, %bb.n ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @drm_dp_port_set_pdt(ptr noundef nonnull %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = zext i1 %2 to i8                         ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 1392       ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr i8, ptr %0, i64 12         ; 4 uses
  %i.f = load i8, ptr %i.e, align 4               ; 3 uses
  %i.g = icmp eq i8 %i.f, %1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 10
  %i.i = load i8, ptr %i.h, align 2, !range !19, !noundef !20
  %i.j = icmp eq i8 %i.i, %i.b
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 10         ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !range !19, !noundef !20
  %i.m = trunc nuw i8 %i.l to i1
  %cond.i = icmp eq i8 %i.f, 2
  %.0.i.not = and i1 %cond.i, %i.m
  br i1 %.0.i.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not47 = icmp eq i8 %1, 0
  %cond.i50 = icmp eq i8 %1, 2
  %.0.i52.not = and i1 %cond.i50, %2
  %or.cond = or i1 %.not47, %.0.i52.not
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %1, ptr %i.e, align 4
  store i8 %i.b, ptr %i.k, align 2
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 56
  tail call void @i2c_del_adapter(ptr noundef %i.n) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.d, i64 784      ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.o) #23
  %i.p = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  tail call fastcc void @drm_dp_mst_topology_put_mstb(ptr noundef %i.q) #24, !srcloc !228
  store ptr null, ptr %i.p, align 8
  tail call void @mutex_unlock(ptr noundef %i.o) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  store i8 %1, ptr %i.e, align 4
  %i.r = getelementptr i8, ptr %0, i64 10
  store i8 %i.b, ptr %i.r, align 2
  %.not48 = icmp eq i8 %1, 0
  br i1 %.not48, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %cond.i53 = icmp eq i8 %1, 2
  %.0.i55.not = and i1 %cond.i53, %2
  br i1 %.0.i55.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 72
  store ptr @drm_dp_mst_i2c_algo, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 80
  store ptr %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %0, i64 164
  store i32 3, ptr %i.ab, align 4
  store ptr null, ptr %i.y, align 8
  %i.ac = getelementptr i8, ptr %0, i64 232
  store ptr %i.x, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.x, i64 648
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %0, i64 816
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.x, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load ptr, ptr %i.x, align 8
  br label %bb.x

bb.n:                                             ; preds = %bb.j
  store i64 0, ptr %i.a, align 8, !annotation !25
  %i.aj = getelementptr i8, ptr %0, i64 1376
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %i.am = load i8, ptr %i.al, align 8             ; 4 uses
  %i.an = zext i8 %i.am to i16
  %.lhs.trunc.i = add nsw i16 %i.an, -1
  %i.ao = sdiv i16 %.lhs.trunc.i, 2               ; 2 uses
  %i.ap = icmp ugt i8 %i.am, 1
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sext.i = zext nneg i16 %i.ao to i64           ; 2 uses
  %3 = getelementptr i8, ptr %i.ak, i64 24
  %4 = add nuw nsw i64 %.sext.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef align 8 %3, i64 %4, i1 false)
  %i.aq = shl i8 %i.am, 2
  %i.ar = and i8 %i.aq, 4
  br label %drm_dp_calculate_rad.exit

bb.p:                                             ; preds = %bb.n
  store i8 0, ptr %i.a, align 8
  %.pre = zext nneg i16 %i.ao to i64
  br label %drm_dp_calculate_rad.exit

drm_dp_calculate_rad.exit:                        ; preds = %bb.o, %bb.p
  %.pre-phi = phi i64 [ %.sext.i, %bb.o ], [ %.pre, %bb.p ]
  %.0.i56 = phi i8 [ %i.ar, %bb.o ], [ 4, %bb.p ]
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8
  %i.au = shl i8 %i.at, %.0.i56
  %i.av = getelementptr i8, ptr %i.a, i64 %.pre-phi ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = or i8 %i.au, %i.aw
  store i8 %i.ax, ptr %i.av, align 1
  %i.ay = add i8 %i.am, 1                         ; 3 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.ba = tail call noalias align 8 dereferenceable_or_null(96) ptr @__kmalloc_cache_noprof(ptr noundef %i.az, i32 noundef 3520, i64 noundef range(i64 -3040836845568, 3040836844153) 96) #25 ; 10 uses
  %.not.i57 = icmp eq ptr %i.ba, null
  br i1 %.not.i57, label %bb.s, label %bb.q

bb.q:                                             ; preds = %drm_dp_calculate_rad.exit
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  store i8 %i.ay, ptr %i.bb, align 8
  %i.bc = icmp ugt i8 %i.ay, 1
  br i1 %i.bc, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %i.ba, i64 24
  %i.be = lshr i8 %i.ay, 1
  %i.bf = zext nneg i8 %i.be to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bd, ptr nonnull readonly align 8 %i.a, i64 %i.bf, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %drm_dp_calculate_rad.exit
  %i.bg = getelementptr i8, ptr %i.d, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i58 = icmp eq ptr %i.bh, null
  br i1 %.not.i58, label %.thread61, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %.thread61

.thread61:                                        ; preds = %bb.t, %bb.s
  %i.bk = phi ptr [ %i.bj, %bb.t ], [ null, %bb.s ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bk, ptr noundef nonnull @.str.192, ptr noundef nonnull %0) #27
  br label %bb.y

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.bl = getelementptr i8, ptr %i.ba, i64 40     ; 3 uses
  store volatile ptr %i.bl, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.ba, i64 48
  store volatile ptr %i.bl, ptr %i.bm, align 8
  store volatile i32 1, ptr %i.ba, align 8
  %i.bn = getelementptr i8, ptr %i.ba, i64 4
  store volatile i32 1, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %i.d, i64 784     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.bo) #23
  %i.bp = getelementptr i8, ptr %0, i64 40
  store ptr %i.ba, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.c, align 8
  %i.br = getelementptr i8, ptr %i.ba, i64 64
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.ba, i64 56
  store ptr %0, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %0, i64 4         ; 4 uses
  %i.bu = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bt, i32 1, ptr elementtype(i32) %i.bt) #21, !srcloc !22 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.v, !prof !23

bb.v:                                             ; preds = %bb.u
  %i.bv = add i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bu
  %.not10.i.i.i.i.i = icmp sgt i32 %i.bw, -1
  br i1 %.not10.i.i.i.i.i, label %kref_get.exit.i, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.v, %bb.u
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.u ], [ 1, %bb.v ]
  tail call void @refcount_warn_saturate(ptr noundef %i.bt, i32 noundef %.sink.i.i.i.i.i) #23
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %.sink.split.i.i.i.i.i, %bb.v
  %i.bx = load ptr, ptr %i.c, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 88
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i59, label %drm_dp_mst_get_port_malloc.exit, label %bb.w

bb.w:                                             ; preds = %kref_get.exit.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  br label %drm_dp_mst_get_port_malloc.exit

drm_dp_mst_get_port_malloc.exit:                  ; preds = %kref_get.exit.i, %bb.w
  %i.cc = phi ptr [ %i.cb, %bb.w ], [ null, %kref_get.exit.i ]
  %i.cd = load volatile i32, ptr %i.bt, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cc, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull %0, i32 noundef %i.cd) #23
  tail call void @mutex_unlock(ptr noundef %i.bo) #23
  br label %.thread

bb.x:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ce = phi ptr [ %i.ag, %bb.k ], [ %.val.i.i, %bb.m ], [ %i.ai, %bb.l ]
  %i.cf = getelementptr i8, ptr %0, i64 940
  %i.cg = tail call i64 @sized_strscpy(ptr noundef %i.cf, ptr noundef %i.ce, i64 noundef 48) #23 ; 0 uses
  %i.ch = tail call i32 @i2c_add_adapter(ptr noundef %i.y) #23 ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.y, label %.thread

bb.y:                                             ; preds = %.thread61, %bb.x
  %.063 = phi i32 [ -12, %.thread61 ], [ %i.ch, %bb.x ]
  store i8 0, ptr %i.e, align 4
  br label %.thread

.thread:                                          ; preds = %bb.i, %drm_dp_mst_get_port_malloc.exit, %bb.x, %bb.y, %bb.b, %bb.f
  %.045 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ %.063, %bb.y ], [ %i.ch, %bb.x ], [ 0, %bb.i ], [ 1, %drm_dp_mst_get_port_malloc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @drm_dp_mst_port_add_connector(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [255 x i8], align 16              ; 7 uses
  %i.c = getelementptr i8, ptr %1, i64 1392
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) %i.b, i8 0, i64 255, i1 false), !annotation !25
  %i.e = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = zext i8 %i.f to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !annotation !25
  %i.h = getelementptr i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 124
  %i.k = load i32, ptr %i.j, align 4
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 255, ptr noundef nonnull @.str.195, i32 noundef %i.k) #23 ; 0 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %.lr.ph.i, label %build_mst_prop_path.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ac, %bb.b ] ; 3 uses
  %i.q = shl nuw nsw i32 %.015.i, 2
  %i.r = and i32 %i.q, 4
  %i.s = xor i32 %i.r, 4
  %i.t = lshr i32 %.015.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr i8, ptr %i.p, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = lshr i32 %i.x, %i.s
  %i.z = and i32 %i.y, 15
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.196, i32 noundef %i.z) #23 ; 0 uses
  %i.ab = call i64 @strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 255) #23 ; 0 uses
  %i.ac = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.ad = load i8, ptr %i.m, align 8
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = icmp slt i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.b, label %build_mst_prop_path.exit, !llvm.loop !229

build_mst_prop_path.exit:                         ; preds = %bb.b, %bb.a
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.196, i32 noundef range(i32 0, 256) %i.g) #23 ; 0 uses
  %i.ai = call i64 @strlcat(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 255) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aj = getelementptr i8, ptr %i.d, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr %i.al(ptr noundef %i.d, ptr noundef nonnull %1, ptr noundef nonnull %i.b) #23 ; 6 uses
  %i.an = getelementptr i8, ptr %1, i64 1384      ; 2 uses
  store ptr %i.am, ptr %i.an, align 8
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %build_mst_prop_path.exit
  %i.ao = getelementptr i8, ptr %i.d, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.as = phi ptr [ %i.ar, %bb.d ], [ null, %bb.c ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.as, ptr noundef nonnull @.str.194, ptr noundef nonnull %1, i32 noundef -12) #27
  br label %bb.j

bb.e:                                             ; preds = %build_mst_prop_path.exit
  %i.at = getelementptr i8, ptr %1, i64 12
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %.not18 = icmp eq i8 %i.au, 0
  br i1 %.not18, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr i8, ptr %1, i64 10
  %i.aw = load i8, ptr %i.av, align 2, !range !19, !noundef !20
  %i.ax = trunc nuw i8 %i.aw to i1
  %cond.i = icmp eq i8 %i.au, 2
  %.0.i.not = and i1 %cond.i, %i.ax
  br i1 %.0.i.not, label %bb.i, label %bb.g
end_hunk_0
