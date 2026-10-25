Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/atapi?download=true
inline.NumInlined: 152
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@cmd_inquiry:bb.a
  %.not.i109.6 = icmp ne i8 %i.fh, 0              ; 2 uses
  %spec.select.i110.6 = select i1 %.not.i109.6, i8 %i.fh, i8 32
  %spec.select13.idx.i111.6 = zext i1 %.not.i109.6 to i64
  %spec.select13.i112.6 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.5, i64 %spec.select13.idx.i111.6 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 86
  store i8 %spec.select.i110.6, ptr %i.fi, align 1
  %i.fj = load i8, ptr %spec.select13.i112.6, align 1 ; 2 uses
  %.not.i109.7 = icmp ne i8 %i.fj, 0              ; 2 uses
  %spec.select.i110.7 = select i1 %.not.i109.7, i8 %i.fj, i8 32
  %spec.select13.idx.i111.7 = zext i1 %.not.i109.7 to i64
  %spec.select13.i112.7 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.6, i64 %spec.select13.idx.i111.7 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 87
  store i8 %spec.select.i110.7, ptr %i.fk, align 1
  %i.fl = load i8, ptr %spec.select13.i112.7, align 1 ; 2 uses
  %.not.i109.8 = icmp ne i8 %i.fl, 0              ; 2 uses
  %spec.select.i110.8 = select i1 %.not.i109.8, i8 %i.fl, i8 32
  %spec.select13.idx.i111.8 = zext i1 %.not.i109.8 to i64
  %spec.select13.i112.8 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.7, i64 %spec.select13.idx.i111.8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 %spec.select.i110.8, ptr %i.fm, align 1
  %i.fn = load i8, ptr %spec.select13.i112.8, align 1 ; 2 uses
  %.not.i109.9 = icmp ne i8 %i.fn, 0              ; 2 uses
  %spec.select.i110.9 = select i1 %.not.i109.9, i8 %i.fn, i8 32
  %spec.select13.idx.i111.9 = zext i1 %.not.i109.9 to i64
  %spec.select13.i112.9 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.8, i64 %spec.select13.idx.i111.9 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 89
  store i8 %spec.select.i110.9, ptr %i.fo, align 1
  %i.fp = load i8, ptr %spec.select13.i112.9, align 1 ; 2 uses
  %.not.i109.10 = icmp ne i8 %i.fp, 0             ; 2 uses
  %spec.select.i110.10 = select i1 %.not.i109.10, i8 %i.fp, i8 32
  %spec.select13.idx.i111.10 = zext i1 %.not.i109.10 to i64
  %spec.select13.i112.10 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.9, i64 %spec.select13.idx.i111.10 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 90
  store i8 %spec.select.i110.10, ptr %i.fq, align 1
  %i.fr = load i8, ptr %spec.select13.i112.10, align 1 ; 2 uses
  %.not.i109.11 = icmp ne i8 %i.fr, 0             ; 2 uses
  %spec.select.i110.11 = select i1 %.not.i109.11, i8 %i.fr, i8 32
  %spec.select13.idx.i111.11 = zext i1 %.not.i109.11 to i64
  %spec.select13.i112.11 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.10, i64 %spec.select13.idx.i111.11 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 91
  store i8 %spec.select.i110.11, ptr %i.fs, align 1
  %i.ft = load i8, ptr %spec.select13.i112.11, align 1 ; 2 uses
  %.not.i109.12 = icmp ne i8 %i.ft, 0             ; 2 uses
  %spec.select.i110.12 = select i1 %.not.i109.12, i8 %i.ft, i8 32
  %spec.select13.idx.i111.12 = zext i1 %.not.i109.12 to i64
  %spec.select13.i112.12 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.11, i64 %spec.select13.idx.i111.12 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i8 %spec.select.i110.12, ptr %i.fu, align 1
  %i.fv = load i8, ptr %spec.select13.i112.12, align 1 ; 2 uses
  %.not.i109.13 = icmp ne i8 %i.fv, 0             ; 2 uses
  %spec.select.i110.13 = select i1 %.not.i109.13, i8 %i.fv, i8 32
  %spec.select13.idx.i111.13 = zext i1 %.not.i109.13 to i64
  %spec.select13.i112.13 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.12, i64 %spec.select13.idx.i111.13 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 93
  store i8 %spec.select.i110.13, ptr %i.fw, align 1
  %i.fx = load i8, ptr %spec.select13.i112.13, align 1 ; 2 uses
  %.not.i109.14 = icmp ne i8 %i.fx, 0             ; 2 uses
  %spec.select.i110.14 = select i1 %.not.i109.14, i8 %i.fx, i8 32
  %spec.select13.idx.i111.14 = zext i1 %.not.i109.14 to i64
  %spec.select13.i112.14 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.13, i64 %spec.select13.idx.i111.14 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 94
  store i8 %spec.select.i110.14, ptr %i.fy, align 1
  %i.fz = load i8, ptr %spec.select13.i112.14, align 1 ; 2 uses
  %.not.i109.15 = icmp ne i8 %i.fz, 0             ; 2 uses
  %spec.select.i110.15 = select i1 %.not.i109.15, i8 %i.fz, i8 32
  %spec.select13.idx.i111.15 = zext i1 %.not.i109.15 to i64
  %spec.select13.i112.15 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.14, i64 %spec.select13.idx.i111.15 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 95
  store i8 %spec.select.i110.15, ptr %i.ga, align 1
  %i.gb = load i8, ptr %spec.select13.i112.15, align 1 ; 2 uses
  %.not.i109.16 = icmp ne i8 %i.gb, 0             ; 2 uses
  %spec.select.i110.16 = select i1 %.not.i109.16, i8 %i.gb, i8 32
  %spec.select13.idx.i111.16 = zext i1 %.not.i109.16 to i64
  %spec.select13.i112.16 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.15, i64 %spec.select13.idx.i111.16 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 %spec.select.i110.16, ptr %i.gc, align 1
  %i.gd = load i8, ptr %spec.select13.i112.16, align 1 ; 2 uses
  %.not.i109.17 = icmp ne i8 %i.gd, 0             ; 2 uses
  %spec.select.i110.17 = select i1 %.not.i109.17, i8 %i.gd, i8 32
  %spec.select13.idx.i111.17 = zext i1 %.not.i109.17 to i64
  %spec.select13.i112.17 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.16, i64 %spec.select13.idx.i111.17 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %spec.select.i110.17, ptr %i.ge, align 1
  %i.gf = load i8, ptr %spec.select13.i112.17, align 1 ; 2 uses
  %.not.i109.18 = icmp ne i8 %i.gf, 0             ; 2 uses
  %spec.select.i110.18 = select i1 %.not.i109.18, i8 %i.gf, i8 32
  %spec.select13.idx.i111.18 = zext i1 %.not.i109.18 to i64
  %spec.select13.i112.18 = getelementptr inbounds nuw i8, ptr %spec.select13.i112.17, i64 %spec.select13.idx.i111.18
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 98
  store i8 %spec.select.i110.18, ptr %i.gg, align 1
  %i.gh = load i8, ptr %spec.select13.i112.18, align 1 ; 2 uses
  %.not.i109.19.not = icmp eq i8 %i.gh, 0
  %spec.select.i110.19 = select i1 %.not.i109.19.not, i8 32, i8 %i.gh
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 99
  store i8 %spec.select.i110.19, ptr %i.gi, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8
  %.not88 = icmp ne i64 %i.gk, 0
  %i.gl = icmp ugt i8 %i.b, 111
  %or.cond = select i1 %.not88, i1 %i.gl, i1 false
  br i1 %or.cond, label %bb.i, label %padstr8.exit146

