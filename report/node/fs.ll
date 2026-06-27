inline.NumInlined: 59
inline.NumDeleted: 41
begin_hunk_0_@uv__fs_work:bb.a
  %i.pp = call i64 @pathconf(ptr noundef %i.po, i32 noundef 4) #15 ; 2 uses
  %i.pq = icmp eq i64 %i.pp, -1
  %spec.store.select.i.i = select i1 %i.pq, i64 4096, i64 %i.pp ; 5 uses
  %i.pr = call ptr @uv__malloc(i64 noundef %spec.store.select.i.i) #15 ; 5 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_readlink.exit.thread

bb.dm:                                            ; preds = %bb.dk
  %i.pt = load ptr, ptr %i.p, align 8
  %i.pu = call i64 @readlink(ptr noundef %i.pt, ptr noundef nonnull %i.pr, i64 noundef %spec.store.select.i.i) #15 ; 3 uses
  %i.pv = icmp eq i64 %i.pu, -1
  br i1 %i.pv, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  call void @uv__free(ptr noundef nonnull %i.pr) #15
  br label %uv__fs_readlink.exit.thread

bb.do:                                            ; preds = %bb.dm
  %i.pw = icmp eq i64 %i.pu, %spec.store.select.i.i
  br i1 %i.pw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.px = add nuw nsw i64 %spec.store.select.i.i, 1
  %i.py = call ptr @uv__reallocf(ptr noundef nonnull %i.pr, i64 noundef %i.px) #15 ; 2 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %uv__fs_readlink.exit.thread, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.lcssa309 = phi i64 [ %spec.store.select.i.i, %bb.dp ], [ %i.pu, %bb.do ]
  %.0.i107 = phi ptr [ %i.py, %bb.dp ], [ %i.pr, %bb.do ] ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %.0.i107, i64 %.lcssa309
  store i8 0, ptr %i.qa, align 1
  br label %.thread180

bb.dr:                                            ; preds = %bb.b
  %i.qb = load ptr, ptr %i.p, align 8
  %i.qc = call ptr @realpath(ptr noundef %i.qb, ptr noundef null) #15 ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %uv__fs_readlink.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qe = call ptr @uv__strdup(ptr noundef nonnull %i.qc) #15 ; 2 uses
  call void @free(ptr noundef nonnull %i.qc) #15
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %bb.dt, label %.thread180

bb.dt:                                            ; preds = %bb.ds
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_readlink.exit.thread

bb.du:                                            ; preds = %bb.b
  %i.qg = load ptr, ptr %i.p, align 8
  %i.qh = load ptr, ptr %i.q, align 8
  %i.qi = call i32 @rename(ptr noundef %i.qg, ptr noundef %i.qh) #15
  %i.qj = sext i32 %i.qi to i64
  br label %uv__fs_readlink.exit

bb.dv:                                            ; preds = %bb.b
  %i.qk = load ptr, ptr %i.p, align 8
  %i.ql = call i32 @rmdir(ptr noundef %i.qk) #15
  %i.qm = sext i32 %i.ql to i64
  br label %uv__fs_readlink.exit

bb.dw:                                            ; preds = %bb.b
  %i.qn = load i32, ptr %i.au, align 4            ; 3 uses
  %i.qo = load i32, ptr %i.j, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.qp = load i64, ptr %i.k, align 8
  store i64 %i.qp, ptr %i.b, align 8
  %i.qq = load i64, ptr %i.av, align 8            ; 2 uses
  %i.qr = load atomic i32, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  %.not.i.i109 = icmp eq i32 %i.qr, 0
  br i1 %.not.i.i109, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

bb.dy:                                            ; preds = %bb.dw
  %i.qs = call i64 @uv__fs_copy_file_range(i32 noundef %i.qn, ptr noundef nonnull %i.b, i32 noundef %i.qo, ptr noundef null, i64 noundef %i.qq, i32 noundef 0) #15
  %.not11.i.i = icmp eq i64 %i.qs, -1
  br i1 %.not11.i.i, label %bb.dz, label %.critedge.thread25.i

bb.dz:                                            ; preds = %bb.dy
  %i.qt = load i32, ptr %i.g, align 4             ; 2 uses
  switch i32 %i.qt, label %bb.eh [
    i32 13, label %bb.ea
    i32 38, label %bb.ec
    i32 1, label %bb.ed
    i32 95, label %bb.eg
    i32 18, label %bb.eg
  ]

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.qu = call i32 @fstatfs64(i32 noundef %i.qn, ptr noundef nonnull %7) #15
  %i.qv = icmp ne i32 %i.qu, -1
  %i.qw = load i64, ptr %7, align 8
  %.not.i.i.i = icmp eq i64 %i.qw, 12805120
  %or.cond.i.i.i = select i1 %i.qv, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %uv__is_buggy_cephfs.exit.i.i, label %uv__is_buggy_cephfs.exit.thread.i.i

