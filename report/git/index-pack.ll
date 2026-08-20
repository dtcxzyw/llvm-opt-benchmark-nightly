inline.NumInlined: 142
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@cmd_index_pack:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @input_buffer, ptr nonnull align 1 %i.sb, i64 %i.sd, i1 false)
  store i32 0, ptr @input_offset, align 4, !tbaa !15
  br label %flush.exit.i111.i

flush.exit.i111.i:                                ; preds = %bb.fm, %bb.fj
  %i.se = phi i64 [ 0, %bb.fj ], [ %i.sd, %bb.fm ] ; 2 uses
  %i.sf = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.sg = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.se
  %i.sh = sub nsw i64 131072, %i.se
  %i.si = call i64 @xread(i32 noundef %i.sf, ptr noundef nonnull %i.sg, i64 noundef %i.sh) #24 ; 3 uses
  %i.sj = icmp slt i64 %i.si, 1
  br i1 %i.sj, label %.loopexit.i, label %bb.fn

bb.fn:                                            ; preds = %flush.exit.i111.i
  %i.sk = load i32, ptr @input_len, align 4, !tbaa !15
  %i.sl = trunc i64 %i.si to i32
  %i.sm = add i32 %i.sk, %i.sl                    ; 3 uses
  store i32 %i.sm, ptr @input_len, align 4, !tbaa !15
  %.b.i112.peel.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i112.peel.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.sn = load ptr, ptr @progress, align 8, !tbaa !79
  %i.so = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.sp = zext i32 %i.sm to i64
  %i.sq = add nsw i64 %i.so, %i.sp
  call void @display_throughput(ptr noundef %i.sn, i64 noundef %i.sq) #24
  %.pre.i113.peel.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.sr = phi i32 [ %.pre.i113.peel.i, %bb.fo ], [ %i.sm, %bb.fn ]
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %.peel.next.i, label %.loopexit519.i

.peel.next.i:                                     ; preds = %bb.fp, %bb.fu
  %i.st = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.su = call i64 @xread(i32 noundef %i.st, ptr noundef nonnull @input_buffer, i64 noundef 131072) #24 ; 3 uses
  %i.sv = icmp slt i64 %i.su, 1
  br i1 %i.sv, label %.loopexit.i, label %bb.fs

.loopexit.i:                                      ; preds = %flush.exit.i111.i, %.peel.next.i
  %.lcssa.i = phi i64 [ %i.su, %.peel.next.i ], [ %i.si, %flush.exit.i111.i ]
  %.not11.i114.i = icmp eq i64 %.lcssa.i, 0
  br i1 %.not11.i114.i, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.loopexit.i
  %i.sw = call fastcc ptr @_(ptr noundef nonnull @.str.55)
  call void (ptr, ...) @die(ptr noundef %i.sw) #25
  unreachable

bb.fr:                                            ; preds = %.loopexit.i
  %i.sx = call fastcc ptr @_(ptr noundef nonnull @.str.56)
  call void (ptr, ...) @die_errno(ptr noundef %i.sx) #25
  unreachable

bb.fs:                                            ; preds = %.peel.next.i
  %i.sy = load i32, ptr @input_len, align 4, !tbaa !15
  %i.sz = trunc i64 %i.su to i32
  %i.ta = add i32 %i.sy, %i.sz                    ; 3 uses
  store i32 %i.ta, ptr @input_len, align 4, !tbaa !15
  %.b.i112.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i112.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.tb = load ptr, ptr @progress, align 8, !tbaa !79
  %i.tc = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.td = zext i32 %i.ta to i64
  %i.te = add nsw i64 %i.tc, %i.td
  call void @display_throughput(ptr noundef %i.tb, i64 noundef %i.te) #24
  %.pre.i113.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.tf = phi i32 [ %.pre.i113.i, %bb.ft ], [ %i.ta, %bb.fs ]
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %.peel.next.i, label %.loopexit519.i, !llvm.loop !89

.loopexit519.i:                                   ; preds = %bb.fu, %bb.fp, %bb.fi
  %.0.i109.i = phi ptr [ %i.rt, %bb.fi ], [ @input_buffer, %bb.fp ], [ @input_buffer, %bb.fu ]
  %i.th = load i8, ptr %.0.i109.i, align 1, !tbaa !28 ; 2 uses
  %i.ti = load i32, ptr @input_crc32, align 4, !tbaa !15
  %i.tj = zext i32 %i.ti to i64
  %i.tk = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.tl = zext i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.tl
  %i.tn = call i64 @crc32(i64 noundef %i.tj, ptr noundef nonnull %i.tm, i32 noundef 1) #24
  %i.to = trunc i64 %i.tn to i32
  store i32 %i.to, ptr @input_crc32, align 4, !tbaa !15
  %i.tp = load i32, ptr @input_len, align 4, !tbaa !15
  %i.tq = add i32 %i.tp, -1
  store i32 %i.tq, ptr @input_len, align 4, !tbaa !15
  %i.tr = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr @input_offset, align 4, !tbaa !15
  %i.tt = load i64, ptr @consumed_bytes, align 8, !tbaa !31 ; 3 uses
  %i.tu = icmp eq i64 %i.tt, 9223372036854775807
  br i1 %i.tu, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.loopexit519.i
  %i.tv = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  call void (ptr, ...) @die(ptr noundef %i.tv) #25
  unreachable

bb.fw:                                            ; preds = %.loopexit519.i
  %i.tw = add nsw i64 %i.tt, 1
  store i64 %i.tw, ptr @consumed_bytes, align 8, !tbaa !31
  %i.tx = load i64, ptr @max_input_size, align 8, !tbaa !31 ; 3 uses
  %.not.i105.i = icmp ne i64 %i.tx, 0
  %i.ty = icmp sge i64 %i.tt, %i.tx
  %or.cond.i106.i = and i1 %.not.i105.i, %i.ty
  br i1 %or.cond.i106.i, label %bb.fx, label %use.exit107.i

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) @__const.repack_local_links.line, i64 24, i1 false)
  call void @strbuf_humanise_bytes(ptr noundef nonnull %14, i64 noundef %i.tx) #24
  %i.tz = call fastcc ptr @_(ptr noundef nonnull @.str.59)
  %i.ua = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !91
  call void (ptr, ...) @die(ptr noundef %i.tz, ptr noundef %i.ub) #25
  unreachable

use.exit107.i:                                    ; preds = %bb.fw
  %i.uc = shl nuw i64 %.04263.i.i, 7
  %i.ud = add nuw i64 %i.uc, 128
  %i.ue = and i8 %i.th, 127
  %i.uf = zext nneg i8 %i.ue to i64
  %i.ug = or disjoint i64 %i.ud, %i.uf            ; 2 uses
  %.not48.i.i = icmp sgt i8 %i.th, -1
  br i1 %.not48.i.i, label %._crit_edge66.i.i, label %.lr.ph65.i.i, !llvm.loop !93

