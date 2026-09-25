Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_iso9660?download=true
inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@set_directory_record:bb.a
  %.5380.i = phi ptr [ %i.rc, %bb.cu ], [ null, %.thread539.i ] ; 2 uses
  %.4373.i = phi ptr [ %.1376554.i, %bb.cu ], [ %.0369556.i, %.thread539.i ] ; 2 uses
  %.1367.i = phi ptr [ %i.rb, %bb.cu ], [ %i.e, %.thread539.i ] ; 2 uses
  %i.re = add nsw i32 %.0364558.i, 2              ; 2 uses
  %i.rf = icmp eq i8 %i.rd, 47
  br i1 %i.rf, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.rg = getelementptr inbounds nuw i8, ptr %.1386550.i, i64 1
  br label %.backedge.i

bb.cx:                                            ; preds = %bb.cv, %.thread537.i
  %i.rh = phi i8 [ %i.rd, %bb.cv ], [ %i.pi, %.thread537.i ] ; 2 uses
  %.6381.i = phi ptr [ %.5380.i, %bb.cv ], [ %.1376554.i, %.thread537.i ] ; 3 uses
  %.5374.i = phi ptr [ %.4373.i, %bb.cv ], [ %.0369556.i, %.thread537.i ]
  %.2368.i = phi ptr [ %.1367.i, %bb.cv ], [ %.0366557.i, %.thread537.i ] ; 3 uses
  %.1365.i = phi i32 [ %i.re, %bb.cv ], [ %.0364558.i, %.thread537.i ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.1386550.i, i64 1
  %.not457.i = icmp eq ptr %.6381.i, null
  br i1 %.not457.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rj = getelementptr inbounds nuw i8, ptr %.6381.i, i64 1
  store i8 %i.rh, ptr %.6381.i, align 1, !tbaa !68
  %i.rk = load i8, ptr %.2368.i, align 1, !tbaa !68
  %i.rl = add i8 %i.rk, 1
  store i8 %i.rl, ptr %.2368.i, align 1, !tbaa !68
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.7382.i = phi ptr [ %i.rj, %bb.cy ], [ null, %bb.cx ]
  %i.rm = add nsw i32 %.1365.i, 1
  br label %.backedge.i

._crit_edge561.loopexit.i:                        ; preds = %.backedge.i
  %i.rn = add nsw i32 %.0364.be.i, 5
  br label %._crit_edge561.i

._crit_edge561.i:                                 ; preds = %._crit_edge561.loopexit.i, %bb.bx
  %.1386.lcssa.i = phi ptr [ %.0385.i, %bb.bx ], [ %.1386.be.i, %._crit_edge561.loopexit.i ]
  %.1384.lcssa.i = phi i8 [ %.0383.i, %bb.bx ], [ %.1384.be.i, %._crit_edge561.loopexit.i ]
  %.0369.lcssa.i = phi ptr [ null, %bb.bx ], [ %.0369.be.i, %._crit_edge561.loopexit.i ] ; 2 uses
  %.0364.lcssa.i = phi i32 [ 5, %bb.bx ], [ %i.rn, %._crit_edge561.loopexit.i ] ; 8 uses
  %.lcssa.i = phi i8 [ %i.pd, %bb.bx ], [ %i.pp, %._crit_edge561.loopexit.i ]
  %.not433.i = icmp eq i8 %.lcssa.i, 0
  br i1 %.not433.i, label %bb.di, label %bb.da

bb.da:                                            ; preds = %._crit_edge561.i
  br i1 %.not432.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ro = load i8, ptr %.0369.lcssa.i, align 1, !tbaa !68
  %i.rp = or i8 %i.ro, 1
  store i8 %i.rp, ptr %.0369.lcssa.i, align 1, !tbaa !68
  %i.rq = trunc i32 %.0364.lcssa.i to i8
  %i.rr = getelementptr inbounds nuw i8, ptr %.14.i, i64 3
  store i8 %i.rq, ptr %i.rr, align 1, !tbaa !68
  %i.rs = getelementptr inbounds nuw i8, ptr %.14.i, i64 5
  store i8 1, ptr %i.rs, align 1, !tbaa !68
  %i.rt = sext i32 %.0364.lcssa.i to i64
  %i.ru = getelementptr inbounds i8, ptr %.14.i, i64 %i.rt
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.15.i = phi ptr [ %i.ru, %bb.db ], [ null, %bb.da ]
  %i.rv = load i32, ptr %10, align 8, !tbaa !205
  %.not.i483.i = icmp eq i32 %i.rv, 0
  br i1 %.not.i483.i, label %extra_tell_used_size.exit485.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rw = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !65
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 224
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !88 ; 2 uses
  %.not7.i484.i = icmp eq ptr %i.sa, null
  br i1 %.not7.i484.i, label %extra_tell_used_size.exit485.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !173
  %i.sd = add nsw i32 %i.sc, %.0364.lcssa.i
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !173
  br label %extra_tell_used_size.exit485.i

extra_tell_used_size.exit485.i:                   ; preds = %bb.de, %bb.dd, %bb.dc
  %i.se = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.sf = add nsw i32 %i.se, %.0364.lcssa.i       ; 2 uses
  store i32 %i.sf, ptr %i.ev, align 8, !tbaa !209
  %i.sg = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.sh = sub nsw i32 %i.sg, %i.sf
  %i.si = icmp slt i32 %i.sh, 11
  br i1 %i.si, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %extra_tell_used_size.exit485.i
  %i.sj = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 11)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %extra_tell_used_size.exit485.i
  %.16.i = phi ptr [ %i.sj, %bb.df ], [ %.15.i, %extra_tell_used_size.exit485.i ] ; 5 uses
  %.not434.i = icmp eq ptr %.16.i, null
  br i1 %.not434.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sk = getelementptr inbounds nuw i8, ptr %.16.i, i64 1
  store i8 83, ptr %i.sk, align 1, !tbaa !68
  %i.sl = getelementptr inbounds nuw i8, ptr %.16.i, i64 2
  store i8 76, ptr %i.sl, align 1, !tbaa !68
  %i.sm = getelementptr inbounds nuw i8, ptr %.16.i, i64 4
  store i8 1, ptr %i.sm, align 1, !tbaa !68
  br label %bb.dn