bb.i:                                             ; preds = %padstr8.exit97
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 100
  store <4 x i8> <i8 1, i8 3, i8 0, i8 8>, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.go = load i64, ptr %i.gj, align 8
  %i.gp = tail call i64 @llvm.bswap.i64(i64 %i.go)
  store i64 %i.gp, ptr %i.gn, align 1
  br label %padstr8.exit146

bb.j:                                             ; preds = %bb.b
  %i.gq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i116 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i116, label %ide_atapi_cmd_error.exit119, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.gr = load i16, ptr @_TRACE_IDE_ATAPI_CMD_ERROR_DSTATE, align 2
  %.not2.i.i117 = icmp eq i16 %i.gr, 0
  br i1 %.not2.i.i117, label %ide_atapi_cmd_error.exit119, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gs = load i32, ptr @qemu_loglevel, align 4
  %i.gt = and i32 %i.gs, 32768
  %.not3.i.i118 = icmp eq i32 %i.gt, 0
  br i1 %.not3.i.i118, label %ide_atapi_cmd_error.exit119, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, ptr noundef %0, i32 noundef 5, i32 noundef 36) #6
  br label %ide_atapi_cmd_error.exit119

ide_atapi_cmd_error.exit119:                      ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 80, ptr %i.gu, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 65, ptr %i.gv, align 1
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = and i32 %i.gx, -8
  %i.gz = or disjoint i32 %i.gy, 3
  store i32 %i.gz, ptr %i.gw, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 691
  store i8 5, ptr %i.ha, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i8 36, ptr %i.hb, align 4
  tail call void @ide_transfer_stop(ptr noundef %0) #6
  %i.hc = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.hc) #6
  br label %ide_atapi_cmd_reply.exit

