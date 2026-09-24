Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/archive-tar?download=true
inline.NumInlined: 32
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@write_tar_entry:bb.a
  %i.o = or i32 %i.n, %4
  %i.p = load i32, ptr @tar_umask, align 4, !tbaa !16
  %i.q = xor i32 %i.p, -1
  %i.r = and i32 %i.o, %i.q
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !16
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #10
  br label %_.exit

_.exit:                                           ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.t, %bb.f ], [ @.str.19, %bb.e ]
  %i.u = tail call ptr @oid_to_hex(ptr noundef %1) #10
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, i32 noundef %4, ptr noundef %i.u) #10 ; 0 uses
  br label %write_blocked.exit79

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.058 = phi i32 [ %i.i, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.w = icmp ugt i64 %3, 100
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %2, i64 %3
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !60
  %i.aa = icmp eq i8 %i.z, 47
  %i.ab = sext i1 %i.aa to i64
  %.0.i69 = add i64 %3, %i.ab
  %.1.i = tail call i64 @llvm.umin.i64(i64 %.0.i69, i64 155) ; 2 uses
  %i.ac = add nsw i64 %.1.i, -1                   ; 2 uses
  %.not.i169 = icmp eq i64 %i.ac, 0
  br i1 %.not.i169, label %get_path_prefix.exit.thread, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nsw i64 %i.ae, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %get_path_prefix.exit.thread, label %.lr.ph, !llvm.loop !86

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %i.ae = phi i64 [ %i.ad, %bb.i ], [ %i.ac, %bb.h ] ; 4 uses
  %.2.i170 = phi i64 [ %i.ae, %bb.i ], [ %.1.i, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !60
  %.not16.i = icmp eq i8 %i.ag, 47
  br i1 %.not16.i, label %get_path_prefix.exit, label %bb.i, !llvm.loop !86

get_path_prefix.exit:                             ; preds = %.lr.ph
  %i.ah = sub i64 %3, %.2.i170                    ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 101
  br i1 %i.ai, label %bb.j, label %get_path_prefix.exit.thread

bb.j:                                             ; preds = %get_path_prefix.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %i.ae, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.2.i170
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr nonnull align 1 %i.ak, i64 %i.ah, i1 false)
  br label %bb.l

get_path_prefix.exit.thread:                      ; preds = %bb.i, %bb.h, %get_path_prefix.exit
  %i.al = tail call ptr @oid_to_hex(ptr noundef %1) #10
  %i.am = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %8, i64 noundef 100, ptr noundef nonnull @.str.20, ptr noundef %i.al) #10 ; 0 uses
  call fastcc void @strbuf_append_ext_header(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %2, i64 noundef %3)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %8, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %get_path_prefix.exit.thread, %bb.k
  %i.an = and i32 %.058, 61440                    ; 2 uses
  %i.ao = icmp eq i32 %i.an, 40960
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp ugt i64 %6, 100
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 157 ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = call ptr @oid_to_hex(ptr noundef %1) #10
  %i.as = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.aq, i64 noundef 100, ptr noundef nonnull @.str.22, ptr noundef %i.ar) #10 ; 0 uses
  call fastcc void @strbuf_append_ext_header(ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef %5, i64 noundef %6)
  br label %.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %5, i64 %6, i1 false)
  br label %.thread

