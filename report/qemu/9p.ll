Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/9p?download=true
inline.NumInlined: 372
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@v9fs_stat:bb.a
  call void @migrate_del_blocker(ptr noundef nonnull %i.bm) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bn = call i32 @free_fid(ptr noundef nonnull %0, ptr noundef nonnull %i.p) ; 0 uses
  br label %put_fid.exit

put_fid.exit:                                     ; preds = %bb.s, %bb.p, %bb.o, %trace_v9fs_stat.exit, %bb.a
  %.1 = phi i64 [ %i.b, %bb.a ], [ -2, %trace_v9fs_stat.exit ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.s ]
  call void @pdu_complete(ptr noundef %0, i64 noundef %.1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_wstat(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %1 = alloca %struct.V9fsStat, align 8           ; 29 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %3 = alloca [2 x %struct.timespec], align 16    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i16 0, ptr %i.b, align 2, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false), !annotation !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr null, ptr %i.f, align 8
  store i16 0, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr null, ptr %i.h, align 8
  store i16 0, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.j, align 8
  store i16 0, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr null, ptr %i.l, align 8
  store i16 0, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr null, ptr %i.n, align 8
  store i16 0, ptr %i.m, align 8
  %i.o = call i64 (ptr, i64, ptr, ...) @pdu_unmarshal(ptr noundef %0, i64 noundef 7, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %put_fid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2
  %i.v = load i32, ptr %i.a, align 4              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %trace_v9fs_wstat.exit, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.ad = load i16, ptr @_TRACE_V9FS_WSTAT_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.ad, 0
  br i1 %.not6.i, label %trace_v9fs_wstat.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not7.i = icmp eq i32 %i.af, 0
  br i1 %.not7.i, label %trace_v9fs_wstat.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = zext i16 %i.s to i32
  %i.ah = zext i8 %i.u to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.133, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.ab) #23
  %.pre = load i32, ptr %i.a, align 4
  br label %trace_v9fs_wstat.exit

trace_v9fs_wstat.exit:                            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ai = phi i32 [ %i.v, %bb.b ], [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %.pre, %bb.e ]
  %i.aj = call ptr @get_fid(ptr noundef nonnull %0, i32 noundef %i.ai) ; 13 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %put_fid.exit, label %bb.f

bb.f:                                             ; preds = %trace_v9fs_wstat.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp eq i16 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, -1
  %or.cond101 = select i1 %i.an, i1 %i.aq, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = icmp eq i8 %i.as, -1
  %or.cond104 = select i1 %or.cond101, i1 %i.at, i1 false
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.av, -1
  %or.cond107 = select i1 %or.cond104, i1 %i.aw, i1 false
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.ay, -1
  %or.cond110 = select i1 %or.cond107, i1 %i.az, i1 false
  %.pr.pre = load i32, ptr %i.w, align 8
  %i.ba = icmp eq i32 %.pr.pre, -1                ; 2 uses
  br i1 %or.cond110, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  br i1 %i.ba, label %bb.h, label %.thread89

bb.h:                                             ; preds = %bb.g
  %i.bb = load i32, ptr %i.y, align 4             ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  %i.bd = load i32, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.bc, label %bb.i, label %.thread97

.thread97:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, i8 0, i64 16, i1 false), !annotation !13
  br label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp eq i32 %i.bd, -1
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, -1
  %or.cond113 = select i1 %i.bf, i1 %i.bi, i1 false
  %i.bj = load i16, ptr %i.e, align 8
  %.not.i74 = icmp eq i16 %i.bj, 0
  %or.cond114 = select i1 %or.cond113, i1 %.not.i74, i1 false
  %i.bk = load i16, ptr %i.g, align 8
  %.not16.i = icmp eq i16 %i.bk, 0
  %or.cond115 = select i1 %or.cond114, i1 %.not16.i, i1 false
  %i.bl = load i16, ptr %i.i, align 8
  %.not17.i = icmp eq i16 %i.bl, 0
  %or.cond116 = select i1 %or.cond115, i1 %.not17.i, i1 false
  %i.bm = load i16, ptr %i.k, align 8
  %.not18.i = icmp eq i16 %i.bm, 0
  %or.cond117 = select i1 %or.cond116, i1 %.not18.i, i1 false
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = icmp eq i32 %i.bo, -1
  %or.cond120 = select i1 %or.cond117, i1 %i.bp, i1 false
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = icmp eq i32 %i.br, -1
  %or.cond123 = select i1 %or.cond120, i1 %i.bs, i1 false
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp eq i32 %i.bu, -1
  %or.cond126 = select i1 %or.cond123, i1 %i.bv, i1 false
  br i1 %or.cond126, label %donttouch_stat.exit, label %.thread

