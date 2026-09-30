Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/fs?download=true
inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0_@uv__fs_work:bb.a
  br label %thread-pre-split.i

uv__is_buggy_cephfs.exit.i.i:                     ; preds = %bb.dw
  %i.qq = call i32 @uv__kernel_version() #14
  %i.qr = icmp ugt i32 %i.qq, 267263
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.qr, label %thread-pre-split.i, label %bb.dx

bb.dx:                                            ; preds = %uv__is_buggy_cephfs.exit.i.i
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

bb.dy:                                            ; preds = %bb.dv
  store atomic i32 1, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  br label %.critedge.i

bb.dz:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.qs = call i32 @fstatfs64(i32 noundef %i.qh, ptr noundef nonnull %6) #14
  %i.qt = icmp eq i32 %i.qs, -1
  br i1 %i.qt, label %uv__is_cifs_or_smb.exit.thread.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qu = load i64, ptr %6, align 8
  %i.qv = trunc i64 %i.qu to i32
  switch i32 %i.qv, label %uv__is_cifs_or_smb.exit.thread.i.i [
    i32 20859, label %bb.eb
    i32 -28095166, label %bb.eb
    i32 -11317950, label %bb.eb
  ]

uv__is_cifs_or_smb.exit.thread.i.i:               ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %thread-pre-split.i

bb.eb:                                            ; preds = %bb.ea, %bb.ea, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

bb.ec:                                            ; preds = %bb.dv, %bb.dv
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

thread-pre-split.i:                               ; preds = %uv__is_cifs_or_smb.exit.thread.i.i, %uv__is_buggy_cephfs.exit.i.i, %uv__is_buggy_cephfs.exit.thread.i.i
  %.pr.i = load i32, ptr %i.g, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %thread-pre-split.i, %bb.dv
  %i.qw = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.qm, %bb.dv ]
  %i.qx = icmp eq i32 %i.qw, 38
  br i1 %i.qx, label %.critedge.i, label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.dy, %bb.dx, %bb.dt
  %i.qy = call i64 @sendfile64(i32 noundef %i.qh, i32 noundef %i.qg, ptr noundef nonnull %i.b, i64 noundef %i.qj) #14
  %.not.i111 = icmp eq i64 %i.qy, -1
  br i1 %.not.i111, label %.critedge.thread.i, label %.critedge.thread25.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.ed
  %i.qz = load i64, ptr %i.b, align 8
  %i.ra = load i64, ptr %i.k, align 8
  %i.rb = icmp sgt i64 %i.qz, %i.ra
  br i1 %i.rb, label %.critedge.thread25.i, label %bb.ee

.critedge.thread25.i:                             ; preds = %.critedge.thread.i, %.critedge.i, %bb.du
  %i.rc = load i64, ptr %i.b, align 8             ; 2 uses
  %i.rd = load i64, ptr %i.k, align 8
  %i.re = sub nsw i64 %i.rc, %i.rd
  store i64 %i.rc, ptr %i.k, align 8
  br label %uv__fs_sendfile.exit

bb.ee:                                            ; preds = %.critedge.thread.i
  %i.rf = load i32, ptr %i.g, align 4
  switch i32 %i.rf, label %uv__fs_sendfile.exit [
    i32 22, label %bb.ef
    i32 5, label %bb.ef
    i32 88, label %bb.ef
    i32 18, label %bb.ef
  ]