._crit_edge66.i.i:                                ; preds = %use.exit107.i, %bb.ff
  %.042.lcssa.i.i = phi i64 [ %i.rn, %bb.ff ], [ %i.ug, %use.exit107.i ]
  %i.uh = load i64, ptr %i.ol, align 8, !tbaa !81
  %i.ui = sub nsw i64 %i.uh, %.042.lcssa.i.i      ; 3 uses
  store i64 %i.ui, ptr %.0282.i, align 8, !tbaa !31
  %i.uj = icmp sgt i64 %i.ui, 0
  %.pre77.i.i = load i64, ptr %i.ol, align 8, !tbaa !81 ; 2 uses
  %.not49.i.i = icmp slt i64 %i.ui, %.pre77.i.i
  %or.cond91.i.i = select i1 %i.uj, i1 %.not49.i.i, i1 false
  br i1 %or.cond91.i.i, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge66.i.i
  %i.uk = call fastcc ptr @_(ptr noundef nonnull @.str.69)
  call void (i64, ptr, ...) @bad_object(i64 noundef %.pre77.i.i, ptr noundef %i.uk) #27
  unreachable

bb.fz:                                            ; preds = %._crit_edge.i.i169
  %i.ul = load i64, ptr %i.ol, align 8, !tbaa !81
  %i.um = call fastcc ptr @_(ptr noundef nonnull @.str.70)
  %i.un = load i8, ptr %i.os, align 1, !tbaa !85
  %i.uo = sext i8 %i.un to i32
  call void (i64, ptr, ...) @bad_object(i64 noundef %i.ul, ptr noundef %i.um, i32 noundef %i.uo) #27
  unreachable

bb.ga:                                            ; preds = %._crit_edge66.i.i, %oidread.exit.i.i, %._crit_edge.i.i169, %._crit_edge.i.i169, %._crit_edge.i.i169, %._crit_edge.i.i169
  %i.up = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.uq = load i64, ptr %i.ol, align 8, !tbaa !81 ; 2 uses
  %i.ur = sub nsw i64 %i.up, %i.uq
  %i.us = trunc i64 %i.ur to i8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.oj, i64 56
  store i8 %i.us, ptr %i.ut, align 8, !tbaa !94
  %i.uu = load i64, ptr %i.qt, align 8, !tbaa !86 ; 5 uses
  %i.uv = load i8, ptr %i.os, align 1, !tbaa !85  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.uw = and i8 %i.uv, -2
  %.not.i.i.i = icmp eq i8 %i.uw, 6
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ux = sext i8 %i.uv to i32
  %i.uy = call i32 @format_object_header(ptr noundef nonnull %i.j, i64 noundef 32, i32 noundef range(i32 -128, 128) %i.ux, i64 noundef %i.uu) #24
  %i.uz = load ptr, ptr @the_repository, align 8, !tbaa !16
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 448
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !38
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 40
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !70
  call void %i.vd(ptr noundef nonnull %20) #24, !inline_history !95
  %i.ve = sext i32 %i.uy to i64
  call void @git_hash_update(ptr noundef nonnull %20, ptr noundef nonnull %i.j, i64 noundef %i.ve) #24
  %i.vf = icmp eq i8 %i.uv, 3
  br i1 %i.vf, label %bb.gc, label %.thread.i.i.i

bb.gc:                                            ; preds = %bb.gb
  %i.vg = load ptr, ptr @the_repository, align 8, !tbaa !16
  %i.vh = call i64 @repo_settings_get_big_file_threshold(ptr noundef %i.vg) #24
  %i.vi = icmp ugt i64 %i.uu, %i.vh
  br i1 %i.vi, label %bb.gd, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.gc, %bb.gb, %bb.ga
  %.02449.i.i.i = phi ptr [ %i.oj, %bb.gb ], [ %i.oj, %bb.gc ], [ null, %bb.ga ]
  %i.vj = call ptr @xmallocz(i64 noundef %i.uu) #24
  %i.vk = freeze ptr %i.vj
  br label %bb.gd

bb.gd:                                            ; preds = %.thread.i.i.i, %bb.gc
  %.02448.i.i.i = phi ptr [ %.02449.i.i.i, %.thread.i.i.i ], [ %i.oj, %bb.gc ] ; 2 uses
  %.0.i.i.i.a = phi ptr [ %i.vk, %.thread.i.i.i ], [ @unpack_entry_data.fixed_buf, %bb.gc ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %19, i8 0, i64 160, i1 false)
  call void @git_inflate_init(ptr noundef nonnull %19) #24
  store ptr %.0.i.i.i.a, ptr %i.od, align 8, !tbaa !96
  %i.vl = icmp eq ptr %.0.i.i.i.a, @unpack_entry_data.fixed_buf ; 4 uses
  %i.vm = select i1 %i.vl, i64 8192, i64 %i.uu
  store i64 %i.vm, ptr %i.oe, align 8, !tbaa !100
  %.not26.i.i.i = icmp eq ptr %.02448.i.i.i, null ; 2 uses
  br i1 %.not26.i.i.i, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.gd
  %.pre437.i = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %.pre722 = load i32, ptr @input_offset, align 4, !tbaa !15 ; 2 uses
  br i1 %i.vl, label %.split.us.split.us.i.i.i, label %.split.us.split.i.i.i

.split.us.split.us.i.i.i:                         ; preds = %.split.us.i.i.i, %use.exit95.i
  %i.vn = phi i32 [ %i.xx, %use.exit95.i ], [ %.pre722, %.split.us.i.i.i ] ; 4 uses
  %i.vo = phi i32 [ %i.xv, %use.exit95.i ], [ %.pre437.i, %.split.us.i.i.i ] ; 2 uses
  %.not.i96.i = icmp eq i32 %i.vo, 0
  br i1 %.not.i96.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.split.us.split.us.i.i.i
  %i.vp = zext i32 %i.vn to i64
  %i.vq = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.vp
  br label %fill.exit104.i