uv__is_buggy_cephfs.exit.thread.i.i:              ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %thread-pre-split.i

uv__is_buggy_cephfs.exit.i.i:                     ; preds = %bb.ea
  %i.qx = call i32 @uv__kernel_version() #15
  %i.qy = icmp ugt i32 %i.qx, 267263
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br i1 %i.qy, label %thread-pre-split.i, label %bb.eb

bb.eb:                                            ; preds = %uv__is_buggy_cephfs.exit.i.i
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

bb.ec:                                            ; preds = %bb.dz
  store atomic i32 1, ptr @uv__fs_try_copy_file_range.no_copy_file_range_support monotonic, align 4
  br label %.critedge.i

bb.ed:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.qz = call i32 @fstatfs64(i32 noundef %i.qo, ptr noundef nonnull %6) #15
  %i.ra = icmp eq i32 %i.qz, -1
  br i1 %i.ra, label %uv__is_cifs_or_smb.exit.thread.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.rb = load i64, ptr %6, align 8
  %i.rc = trunc i64 %i.rb to i32
  switch i32 %i.rc, label %uv__is_cifs_or_smb.exit.thread.i.i [
    i32 20859, label %bb.ef
    i32 -28095166, label %bb.ef
    i32 -11317950, label %bb.ef
  ]

uv__is_cifs_or_smb.exit.thread.i.i:               ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %thread-pre-split.i

bb.ef:                                            ; preds = %bb.ee, %bb.ee, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

bb.eg:                                            ; preds = %bb.dz, %bb.dz
  store i32 38, ptr %i.g, align 4
  br label %.critedge.i

thread-pre-split.i:                               ; preds = %uv__is_cifs_or_smb.exit.thread.i.i, %uv__is_buggy_cephfs.exit.i.i, %uv__is_buggy_cephfs.exit.thread.i.i
  %.pr.i = load i32, ptr %i.g, align 4
  br label %bb.eh

bb.eh:                                            ; preds = %thread-pre-split.i, %bb.dz
  %i.rd = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.qt, %bb.dz ]
  %i.re = icmp eq i32 %i.rd, 38
  br i1 %i.re, label %.critedge.i, label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ec, %bb.eb, %bb.dx
  %i.rf = call i64 @sendfile64(i32 noundef %i.qo, i32 noundef %i.qn, ptr noundef nonnull %i.b, i64 noundef %i.qq) #15
  %.not.i110 = icmp eq i64 %i.rf, -1
  br i1 %.not.i110, label %.critedge.thread.i, label %.critedge.thread25.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.eh
  %i.rg = load i64, ptr %i.b, align 8
  %i.rh = load i64, ptr %i.k, align 8
  %i.ri = icmp sgt i64 %i.rg, %i.rh
  br i1 %i.ri, label %.critedge.thread25.i, label %bb.ei

.critedge.thread25.i:                             ; preds = %.critedge.thread.i, %.critedge.i, %bb.dy
  %i.rj = load i64, ptr %i.b, align 8             ; 2 uses
  %i.rk = load i64, ptr %i.k, align 8
  %i.rl = sub nsw i64 %i.rj, %i.rk
  store i64 %i.rj, ptr %i.k, align 8
  br label %uv__fs_sendfile.exit

bb.ei:                                            ; preds = %.critedge.thread.i
  %i.rm = load i32, ptr %i.g, align 4
  switch i32 %i.rm, label %uv__fs_sendfile.exit [
    i32 22, label %bb.ej
    i32 5, label %bb.ej
    i32 88, label %bb.ej
    i32 18, label %bb.ej
  ]

bb.ej:                                            ; preds = %bb.ei, %bb.ei, %bb.ei, %bb.ei
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.rn = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ro = load i32, ptr %i.au, align 4            ; 2 uses
  %i.rp = load i32, ptr %i.j, align 8             ; 2 uses
  %i.rq = load i64, ptr %i.k, align 8             ; 2 uses
  %.not.i20.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i20.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ej, %.outer68.i.i
  %.0.ph152.i.i = phi i1 [ %.0105.us.i.i, %.outer68.i.i ], [ true, %bb.ej ]
  %.047.ph149.i.i = phi i64 [ %i.so, %.outer68.i.i ], [ %i.rq, %bb.ej ] ; 5 uses
  %.048.ph148.i.i = phi i64 [ %i.sp, %.outer68.i.i ], [ 0, %bb.ej ]
  br label %bb.ek