bb.di:                                            ; preds = %._crit_edge561.i
  br i1 %.not432.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sn = trunc i32 %.0364.lcssa.i to i8
  %i.so = getelementptr inbounds nuw i8, ptr %.14.i, i64 3
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !68
  %i.sp = getelementptr inbounds nuw i8, ptr %.14.i, i64 5
  store i8 0, ptr %i.sp, align 1, !tbaa !68
  %i.sq = sext i32 %.0364.lcssa.i to i64
  %i.sr = getelementptr inbounds i8, ptr %.14.i, i64 %i.sq
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.17.i = phi ptr [ %i.sr, %bb.dj ], [ null, %bb.di ]
  %i.ss = load i32, ptr %10, align 8, !tbaa !205
  %.not.i486.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i486.i, label %.thread541.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.st = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !65
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 224
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !88 ; 2 uses
  %.not7.i487.i = icmp eq ptr %i.sx, null
  br i1 %.not7.i487.i, label %.thread541.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 4 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !173
  %i.ta = add nsw i32 %i.sz, %.0364.lcssa.i
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !173
  br label %.thread541.i

.thread541.i:                                     ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.tb = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.tc = add nsw i32 %i.tb, %.0364.lcssa.i       ; 2 uses
  store i32 %i.tc, ptr %i.ev, align 8, !tbaa !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.do

bb.dn:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.bx