bb.gf:                                            ; preds = %.split.us.split.us.i.i.i
  %.not.i.i98.i = icmp eq i32 %i.vn, 0
  br i1 %.not.i.i98.i, label %flush.exit.i99.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.vr = load i32, ptr @output_fd, align 4, !tbaa !15 ; 2 uses
  %i.vs = icmp sgt i32 %i.vr, -1
  br i1 %i.vs, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.vt = zext i32 %i.vn to i64
  call void @write_or_die(i32 noundef %i.vr, ptr noundef nonnull @input_buffer, i64 noundef %i.vt) #24
  %.pre.i.i103.i = load i32, ptr @input_offset, align 4, !tbaa !15
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %i.vu = phi i32 [ %.pre.i.i103.i, %bb.gh ], [ %i.vn, %bb.gg ]
  %i.vv = zext i32 %i.vu to i64
  call void @git_hash_update(ptr noundef nonnull @input_ctx, ptr noundef nonnull @input_buffer, i64 noundef %i.vv) #24
  %i.vw = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.vx = zext i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.vx
  %i.vz = load i32, ptr @input_len, align 4, !tbaa !15
  %i.wa = zext i32 %i.vz to i64                   ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @input_buffer, ptr nonnull align 1 %i.vy, i64 %i.wa, i1 false)
  store i32 0, ptr @input_offset, align 4, !tbaa !15
  br label %flush.exit.i99.i

flush.exit.i99.i:                                 ; preds = %bb.gi, %bb.gf
  %i.wb = phi i64 [ 0, %bb.gf ], [ %i.wa, %bb.gi ] ; 2 uses
  %i.wc = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.wd = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.wb
  %i.we = sub nsw i64 131072, %i.wb
  %i.wf = call i64 @xread(i32 noundef %i.wc, ptr noundef nonnull %i.wd, i64 noundef %i.we) #24 ; 3 uses
  %i.wg = icmp slt i64 %i.wf, 1
  br i1 %i.wg, label %.loopexit430.i, label %bb.gj

bb.gj:                                            ; preds = %flush.exit.i99.i
  %i.wh = load i32, ptr @input_len, align 4, !tbaa !15
  %i.wi = trunc i64 %i.wf to i32
  %i.wj = add i32 %i.wh, %i.wi                    ; 3 uses
  store i32 %i.wj, ptr @input_len, align 4, !tbaa !15
  %.b.i100.peel.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i100.peel.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.wk = load ptr, ptr @progress, align 8, !tbaa !79
  %i.wl = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.wm = zext i32 %i.wj to i64
  %i.wn = add nsw i64 %i.wl, %i.wm
  call void @display_throughput(ptr noundef %i.wk, i64 noundef %i.wn) #24
  %.pre.i101.peel.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.wo = phi i32 [ %.pre.i101.peel.i, %bb.gk ], [ %i.wj, %bb.gj ] ; 2 uses
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %.peel.next428.i, label %fill.exit104.i

.peel.next428.i:                                  ; preds = %bb.gl, %bb.gq
  %i.wq = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.wr = call i64 @xread(i32 noundef %i.wq, ptr noundef nonnull @input_buffer, i64 noundef 131072) #24 ; 3 uses
  %i.ws = icmp slt i64 %i.wr, 1
  br i1 %i.ws, label %.loopexit430.i, label %bb.go

.loopexit430.i:                                   ; preds = %flush.exit.i99.i, %.peel.next428.i
  %.lcssa321.i = phi i64 [ %i.wr, %.peel.next428.i ], [ %i.wf, %flush.exit.i99.i ]
  %.not11.i102.i = icmp eq i64 %.lcssa321.i, 0
  br i1 %.not11.i102.i, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.loopexit430.i
  %i.wt = call fastcc ptr @_(ptr noundef nonnull @.str.55)
  call void (ptr, ...) @die(ptr noundef %i.wt) #25
  unreachable

bb.gn:                                            ; preds = %.loopexit430.i
  %i.wu = call fastcc ptr @_(ptr noundef nonnull @.str.56)
  call void (ptr, ...) @die_errno(ptr noundef %i.wu) #25
  unreachable

bb.go:                                            ; preds = %.peel.next428.i
  %i.wv = load i32, ptr @input_len, align 4, !tbaa !15
  %i.ww = trunc i64 %i.wr to i32
  %i.wx = add i32 %i.wv, %i.ww                    ; 3 uses
  store i32 %i.wx, ptr @input_len, align 4, !tbaa !15
  %.b.i100.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i100.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.wy = load ptr, ptr @progress, align 8, !tbaa !79
  %i.wz = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.xa = zext i32 %i.wx to i64
  %i.xb = add nsw i64 %i.wz, %i.xa
  call void @display_throughput(ptr noundef %i.wy, i64 noundef %i.xb) #24
  %.pre.i101.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.xc = phi i32 [ %.pre.i101.i, %bb.gp ], [ %i.wx, %bb.go ] ; 2 uses
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %.peel.next428.i, label %fill.exit104.i, !llvm.loop !101

fill.exit104.i:                                   ; preds = %bb.gq, %bb.gl, %bb.ge
  %i.xe = phi i32 [ %i.vo, %bb.ge ], [ %i.wo, %bb.gl ], [ %i.xc, %bb.gq ]
  %.0.i97.i = phi ptr [ %i.vq, %bb.ge ], [ @input_buffer, %bb.gl ], [ @input_buffer, %bb.gq ]
  store ptr %.0.i97.i, ptr %i.of, align 8, !tbaa !102
  %i.xf = zext i32 %i.xe to i64
  store i64 %i.xf, ptr %i.og, align 8, !tbaa !103
  %i.xg = call i32 @git_inflate(ptr noundef nonnull %19, i32 noundef 0) #24 ; 2 uses
  %i.xh = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %i.xi = load i64, ptr %i.og, align 8, !tbaa !103
  %i.xj = trunc i64 %i.xi to i32                  ; 2 uses
  %i.xk = icmp ult i32 %i.xh, %i.xj
  br i1 %i.xk, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %fill.exit104.i
  %i.xl = call fastcc ptr @_(ptr noundef nonnull @.str.57)
  call void (ptr, ...) @die(ptr noundef %i.xl) #25
  unreachable

bb.gs:                                            ; preds = %fill.exit104.i
  %i.xm = sub nuw i32 %i.xh, %i.xj                ; 4 uses
  %i.xn = load i32, ptr @input_crc32, align 4, !tbaa !15
  %i.xo = zext i32 %i.xn to i64
  %i.xp = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.xq
  %i.xs = call i64 @crc32(i64 noundef %i.xo, ptr noundef nonnull %i.xr, i32 noundef %i.xm) #24
  %i.xt = trunc i64 %i.xs to i32
  store i32 %i.xt, ptr @input_crc32, align 4, !tbaa !15
  %i.xu = load i32, ptr @input_len, align 4, !tbaa !15
  %i.xv = sub i32 %i.xu, %i.xm                    ; 2 uses
  store i32 %i.xv, ptr @input_len, align 4, !tbaa !15
  %i.xw = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.xx = add i32 %i.xw, %i.xm                    ; 2 uses
  store i32 %i.xx, ptr @input_offset, align 4, !tbaa !15
  %i.xy = sext i32 %i.xm to i64                   ; 2 uses
  %i.xz = load i64, ptr @consumed_bytes, align 8, !tbaa !31 ; 2 uses
  %i.ya = sub nsw i64 9223372036854775807, %i.xz
  %i.yb = icmp slt i64 %i.ya, %i.xy
  br i1 %i.yb, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.yc = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  call void (ptr, ...) @die(ptr noundef %i.yc) #25
  unreachable