bb.ek:                                            ; preds = %.backedge, %.lr.ph.i.i
  %.0105.us.i.i = phi i1 [ %.0.ph152.i.i, %.lr.ph.i.i ], [ false, %.backedge ] ; 3 uses
  %.048104.us.i.i = phi i64 [ %.048.ph148.i.i, %.lr.ph.i.i ], [ 0, %.backedge ] ; 6 uses
  %i.rr = sub nuw i64 %i.rn, %.048104.us.i.i
  %spec.store.select.us.i.i = call i64 @llvm.umin.i64(i64 %i.rr, i64 8192) ; 2 uses
  br i1 %.0105.us.i.i, label %.split.us.us.i.i, label %.split.us110.i.i

.split.us110.i.i:                                 ; preds = %bb.ek, %bb.el
  %i.rs = call i64 @read(i32 noundef %i.ro, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.us.i.i) #15 ; 2 uses
  switch i64 %i.rs, label %.preheader64.i.i [
    i64 -1, label %bb.el
    i64 0, label %.loopexit.i.i
  ]

bb.el:                                            ; preds = %.split.us110.i.i
  %i.rt = load i32, ptr %i.g, align 4             ; 2 uses
  %i.ru = icmp eq i32 %i.rt, 4
  br i1 %i.ru, label %.split.us110.i.i, label %.split102.us109.i.i, !llvm.loop !18

bb.em:                                            ; preds = %.split102.us109.i.i
  switch i32 %i.rv, label %uv__fs_sendfile_emul.exit.i [
    i32 5, label %.backedge
    i32 29, label %.backedge
  ]

.backedge:                                        ; preds = %bb.em, %bb.em
  br label %bb.ek

.split102.us109.i.i:                              ; preds = %bb.el, %bb.en
  %i.rv = phi i32 [ %i.ry, %bb.en ], [ %i.rt, %bb.el ]
  %i.rw = icmp eq i64 %.048104.us.i.i, 0          ; 2 uses
  %or.cond.us.i.i = and i1 %.0105.us.i.i, %i.rw
  br i1 %or.cond.us.i.i, label %bb.em, label %.split122.us.i.i

.split.us.us.i.i:                                 ; preds = %bb.ek, %bb.en
  %i.rx = call i64 @pread64(i32 noundef %i.ro, ptr noundef nonnull %i.a, i64 noundef %spec.store.select.us.i.i, i64 noundef %.047.ph149.i.i) #15 ; 2 uses
  switch i64 %i.rx, label %.preheader64.i.i [
    i64 -1, label %bb.en
    i64 0, label %.loopexit.i.i
  ]

bb.en:                                            ; preds = %.split.us.us.i.i
  %i.ry = load i32, ptr %i.g, align 4             ; 2 uses
  %i.rz = icmp eq i32 %i.ry, 4
  br i1 %i.rz, label %.split.us.us.i.i, label %.split102.us109.i.i, !llvm.loop !18

.preheader64.i.i:                                 ; preds = %.split.us110.i.i, %.split.us.us.i.i
  %.us-phi98.i.i = phi i64 [ %i.rx, %.split.us.us.i.i ], [ %i.rs, %.split.us110.i.i ] ; 6 uses
  %i.sa = icmp sgt i64 %.us-phi98.i.i, 0
  br i1 %i.sa, label %.outer.split.i.i, label %.outer68.i.i

.split122.us.i.i:                                 ; preds = %.split102.us109.i.i
  br i1 %i.rw, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.outer.split.i.i
  %i.sb = call i64 @write(i32 noundef %i.rp, ptr noundef nonnull %i.sh, i64 noundef %i.sg) #15 ; 2 uses
  %cond.i.i = icmp eq i64 %i.sb, -1
  br i1 %cond.i.i, label %bb.eo, label %.outer.i.i

bb.eo:                                            ; preds = %.preheader.i.i
  %i.sc = load i32, ptr %i.g, align 4
  switch i32 %i.sc, label %uv__fs_sendfile_emul.exit.i [
    i32 4, label %.preheader.i.i.backedge
    i32 11, label %bb.ep
  ]

.preheader.i.i.backedge:                          ; preds = %bb.eo, %.critedge57.i.i
  br label %.preheader.i.i, !llvm.loop !19

