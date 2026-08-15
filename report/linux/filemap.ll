inline.NumInlined: 1036
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@filemap_read:bb.a
  %i.cb = icmp slt i64 %i.an, %i.ca
  br i1 %i.cb, label %.thread, label %bb.t

bb.t:                                             ; preds = %folio_size.exit
  %i.cc = sub i64 %i.an, %i.bs
  %i.cd = shl i64 4096, %.0.i.i                   ; 2 uses
  %i.ce = add i64 %i.cd, -1
  %i.cf = and i64 %i.ce, %i.bs                    ; 2 uses
  %i.cg = sub i64 %i.cd, %i.cf
  %i.ch = call i64 @llvm.smin.i64(i64 %i.cc, i64 %i.cg) ; 2 uses
  call void @folio_mark_accessed(ptr noundef %i.bu) #14
  %i.ci = call i64 @copy_page_to_iter(ptr noundef %i.bu, i64 noundef %i.cf, i64 noundef %i.ch, ptr noundef %1) #14 ; 3 uses
  %i.cj = add i64 %i.ci, %.1124                   ; 3 uses
  %i.ck = load i64, ptr %i.g, align 8
  %i.cl = add i64 %i.ck, %i.ci                    ; 4 uses
  store i64 %i.cl, ptr %i.g, align 8
  %i.cm = icmp ult i64 %i.ci, %i.ch
  br i1 %i.cm, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.r, %folio_size.exit, %bb.t, %..thread_crit_edge
  %.val = phi i8 [ %.val.pre, %..thread_crit_edge ], [ %.val111, %bb.t ], [ %.val111, %folio_size.exit ], [ %.val111, %bb.r ] ; 2 uses
  %.394 = phi i64 [ %.091, %..thread_crit_edge ], [ %i.cl, %bb.r ], [ %i.bs, %folio_size.exit ], [ %i.cl, %bb.t ] ; 2 uses
  %.389 = phi i32 [ %i.ah, %..thread_crit_edge ], [ %i.ah, %bb.r ], [ %i.ah, %folio_size.exit ], [ -14, %bb.t ] ; 2 uses
  %.3 = phi i64 [ %.083, %..thread_crit_edge ], [ %i.cj, %bb.r ], [ %.1124, %folio_size.exit ], [ %i.cj, %bb.t ] ; 2 uses
  %.not137 = icmp eq i8 %.val, 0
  br i1 %.not137, label %._crit_edge, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %folio_size.exit.peel, %bb.p, %bb.q, %.thread
  %.3165 = phi i64 [ %.3, %.thread ], [ %i.bo, %bb.q ], [ %i.bo, %bb.p ], [ %.083, %folio_size.exit.peel ]
  %.389163 = phi i32 [ %.389, %.thread ], [ %i.ah, %bb.q ], [ -14, %bb.p ], [ %i.ah, %folio_size.exit.peel ]
  %.394161 = phi i64 [ %.394, %.thread ], [ %i.bq, %bb.q ], [ %i.bq, %bb.p ], [ %.091, %folio_size.exit.peel ]
  %.val160 = phi i8 [ %.val, %.thread ], [ 1, %bb.q ], [ %.val111, %bb.p ], [ %.val111, %folio_size.exit.peel ]
  %wide.trip.count143 = zext i8 %.val160 to i64
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %folio_put.exit
  %indvars.iv140 = phi i64 [ 0, %.lr.ph135.preheader ], [ %indvars.iv.next141, %folio_put.exit ] ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv140
  %i.co = load ptr, ptr %i.cn, align 8            ; 19 uses
  %i.cp = load volatile i64, ptr %i.co, align 8
  %i.cq = and i64 %i.cp, 524288
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %filemap_end_dropbehind_read.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph135
  %i.cr = load volatile i64, ptr %i.co, align 8
  %i.cs = and i64 %i.cr, 2
  %.not6.i = icmp eq i64 %i.cs, 0
  br i1 %.not6.i, label %bb.v, label %filemap_end_dropbehind_read.exit