bb.gu:                                            ; preds = %bb.gs
  %i.yd = add nsw i64 %i.xz, %i.xy                ; 2 uses
  store i64 %i.yd, ptr @consumed_bytes, align 8, !tbaa !31
  %i.ye = load i64, ptr @max_input_size, align 8, !tbaa !31 ; 3 uses
  %.not.i93.i = icmp ne i64 %i.ye, 0
  %i.yf = icmp sgt i64 %i.yd, %i.ye
  %or.cond.i94.i = select i1 %.not.i93.i, i1 %i.yf, i1 false
  br i1 %or.cond.i94.i, label %bb.gv, label %use.exit95.i

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) @__const.repack_local_links.line, i64 24, i1 false)
  call void @strbuf_humanise_bytes(ptr noundef nonnull %15, i64 noundef %i.ye) #24
  %i.yg = call fastcc ptr @_(ptr noundef nonnull @.str.59)
  %i.yh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !91
  call void (ptr, ...) @die(ptr noundef %i.yg, ptr noundef %i.yi) #25
  unreachable

use.exit95.i:                                     ; preds = %bb.gu
  store ptr %.0.i.i.i.a, ptr %i.od, align 8, !tbaa !96
  store i64 8192, ptr %i.oe, align 8, !tbaa !100
  %i.yj = icmp eq i32 %i.xg, 0
  br i1 %i.yj, label %.split.us.split.us.i.i.i, label %.split28.us.i.i.i, !llvm.loop !104

.split.us.split.i.i.i:                            ; preds = %.split.us.i.i.i, %use.exit83.i
  %i.yk = phi i32 [ %i.aau, %use.exit83.i ], [ %.pre722, %.split.us.i.i.i ] ; 4 uses
  %i.yl = phi i32 [ %i.aas, %use.exit83.i ], [ %.pre437.i, %.split.us.i.i.i ] ; 2 uses
  %.not.i84.i = icmp eq i32 %i.yl, 0
  br i1 %.not.i84.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %.split.us.split.i.i.i
  %i.ym = zext i32 %i.yk to i64
  %i.yn = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.ym
  br label %fill.exit92.i

bb.gx:                                            ; preds = %.split.us.split.i.i.i
  %.not.i.i86.i = icmp eq i32 %i.yk, 0
  br i1 %.not.i.i86.i, label %flush.exit.i87.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.yo = load i32, ptr @output_fd, align 4, !tbaa !15 ; 2 uses
  %i.yp = icmp sgt i32 %i.yo, -1
  br i1 %i.yp, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.yq = zext i32 %i.yk to i64
  call void @write_or_die(i32 noundef %i.yo, ptr noundef nonnull @input_buffer, i64 noundef %i.yq) #24
  %.pre.i.i91.i = load i32, ptr @input_offset, align 4, !tbaa !15
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.yr = phi i32 [ %.pre.i.i91.i, %bb.gz ], [ %i.yk, %bb.gy ]
  %i.ys = zext i32 %i.yr to i64
  call void @git_hash_update(ptr noundef nonnull @input_ctx, ptr noundef nonnull @input_buffer, i64 noundef %i.ys) #24
  %i.yt = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.yu = zext i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.yu
  %i.yw = load i32, ptr @input_len, align 4, !tbaa !15
  %i.yx = zext i32 %i.yw to i64                   ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @input_buffer, ptr nonnull align 1 %i.yv, i64 %i.yx, i1 false)
  store i32 0, ptr @input_offset, align 4, !tbaa !15
  br label %flush.exit.i87.i

flush.exit.i87.i:                                 ; preds = %bb.ha, %bb.gx
  %i.yy = phi i64 [ 0, %bb.gx ], [ %i.yx, %bb.ha ] ; 2 uses
  %i.yz = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.za = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.yy
  %i.zb = sub nsw i64 131072, %i.yy
  %i.zc = call i64 @xread(i32 noundef %i.yz, ptr noundef nonnull %i.za, i64 noundef %i.zb) #24 ; 3 uses
  %i.zd = icmp slt i64 %i.zc, 1
  br i1 %i.zd, label %.loopexit424.i, label %bb.hb

bb.hb:                                            ; preds = %flush.exit.i87.i
  %i.ze = load i32, ptr @input_len, align 4, !tbaa !15
  %i.zf = trunc i64 %i.zc to i32
  %i.zg = add i32 %i.ze, %i.zf                    ; 3 uses
  store i32 %i.zg, ptr @input_len, align 4, !tbaa !15
  %.b.i88.peel.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i88.peel.i, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.zh = load ptr, ptr @progress, align 8, !tbaa !79
  %i.zi = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.zj = zext i32 %i.zg to i64
  %i.zk = add nsw i64 %i.zi, %i.zj
  call void @display_throughput(ptr noundef %i.zh, i64 noundef %i.zk) #24
  %.pre.i89.peel.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.zl = phi i32 [ %.pre.i89.peel.i, %bb.hc ], [ %i.zg, %bb.hb ] ; 2 uses
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %.peel.next422.i, label %fill.exit92.i

.peel.next422.i:                                  ; preds = %bb.hd, %bb.hi
  %i.zn = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.zo = call i64 @xread(i32 noundef %i.zn, ptr noundef nonnull @input_buffer, i64 noundef 131072) #24 ; 3 uses
  %i.zp = icmp slt i64 %i.zo, 1
  br i1 %i.zp, label %.loopexit424.i, label %bb.hg

.loopexit424.i:                                   ; preds = %flush.exit.i87.i, %.peel.next422.i
  %.lcssa313.i = phi i64 [ %i.zo, %.peel.next422.i ], [ %i.zc, %flush.exit.i87.i ]
  %.not11.i90.i = icmp eq i64 %.lcssa313.i, 0
  br i1 %.not11.i90.i, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.loopexit424.i
  %i.zq = call fastcc ptr @_(ptr noundef nonnull @.str.55)
  call void (ptr, ...) @die(ptr noundef %i.zq) #25
  unreachable

