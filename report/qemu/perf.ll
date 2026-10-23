Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/perf?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0_@perf_report_code:bb.a
  %i.h = tail call noalias ptr @g_try_malloc0_n(i64 noundef %i.g, i64 noundef 48) #16 ; 13 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @debuginfo_lock() #14
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 30680
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i16, ptr %i.e, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %.not54 = icmp eq i16 %i.m, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.q = shl i64 %i.p, 32
  %i.r = ashr exact i64 %i.q, 32
  %i.s = and i64 %i.r, %0
  %i.t = load ptr, ptr @jitdump, align 8
  %.not38 = icmp eq ptr %i.t, null
  %i.u = select i1 %.not38, i32 2, i32 6
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.049 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 3 uses
  %.idx = mul nuw nsw i64 %.049, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.049 ; 3 uses
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load atomic i32, ptr %i.o monotonic, align 4
  %i.z = and i32 %i.y, 131072
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = or i64 %i.s, %i.w
  store i64 %i.aa, ptr %i.x, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.u, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %.049, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.f, %bb.c
  tail call void @debuginfo_query(ptr noundef nonnull %i.h, i64 noundef %i.n) #14
  %i.ad = load ptr, ptr @perfmap, align 8         ; 2 uses
  %.not35 = icmp eq ptr %i.ad, null
  br i1 %.not35, label %bb.n, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @flockfile(ptr noundef nonnull %i.ad) #14
  %i.ae = load i16, ptr %i.e, align 2
  %.not55 = icmp eq i16 %i.ae, 0
  br i1 %.not55, label %._crit_edge53, label %get_host_pc_size.exit.i.peel

get_host_pc_size.exit.i.peel:                     ; preds = %bb.g
  %i.af = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @pretty_symbol.buf) ; 8 uses
  %i.ag = ptrtoint ptr %2 to i64                  ; 2 uses
  %.pre = load ptr, ptr %i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 29656
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = load ptr, ptr @perfmap, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i2.i.peel = icmp eq ptr %i.al, null
  br i1 %.not.i2.i.peel, label %bb.j, label %bb.h

bb.h:                                             ; preds = %get_host_pc_size.exit.i.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %.not29.i.i.peel = icmp eq i64 %i.an, 0
  br i1 %.not29.i.i.peel, label %write_perfmap_entry.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.af, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.al, i64 noundef %i.an) #14 ; 0 uses
  br label %write_perfmap_entry.exit.peel

bb.j:                                             ; preds = %get_host_pc_size.exit.i.peel
  %i.ap = load i64, ptr %i.h, align 8
  %i.aq = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.af, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.11, i64 noundef %i.ap) #14 ; 0 uses
  br label %write_perfmap_entry.exit.peel

write_perfmap_entry.exit.peel:                    ; preds = %bb.j, %bb.i, %bb.h
  %.0.i.i.peel = phi ptr [ %i.af, %bb.j ], [ %i.af, %bb.i ], [ %i.al, %bb.h ]
  %i.ar = zext i16 %i.ai to i32
  %i.as = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aj, i32 noundef 1, ptr noundef nonnull @.str.10, i64 noundef %i.ag, i32 noundef %i.ar, ptr noundef nonnull %.0.i.i.peel) #14 ; 0 uses
  %i.at = load i16, ptr %i.e, align 2
  %i.au = icmp ugt i16 %i.at, 1
  br i1 %i.au, label %get_host_pc_size.exit.i, label %._crit_edge53

get_host_pc_size.exit.i:                          ; preds = %write_perfmap_entry.exit.peel, %write_perfmap_entry.exit
  %.150 = phi i64 [ %i.bn, %write_perfmap_entry.exit ], [ 1, %write_perfmap_entry.exit.peel ] ; 4 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.150 ; 3 uses
  %i.aw = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 29654
  %i.ay = getelementptr [2 x i8], ptr %i.ax, i64 %.150
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aw, i64 29656
  %.phi.trans.insert59 = getelementptr inbounds nuw [2 x i8], ptr %.phi.trans.insert, i64 %.150
  %.pre60 = load i16, ptr %.phi.trans.insert59, align 2
  %i.ba = load ptr, ptr @perfmap, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  %.not.i2.i = icmp eq ptr %i.bc, null
  br i1 %.not.i2.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %get_host_pc_size.exit.i
  %i.bd = load i64, ptr %i.av, align 8
  %i.be = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.af, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.11, i64 noundef %i.bd) #14 ; 0 uses
  br label %write_perfmap_entry.exit