bb.v:                                             ; preds = %bb.u
  %i.ct = load volatile i64, ptr %i.co, align 8
  %i.cu = and i64 %i.ct, 16
  %.not7.i = icmp eq i64 %i.cu, 0
  br i1 %.not7.i, label %bb.w, label %filemap_end_dropbehind_read.exit

bb.w:                                             ; preds = %bb.v
  %i.cv = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.co, i64 0, ptr elementtype(i64) %i.co) #15, !srcloc !92 ; 2 uses
  %i.cw = icmp ult i8 %i.cv, 2
  call void @llvm.assume(i1 %i.cw)
  %i.cx = trunc nuw i8 %i.cv to i1
  br i1 %i.cx, label %filemap_end_dropbehind_read.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr i8, ptr %i.co, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = load volatile i64, ptr %i.co, align 8
  %i.db = and i64 %i.da, 2
  %.not8.i.i = icmp eq i64 %i.db, 0
  br i1 %.not8.i.i, label %bb.y, label %filemap_end_dropbehind.exit.i

bb.y:                                             ; preds = %bb.x
  %i.dc = load volatile i64, ptr %i.co, align 8
  %i.dd = and i64 %i.dc, 16
  %.not9.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not9.i.i, label %bb.z, label %filemap_end_dropbehind.exit.i

bb.z:                                             ; preds = %bb.y
  %i.de = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.co, i64 19, ptr elementtype(i64) %i.co) #15, !srcloc !60 ; 2 uses
  %i.df = icmp ult i8 %i.de, 2
  call void @llvm.assume(i1 %i.df)
  %i.dg = trunc nuw i8 %i.de to i1
  %.not.i.i115 = icmp ne ptr %i.cz, null
  %or.cond.not.i.i = select i1 %i.dg, i1 %.not.i.i115, i1 false
  br i1 %or.cond.not.i.i, label %bb.aa, label %filemap_end_dropbehind.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dh = call i32 @folio_unmap_invalidate(ptr noundef nonnull %i.cz, ptr noundef %i.co, i32 noundef 0) #14 ; 0 uses
  br label %filemap_end_dropbehind.exit.i

filemap_end_dropbehind.exit.i:                    ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.di = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.co, i8 1, ptr elementtype(i8) %i.co) #15, !srcloc !101 ; 2 uses
  %i.dj = icmp ult i8 %i.di, 2
  call void @llvm.assume(i1 %i.dj)
  %i.dk = trunc nuw i8 %i.di to i1
  br i1 %i.dk, label %bb.ab, label %filemap_end_dropbehind_read.exit

bb.ab:                                            ; preds = %filemap_end_dropbehind.exit.i
  %i.dl = ptrtoint ptr %i.co to i64
  %i.dm = mul i64 %i.dl, 7046029254386353131
  %i.dn = lshr i64 %i.dm, 56
  %i.do = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.dn ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.co, ptr %3, align 8
  store i32 0, ptr %i.w, align 8
  store i32 0, ptr %i.x, align 4
  %i.dp = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.do) #14
  call void @__wake_up_locked_key(ptr noundef %i.do, i32 noundef 3, ptr noundef nonnull %3) #14
  %i.dq = getelementptr i8, ptr %i.do, i64 8      ; 2 uses
  %i.dr = load volatile ptr, ptr %i.dq, align 8
  %i.ds = icmp ne ptr %i.dr, %i.dq
  %i.dt = load i32, ptr %i.x, align 4
  %i.du = icmp ne i32 %i.dt, 0
  %or.cond.i.i.i = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond.i.i.i, label %folio_wake_bit.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.co, i32 -129, ptr elementtype(i8) %i.co) #15, !srcloc !63
  br label %folio_wake_bit.exit.i.i

folio_wake_bit.exit.i.i:                          ; preds = %bb.ac, %bb.ab
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.do, i64 noundef %i.dp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %filemap_end_dropbehind_read.exit

filemap_end_dropbehind_read.exit:                 ; preds = %.lr.ph135, %bb.u, %bb.v, %bb.w, %filemap_end_dropbehind.exit.i, %folio_wake_bit.exit.i.i
  %i.dv = getelementptr i8, ptr %i.co, i64 52     ; 2 uses
  %i.dw = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dv, ptr elementtype(i32) %i.dv) #15, !srcloc !67 ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 2
  call void @llvm.assume(i1 %i.dx)
  %.not.i116 = icmp eq i8 %i.dw, 0
  br i1 %.not.i116, label %folio_put.exit, label %bb.ad