bb.hf:                                            ; preds = %.loopexit424.i
  %i.zr = call fastcc ptr @_(ptr noundef nonnull @.str.56)
  call void (ptr, ...) @die_errno(ptr noundef %i.zr) #25
  unreachable

bb.hg:                                            ; preds = %.peel.next422.i
  %i.zs = load i32, ptr @input_len, align 4, !tbaa !15
  %i.zt = trunc i64 %i.zo to i32
  %i.zu = add i32 %i.zs, %i.zt                    ; 3 uses
  store i32 %i.zu, ptr @input_len, align 4, !tbaa !15
  %.b.i88.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i88.i, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.zv = load ptr, ptr @progress, align 8, !tbaa !79
  %i.zw = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.zx = zext i32 %i.zu to i64
  %i.zy = add nsw i64 %i.zw, %i.zx
  call void @display_throughput(ptr noundef %i.zv, i64 noundef %i.zy) #24
  %.pre.i89.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.zz = phi i32 [ %.pre.i89.i, %bb.hh ], [ %i.zu, %bb.hg ] ; 2 uses
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %.peel.next422.i, label %fill.exit92.i, !llvm.loop !105

fill.exit92.i:                                    ; preds = %bb.hi, %bb.hd, %bb.gw
  %i.aab = phi i32 [ %i.yl, %bb.gw ], [ %i.zl, %bb.hd ], [ %i.zz, %bb.hi ]
  %.0.i85.i = phi ptr [ %i.yn, %bb.gw ], [ @input_buffer, %bb.hd ], [ @input_buffer, %bb.hi ]
  store ptr %.0.i85.i, ptr %i.of, align 8, !tbaa !102
  %i.aac = zext i32 %i.aab to i64
  store i64 %i.aac, ptr %i.og, align 8, !tbaa !103
  %i.aad = call i32 @git_inflate(ptr noundef nonnull %19, i32 noundef 0) #24 ; 2 uses
  %i.aae = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %i.aaf = load i64, ptr %i.og, align 8, !tbaa !103
  %i.aag = trunc i64 %i.aaf to i32                ; 2 uses
  %i.aah = icmp ult i32 %i.aae, %i.aag
  br i1 %i.aah, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %fill.exit92.i
  %i.aai = call fastcc ptr @_(ptr noundef nonnull @.str.57)
  call void (ptr, ...) @die(ptr noundef %i.aai) #25
  unreachable

bb.hk:                                            ; preds = %fill.exit92.i
  %i.aaj = sub nuw i32 %i.aae, %i.aag             ; 4 uses
  %i.aak = load i32, ptr @input_crc32, align 4, !tbaa !15
  %i.aal = zext i32 %i.aak to i64
  %i.aam = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.aan = zext i32 %i.aam to i64
  %i.aao = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.aan
  %i.aap = call i64 @crc32(i64 noundef %i.aal, ptr noundef nonnull %i.aao, i32 noundef %i.aaj) #24
  %i.aaq = trunc i64 %i.aap to i32
  store i32 %i.aaq, ptr @input_crc32, align 4, !tbaa !15
  %i.aar = load i32, ptr @input_len, align 4, !tbaa !15
  %i.aas = sub i32 %i.aar, %i.aaj                 ; 2 uses
  store i32 %i.aas, ptr @input_len, align 4, !tbaa !15
  %i.aat = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.aau = add i32 %i.aat, %i.aaj                 ; 2 uses
  store i32 %i.aau, ptr @input_offset, align 4, !tbaa !15
  %i.aav = sext i32 %i.aaj to i64                 ; 2 uses
  %i.aaw = load i64, ptr @consumed_bytes, align 8, !tbaa !31 ; 2 uses
  %i.aax = sub nsw i64 9223372036854775807, %i.aaw
  %i.aay = icmp slt i64 %i.aax, %i.aav
  br i1 %i.aay, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aaz = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  call void (ptr, ...) @die(ptr noundef %i.aaz) #25
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.aba = add nsw i64 %i.aaw, %i.aav             ; 2 uses
  store i64 %i.aba, ptr @consumed_bytes, align 8, !tbaa !31
  %i.abb = load i64, ptr @max_input_size, align 8, !tbaa !31 ; 3 uses
  %.not.i81.i = icmp ne i64 %i.abb, 0
  %i.abc = icmp sgt i64 %i.aba, %i.abb
  %or.cond.i82.i = select i1 %.not.i81.i, i1 %i.abc, i1 false
  br i1 %or.cond.i82.i, label %bb.hn, label %use.exit83.i

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) @__const.repack_local_links.line, i64 24, i1 false)
  call void @strbuf_humanise_bytes(ptr noundef nonnull %16, i64 noundef %i.abb) #24
  %i.abd = call fastcc ptr @_(ptr noundef nonnull @.str.59)
  %i.abe = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !91
  call void (ptr, ...) @die(ptr noundef %i.abd, ptr noundef %i.abf) #25
  unreachable

use.exit83.i:                                     ; preds = %bb.hm
  %i.abg = icmp eq i32 %i.aad, 0
  br i1 %i.abg, label %.split.us.split.i.i.i, label %.split28.us.i.i.i, !llvm.loop !104

.split.i.i.i:                                     ; preds = %bb.gd
  br i1 %i.vl, label %.split.split.us.i.i.i, label %.split.split.i.i.i

.split.split.us.i.i.i:                            ; preds = %.split.i.i.i, %use.exit71.i
  %i.abh = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %.not.i72.i = icmp eq i32 %i.abh, 0
  %i.abi = load i32, ptr @input_offset, align 4, !tbaa !15 ; 4 uses
  br i1 %.not.i72.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %.split.split.us.i.i.i
  %i.abj = zext i32 %i.abi to i64
  %i.abk = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.abj
  br label %fill.exit80.i

bb.hp:                                            ; preds = %.split.split.us.i.i.i
  %.not.i.i74.i = icmp eq i32 %i.abi, 0
  br i1 %.not.i.i74.i, label %flush.exit.i75.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.abl = load i32, ptr @output_fd, align 4, !tbaa !15 ; 2 uses
  %i.abm = icmp sgt i32 %i.abl, -1
  br i1 %i.abm, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.abn = zext i32 %i.abi to i64
  call void @write_or_die(i32 noundef %i.abl, ptr noundef nonnull @input_buffer, i64 noundef %i.abn) #24
  %.pre.i.i79.i = load i32, ptr @input_offset, align 4, !tbaa !15
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.abo = phi i32 [ %.pre.i.i79.i, %bb.hr ], [ %i.abi, %bb.hq ]
  %i.abp = zext i32 %i.abo to i64
  call void @git_hash_update(ptr noundef nonnull @input_ctx, ptr noundef nonnull @input_buffer, i64 noundef %i.abp) #24
  %i.abq = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.abr
  %i.abt = load i32, ptr @input_len, align 4, !tbaa !15
  %i.abu = zext i32 %i.abt to i64                 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @input_buffer, ptr nonnull align 1 %i.abs, i64 %i.abu, i1 false)
  store i32 0, ptr @input_offset, align 4, !tbaa !15
  br label %flush.exit.i75.i