bb.l:                                             ; preds = %get_host_pc_size.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %.not29.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not29.i.i, label %write_perfmap_entry.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.af, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.bc, i64 noundef %i.bg) #14 ; 0 uses
  br label %write_perfmap_entry.exit

write_perfmap_entry.exit:                         ; preds = %bb.k, %bb.l, %bb.m
  %.0.i.i = phi ptr [ %i.af, %bb.k ], [ %i.af, %bb.m ], [ %i.bc, %bb.l ]
  %i.bi = sub i16 %.pre60, %i.az
  %i.bj = zext i16 %i.bi to i32
  %i.bk = zext i16 %i.az to i64
  %i.bl = add i64 %i.bk, %i.ag
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ba, i32 noundef 1, ptr noundef nonnull @.str.10, i64 noundef %i.bl, i32 noundef %i.bj, ptr noundef nonnull %.0.i.i) #14 ; 0 uses
  %i.bn = add nuw nsw i64 %.150, 1                ; 2 uses
  %i.bo = load i16, ptr %i.e, align 2
  %i.bp = zext i16 %i.bo to i64
  %i.bq = icmp samesign ult i64 %i.bn, %i.bp
  br i1 %i.bq, label %get_host_pc_size.exit.i, label %._crit_edge53, !llvm.loop !9

._crit_edge53:                                    ; preds = %write_perfmap_entry.exit, %write_perfmap_entry.exit.peel, %bb.g
  %i.br = load ptr, ptr @perfmap, align 8
  tail call void @funlockfile(ptr noundef %i.br) #14
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge53, %._crit_edge
  %i.bs = load ptr, ptr @jitdump, align 8         ; 2 uses
  %.not36 = icmp eq ptr %i.bs, null
  br i1 %.not36, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @flockfile(ptr noundef nonnull %i.bs) #14
  %i.bt = load i16, ptr %i.e, align 2             ; 2 uses
  %i.bu = zext i16 %i.bt to i64                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store i32 2, ptr %8, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bw = load i32, ptr @use_rt_clock, align 4
  %.not.i.i39 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i39, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !annotation !7
  %i.bx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #14 ; 0 uses
  %i.by = load i64, ptr %7, align 8
  %i.bz = mul i64 %i.by, 1000000000
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = add i64 %i.bz, %i.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %get_clock.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !7
  %i.cd = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #14 ; 0 uses
  %i.ce = load i64, ptr %6, align 8
  %i.cf = mul i64 %i.ce, 1000000000
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = mul i64 %i.ch, 1000
  %i.cj = add i64 %i.ci, %i.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %get_clock.exit.i