bb.do:                                            ; preds = %.thread541.i, %bb.bs
  %i.td = phi i32 [ %i.op, %bb.bs ], [ %i.tc, %.thread541.i ]
  %.19.i = phi ptr [ %.12.i, %bb.bs ], [ %.17.i, %.thread541.i ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.gh, i64 32 ; 11 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tg = call i32 @archive_entry_birthtime_is_set(ptr noundef %i.tf) #23
  %.not435.i = icmp eq i32 %i.tg, 0
  br i1 %.not435.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.ti = call i64 @archive_entry_birthtime(ptr noundef %i.th) #23
  %i.tj = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tk = call i64 @archive_entry_mtime(ptr noundef %i.tj) #23
  %.not436.i = icmp sle i64 %i.ti, %i.tk          ; 2 uses
  %spec.select468.i = select i1 %.not436.i, i32 12, i32 5
  %spec.select469.i = zext i1 %.not436.i to i8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.0397.i = phi i32 [ 5, %bb.do ], [ %spec.select468.i, %bb.dp ] ; 2 uses
  %.0359.i = phi i8 [ 0, %bb.do ], [ %spec.select469.i, %bb.dp ] ; 2 uses
  %i.tl = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tm = call i32 @archive_entry_mtime_is_set(ptr noundef %i.tl) #23
  %.not437.i = icmp eq i32 %i.tm, 0               ; 2 uses
  %i.tn = add nuw nsw i32 %.0397.i, 7
  %i.to = or disjoint i8 %.0359.i, 2
  %.1398.i = select i1 %.not437.i, i32 %.0397.i, i32 %i.tn ; 2 uses
  %.1360.i = select i1 %.not437.i, i8 %.0359.i, i8 %i.to ; 2 uses
  %i.tp = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tq = call i32 @archive_entry_atime_is_set(ptr noundef %i.tp) #23
  %.not438.i = icmp eq i32 %i.tq, 0               ; 2 uses
  %i.tr = add nuw nsw i32 %.1398.i, 7
  %i.ts = or disjoint i8 %.1360.i, 4
  %.2399.i = select i1 %.not438.i, i32 %.1398.i, i32 %i.tr ; 2 uses
  %.2361.i = select i1 %.not438.i, i8 %.1360.i, i8 %i.ts ; 2 uses
  %i.tt = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tu = call i32 @archive_entry_ctime_is_set(ptr noundef %i.tt) #23
  %.not439.i = icmp eq i32 %i.tu, 0               ; 2 uses
  %i.tv = add nuw nsw i32 %.2399.i, 7
  %i.tw = or i8 %.2361.i, 8
  %.3400.i = select i1 %.not439.i, i32 %.2399.i, i32 %i.tv ; 5 uses
  %.3362.i = select i1 %.not439.i, i8 %.2361.i, i8 %i.tw ; 2 uses
  %i.tx = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.ty = sub nsw i32 %i.tx, %i.td
  %i.tz = icmp slt i32 %i.ty, %.3400.i
  br i1 %i.tz, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ua = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef %.3400.i)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.20.i = phi ptr [ %i.ua, %bb.dr ], [ %.19.i, %bb.dq ] ; 13 uses
  %.not440.i = icmp eq ptr %.20.i, null
  br i1 %.not440.i, label %bb.eb, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ub = getelementptr inbounds nuw i8, ptr %.20.i, i64 1
  store i8 84, ptr %i.ub, align 1, !tbaa !68
  %i.uc = getelementptr inbounds nuw i8, ptr %.20.i, i64 2
  store i8 70, ptr %i.uc, align 1, !tbaa !68
  %i.ud = trunc nuw nsw i32 %.3400.i to i8
  %i.ue = getelementptr inbounds nuw i8, ptr %.20.i, i64 3
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !68
  %i.uf = getelementptr inbounds nuw i8, ptr %.20.i, i64 4
  store i8 1, ptr %i.uf, align 1, !tbaa !68
  %i.ug = getelementptr inbounds nuw i8, ptr %.20.i, i64 5 ; 2 uses
  store i8 %.3362.i, ptr %i.ug, align 1, !tbaa !68
  %i.uh = zext nneg i8 %.3362.i to i32            ; 4 uses
  %i.ui = and i32 %i.uh, 1
  %.not441.i = icmp eq i32 %i.ui, 0
  br i1 %.not441.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.uj = getelementptr inbounds nuw i8, ptr %.20.i, i64 6
  %i.uk = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.ul = call i64 @archive_entry_birthtime(ptr noundef %i.uk) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ul, ptr %i.d, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @tzset() #23
  %i.um = call ptr @localtime_r(ptr noundef nonnull %i.d, ptr noundef nonnull %9) #23 ; 0 uses
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !200
  %i.up = trunc i32 %i.uo to i8
  store i8 %i.up, ptr %i.uj, align 1, !tbaa !68
  %i.uq = getelementptr inbounds nuw i8, ptr %.20.i, i64 7
  %i.ur = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !371
  %i.ut = trunc i32 %i.us to i8
  %i.uu = add i8 %i.ut, 1
  store i8 %i.uu, ptr %i.uq, align 1, !tbaa !68
  %i.uv = getelementptr inbounds nuw i8, ptr %.20.i, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !372
  %i.uy = trunc i32 %i.ux to i8
  store i8 %i.uy, ptr %i.uv, align 1, !tbaa !68
  %i.uz = getelementptr inbounds nuw i8, ptr %.20.i, i64 9
  %i.va = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !373
  %i.vc = trunc i32 %i.vb to i8
  store i8 %i.vc, ptr %i.uz, align 1, !tbaa !68
  %i.vd = getelementptr inbounds nuw i8, ptr %.20.i, i64 10
  %i.ve = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !374
  %i.vg = trunc i32 %i.vf to i8
  store i8 %i.vg, ptr %i.vd, align 1, !tbaa !68
  %i.vh = getelementptr inbounds nuw i8, ptr %.20.i, i64 11
  %i.vi = load i32, ptr %9, align 8, !tbaa !201
  %i.vj = trunc i32 %i.vi to i8
  store i8 %i.vj, ptr %i.vh, align 1, !tbaa !68
  %i.vk = getelementptr inbounds nuw i8, ptr %.20.i, i64 12 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !202
  %i.vn = sdiv i64 %i.vm, 900
  %i.vo = trunc i64 %i.vn to i8
  store i8 %i.vo, ptr %i.vk, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.21.i = phi ptr [ %i.vk, %bb.du ], [ %i.ug, %bb.dt ] ; 8 uses
  %i.vp = and i32 %i.uh, 2
  %.not442.i = icmp eq i32 %i.vp, 0
  br i1 %.not442.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vq = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  %i.vr = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.vs = call i64 @archive_entry_mtime(ptr noundef %i.vr) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.vs, ptr %i.c, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @tzset() #23
  %i.vt = call ptr @localtime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #23 ; 0 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !200
  %i.vw = trunc i32 %i.vv to i8
  store i8 %i.vw, ptr %i.vq, align 1, !tbaa !68
  %i.vx = getelementptr inbounds nuw i8, ptr %.21.i, i64 2
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !371
  %i.wa = trunc i32 %i.vz to i8
  %i.wb = add i8 %i.wa, 1
  store i8 %i.wb, ptr %i.vx, align 1, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %.21.i, i64 3
  %i.wd = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !372
  %i.wf = trunc i32 %i.we to i8
  store i8 %i.wf, ptr %i.wc, align 1, !tbaa !68
  %i.wg = getelementptr inbounds nuw i8, ptr %.21.i, i64 4
  %i.wh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !373
  %i.wj = trunc i32 %i.wi to i8
  store i8 %i.wj, ptr %i.wg, align 1, !tbaa !68
  %i.wk = getelementptr inbounds nuw i8, ptr %.21.i, i64 5
  %i.wl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !374
  %i.wn = trunc i32 %i.wm to i8
  store i8 %i.wn, ptr %i.wk, align 1, !tbaa !68
  %i.wo = getelementptr inbounds nuw i8, ptr %.21.i, i64 6
  %i.wp = load i32, ptr %8, align 8, !tbaa !201
  %i.wq = trunc i32 %i.wp to i8
  store i8 %i.wq, ptr %i.wo, align 1, !tbaa !68
  %i.wr = getelementptr inbounds nuw i8, ptr %.21.i, i64 7 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !202
  %i.wu = sdiv i64 %i.wt, 900
  %i.wv = trunc i64 %i.wu to i8
  store i8 %i.wv, ptr %i.wr, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.22.i = phi ptr [ %i.wr, %bb.dw ], [ %.21.i, %bb.dv ] ; 8 uses
  %i.ww = and i32 %i.uh, 4
  %.not443.i = icmp eq i32 %i.ww, 0
  br i1 %.not443.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wx = getelementptr inbounds nuw i8, ptr %.22.i, i64 1
  %i.wy = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.wz = call i64 @archive_entry_atime(ptr noundef %i.wy) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.wz, ptr %i.b, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @tzset() #23
  %i.xa = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %7) #23 ; 0 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !200
  %i.xd = trunc i32 %i.xc to i8
  store i8 %i.xd, ptr %i.wx, align 1, !tbaa !68
  %i.xe = getelementptr inbounds nuw i8, ptr %.22.i, i64 2
  %i.xf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !371
  %i.xh = trunc i32 %i.xg to i8
  %i.xi = add i8 %i.xh, 1
  store i8 %i.xi, ptr %i.xe, align 1, !tbaa !68
  %i.xj = getelementptr inbounds nuw i8, ptr %.22.i, i64 3
  %i.xk = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !372
  %i.xm = trunc i32 %i.xl to i8
  store i8 %i.xm, ptr %i.xj, align 1, !tbaa !68
  %i.xn = getelementptr inbounds nuw i8, ptr %.22.i, i64 4
  %i.xo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !373
  %i.xq = trunc i32 %i.xp to i8
  store i8 %i.xq, ptr %i.xn, align 1, !tbaa !68
  %i.xr = getelementptr inbounds nuw i8, ptr %.22.i, i64 5
  %i.xs = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !374
  %i.xu = trunc i32 %i.xt to i8
  store i8 %i.xu, ptr %i.xr, align 1, !tbaa !68
  %i.xv = getelementptr inbounds nuw i8, ptr %.22.i, i64 6
  %i.xw = load i32, ptr %7, align 8, !tbaa !201
  %i.xx = trunc i32 %i.xw to i8
  store i8 %i.xx, ptr %i.xv, align 1, !tbaa !68
  %i.xy = getelementptr inbounds nuw i8, ptr %.22.i, i64 7 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !202
  %i.yb = sdiv i64 %i.ya, 900
  %i.yc = trunc i64 %i.yb to i8
  store i8 %i.yc, ptr %i.xy, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.23.i = phi ptr [ %i.xy, %bb.dy ], [ %.22.i, %bb.dx ] ; 8 uses
  %12 = and i32 %i.uh, 8
  %.not444.i = icmp eq i32 %12, 0
  br i1 %.not444.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.yd = getelementptr inbounds nuw i8, ptr %.23.i, i64 1
  %i.ye = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.yf = call i64 @archive_entry_ctime(ptr noundef %i.ye) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.yf, ptr %i.a, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @tzset() #23
  %i.yg = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %6) #23 ; 0 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !200
  %i.yj = trunc i32 %i.yi to i8
  store i8 %i.yj, ptr %i.yd, align 1, !tbaa !68
  %i.yk = getelementptr inbounds nuw i8, ptr %.23.i, i64 2
  %i.yl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !371
  %i.yn = trunc i32 %i.ym to i8
  %i.yo = add i8 %i.yn, 1
  store i8 %i.yo, ptr %i.yk, align 1, !tbaa !68
  %i.yp = getelementptr inbounds nuw i8, ptr %.23.i, i64 3
  %i.yq = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !372
  %i.ys = trunc i32 %i.yr to i8
  store i8 %i.ys, ptr %i.yp, align 1, !tbaa !68
  %i.yt = getelementptr inbounds nuw i8, ptr %.23.i, i64 4
  %i.yu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !373
  %i.yw = trunc i32 %i.yv to i8
  store i8 %i.yw, ptr %i.yt, align 1, !tbaa !68
  %i.yx = getelementptr inbounds nuw i8, ptr %.23.i, i64 5
  %i.yy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !374
  %i.za = trunc i32 %i.yz to i8
  store i8 %i.za, ptr %i.yx, align 1, !tbaa !68
  %i.zb = getelementptr inbounds nuw i8, ptr %.23.i, i64 6
  %i.zc = load i32, ptr %6, align 8, !tbaa !201
  %i.zd = trunc i32 %i.zc to i8
  store i8 %i.zd, ptr %i.zb, align 1, !tbaa !68
  %i.ze = getelementptr inbounds nuw i8, ptr %.23.i, i64 7 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !202
  %i.zh = sdiv i64 %i.zg, 900
  %i.zi = trunc i64 %i.zh to i8
  store i8 %i.zi, ptr %i.ze, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.ds
  %.24.i = phi ptr [ %i.ze, %bb.ea ], [ %.23.i, %bb.dz ], [ null, %bb.ds ] ; 2 uses
  %i.zj = load i32, ptr %10, align 8, !tbaa !205  ; 2 uses
  %.not.i489.i = icmp eq i32 %i.zj, 0
  br i1 %.not.i489.i, label %extra_tell_used_size.exit491.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zk = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 32
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !65
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 224
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !88 ; 2 uses
  %.not7.i490.i = icmp eq ptr %i.zo, null
  br i1 %.not7.i490.i, label %extra_tell_used_size.exit491.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 4 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !173
  %i.zr = add nsw i32 %i.zq, %.3400.i
  store i32 %i.zr, ptr %i.zp, align 4, !tbaa !173
  br label %extra_tell_used_size.exit491.i