bb.ef:                                            ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ee
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.rg = load i64, ptr %i.aw, align 8            ; 5 uses
  %i.rh = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ri = load i32, ptr %i.j, align 8             ; 4 uses
  %i.rj = load i64, ptr %i.k, align 8             ; 2 uses
  %.not.i20.i = icmp eq i64 %i.rg, 0
  br i1 %.not.i20.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ef, %.lr.ph.i.i.backedge
  %.049.ph118.i.i = phi i64 [ %.us-phi99.i.i, %.lr.ph.i.i.backedge ], [ %i.rj, %bb.ef ] ; 2 uses
  %.not121.i.i = phi i1 [ true, %.lr.ph.i.i.backedge ], [ false, %bb.ef ] ; 2 uses
  br i1 %.not121.i.i, label %.split.i.i, label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %.lr.ph.i.i, %.outer._crit_edge.us.i.i
  %.048104.us.i.i = phi i64 [ %i.sb, %.outer._crit_edge.us.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.049103.us.i.i = phi i64 [ %i.sa, %.outer._crit_edge.us.i.i ], [ %.049.ph118.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.rk = sub nuw i64 %i.rg, %.048104.us.i.i
  %spec.store.select.us.i.i = call i64 @llvm.umin.i64(i64 %i.rk, i64 8192)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eh, %.split.us.us.i.i
  %i.rl = call i64 @pread64(i32 noundef %i.rh, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.us.i.i, i64 noundef %.049103.us.i.i) #14 ; 7 uses
  switch i64 %i.rl, label %.preheader64.split.us.us.i.i [
    i64 -1, label %bb.eh
    i64 0, label %.loopexit.i.i
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.rm = load i32, ptr %i.g, align 4             ; 2 uses
  %i.rn = icmp eq i32 %i.rm, 4
  br i1 %i.rn, label %bb.eg, label %.split98.us.split.us.i.i, !llvm.loop !16

.preheader64.split.us.us.i.i:                     ; preds = %bb.eg
  %i.ro = icmp sgt i64 %i.rl, 0
  br i1 %i.ro, label %.outer.split.us.i.i, label %.outer._crit_edge.us.i.i

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.backedge, %.outer.split.us.i.i
  %i.rp = call i64 @write(i32 noundef %i.ri, ptr noundef nonnull %i.se, i64 noundef %i.sd) #14 ; 2 uses
  %cond.us.i.i = icmp eq i64 %i.rp, -1
  br i1 %cond.us.i.i, label %bb.ei, label %.outer.us.i.i

bb.ei:                                            ; preds = %.preheader.us.i.i
  %i.rq = load i32, ptr %i.g, align 4
  switch i32 %i.rq, label %uv__fs_sendfile_emul.exit.i [
    i32 4, label %.preheader.us.i.i.backedge
    i32 11, label %bb.ej
  ]

.preheader.us.i.i.backedge:                       ; preds = %bb.ei, %.critedge57.us.i.i
  br label %.preheader.us.i.i, !llvm.loop !17

bb.ej:                                            ; preds = %bb.ei
  store i32 %i.ri, ptr %5, align 4
  store i16 4, ptr %i.ax, align 4
  store i16 0, ptr %i.ay, align 2
  br label %bb.ek

bb.ek:                                            ; preds = %bb.el, %bb.ej
  %i.rr = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1) #14
  %i.rs = icmp eq i32 %i.rr, -1
  br i1 %i.rs, label %bb.el, label %.critedge57.us.i.i

bb.el:                                            ; preds = %bb.ek
  %i.rt = load i32, ptr %i.g, align 4
  %i.ru = icmp eq i32 %i.rt, 4
  br i1 %i.ru, label %bb.ek, label %.critedge6.i.i, !llvm.loop !18

.critedge57.us.i.i:                               ; preds = %bb.ek
  %i.rv = load i16, ptr %i.ay, align 2
  %i.rw = and i16 %i.rv, -5
  %.not55.us.i.i = icmp eq i16 %i.rw, 0
  br i1 %.not55.us.i.i, label %.preheader.us.i.i.backedge, label %.critedge6.i.i

.outer.us.i.i:                                    ; preds = %.preheader.us.i.i
  %i.rx = add nsw i64 %i.rp, %.0.ph102.us.i.i     ; 3 uses
  %i.ry = icmp slt i64 %i.rx, %i.rl
  %i.rz = sub nsw i64 %i.rl, %i.rx
  br i1 %i.ry, label %.outer.split.us.i.i, label %.outer._crit_edge.us.i.i, !llvm.loop !17

.outer._crit_edge.us.i.i:                         ; preds = %.outer.us.i.i, %.preheader64.split.us.us.i.i
  %i.sa = add nsw i64 %i.rl, %.049103.us.i.i      ; 2 uses
  %i.sb = add nsw i64 %i.rl, %.048104.us.i.i      ; 3 uses
  %i.sc = icmp ult i64 %i.sb, %i.rg
  br i1 %i.sc, label %.split.us.us.i.i, label %.loopexit.i.i, !llvm.loop !19

.outer.split.us.i.i:                              ; preds = %.preheader64.split.us.us.i.i, %.outer.us.i.i
  %i.sd = phi i64 [ %i.rz, %.outer.us.i.i ], [ %i.rl, %.preheader64.split.us.us.i.i ]
  %.0.ph102.us.i.i = phi i64 [ %i.rx, %.outer.us.i.i ], [ 0, %.preheader64.split.us.us.i.i ] ; 2 uses
  %i.se = getelementptr inbounds i8, ptr %i.a, i64 %.0.ph102.us.i.i
  br label %.preheader.us.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i, %.outer._crit_edge.i.i
  %.048104.i.i = phi i64 [ %i.ta, %.outer._crit_edge.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.049103.i.i = phi i64 [ %i.sz, %.outer._crit_edge.i.i ], [ %.049.ph118.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.sf = sub nuw i64 %i.rg, %.048104.i.i
  %spec.store.select.i.i112 = call i64 @llvm.umin.i64(i64 %i.sf, i64 8192)
  br label %bb.em

bb.em:                                            ; preds = %bb.en, %.split.i.i
  %i.sg = call i64 @read(i32 noundef %i.rh, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.i.i112) #14 ; 7 uses
  switch i64 %i.sg, label %.preheader64.split.i.i [
    i64 -1, label %bb.en
    i64 0, label %.loopexit.i.i
  ]

.preheader64.split.i.i:                           ; preds = %bb.em
  %i.sh = icmp sgt i64 %i.sg, 0
  br i1 %i.sh, label %.outer.split.i.i, label %.outer._crit_edge.i.i

bb.en:                                            ; preds = %bb.em
  %i.si = load i32, ptr %i.g, align 4             ; 2 uses
  %i.sj = icmp eq i32 %i.si, 4
  br i1 %i.sj, label %bb.em, label %.split98.us.split.us.i.i, !llvm.loop !16

.split98.us.split.us.i.i:                         ; preds = %bb.eh, %bb.en
  %i.sk = phi i32 [ %i.si, %bb.en ], [ %i.rm, %bb.eh ]
  %.us-phi99.i.i = phi i64 [ %.049103.i.i, %bb.en ], [ %.049103.us.i.i, %bb.eh ] ; 2 uses
  %.us-phi100.i.i = phi i64 [ %.048104.i.i, %bb.en ], [ %.048104.us.i.i, %bb.eh ] ; 2 uses
  %i.sl = icmp ne i64 %.us-phi100.i.i, 0          ; 2 uses
  %or.cond.not.i.i = or i1 %.not121.i.i, %i.sl
  br i1 %or.cond.not.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.split98.us.split.us.i.i
  switch i32 %i.sk, label %uv__fs_sendfile_emul.exit.i [
    i32 5, label %.lr.ph.i.i.backedge
    i32 29, label %.lr.ph.i.i.backedge
  ]

.lr.ph.i.i.backedge:                              ; preds = %bb.eo, %bb.eo
  br label %.lr.ph.i.i

bb.ep:                                            ; preds = %.split98.us.split.us.i.i
  br i1 %i.sl, label %.loopexit.thread.i.i, label %uv__fs_sendfile_emul.exit.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.outer.split.i.i
  %i.sm = call i64 @write(i32 noundef %i.ri, ptr noundef nonnull %i.ss, i64 noundef %i.sr) #14 ; 2 uses
  %cond.i.i = icmp eq i64 %i.sm, -1
  br i1 %cond.i.i, label %bb.eq, label %.outer.i.i

bb.eq:                                            ; preds = %.preheader.i.i
  %i.sn = load i32, ptr %i.g, align 4
  switch i32 %i.sn, label %uv__fs_sendfile_emul.exit.i [
    i32 4, label %.preheader.i.i.backedge
    i32 11, label %bb.er
  ]

.preheader.i.i.backedge:                          ; preds = %bb.eq, %.critedge57.i.i
  br label %.preheader.i.i, !llvm.loop !17

.outer.i.i:                                       ; preds = %.preheader.i.i
  %i.so = add nsw i64 %i.sm, %.0.ph102.i.i        ; 3 uses
  %i.sp = icmp slt i64 %i.so, %i.sg
  %i.sq = sub nsw i64 %i.sg, %i.so
  br i1 %i.sp, label %.outer.split.i.i, label %.outer._crit_edge.i.i, !llvm.loop !17

.outer.split.i.i:                                 ; preds = %.preheader64.split.i.i, %.outer.i.i
  %i.sr = phi i64 [ %i.sq, %.outer.i.i ], [ %i.sg, %.preheader64.split.i.i ]
  %.0.ph102.i.i = phi i64 [ %i.so, %.outer.i.i ], [ 0, %.preheader64.split.i.i ] ; 2 uses
  %i.ss = getelementptr inbounds i8, ptr %i.a, i64 %.0.ph102.i.i
  br label %.preheader.i.i

bb.er:                                            ; preds = %bb.eq
  store i32 %i.ri, ptr %5, align 4
  store i16 4, ptr %i.ax, align 4
  store i16 0, ptr %i.ay, align 2
  br label %bb.es

bb.es:                                            ; preds = %bb.et, %bb.er
  %i.st = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1) #14
  %i.su = icmp eq i32 %i.st, -1
  br i1 %i.su, label %bb.et, label %.critedge57.i.i

bb.et:                                            ; preds = %bb.es
  %i.sv = load i32, ptr %i.g, align 4
  %i.sw = icmp eq i32 %i.sv, 4
  br i1 %i.sw, label %bb.es, label %.critedge6.i.i, !llvm.loop !18

.critedge57.i.i:                                  ; preds = %bb.es
  %i.sx = load i16, ptr %i.ay, align 2
  %i.sy = and i16 %i.sx, -5
  %.not55.i.i = icmp eq i16 %i.sy, 0
  br i1 %.not55.i.i, label %.preheader.i.i.backedge, label %.critedge6.i.i

.critedge6.i.i:                                   ; preds = %.critedge57.us.i.i, %.critedge57.i.i, %bb.el, %bb.et
  store i32 5, ptr %i.g, align 4
  br label %uv__fs_sendfile_emul.exit.i

.outer._crit_edge.i.i:                            ; preds = %.outer.i.i, %.preheader64.split.i.i
  %i.sz = add nsw i64 %i.sg, %.049103.i.i         ; 2 uses
  %i.ta = add nsw i64 %i.sg, %.048104.i.i         ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.rg
  br i1 %i.tb, label %.split.i.i, label %.loopexit.i.i, !llvm.loop !19

.loopexit.i.i:                                    ; preds = %.outer._crit_edge.us.i.i, %.outer._crit_edge.i.i, %bb.eg, %bb.em
  %.04993.i.i = phi i64 [ %.049103.i.i, %bb.em ], [ %.049103.us.i.i, %bb.eg ], [ %i.sz, %.outer._crit_edge.i.i ], [ %i.sa, %.outer._crit_edge.us.i.i ]
  %.04885.i.i = phi i64 [ %.048104.i.i, %bb.em ], [ %.048104.us.i.i, %bb.eg ], [ %i.ta, %.outer._crit_edge.i.i ], [ %i.sb, %.outer._crit_edge.us.i.i ] ; 2 uses
  %.not56.old.i.i = icmp eq i64 %.04885.i.i, -1
  br i1 %.not56.old.i.i, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.loopexit.i.i, %bb.ep, %bb.ef
  %.04992.i.i = phi i64 [ %.us-phi99.i.i, %bb.ep ], [ %.04993.i.i, %.loopexit.i.i ], [ %i.rj, %bb.ef ]
  %.04884.i.i = phi i64 [ %.us-phi100.i.i, %bb.ep ], [ %.04885.i.i, %.loopexit.i.i ], [ 0, %bb.ef ]
  store i64 %.04992.i.i, ptr %i.k, align 8
  br label %uv__fs_sendfile_emul.exit.i

uv__fs_sendfile_emul.exit.i:                      ; preds = %bb.eo, %bb.ei, %bb.eq, %.loopexit.thread.i.i, %.loopexit.i.i, %.critedge6.i.i, %bb.ep
  %.161.i.i = phi i64 [ -1, %.loopexit.i.i ], [ %.04884.i.i, %.loopexit.thread.i.i ], [ -1, %.critedge6.i.i ], [ -1, %bb.ei ], [ -1, %bb.ep ], [ -1, %bb.eq ], [ -1, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %uv__fs_sendfile.exit

uv__fs_sendfile.exit:                             ; preds = %.critedge.thread25.i, %bb.ee, %uv__fs_sendfile_emul.exit.i
  %.018.i = phi i64 [ %i.re, %.critedge.thread25.i ], [ %.161.i.i, %uv__fs_sendfile_emul.exit.i ], [ -1, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %uv__fs_readlink.exit

bb.eu:                                            ; preds = %bb.b
  %i.tc = load ptr, ptr %i.p, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.td = load atomic i32, ptr @uv__fs_statx.no_statx monotonic, align 4
  %.not.i.i113 = icmp eq i32 %i.td, 0
  br i1 %.not.i.i113, label %bb.ev, label %bb.ez

bb.ev:                                            ; preds = %bb.eu
  %i.te = call i32 @uv__statx(i32 noundef -100, ptr noundef %i.tc, i32 noundef 0, i32 noundef 4095, ptr noundef nonnull %3) #14 ; 2 uses
  switch i32 %i.te, label %bb.ex [
    i32 0, label %bb.ey
    i32 -1, label %bb.ew
  ]

bb.ew:                                            ; preds = %bb.ev
  %i.tf = load i32, ptr %i.g, align 4
  switch i32 %i.tf, label %uv__fs_statx.exit.i115 [
    i32 22, label %bb.ex
    i32 1, label %bb.ex
    i32 38, label %bb.ex
    i32 95, label %bb.ex
  ]

bb.ex:                                            ; preds = %bb.ew, %bb.ew, %bb.ew, %bb.ew, %bb.ev
  store atomic i32 1, ptr @uv__fs_statx.no_statx monotonic, align 4
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ev
  call void @uv__statx_to_stat(ptr noundef nonnull %3, ptr noundef nonnull %i.z) #14
  br label %uv__fs_statx.exit.i115

uv__fs_statx.exit.i115:                           ; preds = %bb.ey, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %uv__fs_stat.exit

bb.ez:                                            ; preds = %bb.ex, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.tg = call noundef i32 @stat64(ptr noundef readonly %i.tc, ptr noundef nonnull %4) #14 ; 2 uses
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.fa, label %uv__fs_stat.exit

bb.fa:                                            ; preds = %bb.ez
  %i.ti = load i64, ptr %4, align 8
  store i64 %i.ti, ptr %i.z, align 8
  %i.tj = load i32, ptr %i.aa, align 8
  %i.tk = zext i32 %i.tj to i64
  store i64 %i.tk, ptr %i.ab, align 8
  %i.tl = load i64, ptr %i.ac, align 8
  store i64 %i.tl, ptr %i.ad, align 8
  %i.tm = load <2 x i32>, ptr %i.ae, align 4
  %i.tn = zext <2 x i32> %i.tm to <2 x i64>
  store <2 x i64> %i.tn, ptr %i.af, align 8
  %i.to = load i64, ptr %i.ag, align 8
  store i64 %i.to, ptr %i.ah, align 8
  %i.tp = load i64, ptr %i.ai, align 8
  store i64 %i.tp, ptr %i.aj, align 8
  %i.tq = load <2 x i64>, ptr %i.ak, align 8
  store <2 x i64> %i.tq, ptr %i.al, align 8
  %i.tr = load i64, ptr %i.am, align 8
  store i64 %i.tr, ptr %i.an, align 8
  %i.ts = load <2 x i64>, ptr %i.ao, align 8
  store <2 x i64> %i.ts, ptr %i.ap, align 8
  %i.tt = load <2 x i64>, ptr %i.aq, align 8
  store <2 x i64> %i.tt, ptr %i.ar, align 8
  %i.tu = load <2 x i64>, ptr %i.as, align 8
  %i.tv = shufflevector <2 x i64> %i.tu, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i64> %i.tv, ptr %i.at, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %uv__fs_stat.exit

uv__fs_stat.exit:                                 ; preds = %uv__fs_statx.exit.i115, %bb.ez, %bb.fa
  %.0.i114 = phi i32 [ %i.te, %uv__fs_statx.exit.i115 ], [ 0, %bb.fa ], [ %i.tg, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.tw = sext i32 %.0.i114 to i64
  br label %uv__fs_readlink.exit

bb.fb:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.tx = load ptr, ptr %i.p, align 8
  %i.ty = call i32 @statfs64(ptr noundef %i.tx, ptr noundef nonnull %2) #14
  %.not.i116 = icmp eq i32 %i.ty, 0
  br i1 %.not.i116, label %bb.fc, label %uv__fs_statfs.exit

bb.fc:                                            ; preds = %bb.fb
  %i.tz = call ptr @uv__malloc(i64 noundef 88) #14 ; 10 uses
  %i.ua = icmp eq ptr %i.tz, null
  br i1 %i.ua, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_statfs.exit

bb.fe:                                            ; preds = %bb.fc
  %i.ub = load i64, ptr %2, align 8
  store i64 %i.ub, ptr %i.tz, align 8
  %i.uc = load i64, ptr %i.r, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store i64 %i.uc, ptr %i.ud, align 8
  %i.ue = load i64, ptr %i.s, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i64 %i.ue, ptr %i.uf, align 8
  %i.ug = load i64, ptr %i.t, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store i64 %i.ug, ptr %i.uh, align 8
  %i.ui = load i64, ptr %i.u, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  store i64 %i.ui, ptr %i.uj, align 8
  %i.uk = load i64, ptr %i.v, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  store i64 %i.uk, ptr %i.ul, align 8
  %i.um = load i64, ptr %i.w, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.tz, i64 48
  store i64 %i.um, ptr %i.un, align 8
  %i.uo = load i64, ptr %i.x, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %i.tz, i64 56
  store i64 %i.uo, ptr %i.up, align 8
end_hunk_0