get_clock.exit.i:                                 ; preds = %bb.q, %bb.p
  %.0.i.i40 = phi i64 [ %i.cc, %bb.p ], [ %i.cj, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.i.i40, ptr %i.ck, align 8
  %i.cl = ptrtoint ptr %2 to i64                  ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.not36.i = icmp eq i16 %i.bt, 0
  br i1 %.not36.i, label %write_jr_code_debug_info.exit.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %get_clock.exit.i, %bb.s
  %10 = phi i64 [ %i.dc, %bb.s ], [ 0, %get_clock.exit.i ]
  %11 = phi i32 [ %13, %bb.s ], [ 49, %get_clock.exit.i ] ; 2 uses
  %i.co = phi i64 [ %12, %bb.s ], [ 1, %get_clock.exit.i ] ; 2 uses
  %.030.i = phi i32 [ %i.db, %bb.s ], [ 0, %get_clock.exit.i ]
  %i.cp = phi i32 [ %i.da, %bb.s ], [ 49, %get_clock.exit.i ]
  %i.cq = phi i64 [ %i.cz, %bb.s ], [ 1, %get_clock.exit.i ]
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.ct, null
  br i1 %.not26.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.cu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #17
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = add i32 %11, 17
  %i.cx = add i32 %i.cw, %i.cv                    ; 2 uses
  %i.cy = add i64 %i.co, 1                        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %i.cz = phi i64 [ %i.cq, %.lr.ph.i ], [ %i.cy, %bb.r ] ; 2 uses
  %i.da = phi i32 [ %i.cp, %.lr.ph.i ], [ %i.cx, %bb.r ] ; 2 uses
  %12 = phi i64 [ %i.co, %.lr.ph.i ], [ %i.cy, %bb.r ]
  %13 = phi i32 [ %11, %.lr.ph.i ], [ %i.cx, %bb.r ]
  %i.db = add i32 %.030.i, 1                      ; 2 uses
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = icmp ugt i64 %i.bu, %i.dc
  br i1 %i.dd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !annotation !7
  store i32 %i.da, ptr %i.bv, align 4
  store i64 %i.cz, ptr %i.cn, align 8
  %i.de = load ptr, ptr @jitdump, align 8
  %i.df = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 32, i64 noundef 1, ptr noundef %i.de) ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 12
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %._crit_edge.i
  %i.di = phi i64 [ 0, %._crit_edge.i ], [ %i.ed, %bb.w ] ; 2 uses
  %.132.i = phi i32 [ 0, %._crit_edge.i ], [ %i.ec, %bb.w ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i27.i = icmp eq i32 %.132.i, 0
  br i1 %.not.i27.i, label %get_host_pc_size.exit.i42, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %i.i, align 8
  %i.dn = getelementptr i8, ptr %i.dm, i64 29654
  %i.do = getelementptr [2 x i8], ptr %i.dn, i64 %i.di
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = zext i16 %i.dp to i64
  br label %get_host_pc_size.exit.i42

get_host_pc_size.exit.i42:                        ; preds = %bb.v, %bb.u
  %i.dr = phi i64 [ %i.dq, %bb.v ], [ 0, %bb.u ]
  %i.ds = add i64 %i.dr, %i.cl
  store i64 %i.ds, ptr %9, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.du = load i32, ptr %i.dt, align 8
  store i32 %i.du, ptr %i.dg, align 8
  store i32 0, ptr %i.dh, align 4
  %i.dv = load ptr, ptr @jitdump, align 8
  %i.dw = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 16, i64 noundef 1, ptr noundef %i.dv) ; 0 uses
  %i.dx = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dx) #17
  %i.dz = add i64 %i.dy, 1
  %i.ea = load ptr, ptr @jitdump, align 8
  %i.eb = call i64 @fwrite(ptr noundef nonnull %i.dx, i64 noundef %i.dz, i64 noundef 1, ptr noundef %i.ea) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %get_host_pc_size.exit.i42, %bb.t
  %i.ec = add i32 %.132.i, 1                      ; 2 uses
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = icmp ugt i64 %i.bu, %i.ed
  br i1 %i.ee, label %bb.t, label %write_jr_code_debug_info.exit, !llvm.loop !11

write_jr_code_debug_info.exit.critedge:           ; preds = %get_clock.exit.i
  store i32 49, ptr %i.bv, align 4
  store i64 1, ptr %i.cn, align 8
  %i.ef = load ptr, ptr @jitdump, align 8
  %i.eg = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 32, i64 noundef 1, ptr noundef %i.ef) ; 0 uses
  br label %write_jr_code_debug_info.exit

write_jr_code_debug_info.exit:                    ; preds = %bb.w, %write_jr_code_debug_info.exit.critedge
  %i.eh = load ptr, ptr %i.i, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 29654
  %i.ej = getelementptr [2 x i8], ptr %i.ei, i64 %i.bu
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = zext i16 %i.ek to i64
  %i.em = add i64 %i.el, %i.cl
  store i64 %i.em, ptr %9, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.eo, align 4
  %i.ep = load ptr, ptr @jitdump, align 8
  %i.eq = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 16, i64 noundef 1, ptr noundef %i.ep) ; 0 uses
  %i.er = load ptr, ptr @jitdump, align 8
  %fputc.i = call i32 @fputc(i32 0, ptr %i.er)    ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.es = load ptr, ptr %i.i, align 8
  %i.et = load i16, ptr %i.e, align 2
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr i8, ptr %i.es, i64 29654
  %i.ew = getelementptr [2 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load i16, ptr %i.ew, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8            ; 4 uses
  %.not.i.i43 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i43, label %bb.x, label %bb.y

bb.x:                                             ; preds = %write_jr_code_debug_info.exit
  %i.fa = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @pretty_symbol.buf) ; 2 uses
  %i.fb = load i64, ptr %i.h, align 8
  %i.fc = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.fa, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.11, i64 noundef %i.fb) #14
  %i.fd = add i32 %i.fc, 1
  %i.fe = call i32 @llvm.umin.i32(i32 %i.fd, i32 64)
  %i.ff = zext nneg i32 %i.fe to i64
  br label %pretty_symbol.exit.i