flush.exit.i75.i:                                 ; preds = %bb.hs, %bb.hp
  %i.abv = phi i64 [ 0, %bb.hp ], [ %i.abu, %bb.hs ] ; 2 uses
  %i.abw = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.abx = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.abv
  %i.aby = sub nsw i64 131072, %i.abv
  %i.abz = call i64 @xread(i32 noundef %i.abw, ptr noundef nonnull %i.abx, i64 noundef %i.aby) #24 ; 3 uses
  %i.aca = icmp slt i64 %i.abz, 1
  br i1 %i.aca, label %.loopexit418.i, label %bb.ht

bb.ht:                                            ; preds = %flush.exit.i75.i
  %i.acb = load i32, ptr @input_len, align 4, !tbaa !15
  %i.acc = trunc i64 %i.abz to i32
  %i.acd = add i32 %i.acb, %i.acc                 ; 3 uses
  store i32 %i.acd, ptr @input_len, align 4, !tbaa !15
  %.b.i76.peel.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i76.peel.i, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.ace = load ptr, ptr @progress, align 8, !tbaa !79
  %i.acf = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.acg = zext i32 %i.acd to i64
  %i.ach = add nsw i64 %i.acf, %i.acg
  call void @display_throughput(ptr noundef %i.ace, i64 noundef %i.ach) #24
  %.pre.i77.peel.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.aci = phi i32 [ %.pre.i77.peel.i, %bb.hu ], [ %i.acd, %bb.ht ] ; 2 uses
  %i.acj = icmp eq i32 %i.aci, 0
  br i1 %i.acj, label %.peel.next416.i, label %fill.exit80.i

.peel.next416.i:                                  ; preds = %bb.hv, %bb.ia
  %i.ack = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.acl = call i64 @xread(i32 noundef %i.ack, ptr noundef nonnull @input_buffer, i64 noundef 131072) #24 ; 3 uses
  %i.acm = icmp slt i64 %i.acl, 1
  br i1 %i.acm, label %.loopexit418.i, label %bb.hy

.loopexit418.i:                                   ; preds = %flush.exit.i75.i, %.peel.next416.i
  %.lcssa305.i = phi i64 [ %i.acl, %.peel.next416.i ], [ %i.abz, %flush.exit.i75.i ]
  %.not11.i78.i = icmp eq i64 %.lcssa305.i, 0
  br i1 %.not11.i78.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.loopexit418.i
  %i.acn = call fastcc ptr @_(ptr noundef nonnull @.str.55)
  call void (ptr, ...) @die(ptr noundef %i.acn) #25
  unreachable

bb.hx:                                            ; preds = %.loopexit418.i
  %i.aco = call fastcc ptr @_(ptr noundef nonnull @.str.56)
  call void (ptr, ...) @die_errno(ptr noundef %i.aco) #25
  unreachable

bb.hy:                                            ; preds = %.peel.next416.i
  %i.acp = load i32, ptr @input_len, align 4, !tbaa !15
  %i.acq = trunc i64 %i.acl to i32
  %i.acr = add i32 %i.acp, %i.acq                 ; 3 uses
  store i32 %i.acr, ptr @input_len, align 4, !tbaa !15
  %.b.i76.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i76.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.acs = load ptr, ptr @progress, align 8, !tbaa !79
  %i.act = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.acu = zext i32 %i.acr to i64
  %i.acv = add nsw i64 %i.act, %i.acu
  call void @display_throughput(ptr noundef %i.acs, i64 noundef %i.acv) #24
  %.pre.i77.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.acw = phi i32 [ %.pre.i77.i, %bb.hz ], [ %i.acr, %bb.hy ] ; 2 uses
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %.peel.next416.i, label %fill.exit80.i, !llvm.loop !106

fill.exit80.i:                                    ; preds = %bb.ia, %bb.hv, %bb.ho
  %i.acy = phi i32 [ %i.abh, %bb.ho ], [ %i.aci, %bb.hv ], [ %i.acw, %bb.ia ]
  %.0.i73.i = phi ptr [ %i.abk, %bb.ho ], [ @input_buffer, %bb.hv ], [ @input_buffer, %bb.ia ]
  store ptr %.0.i73.i, ptr %i.of, align 8, !tbaa !102
  %i.acz = zext i32 %i.acy to i64
  store i64 %i.acz, ptr %i.og, align 8, !tbaa !103
  %i.ada = call i32 @git_inflate(ptr noundef nonnull %19, i32 noundef 0) #24 ; 2 uses
  %i.adb = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %i.adc = load i64, ptr %i.og, align 8, !tbaa !103
  %i.add = trunc i64 %i.adc to i32                ; 2 uses
  %i.ade = icmp ult i32 %i.adb, %i.add
  br i1 %i.ade, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %fill.exit80.i
  %i.adf = call fastcc ptr @_(ptr noundef nonnull @.str.57)
  call void (ptr, ...) @die(ptr noundef %i.adf) #25
  unreachable

bb.ic:                                            ; preds = %fill.exit80.i
  %i.adg = sub nuw i32 %i.adb, %i.add             ; 4 uses
  %i.adh = load i32, ptr @input_crc32, align 4, !tbaa !15
  %i.adi = zext i32 %i.adh to i64
  %i.adj = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.adk = zext i32 %i.adj to i64
  %i.adl = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.adk
  %i.adm = call i64 @crc32(i64 noundef %i.adi, ptr noundef nonnull %i.adl, i32 noundef %i.adg) #24
  %i.adn = trunc i64 %i.adm to i32
  store i32 %i.adn, ptr @input_crc32, align 4, !tbaa !15
  %i.ado = load i32, ptr @input_len, align 4, !tbaa !15
  %i.adp = sub i32 %i.ado, %i.adg
  store i32 %i.adp, ptr @input_len, align 4, !tbaa !15
  %i.adq = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.adr = add i32 %i.adq, %i.adg
  store i32 %i.adr, ptr @input_offset, align 4, !tbaa !15
  %i.ads = sext i32 %i.adg to i64                 ; 2 uses
  %i.adt = load i64, ptr @consumed_bytes, align 8, !tbaa !31 ; 2 uses
  %i.adu = sub nsw i64 9223372036854775807, %i.adt
  %i.adv = icmp slt i64 %i.adu, %i.ads
  br i1 %i.adv, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.adw = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  call void (ptr, ...) @die(ptr noundef %i.adw) #25
  unreachable

