Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/fs?download=true
begin_hunk_0_@uv__fs_work:bb.a
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_readlink.exit.thread

bb.di:                                            ; preds = %bb.dg
  %i.pm = load ptr, ptr %i.p, align 8
  %i.pn = call i64 @readlink(ptr noundef %i.pm, ptr noundef nonnull %i.pk, i64 noundef %spec.store.select.i.i) #14 ; 3 uses
  %i.po = icmp eq i64 %i.pn, -1
  br i1 %i.po, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void @uv__free(ptr noundef nonnull %i.pk) #14
  br label %uv__fs_readlink.exit.thread

bb.dk:                                            ; preds = %bb.di
  %i.pp = icmp eq i64 %i.pn, %spec.store.select.i.i
  br i1 %i.pp, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.pq = add nuw nsw i64 %spec.store.select.i.i, 1
  %i.pr = call ptr @uv__reallocf(ptr noundef nonnull %i.pk, i64 noundef %i.pq) #14 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %uv__fs_readlink.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.lcssa336 = phi i64 [ %spec.store.select.i.i, %bb.dl ], [ %i.pn, %bb.dk ]
  %.0.i108 = phi ptr [ %i.pr, %bb.dl ], [ %i.pk, %bb.dk ] ; 2 uses
  %i.pt = getelementptr inbounds i8, ptr %.0.i108, i64 %.lcssa336
  store i8 0, ptr %i.pt, align 1
  br label %.thread177

bb.dn:                                            ; preds = %bb.b
  %i.pu = load ptr, ptr %i.p, align 8
  %i.pv = call ptr @realpath(ptr noundef %i.pu, ptr noundef null) #14 ; 3 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %uv__fs_readlink.exit.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.px = call ptr @uv__strdup(ptr noundef nonnull %i.pv) #14 ; 2 uses
  call void @free(ptr noundef nonnull %i.pv) #14
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.dp, label %.thread177

bb.dp:                                            ; preds = %bb.do
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_readlink.exit.thread

bb.dq:                                            ; preds = %bb.b
  %i.pz = load ptr, ptr %i.p, align 8
  %i.qa = load ptr, ptr %i.q, align 8
  %i.qb = call i32 @rename(ptr noundef %i.pz, ptr noundef %i.qa) #14
  %i.qc = sext i32 %i.qb to i64
  br label %uv__fs_readlink.exit

bb.dr:                                            ; preds = %bb.b
  %i.qd = load ptr, ptr %i.p, align 8
  %i.qe = call i32 @rmdir(ptr noundef %i.qd) #14
  %i.qf = sext i32 %i.qe to i64
  br label %uv__fs_readlink.exit

bb.ds:                                            ; preds = %bb.b
  %i.qg = load i32, ptr %i.av, align 4            ; 3 uses
  %i.qh = load i32, ptr %i.j, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.qi = load i64, ptr %i.k, align 8
  store i64 %i.qi, ptr %i.b, align 8
  %i.qj = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.qk = load atomic i32, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  %.not.i.i110 = icmp eq i32 %i.qk, 0
  br i1 %.not.i.i110, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

bb.du:                                            ; preds = %bb.ds
  %i.ql = call i64 @uv__fs_copy_file_range(i32 noundef %i.qg, ptr noundef nonnull %i.b, i32 noundef %i.qh, ptr noundef null, i64 noundef %i.qj, i32 noundef 0) #14
  %.not11.i.i = icmp eq i64 %i.ql, -1
  br i1 %.not11.i.i, label %bb.dv, label %.critedge.thread25.i

bb.dv:                                            ; preds = %bb.du
  %i.qm = load i32, ptr %i.g, align 4             ; 2 uses
  switch i32 %i.qm, label %bb.ed [
    i32 13, label %bb.dw
    i32 38, label %bb.dy
    i32 1, label %bb.dz
    i32 95, label %bb.ec
    i32 18, label %bb.ec
  ]

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.qn = call i32 @fstatfs64(i32 noundef %i.qg, ptr noundef nonnull %7) #14
  %i.qo = icmp ne i32 %i.qn, -1
  %i.qp = load i64, ptr %7, align 8
  %.not.i.i.i = icmp eq i64 %i.qp, 12805120
  %or.cond.i.i.i = select i1 %i.qo, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %uv__is_buggy_cephfs.exit.i.i, label %uv__is_buggy_cephfs.exit.thread.i.i