bb.y:                                             ; preds = %write_jr_code_debug_info.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %.not29.i.i44 = icmp eq i64 %i.fh, 0
  br i1 %.not29.i.i44, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ez) #17
  %i.fj = add i64 %i.fi, 1
  br label %pretty_symbol.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.fk = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @pretty_symbol.buf) ; 2 uses
  %i.fl = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.fk, i64 noundef 64, i32 noundef 1, i64 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.ez, i64 noundef %i.fh) #14
  %i.fm = add i32 %i.fl, 1
  %i.fn = call i32 @llvm.umin.i32(i32 %i.fm, i32 64)
  %i.fo = zext nneg i32 %i.fn to i64
  br label %pretty_symbol.exit.i

pretty_symbol.exit.i:                             ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i = phi i64 [ %i.ff, %bb.x ], [ %i.fj, %bb.z ], [ %i.fo, %bb.aa ] ; 2 uses
  %.0.i.i45 = phi ptr [ %i.fa, %bb.x ], [ %i.ez, %bb.z ], [ %i.fk, %bb.aa ]
  store i32 0, ptr %5, align 8
  %i.fp = zext i16 %i.ex to i64                   ; 3 uses
  %i.fq = add nuw nsw i64 %i.fp, 56
  %i.fr = add i64 %i.fq, %.0.i
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.fs, ptr %i.ft, align 4
  %i.fu = load i32, ptr @use_rt_clock, align 4
  %.not.i7.i = icmp eq i32 %i.fu, 0
  br i1 %.not.i7.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %pretty_symbol.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !7
  %i.fv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #14 ; 0 uses
  %i.fw = load i64, ptr %4, align 8
  %i.fx = mul i64 %i.fw, 1000000000
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = add i64 %i.fx, %i.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %write_jr_code_load.exit

bb.ac:                                            ; preds = %pretty_symbol.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !7
  %i.gb = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #14 ; 0 uses
  %i.gc = load i64, ptr %3, align 8
  %i.gd = mul i64 %i.gc, 1000000000
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = mul i64 %i.gf, 1000
  %i.gh = add i64 %i.gg, %i.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %write_jr_code_load.exit

write_jr_code_load.exit:                          ; preds = %bb.ab, %bb.ac
  %.0.i8.i = phi i64 [ %i.ga, %bb.ab ], [ %i.gh, %bb.ac ]
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.0.i8.i, ptr %i.gj, align 8
  %i.gk = call i32 @getpid() #14
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.gk, ptr %i.gl, align 8
  %i.gm = call i32 @qemu_get_thread_id() #14
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.gm, ptr %i.gn, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.cl, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.cl, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.fp, ptr %i.gq, align 8
  %i.gr = load i64, ptr @write_jr_code_load.code_index, align 8 ; 2 uses
  %i.gs = add i64 %i.gr, 1
  store i64 %i.gs, ptr @write_jr_code_load.code_index, align 8
  store i64 %i.gr, ptr %i.gi, align 8
  %i.gt = load ptr, ptr @jitdump, align 8
  %i.gu = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 56, i64 noundef 1, ptr noundef %i.gt) ; 0 uses
  %i.gv = load ptr, ptr @jitdump, align 8
  %i.gw = call i64 @fwrite(ptr noundef nonnull %.0.i.i45, i64 noundef %.0.i, i64 noundef 1, ptr noundef %i.gv) ; 0 uses
  %i.gx = load ptr, ptr @jitdump, align 8
  %i.gy = call i64 @fwrite(ptr noundef %2, i64 noundef %i.fp, i64 noundef 1, ptr noundef %i.gx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.gz = load ptr, ptr @jitdump, align 8
  call void @funlockfile(ptr noundef %i.gz) #14
  br label %bb.ad

bb.ad:                                            ; preds = %write_jr_code_load.exit, %bb.n
  call void @debuginfo_unlock() #14
  call void @g_free(ptr noundef nonnull %i.h) #14
  br label %bb.ae

end_hunk_0