bb.p:                                             ; preds = %bb.l
  %i.at = icmp eq i32 %i.an, 32768                ; 2 uses
  %i.au = icmp ugt i64 %6, 8589934591
  %or.cond3 = and i1 %i.au, %i.at
  br i1 %or.cond3, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.av = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.b, i64 noundef 40, ptr noundef nonnull @.str.13, i64 noundef range(i64 8589934592, 0) %6) #10
  %i.aw = sext i32 %i.av to i64
  call fastcc void @strbuf_append_ext_header(ptr noundef nonnull %9, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.b, i64 noundef %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n, %bb.q, %bb.p
  %i.ax = phi i1 [ true, %bb.q ], [ %i.at, %bb.p ], [ false, %bb.n ], [ false, %bb.o ]
  %.056 = phi i64 [ 0, %bb.q ], [ %6, %bb.p ], [ %6, %bb.n ], [ %6, %bb.o ]
  call fastcc void @prepare_header(ptr noundef %0, ptr noundef %8, i32 noundef %.058, i64 noundef %.056)
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !59 ; 6 uses
  %.not67 = icmp eq i64 %i.az, 0
  br i1 %.not67, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(500) %7, i8 0, i64 500, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 156
  store i8 120, ptr %i.bc, align 1, !tbaa !60
  %i.bd = call ptr @oid_to_hex(ptr noundef %1) #10
  %i.be = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %7, i64 noundef 100, ptr noundef nonnull @.str.26, ptr noundef %i.bd) #10 ; 0 uses
  call fastcc void @prepare_header(ptr noundef readonly %0, ptr noundef %7, i32 noundef 33206, i64 noundef range(i64 1, 0) %i.az)
  %i.bf = load i64, ptr @offset, align 8, !tbaa !27 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i, label %write_if_needed.exit.i.i.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = sub i64 10240, %i.bf                    ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.bg, i64 500) ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr @block, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull align 1 %7, i64 %spec.select.i.i.i, i1 false)
  %i.bi = sub nuw nsw i64 500, %spec.select.i.i.i
  %i.bj = add i64 %spec.select.i.i.i, %i.bf       ; 3 uses
  store i64 %i.bj, ptr @offset, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 %spec.select.i.i.i
  %i.bl = icmp eq i64 %i.bj, 10240
  br i1 %i.bl, label %bb.t, label %write_if_needed.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.bm(ptr noundef nonnull @block) #10, !callees !62, !inline_history !87
  store i64 0, ptr @offset, align 8, !tbaa !27
  br label %write_if_needed.exit.i.i.i

write_if_needed.exit.i.i.i:                       ; preds = %bb.t, %bb.s
  %.pre6.i.i = phi i64 [ 0, %bb.t ], [ %i.bj, %bb.s ] ; 2 uses
  %.not24.i.i.i = icmp ugt i64 %i.bg, 499
  br i1 %.not24.i.i.i, label %do_write_blocked.exit.i.i, label %write_if_needed.exit.i.i.thread.i

write_if_needed.exit.i.i.thread.i:                ; preds = %write_if_needed.exit.i.i.i, %bb.r
  %.018.i.i21.i = phi ptr [ %i.bk, %write_if_needed.exit.i.i.i ], [ %7, %bb.r ]
  %.019.i.i20.i = phi i64 [ %i.bi, %write_if_needed.exit.i.i.i ], [ 500, %bb.r ] ; 2 uses
  %.pre6.i19.i = phi i64 [ %.pre6.i.i, %write_if_needed.exit.i.i.i ], [ 0, %bb.r ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr @block, i64 %.pre6.i19.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %.018.i.i21.i, i64 %.019.i.i20.i, i1 false)
  %i.bo = add i64 %.pre6.i19.i, %.019.i.i20.i     ; 2 uses
  store i64 %i.bo, ptr @offset, align 8, !tbaa !27
  br label %do_write_blocked.exit.i.i

do_write_blocked.exit.i.i:                        ; preds = %write_if_needed.exit.i.i.thread.i, %write_if_needed.exit.i.i.i
  %i.bp = phi i64 [ %.pre6.i.i, %write_if_needed.exit.i.i.i ], [ %i.bo, %write_if_needed.exit.i.i.thread.i ] ; 4 uses
  %i.bq = and i64 %i.bp, 511                      ; 2 uses
  %.not.i1.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %do_write_blocked.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr @block, i64 %i.bp
  %i.bs = sub nuw nsw i64 512, %i.bq              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.br, i8 0, i64 %i.bs, i1 false)
  %i.bt = add i64 %i.bs, %i.bp                    ; 2 uses
  store i64 %i.bt, ptr @offset, align 8, !tbaa !27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %do_write_blocked.exit.i.i
  %.pr.i = phi i64 [ %i.bt, %bb.u ], [ %i.bp, %do_write_blocked.exit.i.i ] ; 5 uses
  switch i64 %.pr.i, label %bb.w [
    i64 10240, label %write_if_needed.exit.i.i7.sink.split.i
    i64 0, label %write_if_needed.exit.i.i7.i
  ]

bb.w:                                             ; preds = %bb.v
  %i.bu = sub i64 10240, %.pr.i
  %spec.select.i.i6.i = call i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.az, i64 %i.bu) ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr @block, i64 %.pr.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr align 1 %i.bb, i64 %spec.select.i.i6.i, i1 false)
  %i.bw = sub nuw i64 %i.az, %spec.select.i.i6.i  ; 2 uses
  %i.bx = add i64 %spec.select.i.i6.i, %.pr.i     ; 3 uses
  store i64 %i.bx, ptr @offset, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %spec.select.i.i6.i ; 2 uses
  %i.bz = icmp eq i64 %i.bx, 10240
  br i1 %i.bz, label %write_if_needed.exit.i.i7.sink.split.i, label %write_if_needed.exit.i.i7.i