bb.ie:                                            ; preds = %bb.ic
  %i.adx = add nsw i64 %i.adt, %i.ads             ; 2 uses
  store i64 %i.adx, ptr @consumed_bytes, align 8, !tbaa !31
  %i.ady = load i64, ptr @max_input_size, align 8, !tbaa !31 ; 3 uses
  %.not.i69.i = icmp ne i64 %i.ady, 0
  %i.adz = icmp sgt i64 %i.adx, %i.ady
  %or.cond.i70.i = select i1 %.not.i69.i, i1 %i.adz, i1 false
  br i1 %or.cond.i70.i, label %bb.if, label %use.exit71.i

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) @__const.repack_local_links.line, i64 24, i1 false)
  call void @strbuf_humanise_bytes(ptr noundef nonnull %17, i64 noundef %i.ady) #24
  %i.aea = call fastcc ptr @_(ptr noundef nonnull @.str.59)
  %i.aeb = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !91
  call void (ptr, ...) @die(ptr noundef %i.aea, ptr noundef %i.aec) #25
  unreachable

use.exit71.i:                                     ; preds = %bb.ie
  %i.aed = load ptr, ptr %i.od, align 8, !tbaa !96
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = sub i64 %i.aee, ptrtoint (ptr @unpack_entry_data.fixed_buf to i64)
  call void @git_hash_update(ptr noundef nonnull %20, ptr noundef nonnull %.0.i.i.i.a, i64 noundef %i.aef) #24
  store ptr %.0.i.i.i.a, ptr %i.od, align 8, !tbaa !96
  store i64 8192, ptr %i.oe, align 8, !tbaa !100
  %i.aeg = icmp eq i32 %i.ada, 0
  br i1 %i.aeg, label %.split.split.us.i.i.i, label %.split28.us.i.i.i, !llvm.loop !104

.split.split.i.i.i:                               ; preds = %.split.i.i.i, %use.exit.i
  %i.aeh = load ptr, ptr %i.od, align 8, !tbaa !96 ; 2 uses
  %i.aei = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %.not.i65.i = icmp eq i32 %i.aei, 0
  %i.aej = load i32, ptr @input_offset, align 4, !tbaa !15 ; 4 uses
  br i1 %.not.i65.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %.split.split.i.i.i
  %i.aek = zext i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.aek
  br label %fill.exit.i

bb.ih:                                            ; preds = %.split.split.i.i.i
  %.not.i.i67.i = icmp eq i32 %i.aej, 0
  br i1 %.not.i.i67.i, label %flush.exit.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aem = load i32, ptr @output_fd, align 4, !tbaa !15 ; 2 uses
  %i.aen = icmp sgt i32 %i.aem, -1
  br i1 %i.aen, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aeo = zext i32 %i.aej to i64
  call void @write_or_die(i32 noundef %i.aem, ptr noundef nonnull @input_buffer, i64 noundef %i.aeo) #24
  %.pre.i.i.i = load i32, ptr @input_offset, align 4, !tbaa !15
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.aep = phi i32 [ %.pre.i.i.i, %bb.ij ], [ %i.aej, %bb.ii ]
  %i.aeq = zext i32 %i.aep to i64
  call void @git_hash_update(ptr noundef nonnull @input_ctx, ptr noundef nonnull @input_buffer, i64 noundef %i.aeq) #24
  %i.aer = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.aes = zext i32 %i.aer to i64
  %i.aet = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.aes
  %i.aeu = load i32, ptr @input_len, align 4, !tbaa !15
  %i.aev = zext i32 %i.aeu to i64                 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @input_buffer, ptr nonnull align 1 %i.aet, i64 %i.aev, i1 false)
  store i32 0, ptr @input_offset, align 4, !tbaa !15
  br label %flush.exit.i.i

flush.exit.i.i:                                   ; preds = %bb.ik, %bb.ih
  %i.aew = phi i64 [ 0, %bb.ih ], [ %i.aev, %bb.ik ] ; 2 uses
  %i.aex = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.aey = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.aew
  %i.aez = sub nsw i64 131072, %i.aew
  %i.afa = call i64 @xread(i32 noundef %i.aex, ptr noundef nonnull %i.aey, i64 noundef %i.aez) #24 ; 3 uses
  %i.afb = icmp slt i64 %i.afa, 1
  br i1 %i.afb, label %.loopexit412.i, label %bb.il

bb.il:                                            ; preds = %flush.exit.i.i
  %i.afc = load i32, ptr @input_len, align 4, !tbaa !15
  %i.afd = trunc i64 %i.afa to i32
  %i.afe = add i32 %i.afc, %i.afd                 ; 3 uses
  store i32 %i.afe, ptr @input_len, align 4, !tbaa !15
  %.b.i.peel.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i.peel.i, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.aff = load ptr, ptr @progress, align 8, !tbaa !79
  %i.afg = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.afh = zext i32 %i.afe to i64
  %i.afi = add nsw i64 %i.afg, %i.afh
  call void @display_throughput(ptr noundef %i.aff, i64 noundef %i.afi) #24
  %.pre.i68.peel.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.afj = phi i32 [ %.pre.i68.peel.i, %bb.im ], [ %i.afe, %bb.il ] ; 2 uses
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %.peel.next410.i, label %fill.exit.i

.peel.next410.i:                                  ; preds = %bb.in, %bb.is
  %i.afl = load i32, ptr @input_fd, align 4, !tbaa !15
  %i.afm = call i64 @xread(i32 noundef %i.afl, ptr noundef nonnull @input_buffer, i64 noundef 131072) #24 ; 3 uses
  %i.afn = icmp slt i64 %i.afm, 1
  br i1 %i.afn, label %.loopexit412.i, label %bb.iq

.loopexit412.i:                                   ; preds = %flush.exit.i.i, %.peel.next410.i
  %.lcssa297.i = phi i64 [ %i.afm, %.peel.next410.i ], [ %i.afa, %flush.exit.i.i ]
  %.not11.i.i = icmp eq i64 %.lcssa297.i, 0
  br i1 %.not11.i.i, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %.loopexit412.i
  %i.afo = call fastcc ptr @_(ptr noundef nonnull @.str.55)
  call void (ptr, ...) @die(ptr noundef %i.afo) #25
  unreachable

bb.ip:                                            ; preds = %.loopexit412.i
  %i.afp = call fastcc ptr @_(ptr noundef nonnull @.str.56)
  call void (ptr, ...) @die_errno(ptr noundef %i.afp) #25
  unreachable