extra_tell_used_size.exit491.i:                   ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.zs = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.zt = add nsw i32 %i.zs, %.3400.i             ; 3 uses
  store i32 %i.zt, ptr %i.ev, align 8, !tbaa !209
  %i.zu = and i32 %i.gx, 64
  %.not445.i = icmp eq i32 %i.zu, 0
  br i1 %.not445.i, label %bb.el, label %bb.ee

bb.ee:                                            ; preds = %extra_tell_used_size.exit491.i
  %i.zv = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.zw = sub nsw i32 %i.zv, %i.zt
  %i.zx = icmp slt i32 %i.zw, 4
  br i1 %i.zx, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.zy = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 4)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.26.i = phi ptr [ %i.zy, %bb.ef ], [ %.24.i, %bb.ee ] ; 3 uses
  %.not446.i = icmp eq ptr %.26.i, null
  br i1 %.not446.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.zz = getelementptr inbounds nuw i8, ptr %.26.i, i64 1
  %i.aaa = getelementptr inbounds nuw i8, ptr %.26.i, i64 4
  store <4 x i8> <i8 82, i8 69, i8 4, i8 1>, ptr %i.zz, align 1, !tbaa !68
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.27.i = phi ptr [ %i.aaa, %bb.eh ], [ null, %bb.eg ]
  %i.aab = load i32, ptr %10, align 8, !tbaa !205 ; 2 uses
  %.not.i492.i = icmp eq i32 %i.aab, 0
  br i1 %.not.i492.i, label %extra_tell_used_size.exit494.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aac = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !65
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 224
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !88 ; 2 uses
  %.not7.i493.i = icmp eq ptr %i.aag, null
  br i1 %.not7.i493.i, label %extra_tell_used_size.exit494.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 4 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !173
  %i.aaj = add nsw i32 %i.aai, 4
  store i32 %i.aaj, ptr %i.aah, align 4, !tbaa !173
  br label %extra_tell_used_size.exit494.i