.outer.i.i:                                       ; preds = %.preheader.i.i
  %i.sd = add nsw i64 %i.sb, %.049.ph147.i.i      ; 3 uses
  %i.se = icmp slt i64 %i.sd, %.us-phi98.i.i
  %i.sf = sub nsw i64 %.us-phi98.i.i, %i.sd
  br i1 %i.se, label %.outer.split.i.i, label %.outer68.i.i, !llvm.loop !19

.outer.split.i.i:                                 ; preds = %.preheader64.i.i, %.outer.i.i
  %i.sg = phi i64 [ %i.sf, %.outer.i.i ], [ %.us-phi98.i.i, %.preheader64.i.i ]
  %.049.ph147.i.i = phi i64 [ %i.sd, %.outer.i.i ], [ 0, %.preheader64.i.i ] ; 2 uses
  %i.sh = getelementptr inbounds i8, ptr %i.a, i64 %.049.ph147.i.i
  br label %.preheader.i.i

bb.ep:                                            ; preds = %bb.eo
  store i32 %i.rp, ptr %5, align 4
  store i16 4, ptr %i.aw, align 4
  store i16 0, ptr %i.ax, align 2
  br label %bb.eq

bb.eq:                                            ; preds = %bb.er, %bb.ep
  %i.si = call i32 @poll(ptr noundef nonnull %5, i64 noundef 1, i32 noundef -1) #15
  %i.sj = icmp eq i32 %i.si, -1
  br i1 %i.sj, label %bb.er, label %.critedge57.i.i

bb.er:                                            ; preds = %bb.eq
  %i.sk = load i32, ptr %i.g, align 4
  %i.sl = icmp eq i32 %i.sk, 4
  br i1 %i.sl, label %bb.eq, label %.critedge6.i.i, !llvm.loop !20

.critedge57.i.i:                                  ; preds = %bb.eq
  %i.sm = load i16, ptr %i.ax, align 2
  %i.sn = and i16 %i.sm, -5
  %.not55.i.i = icmp eq i16 %i.sn, 0
  br i1 %.not55.i.i, label %.preheader.i.i.backedge, label %.critedge6.i.i

.critedge6.i.i:                                   ; preds = %.critedge57.i.i, %bb.er
  store i32 5, ptr %i.g, align 4
  br label %uv__fs_sendfile_emul.exit.i

.outer68.i.i:                                     ; preds = %.outer.i.i, %.preheader64.i.i
  %i.so = add nsw i64 %.us-phi98.i.i, %.047.ph149.i.i ; 2 uses
  %i.sp = add nsw i64 %.us-phi98.i.i, %.048104.us.i.i ; 3 uses
  %i.sq = icmp ult i64 %i.sp, %i.rn
  br i1 %i.sq, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !21

.loopexit.i.i:                                    ; preds = %.outer68.i.i, %.split.us110.i.i, %.split.us.us.i.i
  %.047.ph96.i.i = phi i64 [ %.047.ph149.i.i, %.split.us110.i.i ], [ %.047.ph149.i.i, %.split.us.us.i.i ], [ %i.so, %.outer68.i.i ]
  %.04882.i.i = phi i64 [ %.048104.us.i.i, %.split.us110.i.i ], [ %.048104.us.i.i, %.split.us.us.i.i ], [ %i.sp, %.outer68.i.i ] ; 2 uses
  %.not56.old.i.i = icmp eq i64 %.04882.i.i, -1
  br i1 %.not56.old.i.i, label %uv__fs_sendfile_emul.exit.i, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.loopexit.i.i, %.split122.us.i.i, %bb.ej
  %.047.ph95.i.i = phi i64 [ %.047.ph149.i.i, %.split122.us.i.i ], [ %.047.ph96.i.i, %.loopexit.i.i ], [ %i.rq, %bb.ej ]
  %.04881.i.i = phi i64 [ %.048104.us.i.i, %.split122.us.i.i ], [ %.04882.i.i, %.loopexit.i.i ], [ 0, %bb.ej ]
  store i64 %.047.ph95.i.i, ptr %i.k, align 8
  br label %uv__fs_sendfile_emul.exit.i