write_if_needed.exit.i.i7.sink.split.i:           ; preds = %bb.w, %bb.v
  %.019.i.i9.ph.i = phi i64 [ %i.az, %bb.v ], [ %i.bw, %bb.w ]
  %.018.i.i10.ph.i = phi ptr [ %i.bb, %bb.v ], [ %i.by, %bb.w ]
  %i.ca = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.ca(ptr noundef nonnull @block) #10, !inline_history !88
  store i64 0, ptr @offset, align 8, !tbaa !27
  br label %write_if_needed.exit.i.i7.i

write_if_needed.exit.i.i7.i:                      ; preds = %write_if_needed.exit.i.i7.sink.split.i, %bb.w, %bb.v
  %.pre6.i8.i = phi i64 [ %.pr.i, %bb.v ], [ %i.bx, %bb.w ], [ 0, %write_if_needed.exit.i.i7.sink.split.i ]
  %.019.i.i9.i = phi i64 [ %i.az, %bb.v ], [ %i.bw, %bb.w ], [ %.019.i.i9.ph.i, %write_if_needed.exit.i.i7.sink.split.i ] ; 3 uses
  %.018.i.i10.i = phi ptr [ %i.bb, %bb.v ], [ %i.by, %bb.w ], [ %.018.i.i10.ph.i, %write_if_needed.exit.i.i7.sink.split.i ] ; 2 uses
  %i.cb = icmp ugt i64 %.019.i.i9.i, 10239
  br i1 %i.cb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %write_if_needed.exit.i.i7.i, %.lr.ph.i.i.i
  %.126.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %.018.i.i10.i, %write_if_needed.exit.i.i7.i ] ; 2 uses
  %.12025.i.i.i = phi i64 [ %i.cd, %.lr.ph.i.i.i ], [ %.019.i.i9.i, %write_if_needed.exit.i.i7.i ]
  %i.cc = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.cc(ptr noundef %.126.i.i.i) #10, !callees !62, !inline_history !89
  %i.cd = add i64 %.12025.i.i.i, -10240           ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.126.i.i.i, i64 10240 ; 2 uses
  %i.cf = icmp ugt i64 %i.cd, 10239
  br i1 %i.cf, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.pre.i.i = load i64, ptr @offset, align 8, !tbaa !27
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %write_if_needed.exit.i.i7.i
  %.pre.i.i = phi i64 [ %.pre6.i8.i, %write_if_needed.exit.i.i7.i ], [ %.pre.pre.i.i, %._crit_edge.i.loopexit.i.i ] ; 3 uses
  %.120.lcssa.i.i.i = phi i64 [ %.019.i.i9.i, %write_if_needed.exit.i.i7.i ], [ %i.cd, %._crit_edge.i.loopexit.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi ptr [ %.018.i.i10.i, %write_if_needed.exit.i.i7.i ], [ %i.ce, %._crit_edge.i.loopexit.i.i ]
  %.not24.i.i11.i = icmp eq i64 %.120.lcssa.i.i.i, 0
  br i1 %.not24.i.i11.i, label %do_write_blocked.exit.i12.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr @block, i64 %.pre.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %.1.lcssa.i.i.i, i64 %.120.lcssa.i.i.i, i1 false)
  %i.ch = add i64 %.120.lcssa.i.i.i, %.pre.i.i    ; 2 uses
  store i64 %i.ch, ptr @offset, align 8, !tbaa !27
  br label %do_write_blocked.exit.i12.i

do_write_blocked.exit.i12.i:                      ; preds = %bb.x, %._crit_edge.i.i.i
  %i.ci = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.ch, %bb.x ] ; 4 uses
  %i.cj = and i64 %i.ci, 511                      ; 2 uses
  %.not.i1.i13.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i1.i13.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %do_write_blocked.exit.i12.i
  %i.ck = getelementptr inbounds nuw i8, ptr @block, i64 %i.ci
  %i.cl = sub nuw nsw i64 512, %i.cj              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, i8 0, i64 %i.cl, i1 false)
  %i.cm = add i64 %i.cl, %i.ci                    ; 2 uses
  store i64 %i.cm, ptr @offset, align 8, !tbaa !27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %do_write_blocked.exit.i12.i
  %i.cn = phi i64 [ %i.cm, %bb.y ], [ %i.ci, %do_write_blocked.exit.i12.i ]
  %i.co = icmp eq i64 %i.cn, 10240
  br i1 %i.co, label %bb.aa, label %write_extended_header.exit