extra_tell_used_size.exit494.i:                   ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.aak = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.aal = add nsw i32 %i.aak, 4                  ; 2 uses
  store i32 %i.aal, ptr %i.ev, align 8, !tbaa !209
  br label %bb.el

bb.el:                                            ; preds = %extra_tell_used_size.exit494.i, %extra_tell_used_size.exit491.i
  %i.aam = phi i32 [ %i.aab, %extra_tell_used_size.exit494.i ], [ %i.zj, %extra_tell_used_size.exit491.i ]
  %i.aan = phi i32 [ %i.aal, %extra_tell_used_size.exit494.i ], [ %i.zt, %extra_tell_used_size.exit491.i ] ; 2 uses
  %.28.i = phi ptr [ %.27.i, %extra_tell_used_size.exit494.i ], [ %.24.i, %extra_tell_used_size.exit491.i ] ; 2 uses
  %i.aao = and i32 %i.gx, 32
  %.not447.i = icmp eq i32 %i.aao, 0
  br i1 %.not447.i, label %bb.et, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aap = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.aaq = sub nsw i32 %i.aap, %i.aan
  %i.aar = icmp slt i32 %i.aaq, 12
  br i1 %i.aar, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aas = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 12)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.29.i = phi ptr [ %i.aas, %bb.en ], [ %.28.i, %bb.em ] ; 7 uses
  %.not448.i = icmp eq ptr %.29.i, null
  br i1 %.not448.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aat = getelementptr inbounds nuw i8, ptr %.29.i, i64 1
  store <4 x i8> <i8 80, i8 76, i8 12, i8 1>, ptr %i.aat, align 1, !tbaa !68
  %i.aau = getelementptr inbounds nuw i8, ptr %.29.i, i64 5
  %i.aav = getelementptr inbounds nuw i8, ptr %.0396517526.i, i64 156
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !171 ; 5 uses
  store i32 %i.aaw, ptr %i.aau, align 1
  %i.aax = getelementptr inbounds nuw i8, ptr %.29.i, i64 9
  %i.aay = lshr i32 %i.aaw, 24
  %i.aaz = trunc nuw i32 %i.aay to i8
  store i8 %i.aaz, ptr %i.aax, align 1, !tbaa !68
  %i.aba = lshr i32 %i.aaw, 16
  %i.abb = trunc i32 %i.aba to i8
  %i.abc = getelementptr inbounds nuw i8, ptr %.29.i, i64 10
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !68
  %i.abd = lshr i32 %i.aaw, 8
  %i.abe = trunc i32 %i.abd to i8
  %i.abf = getelementptr inbounds nuw i8, ptr %.29.i, i64 11
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !68
  %i.abg = trunc i32 %i.aaw to i8
  %i.abh = getelementptr inbounds nuw i8, ptr %.29.i, i64 12 ; 2 uses
  store i8 %i.abg, ptr %i.abh, align 1, !tbaa !68
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.30.i = phi ptr [ %i.abh, %bb.ep ], [ null, %bb.eo ]
  %i.abi = load i32, ptr %10, align 8, !tbaa !205 ; 2 uses
  %.not.i495.i = icmp eq i32 %i.abi, 0
  br i1 %.not.i495.i, label %extra_tell_used_size.exit497.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abj = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 32
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !65
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 224
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !88 ; 2 uses
  %.not7.i496.i = icmp eq ptr %i.abn, null
  br i1 %.not7.i496.i, label %extra_tell_used_size.exit497.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 4 ; 2 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !173
  %i.abq = add nsw i32 %i.abp, 12
  store i32 %i.abq, ptr %i.abo, align 4, !tbaa !173
  br label %extra_tell_used_size.exit497.i

extra_tell_used_size.exit497.i:                   ; preds = %bb.es, %bb.er, %bb.eq
  %i.abr = load i32, ptr %i.ev, align 8, !tbaa !209
end_hunk_0