donttouch_stat.exit:                              ; preds = %bb.i
  %i.bw = getelementptr i8, ptr %i.d, i64 24
  %.val = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr i8, ptr %.val, i64 312
  %.val.val = load ptr, ptr %i.bx, align 8
  %i.by = load i32, ptr %i.aj, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ca = call zeroext i1 %.val.val(i32 noundef %i.by, ptr noundef nonnull %i.bz) #23, !inline_history !1
  br i1 %i.ca, label %bb.j, label %.thread91

bb.j:                                             ; preds = %donttouch_stat.exit
  %i.cb = call i32 @v9fs_co_fsync(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i32 noundef 0) #23
  br label %.thread91

bb.k:                                             ; preds = %bb.f
  br i1 %i.ba, label %.thread, label %.thread89

.thread89:                                        ; preds = %bb.g, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.cd = call i32 @v9fs_co_lstat(ptr noundef nonnull %0, ptr noundef nonnull %i.cc, ptr noundef nonnull %2) #23 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.thread91, label %bb.l

bb.l:                                             ; preds = %.thread89
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val70 = load i32, ptr %i.cf, align 8
  %i.cg = and i32 %.val70, 61440                  ; 5 uses
  %i.ch = icmp eq i32 %i.cg, 16384
  %spec.select.i = select i1 %i.ch, i32 -2147483648, i32 0
  %i.ci = icmp eq i32 %i.cg, 40960
  %.1.i = select i1 %i.ci, i32 33554432, i32 %spec.select.i ; 2 uses
  %i.cj = icmp eq i32 %i.cg, 49152
  %4 = or disjoint i32 %.1.i, 1048576
  %.2.i = select i1 %i.cj, i32 %4, i32 %.1.i      ; 3 uses
  %i.ck = icmp eq i32 %i.cg, 4096
  %5 = or disjoint i32 %.2.i, 2097152
  %.3.i = select i1 %i.ck, i32 %5, i32 %.2.i
  %trunc.i = trunc nuw i32 %i.cg to i16
  switch i16 %trunc.i, label %stat_to_v9mode.exit [
    i16 24576, label %bb.m
    i16 8192, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.cl = or disjoint i32 %.2.i, 8388608
  br label %stat_to_v9mode.exit

stat_to_v9mode.exit:                              ; preds = %bb.l, %bb.m
  %.4.i = phi i32 [ %i.cl, %bb.m ], [ %.3.i, %bb.l ]
  %i.cm = load i32, ptr %i.w, align 8             ; 9 uses
  %i.cn = xor i32 %i.cm, %.4.i
  %i.co = and i32 %i.cn, -2085617664
  %.not63 = icmp eq i32 %i.co, 0
  br i1 %.not63, label %bb.n, label %.thread91

bb.n:                                             ; preds = %stat_to_v9mode.exit
  %.val72 = load ptr, ptr %i.n, align 8
  %i.cp = and i32 %i.cm, 511
  %i.cq = lshr i32 %i.cm, 17
  %i.cr = and i32 %i.cq, 16384
  %spec.select.i75 = or disjoint i32 %i.cr, %i.cp ; 2 uses
  %i.cs = and i32 %i.cm, 33554432
  %.not22.i = icmp eq i32 %i.cs, 0
  %i.ct = or disjoint i32 %spec.select.i75, 40960
  %.1.i76 = select i1 %.not22.i, i32 %spec.select.i75, i32 %i.ct ; 2 uses
  %i.cu = and i32 %i.cm, 1048576
  %.not23.i = icmp eq i32 %i.cu, 0
  %i.cv = or i32 %.1.i76, 49152
  %.2.i77 = select i1 %.not23.i, i32 %.1.i76, i32 %i.cv
  %i.cw = lshr i32 %i.cm, 9
  %i.cx = and i32 %i.cw, 4096
  %.3.i78 = or i32 %.2.i77, %i.cx                 ; 3 uses
  %i.cy = and i32 %i.cm, 8388608
  %.not25.i = icmp eq i32 %i.cy, 0
  br i1 %.not25.i, label %v9mode_to_mode.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val71 = load i16, ptr %i.m, align 8
  %.not26.i = icmp eq i16 %.val71, 0
  br i1 %.not26.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = load i8, ptr %.val72, align 1
  %i.da = icmp eq i8 %i.cz, 99
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.db = or i32 %.3.i78, 8192
  br label %v9mode_to_mode.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.dc = or i32 %.3.i78, 24576
  br label %v9mode_to_mode.exit

v9mode_to_mode.exit:                              ; preds = %bb.n, %bb.q, %bb.r
  %.4.i79 = phi i32 [ %i.db, %bb.q ], [ %i.dc, %bb.r ], [ %.3.i78, %bb.n ] ; 3 uses
  %i.dd = icmp samesign ugt i32 %.4.i79, 511
  %i.de = or disjoint i32 %.4.i79, 32768
  %spec.select30.i = select i1 %i.dd, i32 %.4.i79, i32 %i.de
  %i.df = lshr i32 %i.cm, 8
  %i.dg = lshr i32 %i.cm, 7
  %i.dh = and i32 %i.dg, 512
  %.6.i80 = and i32 %i.df, 3072
  %.7.i81 = or disjoint i32 %.6.i80, %i.dh
  %.8.i = or i32 %.7.i81, %spec.select30.i
  %i.di = call i32 @v9fs_co_chmod(ptr noundef nonnull %0, ptr noundef nonnull %i.cc, i32 noundef %.8.i) #23 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %.thread91, label %.thread

.thread:                                          ; preds = %bb.i, %v9mode_to_mode.exit, %bb.k
  %.pr95 = load i32, ptr %i.y, align 4            ; 2 uses
  %i.dk = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.dl = icmp ne i32 %i.dk, -1
  %i.dm = icmp ne i32 %.pr95, -1                  ; 2 uses
  %or.cond = select i1 %i.dl, i1 true, i1 %i.dm
  br i1 %or.cond, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !13
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread97, %bb.s
  %i.dn = phi i32 [ %i.bb, %.thread97 ], [ %.pr95, %bb.s ]
  %i.do = phi i32 [ %i.bd, %.thread97 ], [ %i.dk, %bb.s ]
  %i.dp = sext i32 %i.dn to i64
  store i64 %i.dp, ptr %3, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink141 = phi i64 [ 0, %bb.t ], [ 1073741822, %bb.s ]
  %i.dq = phi i32 [ %i.do, %bb.t ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink141, ptr %i.dr, align 8
  %.not65 = icmp eq i32 %i.dq, -1
  br i1 %.not65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = sext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ds, ptr %i.dt, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.sink = phi i64 [ 0, %bb.v ], [ 1073741822, %bb.u ]
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.sink, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dw = call i32 @v9fs_co_utimensat(ptr noundef nonnull %0, ptr noundef nonnull %i.dv, ptr noundef nonnull %3) #23 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.dx, label %.thread91, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %i.ea = icmp ne i32 %i.dz, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ec = load i32, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp ne i32 %i.ec, -1
  %or.cond5 = select i1 %i.ea, i1 true, i1 %i.ed
  br i1 %or.cond5, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ef = call i32 @v9fs_co_chown(ptr noundef nonnull %0, ptr noundef nonnull %i.ee, i32 noundef %i.ec, i32 noundef %i.dz) #23 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %.thread91, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eh = load i16, ptr %i.e, align 8
  %.not66 = icmp eq i16 %i.eh, 0
  br i1 %.not66, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = and i32 %i.ej, 2
  %.not67 = icmp eq i32 %i.ek, 0
  br i1 %.not67, label %.thread91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = load ptr, ptr %i.f, align 8
  %.val73 = load i8, ptr %i.t, align 2
  %i.em = call fastcc i32 @check_name(ptr noundef %i.el, i8 %.val73) ; 2 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %.thread91, label %v9fs_path_write_lock.exit

v9fs_path_write_lock.exit:                        ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 7296 ; 2 uses
  call void @qemu_co_rwlock_wrlock(ptr noundef nonnull %i.eo) #23
  %i.ep = call i32 @v9fs_complete_rename(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, i32 noundef -1, ptr noundef nonnull %i.e) ; 2 uses
  %i.eq = load i32, ptr %i.ei, align 8
  %i.er = and i32 %i.eq, 2
  %.not.i83 = icmp eq i32 %i.er, 0
  br i1 %.not.i83, label %v9fs_path_unlock.exit, label %bb.ac

bb.ac:                                            ; preds = %v9fs_path_write_lock.exit
  call void @qemu_co_rwlock_unlock(ptr noundef nonnull %i.eo) #23
  br label %v9fs_path_unlock.exit

v9fs_path_unlock.exit:                            ; preds = %v9fs_path_write_lock.exit, %bb.ac
  %i.es = icmp slt i32 %i.ep, 0
  br i1 %i.es, label %.thread91, label %bb.ad

bb.ad:                                            ; preds = %v9fs_path_unlock.exit, %bb.z
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %.not68 = icmp eq i64 %i.eu, -1
  br i1 %.not68, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ew = call i32 @v9fs_co_truncate(ptr noundef nonnull %0, ptr noundef nonnull %i.ev, i64 noundef %i.eu) #23 ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.thread91, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br label %.thread91

.thread91:                                        ; preds = %v9mode_to_mode.exit, %.thread89, %stat_to_v9mode.exit, %bb.w, %bb.aa, %donttouch_stat.exit, %bb.ae, %v9fs_path_unlock.exit, %bb.ab, %bb.y, %bb.af, %bb.j
  %.149 = phi i32 [ %i.cb, %bb.j ], [ -95, %bb.aa ], [ %i.ef, %bb.y ], [ %i.em, %bb.ab ], [ %i.ep, %v9fs_path_unlock.exit ], [ %i.ew, %bb.ae ], [ 7, %bb.af ], [ -9, %donttouch_stat.exit ], [ %i.dw, %bb.w ], [ -5, %stat_to_v9mode.exit ], [ %i.cd, %.thread89 ], [ %i.di, %v9mode_to_mode.exit ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aj, i64 260 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %.not.i84 = icmp eq i32 %i.ez, 0
  br i1 %.not.i84, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread91
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef 436, ptr noundef nonnull @__PRETTY_FUNCTION__.put_fid) #27
  unreachable

bb.ah:                                            ; preds = %.thread91
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4
  %.not10.i = icmp eq i32 %i.fa, 0
  br i1 %.not10.i, label %bb.ai, label %put_fid.exit

end_hunk_0
begin_hunk_1_@v9fs_do_readdir_with_stat:bb.a
  call void @v9fs_string_free(ptr noundef nonnull %i.i) #23
  call void @v9fs_string_free(ptr noundef nonnull %i.j) #23
  call void @v9fs_string_free(ptr noundef nonnull %i.k) #23
  call void @v9fs_string_free(ptr noundef nonnull %i.l) #23
  %i.av = load ptr, ptr %i.m, align 8
  call void @g_free(ptr noundef %i.av) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %.val = load i64, ptr %i.ax, align 8
  br label %bb.c

bb.r:                                             ; preds = %bb.h, %bb.g, %bb.f, %v9fs_readdir_lock.exit
  %.038 = phi i32 [ %i.w, %bb.f ], [ %i.y, %bb.g ], [ %i.ac, %bb.h ], [ %i.r, %v9fs_readdir_lock.exit ] ; 2 uses
  %i.ay = load i32, ptr %i.d, align 8
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @qemu_co_mutex_unlock(ptr noundef nonnull %i.f) #23
  br label %v9fs_readdir_unlock.exit48

bb.t:                                             ; preds = %bb.r
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.121, i32 noundef 220) #23
  br label %v9fs_readdir_unlock.exit48

v9fs_readdir_unlock.exit48:                       ; preds = %bb.s, %bb.t
  %i.ba = load ptr, ptr %i.m, align 8
  call void @g_free(ptr noundef %i.ba) #23
  %i.bb = icmp slt i32 %.038, 0
  %.038..037 = select i1 %i.bb, i32 %.038, i32 %.037
  br label %bb.u

bb.u:                                             ; preds = %v9fs_readdir_unlock.exit48, %bb.p, %v9fs_readdir_unlock.exit, %bb.b
  %.039 = phi i32 [ %i.n, %bb.b ], [ %.038..037, %v9fs_readdir_unlock.exit48 ], [ %i.ap, %bb.p ], [ %.037, %v9fs_readdir_unlock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.039
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @v9fs_init_qiov_from_pdu(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) #0 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !annotation !13
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 7288
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.g, ptr nonnull @.str.19, ptr nonnull @.str.20, i32 483, ptr null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.i, ptr nonnull @.str.19, ptr nonnull @.str.20, i32 479, ptr null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink12 = phi ptr [ %i.j, %bb.c ], [ %i.h, %bb.b ]
  %i.k = add i64 %3, %2
  %i.l = load ptr, ptr %.sink12, align 8
  call void %i.l(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.k) #23
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load i32, ptr %i.b, align 4
  call void @qemu_iovec_init_external(ptr noundef nonnull %5, ptr noundef %i.m, i32 noundef %i.n) #23
  %i.o = load i32, ptr %i.b, align 4
  call void @qemu_iovec_init(ptr noundef %0, i32 noundef %i.o) #23
  call void @qemu_iovec_concat(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @qemu_iovec_reset(ptr noundef) local_unnamed_addr #3

declare void @qemu_iovec_concat(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @v9fs_co_preadv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

declare void @qemu_iovec_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @v9fs_xattr_read(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.QEMUIOVector, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.QEMUIOVector, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %3)
  %i.e = zext i32 %4 to i64
  %.1 = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.e) ; 4 uses
  %i.f = tail call i64 (ptr, i64, ptr, ...) @pdu_marshal(ptr noundef %1, i64 noundef 7, ptr noundef nonnull @.str.18, i64 noundef %.1) ; 3 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !13
  %i.h = add nuw i64 %i.f, 7                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !annotation !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 7288
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.m, ptr nonnull @.str.19, ptr nonnull @.str.20, i32 479, ptr null)
  %i.o = add nuw i64 %.1, %i.h
  %i.p = load ptr, ptr %i.n, align 8
  call void %i.p(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %i.o) #23, !inline_history !17
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = load i32, ptr %i.b, align 4
  call void @qemu_iovec_init_external(ptr noundef nonnull %5, ptr noundef %i.q, i32 noundef %i.r) #23
  %i.s = load i32, ptr %i.b, align 4
  call void @qemu_iovec_init(ptr noundef nonnull %6, i32 noundef %i.s) #23
  call void @qemu_iovec_concat(ptr noundef nonnull %6, ptr noundef nonnull %5, i64 noundef %i.h, i64 noundef %.1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.t = load ptr, ptr %6, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %3
  %i.z = call i64 @v9fs_pack(ptr noundef %i.t, i32 noundef %i.v, i64 noundef 0, ptr noundef %i.y, i64 noundef %.1) #23 ; 2 uses
  call void @qemu_iovec_destroy(ptr noundef nonnull %6) #23
  %i.aa = icmp slt i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 0, i64 %i.h
  %spec.select = add i64 %i.ab, %i.z
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.025.in = phi i64 [ %spec.select, %bb.b ], [ %i.f, %bb.a ]
  %.025 = trunc i64 %.025.in to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i32 %.025
}

declare i64 @v9fs_co_telldir(ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @v9fs_readdir_lock(ptr noundef %0) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @qemu_co_mutex_lock(ptr noundef nonnull %i.d) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void %i.e(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.121, i32 noundef 211) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @v9fs_co_readdir(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @stat_to_v9stat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %4, i8 noundef 0, i64 noundef 144, i1 noundef false) #23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call fastcc i32 @stat_to_qid(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %.val54 = load i32, ptr %i.d, align 8           ; 4 uses
  %i.e = and i32 %.val54, 511                     ; 2 uses
  %i.f = and i32 %.val54, 61440                   ; 5 uses
  %i.g = icmp eq i32 %i.f, 16384
  %i.h = or disjoint i32 %i.e, -2147483648
  %spec.select.i = select i1 %i.g, i32 %i.h, i32 %i.e ; 2 uses
  %i.i = icmp eq i32 %i.f, 40960
  %i.j = or disjoint i32 %spec.select.i, 33554432
  %.1.i = select i1 %i.i, i32 %i.j, i32 %spec.select.i ; 2 uses
  %i.k = icmp eq i32 %i.f, 49152
  %i.l = or disjoint i32 %.1.i, 1048576
  %.2.i = select i1 %i.k, i32 %i.l, i32 %.1.i     ; 3 uses
  %i.m = icmp eq i32 %i.f, 4096
  %i.n = or i32 %.2.i, 2097152
  %.3.i = select i1 %i.m, i32 %i.n, i32 %.2.i
  %trunc.i = trunc nuw i32 %i.f to i16
  switch i16 %trunc.i, label %stat_to_v9mode.exit [
    i16 24576, label %bb.c
    i16 8192, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.o = or i32 %.2.i, 8388608
  br label %stat_to_v9mode.exit

stat_to_v9mode.exit:                              ; preds = %bb.b, %bb.c
  %.4.i = phi i32 [ %i.o, %bb.c ], [ %.3.i, %bb.b ]
  %i.p = shl i32 %.val54, 8
  %i.q = shl i32 %.val54, 7
  %i.r = and i32 %i.q, 65536
  %spec.select21.i = and i32 %i.p, 786432
  %.6.i = or disjoint i32 %spec.select21.i, %i.r
  %.7.i = or i32 %.6.i, %.4.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %.7.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.u = load i64, ptr %i.t, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  tail call void @v9fs_string_free(ptr noundef nonnull %i.ae) #23
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  tail call void @v9fs_string_free(ptr noundef nonnull %i.af) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @v9fs_string_free(ptr noundef nonnull %i.ag) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 5 uses
  tail call void @v9fs_string_free(ptr noundef nonnull %i.ao) #23
  %i.ap = load i32, ptr %i.s, align 8             ; 2 uses
  %i.aq = and i32 %i.ap, 33554432
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %stat_to_v9mode.exit
  %i.ar = tail call i32 @v9fs_co_readlink(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ao) #23 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.i

bb.e:                                             ; preds = %stat_to_v9mode.exit
  %i.at = and i32 %i.ap, 8388608
  %.not49 = icmp eq i32 %i.at, 0
  %i.au = load i32, ptr %i.d, align 8             ; 2 uses
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = and i32 %i.au, 61440
  %i.aw = icmp eq i32 %i.av, 8192
  %i.ax = select i1 %i.aw, i32 99, i32 98
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load i64, ptr %i.ay, align 8            ; 4 uses
  %i.ba = lshr i64 %i.az, 8
  %i.bb = and i64 %i.ba, 4095
  %i.bc = lshr i64 %i.az, 32
  %i.bd = and i64 %i.bc, 4294963200
  %i.be = or disjoint i64 %i.bb, %i.bd
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = and i64 %i.az, 255
  %i.bh = lshr i64 %i.az, 12
  %i.bi = and i64 %i.bh, 4294967040
  %i.bj = or disjoint i64 %i.bi, %i.bg
  %i.bk = trunc nuw i64 %i.bj to i32
  tail call void (ptr, ptr, ...) @v9fs_string_sprintf(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.115, i32 noundef %i.ax, i32 noundef %i.bf, i32 noundef %i.bk) #23
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bl = trunc i32 %i.au to i16
  %trunc = and i16 %i.bl, -4096
  switch i16 %trunc, label %bb.i [
    i16 16384, label %bb.h
    i16 -32768, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load i64, ptr %i.bm, align 8
  tail call void (ptr, ptr, ...) @v9fs_string_sprintf(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i64 noundef %i.bn) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h, %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  tail call void (ptr, ptr, ...) @v9fs_string_sprintf(ptr noundef nonnull %i.bo, ptr noundef nonnull @.str.50, ptr noundef %2) #23
  %.val53 = load i16, ptr %i.bo, align 8
  %i.bp = add i16 %.val53, 61
  %.val52 = load i16, ptr %i.ae, align 8
  %i.bq = add i16 %i.bp, %.val52
  %.val51 = load i16, ptr %i.af, align 8
  %i.br = add i16 %i.bq, %.val51
  %.val50 = load i16, ptr %i.ag, align 8
  %i.bs = add i16 %i.br, %.val50
  %.val = load i16, ptr %i.ao, align 8
  %i.bt = add i16 %i.bs, %.val
  store i16 %i.bt, ptr %4, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.b, %bb.a ], [ %i.ar, %bb.d ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @v9fs_readdir_unlock(ptr noundef %0) #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @qemu_co_mutex_unlock(ptr noundef nonnull %i.d) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.121, i32 noundef 220) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @v9fs_co_seekdir(ptr noundef, ptr noundef, i64 noundef) #3

declare void @qemu_co_mutex_lock(ptr noundef) #3

declare void @qemu_co_mutex_unlock(ptr noundef) #3

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @qemu_iovec_init_external(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @v9fs_pack(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @v9fs_xattr_write(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %i.c, %3
  %i.f = zext i32 %4 to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 3 uses
  %i.g = tail call i64 (ptr, i64, ptr, ...) @pdu_marshal(ptr noundef %1, i64 noundef 7, ptr noundef nonnull @.str.18, i64 noundef %spec.select) ; 3 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.g to i32
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8
  %i.k = add i64 %i.j, %spec.select
  store i64 %i.k, ptr %i.a, align 8
  %i.l = icmp sgt i32 %6, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.148 = phi i64 [ %spec.select, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.03846 = phi i64 [ %3, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %..1 = tail call i64 @llvm.umin.i64(i64 %.148, i64 %i.p)
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.03846
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = shl i64 %..1, 32
  %i.u = ashr exact i64 %i.t, 32                  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.r, ptr noundef nonnull align 1 %i.s, i64 noundef %i.u, i1 noundef false) #23
  %i.v = add i64 %i.u, %.03846
  %i.w = sub i64 %.148, %i.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_1