bb.aa:                                            ; preds = %bb.z
  %i.cp = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.cp(ptr noundef nonnull @block) #10, !callees !62, !inline_history !90
  store i64 0, ptr @offset, align 8, !tbaa !27
  br label %write_extended_header.exit

write_extended_header.exit:                       ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ab

bb.ab:                                            ; preds = %write_extended_header.exit, %.thread
  call void @strbuf_release(ptr noundef nonnull %9) #10
  %i.cq = load i64, ptr @offset, align 8, !tbaa !27 ; 4 uses
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %write_if_needed.exit.i.i.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = sub i64 10240, %i.cq                    ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 500) ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr @block, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull align 1 %8, i64 %spec.select.i.i, i1 false)
  %i.ct = sub nuw nsw i64 500, %spec.select.i.i
  %i.cu = add i64 %spec.select.i.i, %i.cq         ; 3 uses
  store i64 %i.cu, ptr @offset, align 8, !tbaa !27
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 %spec.select.i.i
  %i.cw = icmp eq i64 %i.cu, 10240
  br i1 %i.cw, label %bb.ad, label %write_if_needed.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.cx(ptr noundef nonnull @block) #10, !callees !62, !inline_history !91
  store i64 0, ptr @offset, align 8, !tbaa !27
  br label %write_if_needed.exit.i.i

write_if_needed.exit.i.i:                         ; preds = %bb.ad, %bb.ac
  %.pre6.i = phi i64 [ 0, %bb.ad ], [ %i.cu, %bb.ac ] ; 2 uses
  %.not24.i.i = icmp ugt i64 %i.cr, 499
  br i1 %.not24.i.i, label %do_write_blocked.exit.i, label %write_if_needed.exit.i.i.thread

write_if_needed.exit.i.i.thread:                  ; preds = %bb.ab, %write_if_needed.exit.i.i
  %.018.i.i103 = phi ptr [ %i.cv, %write_if_needed.exit.i.i ], [ %8, %bb.ab ]
  %.019.i.i102 = phi i64 [ %i.ct, %write_if_needed.exit.i.i ], [ 500, %bb.ab ] ; 2 uses
  %.pre6.i101 = phi i64 [ %.pre6.i, %write_if_needed.exit.i.i ], [ 0, %bb.ab ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr @block, i64 %.pre6.i101
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %.018.i.i103, i64 %.019.i.i102, i1 false)
  %i.cz = add i64 %.pre6.i101, %.019.i.i102       ; 2 uses
  store i64 %i.cz, ptr @offset, align 8, !tbaa !27
  br label %do_write_blocked.exit.i

do_write_blocked.exit.i:                          ; preds = %write_if_needed.exit.i.i.thread, %write_if_needed.exit.i.i
  %i.da = phi i64 [ %.pre6.i, %write_if_needed.exit.i.i ], [ %i.cz, %write_if_needed.exit.i.i.thread ] ; 4 uses
  %i.db = and i64 %i.da, 511                      ; 2 uses
  %.not.i1.i = icmp eq i64 %i.db, 0
  br i1 %.not.i1.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %do_write_blocked.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr @block, i64 %i.da
  %i.dd = sub nuw nsw i64 512, %i.db              ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dc, i8 0, i64 %i.dd, i1 false)
  %i.de = add i64 %i.dd, %i.da                    ; 2 uses
  store i64 %i.de, ptr @offset, align 8, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %do_write_blocked.exit.i
  %i.df = phi i64 [ %i.de, %bb.ae ], [ %i.da, %do_write_blocked.exit.i ] ; 2 uses
  %i.dg = icmp eq i64 %i.df, 10240
  br i1 %i.dg, label %bb.ag, label %write_blocked.exit

bb.ag:                                            ; preds = %bb.af
  %i.dh = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.dh(ptr noundef nonnull @block) #10, !callees !62, !inline_history !92
  store i64 0, ptr @offset, align 8, !tbaa !27
  br label %write_blocked.exit