uv__is_buggy_cephfs.exit.thread.i.i:              ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
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

.split.us.us.i.i:                                 ; preds = %.lr.ph.i.i, %.outer._crit_edge.us.i.i.a
  %.048104.us.i.i = phi i64 [ %23, %.outer._crit_edge.us.i.i.a ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.049103.us.i.i = phi i64 [ %i.rr, %.outer._crit_edge.us.i.i.a ], [ %.049.ph118.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.rk = sub nuw i64 %i.rg, %.048104.us.i.i
  %spec.store.select.us.i.i = call i64 @llvm.umin.i64(i64 %i.rk, i64 8192)
  br label %25

.preheader.us.i.i.a:                              ; preds = %.preheader.us.i.i.backedge, %.outer.split.us.i.i
  %18 = call i64 @write(i32 noundef %i.ri, ptr noundef nonnull %i.rt, i64 noundef %i.rs) #14 ; 2 uses
  %cond.us.i.i.a = icmp eq i64 %18, -1
  br i1 %cond.us.i.i.a, label %bb.eg, label %.outer.us.i.i.a

bb.eg:                                            ; preds = %.preheader.us.i.i.a
  %19 = load i32, ptr %i.g, align 4
  switch i32 %19, label %uv__fs_sendfile_emul.exit.i [
    i32 4, label %.preheader.us.i.i.backedge
    i32 11, label %bb.eh
  ]

.preheader.us.i.i.backedge:                       ; preds = %bb.eg, %.critedge57.us.i.i
  br label %.preheader.us.i.i.a, !llvm.loop !16

.outer.us.i.i.a:                                  ; preds = %.preheader.us.i.i.a
  %20 = add nsw i64 %18, %.0.ph102.us.i.i         ; 3 uses
  %21 = icmp slt i64 %20, %26
  %22 = sub nsw i64 %26, %20
  br i1 %21, label %.outer.split.us.i.i, label %.outer._crit_edge.us.i.i.a, !llvm.loop !16

bb.eh:                                            ; preds = %bb.eg
  store i32 %i.ri, ptr %5, align 4
  store i16 4, ptr %i.ax, align 4
  store i16 0, ptr %i.ay, align 2
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ej, %bb.eh
  %i.rl = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1) #14
  %i.rm = icmp eq i32 %i.rl, -1
  br i1 %i.rm, label %bb.ej, label %.critedge57.us.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.rn = load i32, ptr %i.g, align 4
  %i.ro = icmp eq i32 %i.rn, 4
  br i1 %i.ro, label %bb.ei, label %.critedge6.i.i, !llvm.loop !17

.critedge57.us.i.i:                               ; preds = %bb.ei
  %i.rp = load i16, ptr %i.ay, align 2
  %i.rq = and i16 %i.rp, -5
  %.not55.us.i.i = icmp eq i16 %i.rq, 0
  br i1 %.not55.us.i.i, label %.preheader.us.i.i.backedge, label %.critedge6.i.i

.outer._crit_edge.us.i.i.a:                       ; preds = %.outer.us.i.i.a, %.preheader64.split.us.us.i.i
  %i.rr = add nsw i64 %26, %.049103.us.i.i        ; 2 uses
  %23 = add nsw i64 %26, %.048104.us.i.i          ; 3 uses
  %24 = icmp ult i64 %23, %i.rg
  br i1 %24, label %.split.us.us.i.i, label %.loopexit.i.i, !llvm.loop !18

25:                                               ; preds = %bb.ek, %.split.us.us.i.i
  %26 = call i64 @pread64(i32 noundef %i.rh, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.us.i.i, i64 noundef %.049103.us.i.i) #14 ; 7 uses
  switch i64 %26, label %.preheader64.split.us.us.i.i [
    i64 -1, label %bb.ek
    i64 0, label %.loopexit.i.i
  ]

bb.ek:                                            ; preds = %25
  %27 = load i32, ptr %i.g, align 4               ; 2 uses
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %25, label %.split98.us.split.us.i.i, !llvm.loop !19

.preheader64.split.us.us.i.i:                     ; preds = %25
  %29 = icmp sgt i64 %26, 0
  br i1 %29, label %.outer.split.us.i.i, label %.outer._crit_edge.us.i.i.a

.outer.split.us.i.i:                              ; preds = %.preheader64.split.us.us.i.i, %.outer.us.i.i.a
  %i.rs = phi i64 [ %22, %.outer.us.i.i.a ], [ %26, %.preheader64.split.us.us.i.i ]
  %.0.ph102.us.i.i = phi i64 [ %20, %.outer.us.i.i.a ], [ 0, %.preheader64.split.us.us.i.i ] ; 2 uses
  %i.rt = getelementptr inbounds i8, ptr %i.a, i64 %.0.ph102.us.i.i
  br label %.preheader.us.i.i.a

.split.i.i:                                       ; preds = %.lr.ph.i.i, %.outer._crit_edge.i.i
  %.048104.i.i = phi i64 [ %i.sp, %.outer._crit_edge.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.049103.i.i = phi i64 [ %i.so, %.outer._crit_edge.i.i ], [ %.049.ph118.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.ru = sub nuw i64 %i.rg, %.048104.i.i
  %spec.store.select.i.i112 = call i64 @llvm.umin.i64(i64 %i.ru, i64 8192)
  br label %bb.el

bb.el:                                            ; preds = %bb.em, %.split.i.i
  %i.rv = call i64 @read(i32 noundef %i.rh, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.i.i112) #14 ; 7 uses
  switch i64 %i.rv, label %.preheader64.split.i.i [
    i64 -1, label %bb.em
    i64 0, label %.loopexit.i.i
  ]

.preheader64.split.i.i:                           ; preds = %bb.el
  %i.rw = icmp sgt i64 %i.rv, 0
  br i1 %i.rw, label %.outer.split.i.i, label %.outer._crit_edge.i.i

bb.em:                                            ; preds = %bb.el
  %i.rx = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ry = icmp eq i32 %i.rx, 4
  br i1 %i.ry, label %bb.el, label %.split98.us.split.us.i.i, !llvm.loop !19

.split98.us.split.us.i.i:                         ; preds = %bb.ek, %bb.em
  %i.rz = phi i32 [ %i.rx, %bb.em ], [ %27, %bb.ek ]
  %.us-phi99.i.i = phi i64 [ %.049103.i.i, %bb.em ], [ %.049103.us.i.i, %bb.ek ] ; 2 uses
  %.us-phi100.i.i = phi i64 [ %.048104.i.i, %bb.em ], [ %.048104.us.i.i, %bb.ek ] ; 3 uses
  %i.sa = icmp ne i64 %.us-phi100.i.i, 0
  %or.cond.not.i.i = or i1 %.not121.i.i, %i.sa
  br i1 %or.cond.not.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.split98.us.split.us.i.i
  switch i32 %i.rz, label %uv__fs_sendfile_emul.exit.i [
    i32 5, label %.lr.ph.i.i.backedge
    i32 29, label %.lr.ph.i.i.backedge
  ]

.lr.ph.i.i.backedge:                              ; preds = %bb.en, %bb.en
  br label %.lr.ph.i.i

bb.eo:                                            ; preds = %.split98.us.split.us.i.i
  %.not187.i.i = icmp eq i64 %.us-phi100.i.i, 0
  br i1 %.not187.i.i, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.outer.split.i.i
  %i.sb = call i64 @write(i32 noundef %i.ri, ptr noundef nonnull %i.sh, i64 noundef %i.sg) #14 ; 2 uses
  %cond.i.i = icmp eq i64 %i.sb, -1
  br i1 %cond.i.i, label %bb.ep, label %.outer.i.i

bb.ep:                                            ; preds = %.preheader.i.i
  %i.sc = load i32, ptr %i.g, align 4
  switch i32 %i.sc, label %uv__fs_sendfile_emul.exit.i [
    i32 4, label %.preheader.i.i.backedge
    i32 11, label %bb.eq
  ]

.preheader.i.i.backedge:                          ; preds = %bb.ep, %.critedge57.i.i
  br label %.preheader.i.i, !llvm.loop !16

.outer.i.i:                                       ; preds = %.preheader.i.i
  %i.sd = add nsw i64 %i.sb, %.0.ph102.i.i        ; 3 uses
  %i.se = icmp slt i64 %i.sd, %i.rv
  %i.sf = sub nsw i64 %i.rv, %i.sd
  br i1 %i.se, label %.outer.split.i.i, label %.outer._crit_edge.i.i, !llvm.loop !16

.outer.split.i.i:                                 ; preds = %.preheader64.split.i.i, %.outer.i.i
  %i.sg = phi i64 [ %i.sf, %.outer.i.i ], [ %i.rv, %.preheader64.split.i.i ]
  %.0.ph102.i.i = phi i64 [ %i.sd, %.outer.i.i ], [ 0, %.preheader64.split.i.i ] ; 2 uses
  %i.sh = getelementptr inbounds i8, ptr %i.a, i64 %.0.ph102.i.i
  br label %.preheader.i.i

bb.eq:                                            ; preds = %bb.ep
  store i32 %i.ri, ptr %5, align 4
  store i16 4, ptr %i.ax, align 4
  store i16 0, ptr %i.ay, align 2
  br label %bb.er

bb.er:                                            ; preds = %bb.es, %bb.eq
  %i.si = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1) #14
  %i.sj = icmp eq i32 %i.si, -1
  br i1 %i.sj, label %bb.es, label %.critedge57.i.i

bb.es:                                            ; preds = %bb.er
  %i.sk = load i32, ptr %i.g, align 4
  %i.sl = icmp eq i32 %i.sk, 4
  br i1 %i.sl, label %bb.er, label %.critedge6.i.i, !llvm.loop !17

.critedge57.i.i:                                  ; preds = %bb.er
  %i.sm = load i16, ptr %i.ay, align 2
  %i.sn = and i16 %i.sm, -5
  %.not55.i.i = icmp eq i16 %i.sn, 0
  br i1 %.not55.i.i, label %.preheader.i.i.backedge, label %.critedge6.i.i

.critedge6.i.i:                                   ; preds = %.critedge57.us.i.i, %.critedge57.i.i, %bb.ej, %bb.es
  store i32 5, ptr %i.g, align 4
  br label %uv__fs_sendfile_emul.exit.i

.outer._crit_edge.i.i:                            ; preds = %.outer.i.i, %.preheader64.split.i.i
  %i.so = add nsw i64 %i.rv, %.049103.i.i         ; 2 uses
  %i.sp = add nsw i64 %i.rv, %.048104.i.i         ; 3 uses
  %i.sq = icmp ult i64 %i.sp, %i.rg
  br i1 %i.sq, label %.split.i.i, label %.loopexit.i.i, !llvm.loop !18

.loopexit.i.i:                                    ; preds = %.outer._crit_edge.us.i.i.a, %.outer._crit_edge.i.i, %25, %bb.el
  %.04993.i.i = phi i64 [ %.049103.i.i, %bb.el ], [ %.049103.us.i.i, %25 ], [ %i.so, %.outer._crit_edge.i.i ], [ %i.rr, %.outer._crit_edge.us.i.i.a ]
  %.04885.i.i = phi i64 [ %.048104.i.i, %bb.el ], [ %.048104.us.i.i, %25 ], [ %i.sp, %.outer._crit_edge.i.i ], [ %23, %.outer._crit_edge.us.i.i.a ] ; 2 uses
  %.not56.old.i.i = icmp eq i64 %.04885.i.i, -1
  br i1 %.not56.old.i.i, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.loopexit.i.i, %bb.eo, %bb.ef
  %.04992.i.i = phi i64 [ %.us-phi99.i.i, %bb.eo ], [ %.04993.i.i, %.loopexit.i.i ], [ %i.rj, %bb.ef ]
  %.04884.i.i = phi i64 [ %.us-phi100.i.i, %bb.eo ], [ %.04885.i.i, %.loopexit.i.i ], [ 0, %bb.ef ]
  store i64 %.04992.i.i, ptr %i.k, align 8
  br label %uv__fs_sendfile_emul.exit.i

uv__fs_sendfile_emul.exit.i:                      ; preds = %bb.en, %bb.eg, %bb.ep, %.loopexit.thread.i.i, %.loopexit.i.i, %.critedge6.i.i, %bb.eo
  %.161.i.i = phi i64 [ -1, %.loopexit.i.i ], [ %.04884.i.i, %.loopexit.thread.i.i ], [ -1, %.critedge6.i.i ], [ -1, %bb.eg ], [ -1, %bb.eo ], [ -1, %bb.ep ], [ -1, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %uv__fs_sendfile.exit

uv__fs_sendfile.exit:                             ; preds = %.critedge.thread25.i, %bb.ee, %uv__fs_sendfile_emul.exit.i
  %.018.i = phi i64 [ %i.re, %.critedge.thread25.i ], [ %.161.i.i, %uv__fs_sendfile_emul.exit.i ], [ -1, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %uv__fs_readlink.exit

bb.et:                                            ; preds = %bb.b
  %i.sr = load ptr, ptr %i.p, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.ss = load atomic i32, ptr @uv__fs_statx.no_statx monotonic, align 4
  %.not.i.i113 = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i113, label %bb.eu, label %bb.ey

bb.eu:                                            ; preds = %bb.et
  %i.st = call i32 @uv__statx(i32 noundef -100, ptr noundef %i.sr, i32 noundef 0, i32 noundef 4095, ptr noundef nonnull %3) #14 ; 2 uses
  switch i32 %i.st, label %bb.ew [
    i32 0, label %bb.ex
    i32 -1, label %bb.ev
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.su = load i32, ptr %i.g, align 4
  switch i32 %i.su, label %uv__fs_statx.exit.i115 [
    i32 22, label %bb.ew
    i32 1, label %bb.ew
    i32 38, label %bb.ew
    i32 95, label %bb.ew
  ]

bb.ew:                                            ; preds = %bb.ev, %bb.ev, %bb.ev, %bb.ev, %bb.eu
  store atomic i32 1, ptr @uv__fs_statx.no_statx monotonic, align 4
  br label %bb.ey

bb.ex:                                            ; preds = %bb.eu
  call void @uv__statx_to_stat(ptr noundef nonnull %3, ptr noundef nonnull %i.z) #14
  br label %uv__fs_statx.exit.i115

uv__fs_statx.exit.i115:                           ; preds = %bb.ex, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %uv__fs_stat.exit

bb.ey:                                            ; preds = %bb.ew, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.sv = call noundef i32 @stat64(ptr noundef readonly %i.sr, ptr noundef nonnull %4) #14 ; 2 uses
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %bb.ez, label %uv__fs_stat.exit

bb.ez:                                            ; preds = %bb.ey
  %i.sx = load i64, ptr %4, align 8
  store i64 %i.sx, ptr %i.z, align 8
  %i.sy = load i32, ptr %i.aa, align 8
  %i.sz = zext i32 %i.sy to i64
  store i64 %i.sz, ptr %i.ab, align 8
  %i.ta = load i64, ptr %i.ac, align 8
  store i64 %i.ta, ptr %i.ad, align 8
  %i.tb = load <2 x i32>, ptr %i.ae, align 4
  %i.tc = zext <2 x i32> %i.tb to <2 x i64>
  store <2 x i64> %i.tc, ptr %i.af, align 8
  %i.td = load i64, ptr %i.ag, align 8
  store i64 %i.td, ptr %i.ah, align 8
  %i.te = load i64, ptr %i.ai, align 8
  store i64 %i.te, ptr %i.aj, align 8
  %i.tf = load <2 x i64>, ptr %i.ak, align 8
  store <2 x i64> %i.tf, ptr %i.al, align 8
  %i.tg = load i64, ptr %i.am, align 8
  store i64 %i.tg, ptr %i.an, align 8
  %i.th = load <2 x i64>, ptr %i.ao, align 8
  store <2 x i64> %i.th, ptr %i.ap, align 8
  %i.ti = load <2 x i64>, ptr %i.aq, align 8
  store <2 x i64> %i.ti, ptr %i.ar, align 8
  %i.tj = load <2 x i64>, ptr %i.as, align 8
  %i.tk = shufflevector <2 x i64> %i.tj, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i64> %i.tk, ptr %i.at, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  br label %uv__fs_stat.exit

uv__fs_stat.exit:                                 ; preds = %uv__fs_statx.exit.i115, %bb.ey, %bb.ez
  %.0.i114 = phi i32 [ %i.st, %uv__fs_statx.exit.i115 ], [ 0, %bb.ez ], [ %i.sv, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.tl = sext i32 %.0.i114 to i64
  br label %uv__fs_readlink.exit

bb.fa:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.tm = load ptr, ptr %i.p, align 8
  %i.tn = call i32 @statfs64(ptr noundef %i.tm, ptr noundef nonnull %2) #14
  %.not.i116 = icmp eq i32 %i.tn, 0
  br i1 %.not.i116, label %bb.fb, label %uv__fs_statfs.exit

bb.fb:                                            ; preds = %bb.fa
  %i.to = call ptr @uv__malloc(i64 noundef 88) #14 ; 10 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_statfs.exit

bb.fd:                                            ; preds = %bb.fb
  %i.tq = load i64, ptr %2, align 8
  store i64 %i.tq, ptr %i.to, align 8
  %i.tr = load i64, ptr %i.r, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store i64 %i.tr, ptr %i.ts, align 8
  %i.tt = load i64, ptr %i.s, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store i64 %i.tt, ptr %i.tu, align 8
  %i.tv = load i64, ptr %i.t, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  store i64 %i.tv, ptr %i.tw, align 8
  %i.tx = load i64, ptr %i.u, align 8
  %i.ty = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  store i64 %i.tx, ptr %i.ty, align 8
  %i.tz = load i64, ptr %i.v, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.to, i64 40
  store i64 %i.tz, ptr %i.ua, align 8
  %i.ub = load i64, ptr %i.w, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.to, i64 48
  store i64 %i.ub, ptr %i.uc, align 8
  %i.ud = load i64, ptr %i.x, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.to, i64 56
  store i64 %i.ud, ptr %i.ue, align 8
  store ptr %i.to, ptr %i.y, align 8
  br label %uv__fs_statfs.exit

uv__fs_statfs.exit:                               ; preds = %bb.fa, %bb.fc, %bb.fd
  %.0.i117 = phi i64 [ 0, %bb.fd ], [ -1, %bb.fc ], [ -1, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %uv__fs_readlink.exit

bb.fe:                                            ; preds = %bb.b
  %i.uf = load ptr, ptr %i.p, align 8
  %i.ug = load ptr, ptr %i.q, align 8
  %i.uh = call i32 @symlink(ptr noundef %i.uf, ptr noundef %i.ug) #14
  %i.ui = sext i32 %i.uh to i64
  br label %uv__fs_readlink.exit

bb.ff:                                            ; preds = %bb.b
  %i.uj = load ptr, ptr %i.p, align 8
  %i.uk = call i32 @unlink(ptr noundef %i.uj) #14
  %i.ul = sext i32 %i.uk to i64
  br label %uv__fs_readlink.exit

bb.fg:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.um = load double, ptr %i.m, align 8          ; 4 uses
  %i.un = call double @llvm.fabs.f64(double %i.um)
  %narrow.i.i.i118 = fcmp une double %i.un, +inf
  br i1 %narrow.i.i.i118, label %bb.fh, label %uv__fs_to_timespec.exit.i119

bb.fh:                                            ; preds = %bb.fg
  %narrow.i8.i.i131 = fcmp ord double %i.um, 0.000000e+00
  br i1 %narrow.i8.i.i131, label %bb.fi, label %uv__fs_to_timespec.exit.i119

bb.fi:                                            ; preds = %bb.fh
  %i.uo = fptosi double %i.um to i64              ; 2 uses
  %i.up = sitofp i64 %i.uo to double
  %i.uq = fsub nnan double %i.um, %i.up
  %i.ur = fmul nnan double %i.uq, 1.000000e+09
  %i.us = fptosi double %i.ur to i64              ; 4 uses
  %i.ut = icmp slt i64 %i.us, 0
  %i.uu = sitofp i64 %i.us to double
  %i.uv = fadd double %i.uu, 1.000000e+09
  %i.uw = fptosi double %i.uv to i64
  %.sroa.7.0.i.i132 = select i1 %i.ut, i64 %i.uw, i64 %i.us
  %.lobit.i.i133 = ashr i64 %i.us, 63
  %.sroa.0.0.i.i134 = add nsw i64 %.lobit.i.i133, %i.uo
  br label %uv__fs_to_timespec.exit.i119

uv__fs_to_timespec.exit.i119:                     ; preds = %bb.fi, %bb.fh, %bb.fg
  %.sroa.06.0.i.i120 = phi i64 [ %.sroa.0.0.i.i134, %bb.fi ], [ 1073741823, %bb.fg ], [ 1073741822, %bb.fh ]
  %.sroa.4.0.i.i121 = phi i64 [ %.sroa.7.0.i.i132, %bb.fi ], [ 1073741823, %bb.fg ], [ 1073741822, %bb.fh ]
  store i64 %.sroa.06.0.i.i120, ptr %1, align 16
  store i64 %.sroa.4.0.i.i121, ptr %.sroa.42.0..sroa_idx.i122, align 8
  %i.ux = load double, ptr %i.n, align 8          ; 4 uses
  %i.uy = call double @llvm.fabs.f64(double %i.ux)
  %narrow.i.i5.i123 = fcmp une double %i.uy, +inf
  br i1 %narrow.i.i5.i123, label %bb.fj, label %uv__fs_utime.exit

bb.fj:                                            ; preds = %uv__fs_to_timespec.exit.i119
  %narrow.i8.i10.i127 = fcmp ord double %i.ux, 0.000000e+00
  br i1 %narrow.i8.i10.i127, label %bb.fk, label %uv__fs_utime.exit

bb.fk:                                            ; preds = %bb.fj
  %i.uz = fptosi double %i.ux to i64              ; 2 uses
  %i.va = sitofp i64 %i.uz to double
  %i.vb = fsub nnan double %i.ux, %i.va
  %i.vc = fmul nnan double %i.vb, 1.000000e+09
  %i.vd = fptosi double %i.vc to i64              ; 4 uses
  %i.ve = icmp slt i64 %i.vd, 0
  %i.vf = sitofp i64 %i.vd to double
  %i.vg = fadd double %i.vf, 1.000000e+09
  %i.vh = fptosi double %i.vg to i64
  %.sroa.7.0.i11.i128 = select i1 %i.ve, i64 %i.vh, i64 %i.vd
  %.lobit.i12.i129 = ashr i64 %i.vd, 63
  %.sroa.0.0.i13.i130 = add nsw i64 %.lobit.i12.i129, %i.uz
end_hunk_0
begin_hunk_1_@__errno_location
; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @chown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @lchown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare i32 @uv__close_nocancel(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uv__is_cifs_or_smb(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.statfs, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = call i32 @fstatfs64(i32 noundef %0, ptr noundef nonnull %1) #14
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8
  %i.d = trunc i64 %i.c to i32
  switch i32 %i.d, label %bb.c [
    i32 20859, label %bb.d
    i32 -28095166, label %bb.d
    i32 -11317950, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #7

declare i32 @uv__close_nocheckstdio(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @fstatfs64(i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #1

declare i32 @uv__statx(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @uv__statx_to_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @fsync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mkdtemp(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare void @uv_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @uv__mkostemp_initonce() #0 {
bb.a:
  %i.a = tail call ptr @dlsym(ptr noundef null, ptr noundef nonnull @.str.1) #14
  store ptr %i.a, ptr @uv__mkostemp, align 8
  %i.b = tail call ptr @dlerror() #14             ; 0 uses
  ret void
}

declare void @uv_rwlock_rdlock(ptr noundef) local_unnamed_addr #1

declare i32 @mkstemp64(ptr noundef) local_unnamed_addr #1

declare i32 @uv__cloexec(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @uv__close(i32 noundef) local_unnamed_addr #1

declare void @uv_rwlock_rdunlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

declare i32 @uv__getiovmax() local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare i64 @readv(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @pread64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i64 @uv__preadv_emul(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %.not43.i = icmp eq i32 %2, 0
  br i1 %.not43.i, label %uv__preadv_or_pwritev_emul.exit, label %.split.i

.split.i:                                         ; preds = %bb.a, %bb.d
  %.038.i = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.02937.i = phi i64 [ %i.l, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.03136.i = phi i64 [ %i.n, %bb.d ], [ %3, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.038.i ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.split.i
  %i.f = tail call i64 @pread64(i32 noundef %0, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %.03136.i) #14 ; 4 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %.critedge32.split.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #15
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.c
  %i.k = icmp sgt i64 %.02937.i, 0
  %.029..i = select i1 %i.k, i64 %.02937.i, i64 -1
  br label %uv__preadv_or_pwritev_emul.exit

.critedge32.split.i:                              ; preds = %bb.b
  %i.l = add nsw i64 %i.f, %.02937.i              ; 3 uses
  %i.m = icmp ult i64 %i.f, %i.e
  br i1 %i.m, label %uv__preadv_or_pwritev_emul.exit, label %bb.d

bb.d:                                             ; preds = %.critedge32.split.i
  %i.n = add nsw i64 %i.f, %.03136.i
  %i.o = add nuw i64 %.038.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.a
  br i1 %exitcond.not.i, label %uv__preadv_or_pwritev_emul.exit, label %.split.i, !llvm.loop !1

uv__preadv_or_pwritev_emul.exit:                  ; preds = %.critedge32.split.i, %bb.d, %bb.a, %.critedge.i
  %.030.i = phi i64 [ %.029..i, %.critedge.i ], [ 0, %bb.a ], [ %i.l, %bb.d ], [ %i.l, %.critedge32.split.i ]
  ret i64 %.030.i
}

; Function Attrs: nounwind uwtable
define internal i64 @uv__pwritev_emul(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %.not43.i = icmp eq i32 %2, 0
  br i1 %.not43.i, label %uv__preadv_or_pwritev_emul.exit, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %bb.a, %bb.b
  %.038.us.i = phi i64 [ %5, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.02937.us.i = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.03136.us.i = phi i64 [ %4, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.038.us.i ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.critedge32.split.us.us.i
  %4 = add nsw i64 %6, %.03136.us.i
  %5 = add nuw i64 %.038.us.i, 1                  ; 2 uses
  %exitcond53.not.i.a = icmp eq i64 %5, %i.a
  br i1 %exitcond53.not.i.a, label %uv__preadv_or_pwritev_emul.exit, label %.split.us.us.i, !llvm.loop !1

bb.c:                                             ; preds = %bb.d, %.split.us.us.i
  %6 = tail call i64 @pwrite64(i32 noundef %0, ptr noundef %i.c, i64 noundef %i.e, i64 noundef %.03136.us.i) #14 ; 4 uses
  %i.f = icmp eq i64 %6, -1
  br i1 %i.f, label %bb.d, label %.critedge32.split.us.us.i

bb.d:                                             ; preds = %bb.c
  %7 = tail call ptr @__errno_location() #15
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %bb.c, label %.critedge.i, !llvm.loop !0

.critedge32.split.us.us.i:                        ; preds = %bb.c
  %i.g = add nsw i64 %6, %.02937.us.i             ; 3 uses
  %10 = icmp ult i64 %6, %i.e
  br i1 %10, label %uv__preadv_or_pwritev_emul.exit, label %bb.b

.critedge.i:                                      ; preds = %bb.d
  %i.h = icmp sgt i64 %.02937.us.i, 0
  %.029..i = select i1 %i.h, i64 %.02937.us.i, i64 -1
  br label %uv__preadv_or_pwritev_emul.exit

uv__preadv_or_pwritev_emul.exit:                  ; preds = %bb.b, %.critedge32.split.us.us.i, %bb.a, %.critedge.i
  %.030.i = phi i64 [ %.029..i, %.critedge.i ], [ 0, %bb.a ], [ %i.g, %.critedge32.split.us.us.i ], [ %i.g, %bb.b ]
  ret i64 %.030.i
}

declare i64 @pwrite64(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @scandir64(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @uv__fs_scandir_filter(ptr nofree noundef readonly captures(none) %0) #4 {
sub_0:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.b = load i8, ptr %i.a, align 1
  %.not6 = icmp eq i8 %i.b, 46
  br i1 %.not6, label %.tail, label %.tail2

.tail:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.tail2, label %sub_14

sub_14:                                           ; preds = %.tail
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i8, ptr %i.f, align 1
  %.not8 = icmp eq i8 %i.g, 46
  br i1 %.not8, label %sub_2, label %.tail2

sub_2:                                            ; preds = %sub_14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp ne i8 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %.tail2

.tail2:                                           ; preds = %sub_2, %sub_14, %sub_0, %.tail
  %i.l = phi i32 [ 0, %.tail ], [ %i.k, %sub_2 ], [ 1, %sub_14 ], [ 1, %sub_0 ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @uv__fs_scandir_sort(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.d) #16
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @readdir64(ptr noundef) local_unnamed_addr #1

declare i32 @uv__fs_get_dirent_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare ptr @uv__reallocf(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @pathconf(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @sendfile64(i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i64 @uv__fs_copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @uv__kernel_version() local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @statfs64(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i64 @writev(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{ptr @uv_fs_open, null}
!8 = distinct !{null}
!9 = distinct !{ptr @uv_fs_sendfile, null}
!10 = distinct !{!10, !6}
!11 = distinct !{ptr @uv_fs_unlink, null}
!12 = distinct !{null}
!13 = distinct !{null, null, null}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{null, null, null, null}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
end_hunk_1
