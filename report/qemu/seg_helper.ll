Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/seg_helper?download=true
inline.NumInlined: 303
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cpu_mmu_index_kernel:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load i32, ptr %i.a, align 16             ; 3 uses
  %i.c = and i32 %i.b, 8388608
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %x86_mmu_index_kernel_pl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 3
  %.not5.i = icmp eq i32 %i.d, 3
  br i1 %.not5.i, label %x86_mmu_index_kernel_pl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 16
  %i.i = and i32 %i.h, 4
  br label %x86_mmu_index_kernel_pl.exit

x86_mmu_index_kernel_pl.exit:                     ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i32 [ 4, %bb.a ], [ 0, %bb.b ], [ %i.i, %bb.c ]
  %i.k = lshr i32 %i.b, 14
  %.lobit.i = and i32 %i.k, 1
  %i.l = or disjoint i32 %i.j, %.lobit.i
  %i.m = xor i32 %i.l, 1
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @exception_has_error_code(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %switch.tableidx = add i32 %0, -8               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.exception_has_error_code, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sysret(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @raise_exception_err_ra(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, i64 noundef %i.e) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  %i.g = load i32, ptr %i.f, align 16             ; 5 uses
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 1
  %i.l = icmp eq i64 %i.k, 0
  %i.m = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.o = ptrtoint ptr %i.n to i64
  tail call void @raise_exception_err_ra(ptr noundef nonnull %0, i32 noundef 13, i32 noundef 0, i64 noundef %i.o) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11424
  %i.q = load i64, ptr %i.p, align 16
  %i.r = lshr i64 %i.q, 48
  %i.s = trunc nuw nsw i64 %i.r to i32            ; 3 uses
  %i.t = and i32 %i.g, 16384
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i32 %1, 2
  br i1 %i.u, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13692
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 1970169159
  br i1 %i.z, label %bb.h, label %cpu_x86_load_seg_cache.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 13696
  %i.ab = load i32, ptr %i.aa, align 16
  %i.ac = icmp eq i32 %i.ab, 1231384169
  br i1 %i.ac, label %bb.i, label %cpu_x86_load_seg_cache.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 13700
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 1818588270
  br i1 %i.af, label %bb.j, label %cpu_x86_load_seg_cache.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = and i64 %i.j, 2147483648
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %get_pg_mode.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 4096
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 47, i64 56
  br label %get_pg_mode.exit

get_pg_mode.exit:                                 ; preds = %bb.j, %bb.k
  %.020.i = phi i64 [ 47, %bb.j ], [ %i.al, %bb.k ]
  %i.am = ashr i64 %i.w, %.020.i
  %i.an = add nsw i64 %i.am, -1
  %or.cond3 = icmp ult i64 %i.an, -2
  br i1 %or.cond3, label %bb.l, label %cpu_x86_load_seg_cache.exit

bb.l:                                             ; preds = %get_pg_mode.exit
  %i.ao = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.ap = ptrtoint ptr %i.ao to i64
  tail call void @raise_exception_err_ra(ptr noundef nonnull %0, i32 noundef 13, i32 noundef 0, i64 noundef %i.ap) #11
  unreachable

cpu_x86_load_seg_cache.exit:                      ; preds = %get_pg_mode.exit, %bb.i, %bb.h, %bb.g
  %i.aq = or i32 %i.s, 3                          ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.ar, ptr %i.as, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 -1, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 10550016, ptr %i.av, align 4
  %i.aw = and i32 %i.g, -32884
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = lshr i32 %i.ay, 17
  %i.ba = and i32 %i.az, 32
  %i.bb = or disjoint i32 %i.aw, %i.ba
  %i.bc = or disjoint i32 %i.bb, 32784
  br label %bb.p

bb.m:                                             ; preds = %bb.f
  %i.bd = or i32 %i.s, 3                          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.bd, ptr %i.be, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 -1, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 12647168, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = lshr i32 %i.bj, 17
  %i.bl = and i32 %i.bk, 32                       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 131072
  %.not46.i47.not = icmp eq i64 %i.bo, 0
  br i1 %.not46.i47.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = or disjoint i32 %i.bl, 64
  br label %cpu_x86_load_seg_cache.exit51

bb.o:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bt = load i64, ptr %i.bs, align 16
  %i.bu = or i64 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bw = load i64, ptr %i.bv, align 16
  %i.bx = or i64 %i.bu, %i.bw
  %.not48.i50 = icmp eq i64 %i.bx, 0
  %i.by = select i1 %.not48.i50, i32 0, i32 64
  %i.bz = or disjoint i32 %i.by, %i.bl
  br label %cpu_x86_load_seg_cache.exit51

cpu_x86_load_seg_cache.exit51:                    ; preds = %bb.n, %bb.o
  %.041.i45 = phi i32 [ %i.bz, %bb.o ], [ %i.bp, %bb.n ]
  %i.ca = and i32 %i.g, -32884
  %i.cb = or disjoint i32 %i.ca, 16
  %i.cc = or i32 %.041.i45, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 4294967295
  br label %bb.p

bb.p:                                             ; preds = %cpu_x86_load_seg_cache.exit51, %cpu_x86_load_seg_cache.exit
  %.sink = phi i64 [ %i.cf, %cpu_x86_load_seg_cache.exit51 ], [ %i.w, %cpu_x86_load_seg_cache.exit ]
  %.pre-phi = phi i32 [ %i.bd, %cpu_x86_load_seg_cache.exit51 ], [ %i.aq, %cpu_x86_load_seg_cache.exit ]
  %i.cg = phi i32 [ %i.cc, %cpu_x86_load_seg_cache.exit51 ], [ %i.bc, %cpu_x86_load_seg_cache.exit ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %.sink, ptr %i.ch, align 16
  %i.ci = add nuw nsw i32 %.pre-phi, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i64 0, ptr %i.ck, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 -1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  store i32 12645120, ptr %i.cm, align 4
  %i.cn = or i32 %i.cg, 3
  store i32 %i.cn, ptr %i.f, align 16
  tail call void @cpu_sync_bndcs_hflags(ptr noundef nonnull %0) #12
  %i.co = load i32, ptr %i.cm, align 4
  %i.cp = lshr i32 %i.co, 17
  %i.cq = and i32 %i.cp, 32                       ; 3 uses
  %i.cr = load i32, ptr %i.f, align 16            ; 3 uses
  %i.cs = and i32 %i.cr, 32768
  %.not44.i52 = icmp eq i32 %i.cs, 0
  br i1 %.not44.i52, label %bb.q, label %cpu_x86_load_seg_cache.exit59

bb.q:                                             ; preds = %bb.p
  %i.ct = load i64, ptr %i.i, align 8
  %i.cu = and i64 %i.ct, 1
  %.not45.i54 = icmp eq i64 %i.cu, 0
  br i1 %.not45.i54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = and i64 %i.cw, 131072
  %.not46.i55 = icmp ne i64 %i.cx, 0
  %i.cy = and i32 %i.cr, 16
  %.not47.i56 = icmp eq i32 %i.cy, 0
  %or.cond49.i57 = or i1 %.not47.i56, %.not46.i55
  br i1 %or.cond49.i57, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cz = or disjoint i32 %i.cq, 64
  br label %cpu_x86_load_seg_cache.exit59

bb.t:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dd = load i64, ptr %i.dc, align 16
  %i.de = or i64 %i.dd, %i.db
  %i.df = load i64, ptr %i.ck, align 16
  %i.dg = or i64 %i.de, %i.df
  %.not48.i58 = icmp eq i64 %i.dg, 0
  %i.dh = select i1 %.not48.i58, i32 0, i32 64
  %i.di = or disjoint i32 %i.dh, %i.cq
  br label %cpu_x86_load_seg_cache.exit59

cpu_x86_load_seg_cache.exit59:                    ; preds = %bb.p, %bb.s, %bb.t
  %.041.i53 = phi i32 [ %i.cq, %bb.p ], [ %i.cz, %bb.s ], [ %i.di, %bb.t ]
  %i.dj = and i32 %i.cr, -97
  %i.dk = or i32 %.041.i53, %i.dj
  store i32 %i.dk, ptr %i.f, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = trunc i64 %i.dm to i32
  tail call void @cpu_load_eflags(ptr noundef nonnull %0, i32 noundef %i.dn, i32 noundef 2585344) #12
  br label %bb.ab

bb.u:                                             ; preds = %bb.e
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = or i64 %i.dp, 512
  store i64 %i.dq, ptr %i.do, align 8
  %i.dr = or i32 %i.s, 3                          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.dr, ptr %i.ds, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 -1, ptr %i.du, align 16
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 12647168, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = lshr i32 %i.dx, 17
  %i.dz = and i32 %i.dy, 32                       ; 2 uses
  %i.ea = and i64 %i.dp, 131072
  %.not46.i64.not = icmp eq i64 %i.ea, 0
  br i1 %.not46.i64.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = or disjoint i32 %i.dz, 64
  br label %cpu_x86_load_seg_cache.exit68

bb.w:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ef = load i64, ptr %i.ee, align 16
  %i.eg = or i64 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ei = load i64, ptr %i.eh, align 16
  %i.ej = or i64 %i.eg, %i.ei
  %.not48.i67 = icmp eq i64 %i.ej, 0
  %i.ek = select i1 %.not48.i67, i32 0, i32 64
  %i.el = or disjoint i32 %i.ek, %i.dz
  br label %cpu_x86_load_seg_cache.exit68

cpu_x86_load_seg_cache.exit68:                    ; preds = %bb.v, %bb.w
  %.041.i62 = phi i32 [ %i.el, %bb.w ], [ %i.eb, %bb.v ]
  %i.em = and i32 %i.g, -49268
  %2 = or disjoint i32 %i.em, 16
  %i.en = or i32 %.041.i62, %2
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.eq, ptr %i.er, align 16
  %i.es = add nuw nsw i32 %i.dr, 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.es, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i64 0, ptr %i.eu, align 16
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 -1, ptr %i.ev, align 8
  store i32 12645120, ptr %i.dw, align 4
  %i.ew = or i32 %i.en, 3
  store i32 %i.ew, ptr %i.f, align 16
  tail call void @cpu_sync_bndcs_hflags(ptr noundef nonnull %0) #12
  %i.ex = load i32, ptr %i.dw, align 4
  %i.ey = lshr i32 %i.ex, 17
  %i.ez = and i32 %i.ey, 32                       ; 3 uses
  %i.fa = load i32, ptr %i.f, align 16            ; 3 uses
  %i.fb = and i32 %i.fa, 32768
  %.not44.i69 = icmp eq i32 %i.fb, 0
  br i1 %.not44.i69, label %bb.x, label %cpu_x86_load_seg_cache.exit76

bb.x:                                             ; preds = %cpu_x86_load_seg_cache.exit68
  %i.fc = load i64, ptr %i.i, align 8
  %i.fd = and i64 %i.fc, 1
  %.not45.i71 = icmp eq i64 %i.fd, 0
  br i1 %.not45.i71, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = load i64, ptr %i.do, align 8
  %i.ff = and i64 %i.fe, 131072
  %.not46.i72 = icmp ne i64 %i.ff, 0
  %i.fg = and i32 %i.fa, 16
  %.not47.i73 = icmp eq i32 %i.fg, 0
  %or.cond49.i74 = or i1 %.not47.i73, %.not46.i72
  br i1 %or.cond49.i74, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fh = or disjoint i32 %i.ez, 64
  br label %cpu_x86_load_seg_cache.exit76

bb.aa:                                            ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.fl = load i64, ptr %i.fk, align 16
  %i.fm = or i64 %i.fl, %i.fj
  %i.fn = load i64, ptr %i.eu, align 16
  %i.fo = or i64 %i.fm, %i.fn
  %.not48.i75 = icmp eq i64 %i.fo, 0
  %i.fp = select i1 %.not48.i75, i32 0, i32 64
  %i.fq = or disjoint i32 %i.fp, %i.ez
  br label %cpu_x86_load_seg_cache.exit76

cpu_x86_load_seg_cache.exit76:                    ; preds = %cpu_x86_load_seg_cache.exit68, %bb.z, %bb.aa
  %.041.i70 = phi i32 [ %i.ez, %cpu_x86_load_seg_cache.exit68 ], [ %i.fh, %bb.z ], [ %i.fq, %bb.aa ]
  %i.fr = and i32 %i.fa, -97
  %i.fs = or i32 %.041.i70, %i.fr
  store i32 %i.fs, ptr %i.f, align 16
  br label %bb.ab

bb.ab:                                            ; preds = %cpu_x86_load_seg_cache.exit76, %cpu_x86_load_seg_cache.exit59
  ret void
}

; Function Attrs: noreturn
declare void @raise_exception_err_ra(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #5

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @cpu_x86_load_seg_cache(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 6, label %.thread
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 480, %bb.b ], [ 456, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %4, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %5, ptr %i.d, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 4 uses
  store i32 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 %5, ptr %i.j, align 4
  switch i32 %1, label %bb.h [
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.l = load i32, ptr %i.k, align 16             ; 3 uses
  %i.m = and i32 %i.l, 16384
  %.not = icmp eq i32 %i.m, 0
  %i.n = and i32 %5, 2097152
  %.not43 = icmp eq i32 %i.n, 0
  %or.cond = or i1 %.not43, %.not
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.l, -32881
  %i.p = or disjoint i32 %i.o, 32816
  store i32 %i.p, ptr %i.k, align 16
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.r = load i32, ptr %i.q, align 4
  %i.s = lshr i32 %i.r, 18
  %i.t = and i32 %i.s, 16
  %i.u = and i32 %i.l, -32785
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.k, align 16
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.w = lshr i32 %5, 13
  %i.x = and i32 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.z = load i32, ptr %i.y, align 16
  %i.aa = and i32 %i.z, -4
  %i.ab = or disjoint i32 %i.aa, %i.x
  store i32 %i.ab, ptr %i.y, align 16
  tail call void @cpu_sync_bndcs_hflags(ptr noundef nonnull %0) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %.thread, %bb.c, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = lshr i32 %i.ad, 17
  %i.af = and i32 %i.ae, 32                       ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 16           ; 3 uses
  %i.ai = and i32 %i.ah, 32768
  %.not44 = icmp eq i32 %i.ai, 0
  br i1 %.not44, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 1
  %.not45 = icmp eq i64 %i.al, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 131072
  %.not46 = icmp ne i64 %i.ao, 0
  %i.ap = and i32 %i.ah, 16
  %.not47 = icmp eq i32 %i.ap, 0
  %or.cond49 = or i1 %.not47, %.not46
  br i1 %or.cond49, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = or disjoint i32 %i.af, 64
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.au = load i64, ptr %i.at, align 16
  %i.av = or i64 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ax = load i64, ptr %i.aw, align 16
  %i.ay = or i64 %i.av, %i.ax
  %.not48 = icmp eq i64 %i.ay, 0
  %i.az = select i1 %.not48, i32 0, i32 64
  %i.ba = or disjoint i32 %i.az, %i.af
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %.041 = phi i32 [ %i.af, %bb.h ], [ %i.aq, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = and i32 %i.ah, -97
  %i.bc = or i32 %.041, %i.bb
  store i32 %i.bc, ptr %i.ag, align 16
  ret void
}

declare void @cpu_load_eflags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @do_interrupt_all(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 86 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16752 ; 7 uses
  %i.e = load i64, ptr %i.d, align 16             ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 8 uses
end_hunk_0
begin_hunk_1_@helper_ret_protected:bb.a
  %or.cond49.i.i244 = or i1 %.not47.i.i243, %.not46.i.i242
  br i1 %or.cond49.i.i244, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.uf = or disjoint i32 %i.tv, 64
  br label %load_seg_vm.exit246

bb.de:                                            ; preds = %bb.dc
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.uh = load i64, ptr %i.ug, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.uj = load i64, ptr %i.ui, align 16
  %i.uk = or i64 %i.uj, %i.uh
  %i.ul = load i64, ptr %i.z, align 16
  %i.um = or i64 %i.uk, %i.ul
  %.not48.i.i245 = icmp eq i64 %i.um, 0
  %i.un = select i1 %.not48.i.i245, i32 0, i32 64
  %i.uo = or disjoint i32 %i.un, %i.tv
  br label %load_seg_vm.exit246

load_seg_vm.exit246:                              ; preds = %load_seg_vm.exit, %bb.dd, %bb.de
  %.041.i.i240 = phi i32 [ %i.tv, %load_seg_vm.exit ], [ %i.uf, %bb.dd ], [ %i.uo, %bb.de ]
  %i.up = and i32 %i.tw, -97                      ; 2 uses
  %i.uq = or i32 %.041.i.i240, %i.up
  store i32 %i.uq, ptr %i.a, align 16
  %i.ur = and i32 %i.sn, 65535                    ; 2 uses
  %i.us = shl nuw nsw i32 %i.ur, 4
  %i.ut = zext nneg i32 %i.us to i64              ; 2 uses
  store i32 %i.ur, ptr %i.tc, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.ut, ptr %i.uu, align 16
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 65535, ptr %i.uv, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 62208, ptr %i.uw, align 4
  %i.ux = and i32 %i.sr, 65535                    ; 2 uses
  %i.uy = shl nuw nsw i32 %i.ux, 4
  %i.uz = zext nneg i32 %i.uy to i64              ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 %i.ux, ptr %i.va, align 16
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.uz, ptr %i.vb, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 65535, ptr %i.vc, align 16
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 62208, ptr %i.vd, align 4
  %i.ve = and i32 %i.sv, 65535                    ; 2 uses
  %i.vf = shl nuw nsw i32 %i.ve, 4
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.ve, ptr %i.vh, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %i.vg, ptr %i.vi, align 16
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i32 65535, ptr %i.vj, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 428
  store i32 62208, ptr %i.vk, align 4
  %i.vl = and i32 %i.sz, 65535                    ; 2 uses
  %i.vm = shl nuw nsw i32 %i.vl, 4
  %i.vn = zext nneg i32 %i.vm to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 %i.vl, ptr %i.vo, align 16
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 %i.vn, ptr %i.vp, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 65535, ptr %i.vq, align 16
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 62208, ptr %i.vr, align 4
  br i1 %.not44.i.i239, label %bb.df, label %load_seg_vm.exit278

bb.df:                                            ; preds = %load_seg_vm.exit246
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.vt = load i64, ptr %i.vs, align 8
  %i.vu = and i64 %i.vt, 1
  %.not45.i.i273 = icmp eq i64 %i.vu, 0
  br i1 %.not45.i.i273, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.vw = load i64, ptr %i.vv, align 8
  %i.vx = and i64 %i.vw, 131072
  %.not46.i.i274 = icmp ne i64 %i.vx, 0
  %i.vy = and i32 %i.tw, 16
  %.not47.i.i275 = icmp eq i32 %i.vy, 0
  %or.cond49.i.i276 = or i1 %.not47.i.i275, %.not46.i.i274
  br i1 %or.cond49.i.i276, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.vz = or disjoint i32 %i.tv, 64
  br label %load_seg_vm.exit278

bb.di:                                            ; preds = %bb.dg
  %i.wa = load i64, ptr %i.z, align 16
  %i.wb = or i64 %i.wa, %i.uz
  %i.wc = or i64 %i.wb, %i.ut
  %.not48.i.i277 = icmp eq i64 %i.wc, 0
  %i.wd = select i1 %.not48.i.i277, i32 0, i32 64
  %i.we = or disjoint i32 %i.wd, %i.tv
  br label %load_seg_vm.exit278

load_seg_vm.exit278:                              ; preds = %load_seg_vm.exit246, %bb.dh, %bb.di
  %.041.i.i272 = phi i32 [ %i.tv, %load_seg_vm.exit246 ], [ %i.vz, %bb.dh ], [ %i.we, %bb.di ]
  %i.wf = or i32 %.041.i.i272, %i.up
  store i32 %i.wf, ptr %i.a, align 16
  %i.wg = and i64 %i.ah, 65535
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.wg, ptr %i.wh, align 16
  store i64 %i.sg, ptr %i.x, align 16
  br label %bb.dj

bb.dj:                                            ; preds = %bb.cz, %bb.da, %load_seg_vm.exit278
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_lret_protected(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64
  tail call fastcc void @helper_ret_protected(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %2, i64 noundef %i.b)
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sysenter(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11400
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @raise_exception_err_ra(ptr noundef nonnull %0, i32 noundef 13, i32 noundef 0, i64 noundef %i.e) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, -197121
  store i64 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.j = load i32, ptr %i.i, align 16             ; 3 uses
  %i.k = and i32 %i.j, 16384
  %.not = icmp eq i32 %i.k, 0
  %i.l = and i32 %i.b, 65532
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 %i.l, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 -1, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  br i1 %.not, label %bb.d, label %cpu_x86_load_seg_cache.exit

cpu_x86_load_seg_cache.exit:                      ; preds = %bb.c
  store i32 14719744, ptr %i.p, align 4
  %i.q = and i32 %i.j, -32881
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.s = load i32, ptr %i.r, align 4
  %i.t = lshr i32 %i.s, 17
  %i.u = and i32 %i.t, 32
  %i.v = or disjoint i32 %i.q, %i.u
  %i.w = or disjoint i32 %i.v, 32784
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 12622592, ptr %i.p, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.y = load i32, ptr %i.x, align 4
  %i.z = lshr i32 %i.y, 17
  %i.aa = and i32 %i.z, 32                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 1
  %.not45.i17 = icmp eq i64 %i.ad, 0
  br i1 %.not45.i17, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = or disjoint i32 %i.aa, 64
  br label %cpu_x86_load_seg_cache.exit22

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = or i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.al = load i64, ptr %i.ak, align 16
  %i.am = or i64 %i.aj, %i.al
  %.not48.i21 = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not48.i21, i32 0, i32 64
  %i.ao = or disjoint i32 %i.an, %i.aa
  br label %cpu_x86_load_seg_cache.exit22

cpu_x86_load_seg_cache.exit22:                    ; preds = %bb.e, %bb.f
  %.041.i16 = phi i32 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ]
  %i.ap = and i32 %i.j, -49265
  %i.aq = or disjoint i32 %i.ap, 16
  %i.ar = or i32 %.041.i16, %i.aq
  br label %bb.g

bb.g:                                             ; preds = %cpu_x86_load_seg_cache.exit22, %cpu_x86_load_seg_cache.exit
  %storemerge = phi i32 [ %i.w, %cpu_x86_load_seg_cache.exit ], [ %i.ar, %cpu_x86_load_seg_cache.exit22 ]
  %i.as = add i32 %i.b, 8
  %i.at = and i32 %i.as, 65532
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i64 0, ptr %i.av, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 -1, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  store i32 12620544, ptr %i.ax, align 4
  %i.ay = and i32 %storemerge, -4
  store i32 %i.ay, ptr %i.i, align 16
  tail call void @cpu_sync_bndcs_hflags(ptr noundef nonnull %0) #12
  %i.az = load i32, ptr %i.ax, align 4
  %i.ba = lshr i32 %i.az, 17
  %i.bb = and i32 %i.ba, 32                       ; 3 uses
  %i.bc = load i32, ptr %i.i, align 16            ; 3 uses
  %i.bd = and i32 %i.bc, 32768
  %.not44.i23 = icmp eq i32 %i.bd, 0
  br i1 %.not44.i23, label %bb.h, label %cpu_x86_load_seg_cache.exit30

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = and i64 %i.bf, 1
  %.not45.i25 = icmp eq i64 %i.bg, 0
  br i1 %.not45.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i64, ptr %i.f, align 8
  %i.bi = and i64 %i.bh, 131072
  %.not46.i26 = icmp ne i64 %i.bi, 0
  %i.bj = and i32 %i.bc, 16
  %.not47.i27 = icmp eq i32 %i.bj, 0
  %or.cond49.i28 = or i1 %.not47.i27, %.not46.i26
  br i1 %or.cond49.i28, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bk = or disjoint i32 %i.bb, 64
  br label %cpu_x86_load_seg_cache.exit30

bb.k:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bo = load i64, ptr %i.bn, align 16
  %i.bp = or i64 %i.bo, %i.bm
  %i.bq = load i64, ptr %i.av, align 16
  %i.br = or i64 %i.bp, %i.bq
  %.not48.i29 = icmp eq i64 %i.br, 0
  %i.bs = select i1 %.not48.i29, i32 0, i32 64
  %i.bt = or disjoint i32 %i.bs, %i.bb
  br label %cpu_x86_load_seg_cache.exit30

cpu_x86_load_seg_cache.exit30:                    ; preds = %bb.g, %bb.j, %bb.k
  %.041.i24 = phi i32 [ %i.bb, %bb.g ], [ %i.bk, %bb.j ], [ %i.bt, %bb.k ]
  %i.bu = and i32 %i.bc, -97
  %i.bv = or i32 %.041.i24, %i.bu
  store i32 %i.bv, ptr %i.i, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11408
  %i.bx = load i64, ptr %i.bw, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bx, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 11416
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.ca, ptr %i.cb, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sysexit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.b = load i32, ptr %i.a, align 16             ; 4 uses
  %i.c = and i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11400
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.i = ptrtoint ptr %i.h to i64
  tail call void @raise_exception_err_ra(ptr noundef nonnull %0, i32 noundef 13, i32 noundef 0, i64 noundef %i.i) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %1, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.o = add i32 %i.e, 32
  %i.p = and i32 %i.o, 65532
  %i.q = or disjoint i32 %i.p, 3
  store i32 %i.q, ptr %i.k, align 16
  store i64 0, ptr %i.l, align 8
  store i32 -1, ptr %i.m, align 16
  store i32 14744320, ptr %i.n, align 4
  %i.r = and i32 %i.b, 16384
  %.not.i = icmp eq i32 %i.r, 0                   ; 2 uses
  %.46 = select i1 %.not.i, i32 16, i32 32784
  %i.s = and i32 %i.b, -32884
  %i.t = or disjoint i32 %i.s, %.46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = lshr i32 %i.v, 17
  %i.x = and i32 %i.w, 32                         ; 3 uses
  br i1 %.not.i, label %bb.e, label %cpu_x86_load_seg_cache.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 1
  %.not45.i = icmp eq i64 %i.aa, 0
  br i1 %.not45.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 131072
  %.not46.i.not = icmp eq i64 %i.ad, 0
  br i1 %.not46.i.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = or disjoint i32 %i.x, 64
  br label %cpu_x86_load_seg_cache.exit

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ai = load i64, ptr %i.ah, align 16
  %i.aj = or i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.al = load i64, ptr %i.ak, align 16
  %i.am = or i64 %i.aj, %i.al
  %.not48.i = icmp eq i64 %i.am, 0
  %i.an = select i1 %.not48.i, i32 0, i32 64
  %i.ao = or disjoint i32 %i.an, %i.x
  br label %cpu_x86_load_seg_cache.exit

cpu_x86_load_seg_cache.exit:                      ; preds = %bb.d, %bb.g, %bb.h
  %.041.i = phi i32 [ %i.x, %bb.d ], [ %i.ae, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = or i32 %.041.i, %i.t
  %i.aq = add i32 %i.e, 40
  %i.ar = and i32 %i.aq, 65532
  %i.as = or disjoint i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i64 0, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 -1, ptr %i.av, align 8
  store i32 12645120, ptr %i.u, align 4
  %i.aw = or i32 %i.ap, 3
  store i32 %i.aw, ptr %i.a, align 16
  tail call void @cpu_sync_bndcs_hflags(ptr noundef nonnull %0) #12
  %i.ax = load i32, ptr %i.u, align 4
  %i.ay = lshr i32 %i.ax, 17
  %i.az = and i32 %i.ay, 32                       ; 3 uses
  %i.ba = load i32, ptr %i.a, align 16            ; 5 uses
  %i.bb = and i32 %i.ba, 32768
  %.not44.i17 = icmp eq i32 %i.bb, 0
  br i1 %.not44.i17, label %bb.i, label %cpu_x86_load_seg_cache.exit24

bb.i:                                             ; preds = %cpu_x86_load_seg_cache.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 1
  %.not45.i19 = icmp eq i64 %i.be, 0
  br i1 %.not45.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 131072
  %.not46.i20 = icmp ne i64 %i.bh, 0
  %i.bi = and i32 %i.ba, 16
  %.not47.i21 = icmp eq i32 %i.bi, 0
  %or.cond49.i22 = or i1 %.not47.i21, %.not46.i20
  br i1 %or.cond49.i22, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = or disjoint i32 %i.az, 64
  br label %cpu_x86_load_seg_cache.exit24

bb.l:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bn = load i64, ptr %i.bm, align 16
  %i.bo = or i64 %i.bn, %i.bl
  %i.bp = load i64, ptr %i.au, align 16
  %i.bq = or i64 %i.bo, %i.bp
  %.not48.i23 = icmp eq i64 %i.bq, 0
  %i.br = select i1 %.not48.i23, i32 0, i32 64
  %i.bs = or disjoint i32 %i.br, %i.az
  br label %cpu_x86_load_seg_cache.exit24

bb.m:                                             ; preds = %bb.c
  %i.bt = add i32 %i.e, 16
  %i.bu = and i32 %i.bt, 65532
  %i.bv = or disjoint i32 %i.bu, 3
  store i32 %i.bv, ptr %i.k, align 16
  store i64 0, ptr %i.l, align 8
  store i32 -1, ptr %i.m, align 16
  store i32 12647168, ptr %i.n, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = lshr i32 %i.bx, 17
  %i.bz = and i32 %i.by, 32                       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.cb, 1
  %.not45.i28 = icmp eq i64 %i.cc, 0
  br i1 %.not45.i28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = and i64 %i.ce, 131072
  %.not46.i29.not = icmp eq i64 %i.cf, 0
  br i1 %.not46.i29.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cg = or disjoint i32 %i.bz, 64
  br label %cpu_x86_load_seg_cache.exit33

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ck = load i64, ptr %i.cj, align 16
  %i.cl = or i64 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cn = load i64, ptr %i.cm, align 16
  %i.co = or i64 %i.cl, %i.cn
  %.not48.i32 = icmp eq i64 %i.co, 0
  %i.cp = select i1 %.not48.i32, i32 0, i32 64
  %i.cq = or disjoint i32 %i.cp, %i.bz
  br label %cpu_x86_load_seg_cache.exit33

cpu_x86_load_seg_cache.exit33:                    ; preds = %bb.o, %bb.p
  %.041.i27 = phi i32 [ %i.cq, %bb.p ], [ %i.cg, %bb.o ]
  %i.cr = and i32 %i.b, -32884
  %2 = or disjoint i32 %i.cr, 16
  %i.cs = or i32 %.041.i27, %2
  %i.ct = add i32 %i.e, 24
  %i.cu = and i32 %i.ct, 65532
  %i.cv = or disjoint i32 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 %i.cv, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store i64 0, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 -1, ptr %i.cy, align 8
  store i32 12645120, ptr %i.bw, align 4
  %i.cz = or i32 %i.cs, 3
  store i32 %i.cz, ptr %i.a, align 16
  tail call void @cpu_sync_bndcs_hflags(ptr noundef nonnull %0) #12
  %i.da = load i32, ptr %i.bw, align 4
  %i.db = lshr i32 %i.da, 17
  %i.dc = and i32 %i.db, 32                       ; 3 uses
  %i.dd = load i32, ptr %i.a, align 16            ; 5 uses
  %i.de = and i32 %i.dd, 32768
  %.not44.i34 = icmp eq i32 %i.de, 0
  br i1 %.not44.i34, label %bb.q, label %cpu_x86_load_seg_cache.exit24

bb.q:                                             ; preds = %cpu_x86_load_seg_cache.exit33
  %i.df = load i64, ptr %i.ca, align 8
  %i.dg = and i64 %i.df, 1
  %.not45.i36 = icmp eq i64 %i.dg, 0
  br i1 %.not45.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = and i64 %i.di, 131072
  %.not46.i37 = icmp ne i64 %i.dj, 0
  %i.dk = and i32 %i.dd, 16
  %.not47.i38 = icmp eq i32 %i.dk, 0
  %or.cond49.i39 = or i1 %.not47.i38, %.not46.i37
  br i1 %or.cond49.i39, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dl = or disjoint i32 %i.dc, 64
  br label %cpu_x86_load_seg_cache.exit24

bb.t:                                             ; preds = %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dp = load i64, ptr %i.do, align 16
  %i.dq = or i64 %i.dp, %i.dn
  %i.dr = load i64, ptr %i.cx, align 16
  %i.ds = or i64 %i.dq, %i.dr
  %.not48.i40 = icmp eq i64 %i.ds, 0
  %i.dt = select i1 %.not48.i40, i32 0, i32 64
  %i.du = or disjoint i32 %i.dt, %i.dc
  br label %cpu_x86_load_seg_cache.exit24

cpu_x86_load_seg_cache.exit24:                    ; preds = %bb.t, %bb.s, %cpu_x86_load_seg_cache.exit33, %bb.l, %bb.k, %cpu_x86_load_seg_cache.exit
  %.sink45 = phi i32 [ %i.ba, %bb.l ], [ %i.ba, %cpu_x86_load_seg_cache.exit ], [ %i.ba, %bb.k ], [ %i.dd, %cpu_x86_load_seg_cache.exit33 ], [ %i.dd, %bb.s ], [ %i.dd, %bb.t ]
  %.041.i35.sink = phi i32 [ %i.bs, %bb.l ], [ %i.az, %cpu_x86_load_seg_cache.exit ], [ %i.bj, %bb.k ], [ %i.dc, %cpu_x86_load_seg_cache.exit33 ], [ %i.dl, %bb.s ], [ %i.du, %bb.t ]
  %i.dv = and i32 %.sink45, -97
  %i.dw = or i32 %.041.i35.sink, %i.dv
  store i32 %i.dw, ptr %i.a, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.dy, ptr %i.dz, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load i64, ptr %i.ea, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.eb, ptr %i.ec, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local range(i64 0, 4294967296) i64 @helper_lsl(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = trunc i64 %1 to i32                      ; 4 uses
  %i.b = and i32 %i.a, 65528
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 2374, ptr noundef nonnull @__PRETTY_FUNCTION__.helper_lsl) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %i.a, 65532
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %load_segment_ra.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i32 %i.a, 4
  %.not.i = icmp eq i32 %i.j, 0
  %.0.v.i = select i1 %.not.i, i64 504, i64 456
  %.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0.v.i ; 2 uses
  %i.k = or disjoint i32 %i.b, 7
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp ugt i32 %i.k, %i.m
  br i1 %i.n, label %load_segment_ra.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %1, 65528
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.t = load i32, ptr %i.s, align 16             ; 3 uses
  %i.u = and i32 %i.t, 8388608
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %cpu_mmu_index_kernel.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i32 %i.t, 3
  %.not5.i.i.i = icmp eq i32 %i.v, 3
  br i1 %.not5.i.i.i, label %cpu_mmu_index_kernel.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = lshr i32 %i.y, 16
  %i.aa = and i32 %i.z, 4
  br label %cpu_mmu_index_kernel.exit.i

cpu_mmu_index_kernel.exit.i:                      ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = phi i32 [ 4, %bb.e ], [ 0, %bb.f ], [ %i.aa, %bb.g ]
  %i.ac = lshr i32 %i.t, 14
  %.lobit.i.i.i = and i32 %i.ac, 1
  %i.ad = or disjoint i32 %i.ab, %.lobit.i.i.i
  %i.ae = xor i32 %i.ad, 65
  %i.af = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.r, i32 noundef %i.ae, i64 noundef %i.i) #12
  %i.ag = add i64 %i.r, 4
  %i.ah = load i32, ptr %i.s, align 16            ; 3 uses
  %i.ai = and i32 %i.ah, 8388608
  %.not.i.i19.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i19.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %cpu_mmu_index_kernel.exit.i
  %i.aj = and i32 %i.ah, 3
  %.not5.i.i20.i = icmp eq i32 %i.aj, 3
  br i1 %.not5.i.i20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 16
  %i.ao = and i32 %i.an, 4
  br label %bb.j

bb.j:                                             ; preds = %cpu_mmu_index_kernel.exit.i, %bb.h, %bb.i
  %i.ap = phi i32 [ 4, %cpu_mmu_index_kernel.exit.i ], [ 0, %bb.h ], [ %i.ao, %bb.i ]
  %i.aq = lshr i32 %i.ah, 14
  %.lobit.i.i21.i = and i32 %i.aq, 1
  %i.ar = or disjoint i32 %i.ap, %.lobit.i.i21.i
  %i.as = xor i32 %i.ar, 65
  %i.at = tail call i32 @cpu_ldl_mmu(ptr noundef nonnull %0, i64 noundef %i.ag, i32 noundef %i.as, i64 noundef %i.i) #12 ; 6 uses
  %i.au = and i32 %i.a, 3                         ; 2 uses
  %i.av = lshr i32 %i.at, 13
  %i.aw = and i32 %i.av, 3                        ; 4 uses
  %i.ax = load i32, ptr %i.s, align 16
  %i.ay = and i32 %i.ax, 3                        ; 2 uses
  %i.az = and i32 %i.at, 4096
  %.not20 = icmp eq i32 %i.az, 0
  br i1 %.not20, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = and i32 %i.at, 3072
  %or.cond.not = icmp eq i32 %i.ba, 3072
  br i1 %or.cond.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp samesign ult i32 %i.aw, %i.ay
  %i.bc = icmp samesign ult i32 %i.aw, %i.au
  %or.cond23 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond23, label %load_segment_ra.exit, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.bd = lshr i32 %i.at, 8
  %i.be = and i32 %i.bd, 15
  switch i32 %i.be, label %load_segment_ra.exit [
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.n
    i32 9, label %bb.n
    i32 11, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bf = icmp samesign ult i32 %i.aw, %i.ay
  %i.bg = icmp samesign ult i32 %i.aw, %i.au
  %or.cond24 = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond24, label %load_segment_ra.exit, label %bb.o

load_segment_ra.exit:                             ; preds = %bb.d, %bb.n, %bb.m, %bb.l, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, -65
  store i64 %i.bj, ptr %i.bh, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.bk = and i32 %i.af, 65535
  %i.bl = and i32 %i.at, 983040
  %i.bm = or disjoint i32 %i.bl, %i.bk            ; 2 uses
  %i.bn = and i32 %i.at, 8388608
  %.not.i25 = icmp eq i32 %i.bn, 0
  %i.bo = shl nuw i32 %i.bm, 12
end_hunk_1