write_blocked.exit:                               ; preds = %bb.af, %bb.ag
  %i.di = phi i64 [ %i.df, %bb.af ], [ 0, %bb.ag ] ; 4 uses
  %i.dj = icmp ne i64 %6, 0
  %or.cond5 = and i1 %i.dj, %i.ax
  br i1 %or.cond5, label %bb.ah, label %write_blocked.exit79

bb.ah:                                            ; preds = %write_blocked.exit
  %.not68 = icmp eq ptr %5, null
  br i1 %.not68, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i70 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i70, label %write_if_needed.exit.i.i72, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = sub i64 10240, %i.di
  %spec.select.i.i71 = call i64 @llvm.umin.i64(i64 %6, i64 %i.dk) ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @block, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %5, i64 %spec.select.i.i71, i1 false)
  %i.dm = sub nuw i64 %6, %spec.select.i.i71      ; 2 uses
  %i.dn = add i64 %spec.select.i.i71, %i.di       ; 3 uses
  store i64 %i.dn, ptr @offset, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.i.i71 ; 2 uses
  %i.dp = icmp eq i64 %i.dn, 10240
  br i1 %i.dp, label %bb.ak, label %write_if_needed.exit.i.i72

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.dq(ptr noundef nonnull @block) #10, !callees !62, !inline_history !91
  store i64 0, ptr @offset, align 8, !tbaa !27
  br label %write_if_needed.exit.i.i72

write_if_needed.exit.i.i72:                       ; preds = %bb.ak, %bb.aj, %bb.ai
  %.pre6.i73 = phi i64 [ 0, %bb.ai ], [ %i.dn, %bb.aj ], [ 0, %bb.ak ]
  %.019.i.i74 = phi i64 [ %6, %bb.ai ], [ %i.dm, %bb.aj ], [ %i.dm, %bb.ak ] ; 3 uses
  %.018.i.i75 = phi ptr [ %5, %bb.ai ], [ %i.do, %bb.aj ], [ %i.do, %bb.ak ] ; 2 uses
  %i.dr = icmp ugt i64 %.019.i.i74, 10239
  br i1 %i.dr, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %write_if_needed.exit.i.i72, %.lr.ph.i.i
  %.126.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %.018.i.i75, %write_if_needed.exit.i.i72 ] ; 2 uses
  %.12025.i.i = phi i64 [ %i.dt, %.lr.ph.i.i ], [ %.019.i.i74, %write_if_needed.exit.i.i72 ]
  %i.ds = load ptr, ptr @write_block, align 8, !tbaa !61
  call void %i.ds(ptr noundef %.126.i.i) #10, !callees !62, !inline_history !93
  %i.dt = add i64 %.12025.i.i, -10240             ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.126.i.i, i64 10240 ; 2 uses
  %i.dv = icmp ugt i64 %i.dt, 10239
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.loopexit.i, !llvm.loop !0

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %.pre.pre.i = load i64, ptr @offset, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %write_if_needed.exit.i.i72
  %.pre.i = phi i64 [ %.pre6.i73, %write_if_needed.exit.i.i72 ], [ %.pre.pre.i, %._crit_edge.i.loopexit.i ] ; 3 uses
  %.120.lcssa.i.i = phi i64 [ %.019.i.i74, %write_if_needed.exit.i.i72 ], [ %i.dt, %._crit_edge.i.loopexit.i ] ; 3 uses
  %.1.lcssa.i.i = phi ptr [ %.018.i.i75, %write_if_needed.exit.i.i72 ], [ %i.du, %._crit_edge.i.loopexit.i ]
  %.not24.i.i76 = icmp eq i64 %.120.lcssa.i.i, 0
  br i1 %.not24.i.i76, label %do_write_blocked.exit.i77, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr @block, i64 %.pre.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr align 1 %.1.lcssa.i.i, i64 %.120.lcssa.i.i, i1 false)
  %i.dx = add i64 %.120.lcssa.i.i, %.pre.i        ; 2 uses
  store i64 %i.dx, ptr @offset, align 8, !tbaa !27
  br label %do_write_blocked.exit.i77

do_write_blocked.exit.i77:                        ; preds = %bb.al, %._crit_edge.i.i
  %i.dy = phi i64 [ %.pre.i, %._crit_edge.i.i ], [ %i.dx, %bb.al ] ; 4 uses
end_hunk_0