padstr8.exit128:                                  ; preds = %bb.a
  store <4 x i8> <i8 5, i8 -128, i8 0, i8 33>, ptr %1, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 5
  store <4 x i8> <i8 0, i8 0, i8 0, i8 81>, ptr %i.hd, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 69, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 77, ptr %i.hf, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 85, ptr %i.hg, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 538976288, ptr %i.hh, align 1
  store <8 x i8> <i8 81, i8 69, i8 77, i8 85, i8 32, i8 68, i8 86, i8 68>, ptr %i.hi, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <4 x i8> <i8 45, i8 82, i8 79, i8 77>, ptr %i.hj, align 1
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store i32 538976288, ptr %i.hk, align 1
  %i.hn = load i8, ptr %i.hm, align 1             ; 2 uses
  %.not.i140 = icmp ne i8 %i.hn, 0                ; 2 uses
  %spec.select.i141 = select i1 %.not.i140, i8 %i.hn, i8 32
  %spec.select13.idx.i142 = zext i1 %.not.i140 to i64
  %spec.select13.i143 = getelementptr inbounds nuw i8, ptr %i.hm, i64 %spec.select13.idx.i142 ; 2 uses
  store i8 %spec.select.i141, ptr %i.hl, align 1
  %i.ho = load i8, ptr %spec.select13.i143, align 1 ; 2 uses
  %.not.i140.1 = icmp ne i8 %i.ho, 0              ; 2 uses
  %spec.select.i141.1 = select i1 %.not.i140.1, i8 %i.ho, i8 32
  %spec.select13.idx.i142.1 = zext i1 %.not.i140.1 to i64
  %spec.select13.i143.1 = getelementptr inbounds nuw i8, ptr %spec.select13.i143, i64 %spec.select13.idx.i142.1 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %spec.select.i141.1, ptr %i.hp, align 1
  %i.hq = load i8, ptr %spec.select13.i143.1, align 1 ; 2 uses
  %.not.i140.2 = icmp ne i8 %i.hq, 0              ; 2 uses
  %spec.select.i141.2 = select i1 %.not.i140.2, i8 %i.hq, i8 32
  %spec.select13.idx.i142.2 = zext i1 %.not.i140.2 to i64
  %spec.select13.i143.2 = getelementptr inbounds nuw i8, ptr %spec.select13.i143.1, i64 %spec.select13.idx.i142.2
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 %spec.select.i141.2, ptr %i.hr, align 1
  %i.hs = load i8, ptr %spec.select13.i143.2, align 1 ; 2 uses
  %.not.i140.3.not = icmp eq i8 %i.hs, 0
  %spec.select.i141.3 = select i1 %.not.i140.3.not, i8 32, i8 %i.hs
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %spec.select.i141.3, ptr %i.ht, align 1
  br label %padstr8.exit146

padstr8.exit146:                                  ; preds = %padstr8.exit128, %padstr8.exit97, %bb.i, %bb.c, %padstr8.exit
  %.086 = phi i32 [ 6, %bb.c ], [ 28, %padstr8.exit ], [ 112, %bb.i ], [ 100, %padstr8.exit97 ], [ 36, %padstr8.exit128 ] ; 2 uses
  %.085 = phi i64 [ 3, %bb.c ], [ 3, %padstr8.exit ], [ 3, %bb.i ], [ 3, %padstr8.exit97 ], [ 4, %padstr8.exit128 ]
  %.0.neg = phi i32 [ 252, %bb.c ], [ 252, %padstr8.exit ], [ 252, %bb.i ], [ 252, %padstr8.exit97 ], [ 251, %padstr8.exit128 ]
  %i.hu = add nuw nsw i32 %.0.neg, %.086
  %i.hv = trunc i32 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %.085
  store i8 %i.hv, ptr %i.hw, align 1
  %spec.select.i147 = tail call i32 @llvm.umin.i32(i32 range(i32 0, -2147483648) %.086, i32 range(i32 0, 65536) %i.c) ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 708
  store i32 -1, ptr %i.hx, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 %spec.select.i147, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 808
  store i32 %spec.select.i147, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 700
  store i32 0, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.ic = load i32, ptr %i.ib, align 4
  %.not.i148 = icmp eq i32 %i.ic, 0
  br i1 %.not.i148, label %bb.o, label %bb.n