uv__fs_sendfile_emul.exit.i:                      ; preds = %bb.em, %bb.eo, %.loopexit.thread.i.i, %.loopexit.i.i, %.critedge6.i.i, %.split122.us.i.i
  %.161.i.i = phi i64 [ -1, %.loopexit.i.i ], [ %.04881.i.i, %.loopexit.thread.i.i ], [ -1, %.critedge6.i.i ], [ -1, %bb.eo ], [ -1, %.split122.us.i.i ], [ -1, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %uv__fs_sendfile.exit

uv__fs_sendfile.exit:                             ; preds = %.critedge.thread25.i, %bb.ei, %uv__fs_sendfile_emul.exit.i
  %.0.i111 = phi i64 [ %i.rl, %.critedge.thread25.i ], [ %.161.i.i, %uv__fs_sendfile_emul.exit.i ], [ -1, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %uv__fs_readlink.exit

bb.es:                                            ; preds = %bb.b
  %i.sr = load ptr, ptr %i.p, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ss = load atomic i32, ptr @uv__fs_statx.no_statx monotonic, align 4
  %.not.i.i112 = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i112, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.st = call i32 @uv__statx(i32 noundef -100, ptr noundef %i.sr, i32 noundef 0, i32 noundef 4095, ptr noundef nonnull %3) #15 ; 2 uses
  switch i32 %i.st, label %bb.ev [
    i32 0, label %bb.ew
    i32 -1, label %bb.eu
  ]

bb.eu:                                            ; preds = %bb.et
  %i.su = load i32, ptr %i.g, align 4
  switch i32 %i.su, label %uv__fs_statx.exit.i114 [
    i32 22, label %bb.ev
    i32 1, label %bb.ev
    i32 38, label %bb.ev
    i32 95, label %bb.ev
  ]

bb.ev:                                            ; preds = %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.et
  store atomic i32 1, ptr @uv__fs_statx.no_statx monotonic, align 4
  br label %bb.ex

bb.ew:                                            ; preds = %bb.et
  call void @uv__statx_to_stat(ptr noundef nonnull %3, ptr noundef nonnull %i.y) #15
  br label %uv__fs_statx.exit.i114

uv__fs_statx.exit.i114:                           ; preds = %bb.ew, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %uv__fs_stat.exit

bb.ex:                                            ; preds = %bb.ev, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.sv = call noundef i32 @stat64(ptr noundef readonly %i.sr, ptr noundef nonnull %4) #15 ; 2 uses
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %bb.ey, label %uv__fs_stat.exit

bb.ey:                                            ; preds = %bb.ex
  %i.sx = load i64, ptr %4, align 8
  store i64 %i.sx, ptr %i.y, align 8
  %i.sy = load i32, ptr %i.z, align 8
  %i.sz = zext i32 %i.sy to i64
  store i64 %i.sz, ptr %i.aa, align 8
  %i.ta = load i64, ptr %i.ab, align 8
  store i64 %i.ta, ptr %i.ac, align 8
  %i.tb = load <2 x i32>, ptr %i.ad, align 4
  %i.tc = zext <2 x i32> %i.tb to <2 x i64>
  store <2 x i64> %i.tc, ptr %i.ae, align 8
  %i.td = load i64, ptr %i.af, align 8
  store i64 %i.td, ptr %i.ag, align 8
  %i.te = load i64, ptr %i.ah, align 8
  store i64 %i.te, ptr %i.ai, align 8
  %i.tf = load <2 x i64>, ptr %i.aj, align 8
  store <2 x i64> %i.tf, ptr %i.ak, align 8
  %i.tg = load i64, ptr %i.al, align 8
  store i64 %i.tg, ptr %i.am, align 8
  %i.th = load <2 x i64>, ptr %i.an, align 8
  store <2 x i64> %i.th, ptr %i.ao, align 8
  %i.ti = load <2 x i64>, ptr %i.ap, align 8
  store <2 x i64> %i.ti, ptr %i.aq, align 8
  %i.tj = load <2 x i64>, ptr %i.ar, align 8
  %i.tk = shufflevector <2 x i64> %i.tj, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i64> %i.tk, ptr %i.as, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %uv__fs_stat.exit

uv__fs_stat.exit:                                 ; preds = %uv__fs_statx.exit.i114, %bb.ex, %bb.ey
  %.0.i113 = phi i32 [ %i.st, %uv__fs_statx.exit.i114 ], [ 0, %bb.ey ], [ %i.sv, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.tl = sext i32 %.0.i113 to i64
  br label %uv__fs_readlink.exit

bb.ez:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.tm = load ptr, ptr %i.p, align 8
  %i.tn = call i32 @statfs64(ptr noundef %i.tm, ptr noundef nonnull %2) #15
  %.not.i115 = icmp eq i32 %i.tn, 0
  br i1 %.not.i115, label %bb.fa, label %uv__fs_statfs.exit

bb.fa:                                            ; preds = %bb.ez
  %i.to = call ptr @uv__malloc(i64 noundef 88) #15 ; 9 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 12, ptr %i.g, align 4
  br label %uv__fs_statfs.exit

bb.fc:                                            ; preds = %bb.fa
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
end_hunk_0