bb.iq:                                            ; preds = %.peel.next410.i
  %i.afq = load i32, ptr @input_len, align 4, !tbaa !15
  %i.afr = trunc i64 %i.afm to i32
  %i.afs = add i32 %i.afq, %i.afr                 ; 3 uses
  store i32 %i.afs, ptr @input_len, align 4, !tbaa !15
  %.b.i.i = load i1, ptr @from_stdin, align 4
  br i1 %.b.i.i, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.aft = load ptr, ptr @progress, align 8, !tbaa !79
  %i.afu = load i64, ptr @consumed_bytes, align 8, !tbaa !31
  %i.afv = zext i32 %i.afs to i64
  %i.afw = add nsw i64 %i.afu, %i.afv
  call void @display_throughput(ptr noundef %i.aft, i64 noundef %i.afw) #24
  %.pre.i68.i = load i32, ptr @input_len, align 4, !tbaa !15
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.afx = phi i32 [ %.pre.i68.i, %bb.ir ], [ %i.afs, %bb.iq ] ; 2 uses
  %i.afy = icmp eq i32 %i.afx, 0
  br i1 %i.afy, label %.peel.next410.i, label %fill.exit.i, !llvm.loop !107

fill.exit.i:                                      ; preds = %bb.is, %bb.in, %bb.ig
  %i.afz = phi i32 [ %i.aei, %bb.ig ], [ %i.afj, %bb.in ], [ %i.afx, %bb.is ]
  %.0.i66.i = phi ptr [ %i.ael, %bb.ig ], [ @input_buffer, %bb.in ], [ @input_buffer, %bb.is ]
  store ptr %.0.i66.i, ptr %i.of, align 8, !tbaa !102
  %i.aga = zext i32 %i.afz to i64
  store i64 %i.aga, ptr %i.og, align 8, !tbaa !103
  %i.agb = call i32 @git_inflate(ptr noundef nonnull %19, i32 noundef 0) #24 ; 2 uses
  %i.agc = load i32, ptr @input_len, align 4, !tbaa !15 ; 2 uses
  %i.agd = load i64, ptr %i.og, align 8, !tbaa !103
  %i.age = trunc i64 %i.agd to i32                ; 2 uses
  %i.agf = icmp ult i32 %i.agc, %i.age
  br i1 %i.agf, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %fill.exit.i
  %i.agg = call fastcc ptr @_(ptr noundef nonnull @.str.57)
  call void (ptr, ...) @die(ptr noundef %i.agg) #25
  unreachable

bb.iu:                                            ; preds = %fill.exit.i
  %i.agh = sub nuw i32 %i.agc, %i.age             ; 4 uses
  %i.agi = load i32, ptr @input_crc32, align 4, !tbaa !15
  %i.agj = zext i32 %i.agi to i64
  %i.agk = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.agl = zext i32 %i.agk to i64
  %i.agm = getelementptr inbounds nuw i8, ptr @input_buffer, i64 %i.agl
  %i.agn = call i64 @crc32(i64 noundef %i.agj, ptr noundef nonnull %i.agm, i32 noundef %i.agh) #24
  %i.ago = trunc i64 %i.agn to i32
  store i32 %i.ago, ptr @input_crc32, align 4, !tbaa !15
  %i.agp = load i32, ptr @input_len, align 4, !tbaa !15
  %i.agq = sub i32 %i.agp, %i.agh
  store i32 %i.agq, ptr @input_len, align 4, !tbaa !15
  %i.agr = load i32, ptr @input_offset, align 4, !tbaa !15
  %i.ags = add i32 %i.agr, %i.agh
  store i32 %i.ags, ptr @input_offset, align 4, !tbaa !15
  %i.agt = sext i32 %i.agh to i64                 ; 2 uses
  %i.agu = load i64, ptr @consumed_bytes, align 8, !tbaa !31 ; 2 uses
  %i.agv = sub nsw i64 9223372036854775807, %i.agu
  %i.agw = icmp slt i64 %i.agv, %i.agt
  br i1 %i.agw, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.agx = call fastcc ptr @_(ptr noundef nonnull @.str.58)
  call void (ptr, ...) @die(ptr noundef %i.agx) #25
  unreachable

bb.iw:                                            ; preds = %bb.iu
  %i.agy = add nsw i64 %i.agu, %i.agt             ; 2 uses
  store i64 %i.agy, ptr @consumed_bytes, align 8, !tbaa !31
  %i.agz = load i64, ptr @max_input_size, align 8, !tbaa !31 ; 3 uses
  %.not.i63.i = icmp ne i64 %i.agz, 0
  %i.aha = icmp sgt i64 %i.agy, %i.agz
  %or.cond.i64.i = select i1 %.not.i63.i, i1 %i.aha, i1 false
  br i1 %or.cond.i64.i, label %bb.ix, label %use.exit.i

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) @__const.repack_local_links.line, i64 24, i1 false)
  call void @strbuf_humanise_bytes(ptr noundef nonnull %18, i64 noundef %i.agz) #24
  %i.ahb = call fastcc ptr @_(ptr noundef nonnull @.str.59)
  %i.ahc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !91
  call void (ptr, ...) @die(ptr noundef %i.ahb, ptr noundef %i.ahd) #25
  unreachable

use.exit.i:                                       ; preds = %bb.iw
  %i.ahe = load ptr, ptr %i.od, align 8, !tbaa !96
  %i.ahf = ptrtoint ptr %i.ahe to i64
  %i.ahg = ptrtoint ptr %i.aeh to i64
  %i.ahh = sub i64 %i.ahf, %i.ahg
  call void @git_hash_update(ptr noundef nonnull %20, ptr noundef %i.aeh, i64 noundef %i.ahh) #24
  %i.ahi = icmp eq i32 %i.agb, 0
  br i1 %i.ahi, label %.split.split.i.i.i, label %.split28.us.i.i.i, !llvm.loop !104

.split28.us.i.i.i:                                ; preds = %use.exit.i, %use.exit71.i, %use.exit83.i, %use.exit95.i
  %.us-phi.i.i.i = phi i32 [ %i.ada, %use.exit71.i ], [ %i.aad, %use.exit83.i ], [ %i.xg, %use.exit95.i ], [ %i.agb, %use.exit.i ] ; 2 uses
  %i.ahj = load i64, ptr %i.oh, align 8, !tbaa !108
  %i.ahk = icmp ne i64 %i.ahj, %i.uu
  %i.ahl = icmp ne i32 %.us-phi.i.i.i, 1
  %or.cond.i.i.i = select i1 %i.ahk, i1 true, i1 %i.ahl
  br i1 %or.cond.i.i.i, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %.split28.us.i.i.i
end_hunk_0