bb.ad:                                            ; preds = %filemap_end_dropbehind_read.exit
  call void @__folio_put(ptr noundef %i.co) #14
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %filemap_end_dropbehind_read.exit, %bb.ad
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %.lr.ph135, !llvm.loop !128

._crit_edge:                                      ; preds = %folio_put.exit, %bb.n, %.thread
  %.3166 = phi i64 [ %.083, %bb.n ], [ %.3, %.thread ], [ %.3165, %folio_put.exit ] ; 3 uses
  %.389164 = phi i32 [ %i.ah, %bb.n ], [ %.389, %.thread ], [ %.389163, %folio_put.exit ] ; 3 uses
  %.394162 = phi i64 [ %.091, %bb.n ], [ %.394, %.thread ], [ %.394161, %folio_put.exit ] ; 3 uses
  store i8 0, ptr %4, align 8
  store i8 0, ptr %i.q, align 1
  store i8 0, ptr %i.r, align 2
  %.val112 = load i64, ptr %i.n, align 8
  %.not107 = icmp eq i64 %.val112, 0
  br i1 %.not107, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.dy = load i64, ptr %i.g, align 8
  %i.dz = icmp slt i64 %i.dy, %i.aj
  %.not108 = icmp eq i32 %.389164, 0
  %or.cond110 = and i1 %.not108, %i.dz
  br i1 %or.cond110, label %bb.f, label %.critedge, !llvm.loop !129

.critedge:                                        ; preds = %bb.ae, %._crit_edge, %bb.i, %bb.h
  %.495 = phi i64 [ %.091, %bb.h ], [ %.091, %bb.i ], [ %.394162, %._crit_edge ], [ %.394162, %bb.ae ]
  %.490 = phi i32 [ 0, %bb.h ], [ %i.ah, %bb.i ], [ %.389164, %._crit_edge ], [ %.389164, %bb.ae ]
  %.4 = phi i64 [ %.083, %bb.h ], [ %.083, %bb.i ], [ %.3166, %._crit_edge ], [ %.3166, %bb.ae ] ; 2 uses
  %i.ea = getelementptr i8, ptr %i.a, i64 40
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = and i32 %i.eb, 262144
  %.not.i117 = icmp eq i32 %i.ec, 0
  br i1 %.not.i117, label %bb.af, label %file_accessed.exit