bb.n:                                             ; preds = %padstr8.exit146
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = tail call ptr @blk_get_stats(ptr noundef %i.ie) #6
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ih = zext nneg i32 %spec.select.i147 to i64
  tail call void @block_acct_start(ptr noundef %i.if, ptr noundef nonnull %i.ig, i64 noundef %i.ih, i32 noundef 1) #6
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 88, ptr %i.ii, align 1
  tail call void @ide_start_dma(ptr noundef nonnull %0, ptr noundef nonnull @ide_atapi_cmd_read_dma_cb) #6
  br label %ide_atapi_cmd_reply.exit

bb.o:                                             ; preds = %padstr8.exit146
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.ij, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 0, ptr %i.ik, align 8
  tail call void @ide_atapi_cmd_reply_end(ptr noundef nonnull %0)
  br label %ide_atapi_cmd_reply.exit

ide_atapi_cmd_reply.exit:                         ; preds = %bb.o, %bb.n, %ide_atapi_cmd_error.exit119, %ide_atapi_cmd_error.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmd_start_stop_unit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 1                          ; 3 uses
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %.not19 = icmp ult i8 %i.b, 16
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, -8
  %i.j = or disjoint i32 %i.i, 3
  store i32 %i.j, ptr %i.g, align 4
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = and i32 %i.c, 2
  %.not18 = icmp eq i32 %i.k, 0
  br i1 %.not18, label %.thread22, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 693
  %i.m = load i8, ptr %i.l, align 1, !range !8    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread22, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 694
  %i.p = load i8, ptr %i.o, align 2, !range !8, !noundef !9
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @blk_is_inserted(ptr noundef %i.s) #6
  %i.u = select i1 %i.t, i32 2, i32 5             ; 2 uses
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %ide_atapi_cmd_error.exit, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.w = load i16, ptr @_TRACE_IDE_ATAPI_CMD_ERROR_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.w, 0
  br i1 %.not2.i.i, label %ide_atapi_cmd_error.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not3.i.i = icmp eq i32 %i.y, 0
  br i1 %.not3.i.i, label %ide_atapi_cmd_error.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, ptr noundef nonnull %0, i32 noundef %i.u, i32 noundef 83) #6
  br label %ide_atapi_cmd_error.exit

ide_atapi_cmd_error.exit:                         ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.tr.i = trunc nuw nsw i32 %i.u to i8           ; 2 uses
  %i.z = shl nuw nsw i8 %.tr.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 65, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, -8
  %i.af = or disjoint i32 %i.ae, 3
  store i32 %i.af, ptr %i.ac, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 691
  store i8 %.tr.i, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i8 83, ptr %i.ah, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.ai = zext nneg i8 %i.m to i32
  %.not20.not = icmp eq i32 %i.d, %i.ai
  br i1 %.not20.not, label %.thread, label %.thread22

.thread:                                          ; preds = %bb.f, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 693
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void @blk_eject(ptr noundef %i.al, i1 noundef zeroext %.not) #6
  %i.am = trunc nuw nsw i32 %i.d to i8
  %i.an = xor i8 %i.am, 1
  store i8 %i.an, ptr %i.aj, align 1
  br label %.thread22

.thread22:                                        ; preds = %bb.e, %bb.k, %.thread, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = and i32 %i.ar, -8
  %i.at = or disjoint i32 %i.as, 3
  store i32 %i.at, ptr %i.aq, align 4
  br label %bb.l

bb.l:                                             ; preds = %.thread22, %ide_atapi_cmd_error.exit, %bb.b
  tail call void @ide_transfer_stop(ptr noundef %0) #6
  %i.au = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.au) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmd_prevent_allow_medium_removal(ptr noundef initializes((649, 650), (665, 666), (694, 695)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 694
  %i.d = and i8 %i.b, 1
  store i8 %i.d, ptr %i.c, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i8, ptr %i.a, align 1
  %i.h = trunc i8 %i.g to i1
  tail call void @blk_lock_medium(ptr noundef %i.f, i1 noundef zeroext %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 649
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 665
  store i8 80, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, -8
  %i.n = or disjoint i32 %i.m, 3
  store i32 %i.n, ptr %i.k, align 4
  tail call void @ide_transfer_stop(ptr noundef %0) #6
  %i.o = load ptr, ptr %0, align 8
  tail call void @ide_bus_set_irq(ptr noundef %i.o) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmd_read_cdvd_capacity(ptr noundef initializes((696, 704), (708, 712), (808, 812)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 2
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, -1
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %i.f, ptr %1, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 524288, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 708
end_hunk_0