bb.af:                                            ; preds = %.critedge
  %i.ed = getelementptr i8, ptr %i.a, i64 64
  call void @touch_atime(ptr noundef %i.ed) #14
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %.critedge, %bb.af
  store i64 %.495, ptr %i.e, align 8
  %.not109 = icmp eq i64 %.4, 0
  %i.ee = sext i32 %.490 to i64
  %i.ef = select i1 %.not109, i64 %i.ee, i64 %.4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.c, %bb.b, %bb.a, %file_accessed.exit
  %.0 = phi i64 [ %i.ef, %file_accessed.exit ], [ -22, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @filemap_get_pages(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %5 = alloca %struct.readahead_control, align 8  ; 10 uses
  %6 = alloca %struct.readahead_control, align 8  ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = ashr i64 %i.e, 12                        ; 5 uses
  %i.g = add i64 %1, 4095
  %i.h = add i64 %i.g, %i.e
  %i.i = lshr i64 %i.h, 12                        ; 3 uses
  %i.j = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !41
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 2152
  %i.m = add nsw i64 %i.i, -1                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr i8, ptr %i.a, i64 136      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr i8, ptr %0, i64 32         ; 9 uses
  %i.u = getelementptr i8, ptr %i.k, i64 44       ; 4 uses
  %i.v = sub nsw i64 %i.i, %i.f
  %i.w = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ac = getelementptr i8, ptr %i.c, i64 24      ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 40
  %i.ae = getelementptr i8, ptr %i.c, i64 96      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %task_sigpending.exit.i.backedge, %bb.a
  %.058 = phi i32 [ 0, %bb.a ], [ %.058.be, %task_sigpending.exit.i.backedge ] ; 2 uses
  %i.ah = load volatile i64, ptr %i.k, align 8
  %i.ai = and i64 %i.ah, 2
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %fatal_signal_pending.exit.thread, label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %.val.i = load i64, ptr %i.l, align 8
  %i.aj = and i64 %.val.i, 256
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %fatal_signal_pending.exit.thread, label %trace_mm_filemap_get_pages.exit

fatal_signal_pending.exit.thread:                 ; preds = %task_sigpending.exit.i, %fatal_signal_pending.exit
  call fastcc void @filemap_get_read_batch(ptr noundef %i.c, i64 noundef %i.f, i64 noundef %i.m, ptr noundef %2) #17, !srcloc !130
  %.val77 = load i8, ptr %2, align 8              ; 2 uses
  %.not66 = icmp eq i8 %.val77, 0
  br i1 %.not66, label %bb.b, label %.thread130

bb.b:                                             ; preds = %fatal_signal_pending.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.a, ptr %6, align 8
  store ptr %i.c, ptr %i.n, align 8
  store ptr %i.p, ptr %i.o, align 8
  store i64 %i.f, ptr %i.q, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.ak = load i32, ptr %i.t, align 8             ; 3 uses
  %i.al = and i32 %i.ak, 1048576
  %.not67 = icmp eq i32 %i.al, 0
  br i1 %.not67, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.am = and i32 %i.ak, 8
  %.not68 = icmp eq i32 %i.am, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.u, align 4             ; 2 uses
  %i.ao = and i32 %i.an, 524288
  %i.ap = xor i32 %i.ao, 524288
  %i.aq = or i32 %i.an, 524288
  store i32 %i.aq, ptr %i.u, align 4
  %.pre = load i32, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = phi i32 [ %.pre, %bb.d ], [ %i.ak, %bb.c ]
  %.1 = phi i32 [ %i.ap, %bb.d ], [ %.058, %bb.c ] ; 3 uses
  %i.as = and i32 %i.ar, 128
  %.not69 = icmp eq i32 %i.as, 0
  br i1 %.not69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.s, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @page_cache_sync_ra(ptr noundef nonnull %6, i64 noundef %i.v) #14
  %i.at = load i32, ptr %i.t, align 8
  %i.au = and i32 %i.at, 8
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = xor i32 %.1, -1
  %i.aw = load i32, ptr %i.u, align 4
  %i.ax = and i32 %i.aw, %i.av
  store i32 %i.ax, ptr %i.u, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call fastcc void @filemap_get_read_batch(ptr noundef %i.c, i64 noundef %i.f, i64 noundef %i.m, ptr noundef %2) #17, !srcloc !131
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.val76.pre = load i8, ptr %2, align 8          ; 2 uses
  %.not71 = icmp eq i8 %.val76.pre, 0
  br i1 %.not71, label %bb.j, label %.thread130

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 4 uses
  %i.bb = load i32, ptr %i.t, align 8
  %i.bc = and i32 %i.bb, 524296
  %.not.i79 = icmp eq i32 %i.bc, 0
  br i1 %.not.i79, label %bb.k, label %trace_mm_filemap_get_pages.exit

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr i8, ptr %i.ba, i64 56     ; 2 uses
  %.val.i80 = load i32, ptr %i.bd, align 8
  %i.be = call ptr @filemap_alloc_folio_noprof(i32 noundef %.val.i80, i32 noundef 0, ptr noundef null) #17 ; 11 uses
  %.not36.i = icmp eq ptr %i.be, null
  br i1 %.not36.i, label %trace_mm_filemap_get_pages.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %i.t, align 8
  %i.bg = and i32 %i.bf, 128
  %.not37.i = icmp eq i32 %i.bg, 0
  br i1 %.not37.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.be, i64 19) #15, !srcloc !74
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = getelementptr i8, ptr %i.ba, i64 24     ; 3 uses
  call void @down_read(ptr noundef %i.bh) #14
  %i.bi = load i64, ptr %i.d, align 8
  %i.bj = ashr i64 %i.bi, 12
  %.val40.i = load i32, ptr %i.bd, align 8
  %i.bk = and i32 %.val40.i, 3264
  %i.bl = call i32 @filemap_add_folio(ptr noundef %i.ba, ptr noundef nonnull %i.be, i64 noundef %i.bj, i32 noundef %i.bk) #17 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -17
  %spec.store.select.i = select i1 %i.bm, i32 524289, i32 %i.bl ; 2 uses
  %.not38.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not38.i, label %bb.o, label %filemap_read_folio.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %0, align 8               ; 3 uses
  %i.bo = getelementptr i8, ptr %i.ba, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load volatile i64, ptr %i.be, align 8   ; 0 uses
  %i.bs = call i32 %i.bq(ptr noundef %i.bn, ptr noundef nonnull %i.be) #14, !inline_history !132 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i, label %bb.p, label %filemap_read_folio.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bt = load volatile i64, ptr %i.be, align 8
  %i.bu = and i64 %i.bt, 1
  %.not.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i, label %folio_wait_locked_killable.exit.thread.i.i, label %folio_wait_locked_killable.exit.i.i

folio_wait_locked_killable.exit.i.i:              ; preds = %bb.p
  %i.bv = call fastcc range(i32 -4, 1) i32 @folio_wait_bit_common(ptr noundef nonnull %i.be, i32 noundef 0, i32 noundef 258, i32 noundef 1) #17, !srcloc !100 ; 2 uses
  %.not17.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not17.i.i, label %folio_wait_locked_killable.exit.thread.i.i, label %filemap_read_folio.exit.thread.i

folio_wait_locked_killable.exit.thread.i.i:       ; preds = %folio_wait_locked_killable.exit.i.i, %bb.p
  %i.bw = load volatile i64, ptr %i.be, align 8
  %i.bx = and i64 %i.bw, 8
  %.not21.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not21.i.i, label %folio_test_uptodate.exit.i.i, label %bb.r

folio_test_uptodate.exit.i.i:                     ; preds = %folio_wait_locked_killable.exit.thread.i.i
  %.not18.i.i = icmp eq ptr %i.bn, null
  br i1 %.not18.i.i, label %filemap_read_folio.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %folio_test_uptodate.exit.i.i
  %i.by = getelementptr i8, ptr %i.bn, i64 152    ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = lshr i32 %i.bz, 2
  store i32 %i.ca, ptr %i.by, align 8
  br label %filemap_read_folio.exit.thread.i

bb.r:                                             ; preds = %folio_wait_locked_killable.exit.thread.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  call void @up_read(ptr noundef %i.bh) #14
  %i.cb = load i8, ptr %2, align 8                ; 2 uses
  %i.cc = add i8 %i.cb, 1
  store i8 %i.cc, ptr %2, align 8
  %i.cd = zext i8 %i.cb to i64
  %i.ce = getelementptr [8 x i8], ptr %i.w, i64 %i.cd
  store ptr %i.be, ptr %i.ce, align 8
  br label %trace_mm_filemap_get_pages.exit

filemap_read_folio.exit.thread.i:                 ; preds = %bb.q, %folio_test_uptodate.exit.i.i, %folio_wait_locked_killable.exit.i.i, %bb.o, %bb.n
  %.034.i = phi i32 [ %spec.store.select.i, %bb.n ], [ -5, %folio_test_uptodate.exit.i.i ], [ -5, %bb.q ], [ %i.bv, %folio_wait_locked_killable.exit.i.i ], [ %i.bs, %bb.o ] ; 2 uses
  call void @up_read(ptr noundef %i.bh) #14
  %i.cf = getelementptr i8, ptr %i.be, i64 52     ; 2 uses
  %i.cg = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cf, ptr elementtype(i32) %i.cf) #15, !srcloc !67 ; 2 uses
  %i.ch = icmp ult i8 %i.cg, 2
  call void @llvm.assume(i1 %i.ch)
  %.not.i41.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i41.i, label %filemap_create_folio.exit, label %bb.s
end_hunk_0
