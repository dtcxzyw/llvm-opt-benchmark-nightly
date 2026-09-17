Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_generic_malloc_uncollectable:bb.a

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.in.i = phi ptr [ %i.af, %bb.o ], [ %i.am, %bb.p ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ne i64 %i.ai, %i.ad
  %i.ak = icmp ne ptr %.0.i, %i.ag
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.al, label %bb.p, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.p
  %i.an = lshr i64 %i.ac, 12
  %i.ao = and i64 %i.an, 1023
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.b29 = load i1, ptr @GC_need_to_lock, align 4
  br i1 %.b29, label %bb.q, label %.thread

.thread:                                          ; preds = %GC_find_header.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store volatile i64 1, ptr %i.as, align 8
  br label %bb.u

bb.q:                                             ; preds = %GC_find_header.exit
  %i.at = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull @GC_allocate_ml) #45
  %.not34 = icmp eq i32 %i.at, 0
  br i1 %.not34, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @GC_lock()
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.b.pr = load i1, ptr @GC_need_to_lock, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i8 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store volatile i64 1, ptr %i.av, align 8
  br i1 %.b.pr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aw = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @GC_allocate_ml) #45 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.s, %bb.t, %bb.m, %bb.j, %bb.i, %bb.n
  %.1 = phi ptr [ null, %bb.n ], [ %i.aa, %bb.m ], [ %i.r, %bb.j ], [ %i.r, %bb.i ], [ %i.ab, %bb.t ], [ %i.ab, %bb.s ], [ %i.ab, %.thread ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_freehblk(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 3 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.056.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.056 = load ptr, ptr %.056.in, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.056, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.056, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.056, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !123

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023                       ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.056, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 6 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, 4095
  %i.s = and i64 %i.r, -4096                      ; 7 uses
  %i.t = icmp slt i64 %i.s, -4095
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.u(ptr noundef nonnull @.str.214) #45
  tail call void @abort() #48
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i64 %i.s, 4097
  br i1 %i.v, label %GC_remove_counts.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 4 uses
  %i.y = lshr i64 %i.x, 22                        ; 2 uses
  %i.z = and i64 %i.y, 2047
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.in.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.ag, %bb.g ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ne i64 %i.ac, %i.y
  %i.ae = icmp ne ptr %.0.i.i, %i.e
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.af, label %bb.g, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.g
  %i.ah = lshr i64 %i.x, 12
  %i.ai = and i64 %i.ah, 1023
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %GC_remove_counts.exit, label %.preheader.i

.preheader.i:                                     ; preds = %GC_find_header.exit.i
  %i.am = add i64 %i.s, %i.a                      ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.x
  br i1 %i.an, label %.lr.ph.i, label %GC_remove_counts.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.ao = phi i64 [ %i.bd, %bb.i ], [ %i.x, %.preheader.i ] ; 2 uses
  %.01619.i = phi ptr [ %i.bc, %bb.i ], [ %i.w, %.preheader.i ]
  %i.ap = lshr i64 %i.ao, 22                      ; 2 uses
  %i.aq = and i64 %i.ap, 2047
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.aq
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.0.in.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ay, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ne i64 %i.au, %i.ap
  %i.aw = icmp ne ptr %.0.i, %i.as
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.ax, label %bb.h, label %bb.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h
  %i.az = lshr i64 %i.ao, 12
  %i.ba = and i64 %i.az, 1023
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ba
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01619.i, i64 4096 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = icmp ugt i64 %i.am, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %GC_remove_counts.exit, !llvm.loop !17

GC_remove_counts.exit:                            ; preds = %bb.i, %bb.e, %GC_find_header.exit.i, %.preheader.i
  store i64 %i.s, ptr %i.p, align 8
  %i.bf = load i64, ptr @GC_gc_no, align 8
  %i.bg = trunc i64 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 26
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 25 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = and i8 %i.bj, 4
  %.not = icmp eq i8 %i.bk, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %GC_remove_counts.exit
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.215, ptr noundef %0)
  %i.bl = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bl(ptr noundef nonnull @.str.216) #45
  tail call void @abort() #48
  unreachable

bb.k:                                             ; preds = %GC_remove_counts.exit
  %i.bm = or disjoint i8 %i.bj, 4
  store i8 %i.bm, ptr %i.bi, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = lshr i64 %i.bo, 22                      ; 3 uses
  %i.bq = and i64 %i.bp, 2047
  %i.br = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 8 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in = phi ptr [ %i.br, %bb.k ], [ %i.by, %bb.l ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0, i64 8208
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp ne i64 %i.bu, %i.bp
  %i.bw = icmp ne ptr %.0, %i.bs
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  %i.by = getelementptr inbounds nuw i8, ptr %.0, i64 8216
  br i1 %i.bx, label %bb.l, label %bb.m, !llvm.loop !124

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds i8, ptr %0, i64 -4096 ; 3 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = lshr i64 %i.ca, 22                      ; 4 uses
  %i.cc = and i64 %i.cb, 2047
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cc ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.in.i.i65 = phi ptr [ %i.cd, %bb.m ], [ %i.cj, %bb.n ]
  %.0.i.i66 = load ptr, ptr %.0.in.i.i65, align 8 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 8208
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = icmp ne i64 %i.cf, %i.cb
  %i.ch = icmp ne ptr %.0.i.i66, %i.bs
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i66, i64 8216
  br i1 %i.ci, label %bb.n, label %bb.o, !llvm.loop !125

bb.o:                                             ; preds = %bb.n
  %1 = lshr i64 %i.bo, 12
  %2 = and i64 %1, 1023                           ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %2
  %4 = load ptr, ptr %3, align 8                  ; 7 uses
  %i.ck = lshr i64 %i.ca, 12
  %i.cl = and i64 %i.ck, 1023                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i66, i64 %i.cl
  %.02540.i.i = load ptr, ptr %i.cm, align 8      ; 3 uses
  %i.cn = icmp ne ptr %.02540.i.i, null           ; 2 uses
  %i.co = icmp ult ptr %.02540.i.i, inttoptr (i64 4096 to ptr)
  %i.cp = and i1 %i.cn, %i.co
  br i1 %i.cp, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %GC_find_header.exit.i.i
  %.02542.i.i = phi ptr [ %.025.i.i, %GC_find_header.exit.i.i ], [ %.02540.i.i, %bb.o ]
  %.02641.i.i = phi ptr [ %i.cs, %GC_find_header.exit.i.i ], [ %i.bz, %bb.o ]
  %i.cq = ptrtoint ptr %.02542.i.i to i64
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [4096 x i8], ptr %.02641.i.i, i64 %i.cr ; 3 uses
  %i.ct = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cu = lshr i64 %i.ct, 22                      ; 2 uses
  %i.cv = and i64 %i.cu, 2047
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.cv
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.0.in.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %i.dc, %bb.p ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp ne i64 %i.cy, %i.cu
  %i.da = icmp ne ptr %.0.i.i.i, %i.bs
  %i.db = select i1 %i.cz, i1 %i.da, i1 false
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.db, label %bb.p, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %bb.p
  %i.dd = lshr i64 %i.ct, 12
  %i.de = and i64 %i.dd, 1023
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.de
  %.025.i.i = load ptr, ptr %i.df, align 8        ; 3 uses
  %i.dg = icmp ne ptr %.025.i.i, null             ; 2 uses
  %i.dh = icmp ult ptr %.025.i.i, inttoptr (i64 4096 to ptr)
  %i.di = and i1 %i.dg, %i.dh
  br i1 %i.di, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !126

._crit_edge.i.i:                                  ; preds = %GC_find_header.exit.i.i, %bb.o
  %.026.lcssa.i.i = phi ptr [ %i.bz, %bb.o ], [ %i.cs, %GC_find_header.exit.i.i ]
  %.lcssa.i.i = phi i1 [ %i.cn, %bb.o ], [ %i.dg, %GC_find_header.exit.i.i ]
  br i1 %.lcssa.i.i, label %get_block_ending_at.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.i
  %.027.in.i.i.i = phi ptr [ %i.do, %.preheader.i.i ], [ %i.cd, %._crit_edge.i.i ]
  %.027.i.i.i = load ptr, ptr %.027.in.i.i.i, align 8 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 8208
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = icmp ne i64 %i.dk, %i.cb
  %i.dm = icmp ne ptr %.027.i.i.i, %i.bs
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  %i.do = getelementptr inbounds nuw i8, ptr %.027.i.i.i, i64 8216
  br i1 %i.dn, label %.preheader.i.i, label %bb.q, !llvm.loop !127

bb.q:                                             ; preds = %.preheader.i.i
  %i.dp = icmp eq ptr %.027.i.i.i, %i.bs
  br i1 %i.dp, label %.preheader42.i.i.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %bb.q
  %.153.i.i.i.ph = phi i64 [ %i.cl, %bb.q ], [ 1023, %.lr.ph.i.i.i ]
  %.23152.i.i.i.ph = phi ptr [ %.027.i.i.i, %bb.q ], [ %.02947.i.i.i, %.lr.ph.i.i.i ]
  br label %.preheader.i.i.i

.preheader42.i.i.i:                               ; preds = %bb.q
  %.02945.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 112), align 8 ; 2 uses
  %.not46.i.i.i = icmp eq ptr %.02945.i.i.i, null
  br i1 %.not46.i.i.i, label %get_block_ending_at.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader42.i.i.i, %bb.r
  %.02947.i.i.i = phi ptr [ %.029.i.i.i, %bb.r ], [ %.02945.i.i.i, %.preheader42.i.i.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02947.i.i.i, i64 8208
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = icmp ugt i64 %i.dr, %i.cb
  br i1 %i.ds, label %bb.r, label %.preheader.i.i.i.preheader

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.02947.i.i.i, i64 8200
  %.029.i.i.i = load ptr, ptr %i.dt, align 8      ; 2 uses
  %.not.i.i.i = icmp eq ptr %.029.i.i.i, null
  br i1 %.not.i.i.i, label %get_block_ending_at.exit.thread.i, label %.lr.ph.i.i.i, !llvm.loop !128

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.x
  %.153.i.i.i = phi i64 [ 1023, %bb.x ], [ %.153.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %.23152.i.i.i = phi ptr [ %i.ed, %bb.x ], [ %.23152.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.preheader.i.i.i
  %.250.i.i.i = phi i64 [ %.153.i.i.i, %.preheader.i.i.i ], [ %.4.i.i.i, %bb.w ] ; 5 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.23152.i.i.i, i64 %.250.i.i.i
  %i.dv = load ptr, ptr %i.du, align 8            ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dx = add nsw i64 %.250.i.i.i, -1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.dy = icmp ult ptr %i.dv, inttoptr (i64 4096 to ptr)
  br i1 %i.dy, label %bb.v, label %GC_prev_block.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub nsw i64 %.250.i.i.i, %i.dz
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.4.i.i.i = phi i64 [ %i.ea, %bb.v ], [ %i.dx, %bb.t ] ; 2 uses
  %i.eb = icmp sgt i64 %.4.i.i.i, -1
  br i1 %i.eb, label %bb.s, label %bb.x, !llvm.loop !129

bb.x:                                             ; preds = %bb.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.23152.i.i.i, i64 8200
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not38.i.i.i, label %get_block_ending_at.exit.thread.i, label %.preheader.i.i.i, !llvm.loop !130

GC_prev_block.exit.i.i:                           ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %.23152.i.i.i, i64 8208
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = shl i64 %i.ef, 22
  %i.eh = shl i64 %.250.i.i.i, 12
  %i.ei = add i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = inttoptr i64 %i.ei to ptr               ; 2 uses
  %.not.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i, label %get_block_ending_at.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %GC_prev_block.exit.i.i
  %i.ek = lshr i64 %i.ei, 22                      ; 2 uses
  %i.el = and i64 %i.ek, 2047
  %i.em = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.el
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.0.in.i30.i.i = phi ptr [ %i.em, %bb.y ], [ %i.es, %bb.z ]
  %.0.i31.i.i = load ptr, ptr %.0.in.i30.i.i, align 8 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i31.i.i, i64 8208
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = icmp ne i64 %i.eo, %i.ek
  %i.eq = icmp ne ptr %.0.i31.i.i, %i.bs
  %i.er = select i1 %i.ep, i1 %i.eq, i1 false
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i31.i.i, i64 8216
  br i1 %i.er, label %bb.z, label %GC_find_header.exit32.i.i, !llvm.loop !2

GC_find_header.exit32.i.i:                        ; preds = %bb.z
  %i.et = and i64 %.250.i.i.i, 1023
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.0.i31.i.i, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ex
  %i.ez = icmp eq ptr %i.ey, %0
  br i1 %i.ez, label %get_block_ending_at.exit.i, label %get_block_ending_at.exit.thread.i

get_block_ending_at.exit.i:                       ; preds = %GC_find_header.exit32.i.i, %._crit_edge.i.i
  %.027.i.i = phi ptr [ %i.ej, %GC_find_header.exit32.i.i ], [ %.026.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.not.i = icmp eq ptr %.027.i.i, null
  br i1 %.not.i, label %get_block_ending_at.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %get_block_ending_at.exit.i
  %i.fa = ptrtoint ptr %.027.i.i to i64           ; 2 uses
  %i.fb = lshr i64 %i.fa, 22                      ; 2 uses
  %i.fc = and i64 %i.fb, 2047
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.fc
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.0.in.i9.i = phi ptr [ %i.fd, %bb.aa ], [ %i.fj, %bb.ab ]
  %.0.i10.i = load ptr, ptr %.0.in.i9.i, align 8  ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8208
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = icmp ne i64 %i.ff, %i.fb
  %i.fh = icmp ne ptr %.0.i10.i, %i.bs
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 8216
  br i1 %i.fi, label %bb.ab, label %GC_find_header.exit.i67, !llvm.loop !2

GC_find_header.exit.i67:                          ; preds = %bb.ab
  %i.fk = lshr i64 %i.fa, 12
  %i.fl = and i64 %i.fk, 1023
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.0.i10.i, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 25
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = and i8 %i.fp, 4
  %.not8.i = icmp eq i8 %i.fq, 0
  br i1 %.not8.i, label %get_block_ending_at.exit.thread.i, label %GC_free_block_ending_at.exit

get_block_ending_at.exit.thread.i:                ; preds = %bb.r, %bb.x, %GC_find_header.exit.i67, %get_block_ending_at.exit.i, %GC_find_header.exit32.i.i, %GC_prev_block.exit.i.i, %.preheader42.i.i.i
  br label %GC_free_block_ending_at.exit

GC_free_block_ending_at.exit:                     ; preds = %GC_find_header.exit.i67, %get_block_ending_at.exit.thread.i
  %.1.i = phi ptr [ null, %get_block_ending_at.exit.thread.i ], [ %.027.i.i, %GC_find_header.exit.i67 ] ; 3 uses
  %.not61 = icmp eq ptr %4, null
  br i1 %.not61, label %bb.aq, label %bb.ac

end_hunk_0
begin_hunk_1_@GC_finish_collection:bb.a
  %i.zq = icmp eq i32 %i.zp, -1
  br i1 %i.zq, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.zr = tail call ptr @__errno_location() #51
  %i.zs = load i32, ptr %i.zr, align 4
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.180, ptr noundef nonnull %i.zf, i64 noundef %i.zm, i32 noundef %i.zs)
  %i.zt = load ptr, ptr @GC_on_abort, align 8
  call void %i.zt(ptr noundef nonnull @.str.181) #45, !inline_history !273
  call void @abort() #48
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.zu = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %i.zv = add i64 %i.zu, %i.zm
  store i64 %i.zv, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 184), align 8
  %.pre19.i = load i8, ptr %i.yl, align 1
  br label %GC_unmap.exit.i

GC_unmap.exit.i:                                  ; preds = %bb.dw, %bb.dt
  %i.zw = phi i8 [ %i.ym, %bb.dt ], [ %.pre19.i, %bb.dw ]
  %i.zx = or i8 %i.zw, 2
  store i8 %i.zx, ptr %i.yl, align 1
  %.pre.i59 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.dx

bb.dx:                                            ; preds = %GC_unmap.exit.i, %bb.ds, %GC_find_header.exit.i53
  %i.zy = phi ptr [ %i.xw, %bb.ds ], [ %.pre.i59, %GC_unmap.exit.i ], [ %i.xw, %GC_find_header.exit.i53 ]
  %.0.i54 = load ptr, ptr %i.yk, align 8          ; 2 uses
  %.not.i55 = icmp eq ptr %.0.i54, null
  br i1 %.not.i55, label %._crit_edge.i56, label %.lr.ph.i50, !llvm.loop !274

._crit_edge.i56:                                  ; preds = %bb.dx, %.preheader.i49
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i, 61
  br i1 %exitcond.not.i57, label %GC_unmap_old.exit, label %.preheader.i49, !llvm.loop !275

GC_unmap_old.exit:                                ; preds = %._crit_edge.i56, %bb.dq
  %i.zz = load ptr, ptr @GC_on_collection_event, align 8 ; 2 uses
  %.not32 = icmp eq ptr %i.zz, null
  br i1 %.not32, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %GC_unmap_old.exit
  call void %i.zz(i32 noundef 4) #45
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %GC_unmap_old.exit
  %i.aaa = load i32, ptr @GC_print_stats, align 4
  %.not33 = icmp eq i32 %i.aaa, 0
  br i1 %.not33, label %bb.ed, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  %i.aab = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #45
  %i.aac = icmp eq i32 %i.aab, -1
  br i1 %i.aac, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.aad = load ptr, ptr @GC_on_abort, align 8
  call void %i.aad(ptr noundef nonnull @.str.93) #45
  call void @abort() #48
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.aae = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 280), align 8
  %i.aaf = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 320), align 8
  %i.aag = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 296), align 8
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.182, i64 noundef %i.aae, i64 noundef %i.aaf, i64 noundef %i.aag)
  %.034.i60 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 344), align 8 ; 2 uses
  %.not5.i = icmp eq ptr %.034.i60, null
  br i1 %.not5.i, label %GC_print_finalization_stats.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.ec, %.lr.ph.i61
  %.037.i = phi ptr [ %.03.i, %.lr.ph.i61 ], [ %.034.i60, %bb.ec ]
  %.06.i = phi i64 [ %i.aah, %.lr.ph.i61 ], [ 0, %bb.ec ]
  %i.aah = add i64 %.06.i, 1                      ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %.03.i = load ptr, ptr %i.aai, align 8          ; 2 uses
  %.not.i62 = icmp eq ptr %.03.i, null
  br i1 %.not.i62, label %GC_print_finalization_stats.exit, label %.lr.ph.i61, !llvm.loop !276

GC_print_finalization_stats.exit:                 ; preds = %.lr.ph.i61, %bb.ec
  %.0.lcssa.i = phi i64 [ 0, %bb.ec ], [ %i.aah, %.lr.ph.i61 ]
  %i.aaj = load i64, ptr @GC_old_dl_entries, align 8
  %i.aak = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 320), align 8
  %i.aal = sub nsw i64 %i.aaj, %i.aak
  %i.aam = load i64, ptr @GC_old_ll_entries, align 8
  %i.aan = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 296), align 8
  %i.aao = sub i64 %i.aam, %i.aan
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.183, i64 noundef %.0.lcssa.i, i64 noundef %i.aal, i64 noundef %i.aao)
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8          ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aas = load i64, ptr %i.aar, align 8
  %reass.sub = sub i64 %i.aaq, %i.aas
  %i.aat = add i64 %reass.sub, 1000000000         ; 2 uses
  %i.aau = udiv i64 %i.aat, 1000000
  %i.aav = load i64, ptr %1, align 8              ; 2 uses
  %i.aaw = load i64, ptr %0, align 8
  %i.aax = sub nsw i64 %i.aav, %i.aaw
  %i.aay = mul i64 %i.aax, 1000
  %i.aaz = add nsw i64 %i.aau, -1000
  %i.aba = add i64 %i.aaz, %i.aay
  %i.abb = urem i64 %i.aat, 1000000
  %i.abc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abd = load i64, ptr %i.abc, align 8
  %reass.sub34 = sub i64 %i.abd, %i.aaq
  %i.abe = add i64 %reass.sub34, 1000000000       ; 2 uses
  %i.abf = udiv i64 %i.abe, 1000000
  %i.abg = load i64, ptr %2, align 8
  %i.abh = sub nsw i64 %i.abg, %i.aav
  %i.abi = mul i64 %i.abh, 1000
  %i.abj = add i64 %i.abi, -1000
  %i.abk = add i64 %i.abj, %i.abf
  %i.abl = urem i64 %i.abe, 1000000
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.178, i64 noundef %i.aba, i64 noundef %i.abb, i64 noundef %i.abk, i64 noundef %i.abl)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  br label %bb.ed

bb.ed:                                            ; preds = %GC_print_finalization_stats.exit, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_mark_from(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca [8 x %struct.hce], align 16         ; 6 uses
  %i.a = load ptr, ptr @GC_greatest_plausible_heap_addr, align 8
  %i.b = load ptr, ptr @GC_least_plausible_heap_addr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 240), align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 128, i1 false)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %bb.a
  %i.g = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.h = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 -16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph276, %.backedge
  %.0145274 = phi ptr [ %0, %.lr.ph276 ], [ %.0145.be, %.backedge ] ; 4 uses
  %.0168273 = phi i64 [ 4096, %.lr.ph276 ], [ %.0168.be, %.backedge ] ; 6 uses
  %i.j = load ptr, ptr %.0145274, align 8         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0145274, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = load i32, ptr @GC_parallel, align 4
  %i.n = icmp ne i32 %i.m, 0
  %i.o = and i64 %i.l, -1021
  %.not370 = icmp eq i64 %i.o, 0
  br i1 %.not370, label %._crit_edge376, label %.lr.ph375

.lr.ph375:                                        ; preds = %bb.b, %.loopexit
  %.1146373 = phi ptr [ %.7, %.loopexit ], [ %.0145274, %bb.b ] ; 12 uses
  %.0150372 = phi i64 [ %.4154, %.loopexit ], [ %i.l, %bb.b ] ; 11 uses
  %.0163371 = phi ptr [ %.2165, %.loopexit ], [ %i.j, %bb.b ] ; 9 uses
  %i.p = and i64 %.0150372, 3
  switch i64 %i.p, label %default.unreachable318 [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.ae
    i64 3, label %bb.af
  ]

bb.c:                                             ; preds = %.lr.ph375
  %i.q = icmp ugt i64 %.0150372, 2048
  %or.cond = select i1 %i.q, i1 %i.n, i1 false
  %i.r = icmp ult ptr %.1146373, %i.i
  %or.cond192 = select i1 %or.cond, i1 %i.r, i1 false
  br i1 %or.cond192, label %bb.d, label %.thread226

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i64 %.0150372, 1
  %i.t = and i64 %i.s, 9223372036854775800        ; 3 uses
  store ptr %.0163371, ptr %.1146373, align 8
  %i.u = add nuw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %.1146373, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.1146373, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0163371, i64 %i.t
  %i.y = sub i64 %.0150372, %i.t
  br label %.loopexit

.thread226:                                       ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.0163371, i64 1016 ; 2 uses
  store ptr %i.z, ptr %.1146373, align 8
  %i.aa = add i64 %.0150372, -1016
  %i.ab = getelementptr inbounds nuw i8, ptr %.1146373, i64 8
  store i64 %i.aa, ptr %i.ab, align 8
  br label %bb.am

bb.e:                                             ; preds = %.lr.ph375
  %i.ac = getelementptr inbounds i8, ptr %.1146373, i64 -16 ; 2 uses
  %i.ad = and i64 %.0150372, -4                   ; 2 uses
  %.not185263 = icmp eq i64 %i.ad, 0
  br i1 %.not185263, label %..loopexit_crit_edge.a, label %.lr.ph, !llvm.loop !277

.lr.ph:                                           ; preds = %bb.e
  br label %bb.f, !llvm.loop !277

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %.2147266 = phi ptr [ %i.ac, %.lr.ph ], [ %.4149, %.critedge ] ; 11 uses
  %.1151265 = phi i64 [ %i.ad, %.lr.ph ], [ %i.cg, %.critedge ] ; 2 uses
  %.1164264 = phi ptr [ %.0163371, %.lr.ph ], [ %i.ch, %.critedge ] ; 2 uses
  %i.ae = icmp sgt i64 %.1151265, 0
  br i1 %i.ae, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %.1164264, align 8        ; 11 uses
  %.not186 = icmp uge i64 %i.af, %i.g
  %i.ag = icmp ult i64 %i.af, %i.h
  %or.cond194 = select i1 %.not186, i1 %i.ag, i1 false
  br i1 %or.cond194, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ah = inttoptr i64 %i.af to ptr               ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 0, i32 1)
  %i.ai = lshr i64 %i.af, 12                      ; 2 uses
  %i.aj = and i64 %i.ai, 7
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.aj ; 3 uses
  %i.al = load i64, ptr %i.ak, align 16
  %i.am = icmp eq i64 %i.al, %i.ai
  br i1 %i.am, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ap = call fastcc ptr @GC_header_cache_miss(ptr noundef %i.ah, ptr noundef %i.ak) ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1142 = phi ptr [ %i.ao, %bb.i ], [ %i.ap, %bb.j ] ; 6 uses
  %i.ar = and i64 %i.af, 4095                     ; 3 uses
  %i.as = lshr i64 %i.ar, 4                       ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1142, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.as
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i64                   ; 3 uses
  %i.ay = and i64 %i.af, 15                       ; 2 uses
  %i.az = or i64 %i.ay, %i.ax
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %bb.w, label %bb.l, !prof !47

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.1142, i64 25
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 32
  %.not55.i = icmp eq i8 %i.bc, 0
  br i1 %.not55.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.1142, i64 16
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.af, %i.bf
  %i.bh = icmp eq i64 %i.bg, %i.ar
  br i1 %i.bh, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %i.ar
  %i.bj = load i8, ptr %i.bi, align 1
  %.not59.i = icmp eq i8 %i.bj, 0
  br i1 %.not59.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.bk = load i32, ptr @GC_all_interior_pointers, align 4
  %.not60.i = icmp eq i32 %i.bk, 0
  br i1 %.not60.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.af)
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.af)
  br label %.critedge

bb.r:                                             ; preds = %bb.l
  %i.bl = shl nuw nsw i64 %i.ax, 4
  %i.bm = or disjoint i64 %i.bl, %i.ay            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %.not57.i = icmp eq i8 %i.bo, 0
  br i1 %.not57.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bp = load i32, ptr @GC_all_interior_pointers, align 4
  %.not58.i = icmp eq i32 %i.bp, 0
  br i1 %.not58.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.af)
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.af)
  br label %.critedge

bb.v:                                             ; preds = %bb.r
  %i.bq = sub nsw i64 %i.as, %i.ax
  %i.br = sub nsw i64 0, %i.bm
  %i.bs = getelementptr inbounds i8, ptr %i.ah, i64 %i.br
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.n, %bb.m, %bb.k
  %.2.i = phi i64 [ %i.as, %bb.k ], [ %i.bq, %bb.v ], [ 0, %bb.m ], [ 0, %bb.n ]
  %.1.i = phi ptr [ %i.ah, %bb.k ], [ %i.bs, %bb.v ], [ %i.be, %bb.m ], [ %i.be, %bb.n ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.1142, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.2.i ; 2 uses
  %i.bv = load atomic volatile i8, ptr %i.bu monotonic, align 1
  %.not61.i = icmp eq i8 %i.bv, 0
  br i1 %.not61.i, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  store atomic volatile i8 1, ptr %i.bu monotonic, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.1142, i64 56 ; 2 uses
  %i.bx = load atomic volatile i64, ptr %i.bw monotonic, align 8
  %i.by = add i64 %i.bx, 1
  store atomic volatile i64 %i.by, ptr %i.bw monotonic, align 8
  %i.bz = getelementptr i8, ptr %.1142, i64 40
  %.val.i = load i64, ptr %i.bz, align 8          ; 2 uses
  %.not.i.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i.i, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %.2147266, i64 16 ; 2 uses
  %.not11.i.i = icmp ult ptr %i.ca, %2
  br i1 %.not11.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.cb = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cc = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not1.i.i.i, label %GC_signal_mark_stack_overflow.exit.i.i, label %bb.ac, !prof !47

bb.ac:                                            ; preds = %bb.ab
  %i.cd = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.cd)
  br label %GC_signal_mark_stack_overflow.exit.i.i

GC_signal_mark_stack_overflow.exit.i.i:           ; preds = %bb.ac, %bb.ab
  %i.ce = getelementptr inbounds i8, ptr %.2147266, i64 -8176
  br label %bb.ad

bb.ad:                                            ; preds = %GC_signal_mark_stack_overflow.exit.i.i, %bb.y
  %.0.i.i = phi ptr [ %i.ce, %GC_signal_mark_stack_overflow.exit.i.i ], [ %i.ca, %bb.y ] ; 3 uses
  store ptr %.1.i, ptr %.0.i.i, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i64 %.val.i, ptr %i.cf, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.ad, %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p, %bb.j, %bb.g, %bb.f
  %.4149 = phi ptr [ %.2147266, %bb.f ], [ %.2147266, %bb.g ], [ %.2147266, %bb.j ], [ %.2147266, %bb.t ], [ %.2147266, %bb.w ], [ %.2147266, %bb.u ], [ %.2147266, %bb.p ], [ %.2147266, %bb.q ], [ %.0.i.i, %bb.ad ], [ %.2147266, %bb.x ] ; 2 uses
  %i.cg = shl i64 %.1151265, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.1164264, i64 8
  %.not185 = icmp eq i64 %i.cg, 0
  br i1 %.not185, label %..loopexit_crit_edge, label %bb.f, !llvm.loop !278

bb.ae:                                            ; preds = %.lr.ph375
  %i.ci = getelementptr inbounds i8, ptr %.1146373, i64 -16
  %i.cj = add nsw i64 %.0168273, -100
  %i.ck = lshr i64 %.0150372, 2
  %i.cl = and i64 %i.ck, 63
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448), i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = lshr i64 %.0150372, 8
  %i.cp = tail call ptr %i.cn(ptr noundef %.0163371, ptr noundef nonnull %i.ci, ptr noundef %2, i64 noundef %i.co) #45
  br label %.backedge, !llvm.loop !277

bb.af:                                            ; preds = %.lr.ph375
  %i.cq = icmp sgt i64 %.0150372, -1
  br i1 %i.cq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %.0163371, i64 %.0150372
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -3
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.ct = load ptr, ptr %.0163371, align 8        ; 2 uses
  %.not184 = icmp eq ptr %i.ct, null
  br i1 %.not184, label %.thread, label %bb.ai, !prof !48

.thread:                                          ; preds = %bb.ah
  %i.cu = getelementptr inbounds i8, ptr %.1146373, i64 -16
  br label %.backedge

bb.ai:                                            ; preds = %bb.ah
  %i.cv = sub nsw i64 -13, %.0150372
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 %i.cv
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.3153.in = phi ptr [ %i.cs, %bb.ag ], [ %i.cw, %bb.ai ]
  %.3153 = load i64, ptr %.3153.in, align 8       ; 2 uses
  %i.cx = icmp eq i64 %.3153, 0
  br i1 %i.cx, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.cy = getelementptr inbounds i8, ptr %.1146373, i64 -16
  br label %.backedge, !llvm.loop !277

default.unreachable318:                           ; preds = %.lr.ph375
  unreachable

..loopexit_crit_edge:                             ; preds = %.critedge
  br label %..loopexit_crit_edge.a, !llvm.loop !277

..loopexit_crit_edge.a:                           ; preds = %..loopexit_crit_edge, %bb.e
  %.2147.lcssa = phi ptr [ %.4149, %..loopexit_crit_edge ], [ %i.ac, %bb.e ]
  %4 = add i64 %.0168273, -256
  br label %.backedge

.loopexit:                                        ; preds = %bb.aj, %bb.d
  %.2165 = phi ptr [ %.0163371, %bb.aj ], [ %i.x, %bb.d ] ; 2 uses
  %.4154 = phi i64 [ %.3153, %bb.aj ], [ %i.y, %bb.d ] ; 3 uses
  %.7 = phi ptr [ %.1146373, %bb.aj ], [ %i.w, %bb.d ] ; 2 uses
  %i.cz = and i64 %.4154, -1021
  %.not = icmp eq i64 %i.cz, 0
  br i1 %.not, label %._crit_edge376, label %.lr.ph375

._crit_edge376:                                   ; preds = %.loopexit, %bb.b
  %.0163.lcssa = phi ptr [ %i.j, %bb.b ], [ %.2165, %.loopexit ] ; 2 uses
  %.0150.lcssa = phi i64 [ %i.l, %bb.b ], [ %.4154, %.loopexit ] ; 2 uses
  %.1146.lcssa = phi ptr [ %.0145274, %bb.b ], [ %.7, %.loopexit ]
  %i.da = getelementptr inbounds i8, ptr %.1146.lcssa, i64 -16 ; 2 uses
  %i.db = icmp samesign ult i64 %.0150.lcssa, 8
  br i1 %i.db, label %.backedge, label %bb.al

bb.al:                                            ; preds = %._crit_edge376
  %i.dc = getelementptr inbounds nuw i8, ptr %.0163.lcssa, i64 %.0150.lcssa
  br label %bb.am

bb.am:                                            ; preds = %.thread226, %bb.al
  %.0163369 = phi ptr [ %.0163371, %.thread226 ], [ %.0163.lcssa, %bb.al ] ; 5 uses
  %.4159 = phi ptr [ %i.z, %.thread226 ], [ %i.dc, %bb.al ] ; 2 uses
  %.8 = phi ptr [ %.1146373, %.thread226 ], [ %i.da, %bb.al ] ; 4 uses
  %i.dd = ptrtoint ptr %.4159 to i64
  %i.de = ptrtoint ptr %.0163369 to i64
  %.neg = add i64 %.0168273, %i.de
  %i.df = sub i64 %.neg, %i.dd                    ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %.4159, i64 -8
  br label %bb.an

bb.an:                                            ; preds = %bb.aq, %bb.am
  %.5160 = phi ptr [ %i.dg, %bb.am ], [ %i.dn, %bb.aq ] ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.5160, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.dh, i32 0, i32 0, i32 1)
  %i.di = load i64, ptr %.5160, align 8           ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.5160, i64 -8 ; 3 uses
  %.not187 = icmp uge i64 %i.di, %i.g
  %i.dk = icmp ult i64 %i.di, %i.h
  %or.cond196 = select i1 %.not187, i1 %i.dk, i1 false
  br i1 %or.cond196, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = icmp ugt ptr %.0163369, %i.dj
  br i1 %i.dl, label %.backedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load i64, ptr %i.dj, align 8            ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %.5160, i64 -16 ; 3 uses
  %.not188 = icmp uge i64 %i.dm, %i.g
  %i.do = icmp ult i64 %i.dm, %i.h
  %or.cond198 = select i1 %.not188, i1 %i.do, i1 false
  br i1 %or.cond198, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = icmp ugt ptr %.0163369, %i.dn
  br i1 %i.dp, label %.backedge, label %bb.an

bb.ar:                                            ; preds = %bb.ap, %bb.an
  %.lcssa344.sink = phi i64 [ %i.di, %bb.an ], [ %i.dm, %bb.ap ] ; 3 uses
  %.6161 = phi ptr [ %i.dj, %bb.an ], [ %i.dn, %bb.ap ] ; 2 uses
  %i.dq = inttoptr i64 %.lcssa344.sink to ptr
  tail call void @llvm.prefetch.p0(ptr %i.dq, i32 0, i32 0, i32 1)
  %.not189268 = icmp ugt ptr %.0163369, %.6161
  br i1 %.not189268, label %._crit_edge, label %.lr.ph271

.lr.ph271:                                        ; preds = %bb.ar, %.critedge202
  %.9270 = phi ptr [ %.11, %.critedge202 ], [ %.8, %bb.ar ] ; 10 uses
  %.4167269 = phi ptr [ %i.ft, %.critedge202 ], [ %.0163369, %bb.ar ] ; 3 uses
  %i.dr = load i64, ptr %.4167269, align 8        ; 11 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.4167269, i64 256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ds, i32 0, i32 0, i32 1)
  %.not190 = icmp uge i64 %i.dr, %i.g
  %i.dt = icmp ult i64 %i.dr, %i.h
  %or.cond200 = select i1 %.not190, i1 %i.dt, i1 false
  br i1 %or.cond200, label %bb.as, label %.critedge202

bb.as:                                            ; preds = %.lr.ph271
  %i.du = inttoptr i64 %i.dr to ptr               ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 0, i32 1)
  %i.dv = lshr i64 %i.dr, 12                      ; 2 uses
  %i.dw = and i64 %i.dv, 7
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.dw ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 16
  %i.dz = icmp eq i64 %i.dy, %i.dv
  br i1 %i.dz, label %bb.at, label %bb.au, !prof !47

bb.at:                                            ; preds = %bb.as
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ec = call fastcc ptr @GC_header_cache_miss(ptr noundef %i.du, ptr noundef %i.dx) ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.critedge202, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1139 = phi ptr [ %i.eb, %bb.at ], [ %i.ec, %bb.au ] ; 6 uses
  %i.ee = and i64 %i.dr, 4095                     ; 3 uses
  %i.ef = lshr i64 %i.ee, 4                       ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1139, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eh, i64 %i.ef
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = zext i16 %i.ej to i64                   ; 3 uses
  %i.el = and i64 %i.dr, 15                       ; 2 uses
  %i.em = or i64 %i.el, %i.ek
  %.not.i205 = icmp eq i64 %i.em, 0
  br i1 %.not.i205, label %bb.bh, label %bb.aw, !prof !47

bb.aw:                                            ; preds = %bb.av
  %i.en = getelementptr inbounds nuw i8, ptr %.1139, i64 25
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = and i8 %i.eo, 32
  %.not55.i206 = icmp eq i8 %i.ep, 0
  br i1 %.not55.i206, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eq = getelementptr inbounds nuw i8, ptr %.1139, i64 16
  %i.er = load ptr, ptr %i.eq, align 8            ; 3 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.dr, %i.es
  %i.eu = icmp eq i64 %i.et, %i.ee
  br i1 %i.eu, label %bb.ay, label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %i.ee
  %i.ew = load i8, ptr %i.ev, align 1
  %.not59.i218 = icmp eq i8 %i.ew, 0
  br i1 %.not59.i218, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.ex = load i32, ptr @GC_all_interior_pointers, align 4
  %.not60.i219 = icmp eq i32 %i.ex, 0
  br i1 %.not60.i219, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.dr)
  br label %.critedge202

bb.bb:                                            ; preds = %bb.az
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.dr)
  br label %.critedge202

bb.bc:                                            ; preds = %bb.aw
  %i.ey = shl nuw nsw i64 %i.ek, 4
  %i.ez = or disjoint i64 %i.ey, %i.el            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 23032), i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %.not57.i220 = icmp eq i8 %i.fb, 0
  br i1 %.not57.i220, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.fc = load i32, ptr @GC_all_interior_pointers, align 4
  %.not58.i221 = icmp eq i32 %i.fc, 0
  br i1 %.not58.i221, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.dr)
  br label %.critedge202

bb.bf:                                            ; preds = %bb.bd
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.dr)
  br label %.critedge202

bb.bg:                                            ; preds = %bb.bc
  %i.fd = sub nsw i64 %i.ef, %i.ek
  %i.fe = sub nsw i64 0, %i.ez
  %i.ff = getelementptr inbounds i8, ptr %i.du, i64 %i.fe
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ay, %bb.ax, %bb.av
  %.2.i207 = phi i64 [ %i.ef, %bb.av ], [ %i.fd, %bb.bg ], [ 0, %bb.ax ], [ 0, %bb.ay ]
  %.1.i208 = phi ptr [ %i.du, %bb.av ], [ %i.ff, %bb.bg ], [ %i.er, %bb.ax ], [ %i.er, %bb.ay ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.1139, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.2.i207 ; 2 uses
  %i.fi = load atomic volatile i8, ptr %i.fh monotonic, align 1
  %.not61.i209 = icmp eq i8 %i.fi, 0
  br i1 %.not61.i209, label %bb.bi, label %.critedge202

bb.bi:                                            ; preds = %bb.bh
  store atomic volatile i8 1, ptr %i.fh monotonic, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.1139, i64 56 ; 2 uses
  %i.fk = load atomic volatile i64, ptr %i.fj monotonic, align 8
  %i.fl = add i64 %i.fk, 1
  store atomic volatile i64 %i.fl, ptr %i.fj monotonic, align 8
  %i.fm = getelementptr i8, ptr %.1139, i64 40
  %.val.i211 = load i64, ptr %i.fm, align 8       ; 2 uses
  %.not.i.i212 = icmp eq i64 %.val.i211, 0
  br i1 %.not.i.i212, label %.critedge202, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fn = getelementptr inbounds nuw i8, ptr %.9270, i64 16 ; 2 uses
  %.not11.i.i213 = icmp ult ptr %i.fn, %2
  br i1 %.not11.i.i213, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 232), align 8
  %i.fo = load i32, ptr @GC_parallel, align 4
  %.not.i.i.i214 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i214, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 236), align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fp = load i32, ptr @GC_print_stats, align 4
  %.not1.i.i.i215 = icmp eq i32 %i.fp, 0
  br i1 %.not1.i.i.i215, label %GC_signal_mark_stack_overflow.exit.i.i216, label %bb.bn, !prof !47

bb.bn:                                            ; preds = %bb.bm
  %i.fq = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.141, i64 noundef %i.fq)
  br label %GC_signal_mark_stack_overflow.exit.i.i216

GC_signal_mark_stack_overflow.exit.i.i216:        ; preds = %bb.bn, %bb.bm
  %i.fr = getelementptr inbounds i8, ptr %.9270, i64 -8176
  br label %bb.bo

bb.bo:                                            ; preds = %GC_signal_mark_stack_overflow.exit.i.i216, %bb.bj
  %.0.i.i217 = phi ptr [ %i.fr, %GC_signal_mark_stack_overflow.exit.i.i216 ], [ %i.fn, %bb.bj ] ; 3 uses
  store ptr %.1.i208, ptr %.0.i.i217, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i217, i64 8
  store i64 %.val.i211, ptr %i.fs, align 8
  br label %.critedge202

.critedge202:                                     ; preds = %bb.bo, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bb, %bb.ba, %bb.au, %.lr.ph271
  %.11 = phi ptr [ %.9270, %.lr.ph271 ], [ %.9270, %bb.au ], [ %.9270, %bb.be ], [ %.9270, %bb.bh ], [ %.9270, %bb.bf ], [ %.9270, %bb.ba ], [ %.9270, %bb.bb ], [ %.0.i.i217, %bb.bo ], [ %.9270, %bb.bi ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.4167269, i64 8 ; 2 uses
  %.not189 = icmp ugt ptr %i.ft, %.6161
  br i1 %.not189, label %._crit_edge, label %.lr.ph271, !llvm.loop !279

._crit_edge:                                      ; preds = %.critedge202, %bb.ar
  %.9.lcssa = phi ptr [ %.8, %bb.ar ], [ %.11, %.critedge202 ] ; 2 uses
  %i.fu = inttoptr i64 %.lcssa344.sink to ptr     ; 2 uses
  %i.fv = lshr i64 %.lcssa344.sink, 12            ; 2 uses
  %i.fw = and i64 %i.fv, 7
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fw ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 16
  %i.fz = icmp eq i64 %i.fy, %i.fv
  br i1 %i.fz, label %bb.bp, label %bb.bq, !prof !47

bb.bp:                                            ; preds = %._crit_edge
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  br label %bb.br

bb.bq:                                            ; preds = %._crit_edge
  %i.gc = call fastcc ptr @GC_header_cache_miss(ptr noundef %i.fu, ptr noundef %i.fx) ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.backedge, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1 = phi ptr [ %i.gb, %bb.bp ], [ %i.gc, %bb.bq ]
  %i.ge = tail call fastcc ptr @GC_push_contents_hdr(ptr noundef %i.fu, ptr noundef %.9.lcssa, ptr noundef %2, ptr noundef %.1, i32 noundef 1)
  br label %.backedge

.backedge:                                        ; preds = %bb.ao, %bb.aq, %..loopexit_crit_edge.a, %bb.ak, %bb.ae, %.thread, %bb.bq, %bb.br, %._crit_edge376
  %.0168.be = phi i64 [ %i.cj, %bb.ae ], [ %.0168273, %._crit_edge376 ], [ %i.df, %bb.br ], [ %i.df, %bb.bq ], [ %.0168273, %.thread ], [ %4, %..loopexit_crit_edge.a ], [ %.0168273, %bb.ak ], [ %i.df, %bb.aq ], [ %i.df, %bb.ao ] ; 2 uses
  %.0145.be = phi ptr [ %i.cp, %bb.ae ], [ %i.da, %._crit_edge376 ], [ %i.ge, %bb.br ], [ %.9.lcssa, %bb.bq ], [ %i.cu, %.thread ], [ %.2147.lcssa, %..loopexit_crit_edge.a ], [ %i.cy, %bb.ak ], [ %.8, %bb.aq ], [ %.8, %bb.ao ] ; 3 uses
  %i.gf = ptrtoint ptr %.0145.be to i64
  %i.gg = sub i64 %i.gf, %i.c
  %i.gh = or i64 %i.gg, %.0168.be
  %i.gi = icmp sgt i64 %i.gh, -1
  br i1 %i.gi, label %bb.b, label %._crit_edge277, !llvm.loop !277

._crit_edge277:                                   ; preds = %.backedge, %bb.a
  %.0145.lcssa = phi ptr [ %0, %bb.a ], [ %.0145.be, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  ret ptr %.0145.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_push_roots(i32 noundef range(i32 0, 2) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader34

.lr.ph:                                           ; preds = %bb.a
  %.not.i21.i = icmp eq i32 %0, 0
  br i1 %.not.i21.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %GC_push_conditional_with_exclusions.exit.us
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %GC_push_conditional_with_exclusions.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %indvars.iv56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.split.us.i.us, label %GC_push_conditional_with_exclusions.exit.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us, %GC_push_conditional_static.exit.us.i.us
  %.01531.us.i.us = phi ptr [ %i.al, %GC_push_conditional_static.exit.us.i.us ], [ %i.d, %.lr.ph.split.us ] ; 7 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %.not17.i.us.i.us = icmp eq i64 %i.i, 0
  br i1 %.not17.i.us.i.us, label %GC_next_exclusion.exit.us.i.us, label %.lr.ph.i.us.i.us

.lr.ph.i.us.i.us:                                 ; preds = %.lr.ph.split.us.i.us, %.lr.ph.i.us.i.us
  %.016.i.us.i.us = phi i64 [ %.1.i.us.i.us, %.lr.ph.i.us.i.us ], [ %i.i, %.lr.ph.split.us.i.us ] ; 2 uses
  %.01115.i.us.i.us = phi i64 [ %.112.i.us.i.us, %.lr.ph.i.us.i.us ], [ 0, %.lr.ph.split.us.i.us ] ; 2 uses
  %i.j = add i64 %.01115.i.us.i.us, %.016.i.us.i.us
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %.not14.i.us.i.us = icmp ugt ptr %i.n, %.01531.us.i.us ; 2 uses
  %i.o = add nuw i64 %i.k, 1
  %.112.i.us.i.us = select i1 %.not14.i.us.i.us, i64 %.01115.i.us.i.us, i64 %i.o ; 3 uses
  %.1.i.us.i.us = select i1 %.not14.i.us.i.us, i64 %i.k, i64 %.016.i.us.i.us ; 2 uses
  %i.p = icmp ugt i64 %.1.i.us.i.us, %.112.i.us.i.us
  br i1 %i.p, label %.lr.ph.i.us.i.us, label %GC_next_exclusion.exit.us.i.us, !llvm.loop !24

GC_next_exclusion.exit.us.i.us:                   ; preds = %.lr.ph.i.us.i.us, %.lr.ph.split.us.i.us
  %.011.lcssa.i.us.i.us = phi i64 [ 0, %.lr.ph.split.us.i.us ], [ %.112.i.us.i.us, %.lr.ph.i.us.i.us ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 158208), i64 %.011.lcssa.i.us.i.us ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i.not.us.i.us = icmp ugt ptr %i.s, %.01531.us.i.us
  br i1 %.not.i.not.us.i.us, label %bb.b, label %.split.us.i.loopexit.us

bb.b:                                             ; preds = %GC_next_exclusion.exit.us.i.us
  %i.t = load ptr, ptr %i.q, align 8              ; 4 uses
  %.not.us.i.us = icmp ult ptr %i.t, %i.f
  br i1 %.not.us.i.us, label %bb.c, label %.split.us.i.loopexit.us

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt ptr %i.t, %.01531.us.i.us
  br i1 %i.u, label %bb.d, label %GC_push_conditional_static.exit.us.i.us

bb.d:                                             ; preds = %bb.c
  %.b.i.i24.us.i.us = load i1, ptr @GC_manual_vdb, align 4
  %i.v = load i32, ptr @clear_refs_fd, align 4
  %i.w = icmp eq i32 %i.v, -1
  %narrow.i.not.i25.us.i.us = select i1 %.b.i.i24.us.i.us, i1 true, i1 %i.w
  br i1 %narrow.i.not.i25.us.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @GC_push_selected(ptr noundef %.01531.us.i.us, ptr noundef nonnull %i.t, ptr noundef nonnull @GC_static_page_was_dirty)
  br label %GC_push_conditional_static.exit.us.i.us

bb.f:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %.01531.us.i.us to i64
  %i.y = add i64 %i.x, 7
  %i.z = and i64 %i.y, -8                         ; 3 uses
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %.not.i.i22.us.i.us = icmp ult i64 %i.z, %i.ac
  br i1 %.not.i.i22.us.i.us, label %bb.g, label %GC_push_conditional_static.exit.us.i.us

bb.g:                                             ; preds = %bb.f
  %i.ad = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store volatile ptr %i.ae, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.af = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i23.us.i.us = icmp ult ptr %i.af, %i.ag
  br i1 %.not8.i.i23.us.i.us, label %bb.h, label %.split33.us.i

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nuw i64 %i.ac, %i.z
  %i.ai = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.aa, ptr %i.ai, align 8
  %i.aj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ah, ptr %i.ak, align 8
  br label %GC_push_conditional_static.exit.us.i.us

GC_push_conditional_static.exit.us.i.us:          ; preds = %bb.h, %bb.f, %bb.e, %bb.c
  %i.al = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.f
  br i1 %i.am, label %.lr.ph.split.us.i.us, label %GC_push_conditional_with_exclusions.exit.us

bb.i:                                             ; preds = %.split.us.i.loopexit.us
  tail call fastcc void @GC_push_selected(ptr noundef %.01531.us.i.us, ptr noundef nonnull %i.f, ptr noundef nonnull @GC_static_page_was_dirty)
  br label %GC_push_conditional_with_exclusions.exit.us

bb.j:                                             ; preds = %.split.us.i.loopexit.us
  %i.an = ptrtoint ptr %.01531.us.i.us to i64
  %i.ao = add i64 %i.an, 7
  %i.ap = and i64 %i.ao, -8                       ; 3 uses
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = ptrtoint ptr %i.f to i64
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %.not.i.i.i.us = icmp ult i64 %i.ap, %i.as
  br i1 %.not.i.i.i.us, label %bb.k, label %GC_push_conditional_with_exclusions.exit.us

bb.k:                                             ; preds = %bb.j
  %i.at = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store volatile ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.av = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i.i.i.us = icmp ult ptr %i.av, %i.aw
  br i1 %.not8.i.i.i.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  %i.ax = sub nuw i64 %i.as, %i.ap
  %i.ay = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.aq, ptr %i.ay, align 8
  %i.az = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.ax, ptr %i.ba, align 8
  br label %GC_push_conditional_with_exclusions.exit.us

GC_push_conditional_with_exclusions.exit.us:      ; preds = %GC_push_conditional_static.exit.us.i.us, %bb.l, %bb.j, %bb.i, %.lr.ph.split.us
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 388), align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next57, %i.bc
  br i1 %i.bd, label %.lr.ph.split.us, label %.preheader34, !llvm.loop !280

.split.us.i.loopexit.us:                          ; preds = %bb.b, %GC_next_exclusion.exit.us.i.us
  %.b.i.i.i.us = load i1, ptr @GC_manual_vdb, align 4
  %i.be = load i32, ptr @clear_refs_fd, align 4
  %i.bf = icmp eq i32 %i.be, -1
  %narrow.i.not.i.i.us = select i1 %.b.i.i.i.us, i1 true, i1 %i.bf
  br i1 %narrow.i.not.i.i.us, label %bb.j, label %bb.i

.preheader34:                                     ; preds = %GC_push_conditional_with_exclusions.exit, %GC_push_conditional_with_exclusions.exit.us, %bb.a
  %i.bg = load i32, ptr @GC_n_kinds, align 4      ; 2 uses
  %.not46 = icmp eq i32 %i.bg, 0
  br i1 %.not46, label %._crit_edge.split, label %.lr.ph45

.lr.ph45:                                         ; preds = %.preheader34
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  br i1 %.b.i, label %.lr.ph45.split.preheader, label %._crit_edge.split, !prof !47

.lr.ph45.split.preheader:                         ; preds = %.lr.ph45
  %wide.trip.count = zext i32 %i.bg to i64
  %.pre62 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %.lr.ph45.split

.lr.ph.split:                                     ; preds = %.lr.ph, %GC_push_conditional_with_exclusions.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %GC_push_conditional_with_exclusions.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92672), i64 %indvars.iv ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %.lr.ph.i, label %GC_push_conditional_with_exclusions.exit

.lr.ph.i:                                         ; preds = %.lr.ph.split
  %.pre41.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 392), align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %GC_push_conditional_static.exit.i, %.lr.ph.i
  %i.bm = phi i64 [ %i.df, %GC_push_conditional_static.exit.i ], [ %.pre41.i, %.lr.ph.i ] ; 3 uses
  %.01531.i = phi ptr [ %i.de, %GC_push_conditional_static.exit.i ], [ %i.bi, %.lr.ph.i ] ; 5 uses
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  %.not17.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not17.i.i, label %GC_next_exclusion.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.i, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ %i.bn, %.lr.ph.split.i ] ; 2 uses
  %.01115.i.i = phi i64 [ %.112.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.bo = add i64 %.01115.i.i, %.016.i.i
  %i.bp = lshr i64 %i.bo, 1                       ; 3 uses
end_hunk_1
begin_hunk_2_@GC_start_reclaim:bb.a

bb.m:                                             ; preds = %GC_find_header.exit.i27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8
  %.not53.i = icmp eq i8 %i.by, 0
  br i1 %.not53.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @GC_add_leaked(ptr noundef %i.bm)
  br label %GC_reclaim_block.exit

bb.p:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 25
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = and i8 %i.ca, 8
  %.not55.i = icmp eq i8 %i.cb, 0
  br i1 %.not55.i, label %bb.r, label %bb.q, !prof !47

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef %i.bm) #45, !inline_history !311
  %.not56.i = icmp eq i32 %i.ce, 0
  br i1 %.not56.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cf = add i64 %i.bv, 4095                     ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 8191
  br i1 %i.cg, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.ch = and i64 %i.cf, -4096
  %i.ci = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.cj = sub i64 %i.ci, %i.ch
  store i64 %i.cj, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.ck = load i64, ptr @GC_bytes_found, align 8
  %i.cl = add i64 %i.ck, %i.bv
  store i64 %i.cl, ptr @GC_bytes_found, align 8
  tail call fastcc void @GC_freehblk(ptr noundef %i.bm)
  br label %GC_reclaim_block.exit

bb.t:                                             ; preds = %bb.q
  store i8 1, ptr %i.bx, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.cn = load atomic volatile i64, ptr %i.cm monotonic, align 8
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  %i.cq = add i64 %i.cp, %i.bv
  store i64 %i.cq, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  br label %GC_reclaim_block.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  %i.cs = add i64 %i.cr, %i.bv
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  br label %GC_reclaim_block.exit

bb.x:                                             ; preds = %GC_find_header.exit.i27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 3 uses
  %i.cu = load volatile i64, ptr %i.ct, align 8
  br i1 %.not.i28, label %bb.am, label %.preheader63.i

.preheader63.i:                                   ; preds = %bb.x, %.preheader63.i
  %.0.in.i.i.i29 = phi ptr [ %i.da, %.preheader63.i ], [ %i.be, %bb.x ]
  %.0.i.i.i30 = load ptr, ptr %.0.in.i.i.i29, align 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 8208
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = icmp ne i64 %i.cw, %i.bc
  %i.cy = icmp ne ptr %.0.i.i.i30, %i.bf
  %i.cz = select i1 %i.cx, i1 %i.cy, i1 false
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i30, i64 8216
  br i1 %i.cz, label %.preheader63.i, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %.preheader63.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i30, i64 %i.bn
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = load i64, ptr @GC_gc_no, align 8
  %i.de = trunc i64 %i.dd to i16
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 26
  store i16 %i.de, ptr %i.df, align 2
  %i.dg = sub nuw nsw i64 4096, %i.bv
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dj = lshr i64 %i.bv, 4
  %GC_n_smashed.promoted = load i32, ptr @GC_n_smashed, align 4
  %GC_n_leaked.promoted = load i32, ptr @GC_n_leaked, align 4
  %.b.i = load i1, ptr @GC_findleak_delay_free, align 4
  br label %bb.y

bb.y:                                             ; preds = %GC_add_leaked.exit, %GC_find_header.exit.i.i
  %i.dk = phi i32 [ %GC_n_leaked.promoted, %GC_find_header.exit.i.i ], [ %i.hg, %GC_add_leaked.exit ] ; 8 uses
  %i.dl = phi i32 [ %GC_n_smashed.promoted, %GC_find_header.exit.i.i ], [ %i.hh, %GC_add_leaked.exit ] ; 10 uses
  %.015.i.i.i = phi ptr [ %i.bm, %GC_find_header.exit.i.i ], [ %i.hi, %GC_add_leaked.exit ] ; 9 uses
  %.01114.i.i.i = phi i64 [ 0, %GC_find_header.exit.i.i ], [ %i.hj, %GC_add_leaked.exit ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %.01114.i.i.i
  %i.dn = load i8, ptr %i.dm, align 1
  %.not12.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not12.i.i.i, label %bb.z, label %GC_add_leaked.exit

bb.z:                                             ; preds = %bb.y
  br i1 %.b.i, label %bb.aa, label %GC_check_leaked.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32 ; 3 uses
  %i.dp = icmp eq ptr %.015.i.i.i, null
  br i1 %i.dp, label %GC_check_leaked.exit.thread.i, label %bb.ab, !prof !48

bb.ab:                                            ; preds = %bb.aa
  %i.dq = ptrtoint ptr %.015.i.i.i to i64         ; 4 uses
  %i.dr = lshr i64 %i.dq, 22                      ; 4 uses
  %i.ds = and i64 %i.dr, 2047
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ds ; 3 uses
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.0.in.i.i.i.i.i = phi ptr [ %i.dt, %bb.ab ], [ %i.ea, %bb.ac ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i.i, align 8 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8208
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = icmp ne i64 %i.dw, %i.dr
  %i.dy = icmp ne ptr %.0.i.i.i.i.i, %i.du
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8216
  br i1 %i.dz, label %bb.ac, label %GC_size.exit.i.i.i, !llvm.loop !2

GC_size.exit.i.i.i:                               ; preds = %bb.ac
  %i.eb = lshr i64 %i.dq, 12
  %i.ec = and i64 %i.eb, 1023                     ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load i64, ptr %i.ef, align 8            ; 3 uses
  %i.eh = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.ei = xor i64 %i.eh, %i.dq
  %.not.i.i.i34 = icmp ugt i64 %i.ei, 4095
  %i.ej = icmp ult i64 %i.eg, 40
  %or.cond.i.i.i = select i1 %.not.i.i.i34, i1 true, i1 %i.ej
  br i1 %or.cond.i.i.i, label %GC_check_leaked.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %GC_size.exit.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = xor i64 %i.el, %i.eh
  %.not13.i.i.i = icmp eq i64 %i.em, -81929232789475893
  br i1 %.not13.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = lshr i64 %i.eg, 3
  %i.eo = getelementptr [8 x i8], ptr %.015.i.i.i, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = xor i64 %i.eq, %i.eh
  %.not14.i.i.i = icmp eq i64 %i.er, -4837202520199737873
  br i1 %.not14.i.i.i, label %bb.af, label %GC_check_leaked.exit.thread.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = icmp eq i64 %i.et, %i.eg
  br i1 %i.eu, label %GC_has_other_debug_info.exit.i.i, label %GC_check_leaked.exit.thread.i

GC_has_other_debug_info.exit.i.i:                 ; preds = %bb.af, %GC_has_other_debug_info.exit.i.i
  %.0.in.i.i.i35 = phi ptr [ %i.fa, %GC_has_other_debug_info.exit.i.i ], [ %i.dt, %bb.af ]
  %.0.i12.i.i = load ptr, ptr %.0.in.i.i.i35, align 8 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i12.i.i, i64 8208
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = icmp ne i64 %i.ew, %i.dr
  %i.ey = icmp ne ptr %.0.i12.i.i, %i.du
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i12.i.i, i64 8216
  br i1 %i.ez, label %GC_has_other_debug_info.exit.i.i, label %GC_find_header.exit.i.i36, !llvm.loop !2

GC_find_header.exit.i.i36:                        ; preds = %GC_has_other_debug_info.exit.i.i
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.0.i12.i.i, i64 %i.ec
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = add i64 %i.fe, -32
  %i.fg = lshr i64 %i.ff, 3                       ; 2 uses
  %.not16.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not16.i.i, label %GC_add_leaked.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %GC_find_header.exit.i.i36, %bb.ai
  %.015.i.i = phi i64 [ %i.ge, %bb.ai ], [ 0, %GC_find_header.exit.i.i36 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.015.i.i
  %i.fi = load i64, ptr %i.fh, align 8
  %.not.i.i37 = icmp eq i64 %i.fi, -1171307680339476753
  br i1 %.not.i.i37, label %bb.ai, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.0.in.i.i.i.i = phi ptr [ %i.fo, %.preheader.i.i ], [ %i.dt, %.lr.ph.i.i ]
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8208
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = icmp ne i64 %i.fk, %i.dr
  %i.fm = icmp ne ptr %.0.i.i.i.i, %i.du
  %i.fn = select i1 %i.fl, i1 %i.fm, i1 false
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8216
  br i1 %i.fn, label %.preheader.i.i, label %GC_find_header.exit.i.i.i, !llvm.loop !2

GC_find_header.exit.i.i.i:                        ; preds = %.preheader.i.i
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.015.i.i
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.ec
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fr = lshr i64 %i.dq, 4
  %i.fs = and i64 %i.fr, 255
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1
  %.not.i13.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i13.i.i, label %bb.ag, label %GC_set_mark_bit.exit.i.i

bb.ag:                                            ; preds = %GC_find_header.exit.i.i.i
  store i8 1, ptr %i.fu, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 56 ; 2 uses
  %i.fx = load volatile i64, ptr %i.fw, align 8
  %i.fy = add i64 %i.fx, 1
  store volatile i64 %i.fy, ptr %i.fw, align 8
  br label %GC_set_mark_bit.exit.i.i

GC_set_mark_bit.exit.i.i:                         ; preds = %bb.ag, %GC_find_header.exit.i.i.i
  %i.fz = zext i32 %i.dl to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr @GC_smashed, i64 %i.fz
  store ptr %1, ptr %i.ga, align 8
  %i.gb = icmp ult i32 %i.dl, 19
  br i1 %i.gb, label %bb.ah, label %GC_add_smashed.exit.i.i

bb.ah:                                            ; preds = %GC_set_mark_bit.exit.i.i
  %i.gc = add nuw nsw i32 %i.dl, 1                ; 2 uses
  store i32 %i.gc, ptr @GC_n_smashed, align 4
  br label %GC_add_smashed.exit.i.i

GC_add_smashed.exit.i.i:                          ; preds = %bb.ah, %GC_set_mark_bit.exit.i.i
  %i.gd = phi i32 [ %i.gc, %bb.ah ], [ %i.dl, %GC_set_mark_bit.exit.i.i ]
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  br label %GC_add_leaked.exit

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.ge = add nuw nsw i64 %.015.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ge, %i.fg
  br i1 %exitcond.not.i.i, label %GC_add_leaked.exit, label %.lr.ph.i.i, !llvm.loop !40

GC_check_leaked.exit.thread.i:                    ; preds = %bb.af, %bb.ae, %GC_size.exit.i.i.i, %bb.aa, %bb.z
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  %i.gf = icmp ult i32 %i.dk, 40
  br i1 %i.gf, label %bb.aj, label %GC_add_leaked.exit

bb.aj:                                            ; preds = %GC_check_leaked.exit.thread.i
  %i.gg = add nuw nsw i32 %i.dk, 1                ; 3 uses
  store i32 %i.gg, ptr @GC_n_leaked, align 4
  %i.gh = zext nneg i32 %i.dk to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr @GC_leaked, i64 %i.gh
  store ptr %.015.i.i.i, ptr %i.gi, align 8
  %i.gj = ptrtoint ptr %.015.i.i.i to i64         ; 3 uses
  %i.gk = lshr i64 %i.gj, 22                      ; 2 uses
  %i.gl = and i64 %i.gk, 2047
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.gl
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.0.in.i.i3.i = phi ptr [ %i.gm, %bb.aj ], [ %i.gt, %bb.ak ]
  %.0.i.i.i33 = load ptr, ptr %.0.in.i.i3.i, align 8 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i.i33, i64 8208
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = icmp ne i64 %i.gp, %i.gk
  %i.gr = icmp ne ptr %.0.i.i.i33, %i.gn
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i.i.i33, i64 8216
  br i1 %i.gs, label %bb.ak, label %GC_find_header.exit.i4.i, !llvm.loop !2

GC_find_header.exit.i4.i:                         ; preds = %bb.ak
  %i.gu = lshr i64 %i.gj, 12
  %i.gv = and i64 %i.gu, 1023
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i33, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %i.gy = lshr i64 %i.gj, 4
  %i.gz = and i64 %i.gy, 255
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gz ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1
  %.not.i5.i = icmp eq i8 %i.hc, 0
  br i1 %.not.i5.i, label %bb.al, label %GC_add_leaked.exit

bb.al:                                            ; preds = %GC_find_header.exit.i4.i
  store i8 1, ptr %i.hb, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 56 ; 2 uses
  %i.he = load volatile i64, ptr %i.hd, align 8
  %i.hf = add i64 %i.he, 1
  store volatile i64 %i.hf, ptr %i.hd, align 8
  br label %GC_add_leaked.exit

GC_add_leaked.exit:                               ; preds = %bb.ai, %bb.al, %GC_find_header.exit.i4.i, %GC_check_leaked.exit.thread.i, %GC_add_smashed.exit.i.i, %GC_find_header.exit.i.i36, %bb.y
  %i.hg = phi i32 [ %i.dk, %bb.y ], [ %i.gg, %bb.al ], [ %i.gg, %GC_find_header.exit.i4.i ], [ %i.dk, %GC_check_leaked.exit.thread.i ], [ %i.dk, %GC_add_smashed.exit.i.i ], [ %i.dk, %GC_find_header.exit.i.i36 ], [ %i.dk, %bb.ai ]
  %i.hh = phi i32 [ %i.dl, %bb.y ], [ %i.dl, %bb.al ], [ %i.dl, %GC_find_header.exit.i4.i ], [ %i.dl, %GC_check_leaked.exit.thread.i ], [ %i.gd, %GC_add_smashed.exit.i.i ], [ %i.dl, %GC_find_header.exit.i.i36 ], [ %i.dl, %bb.ai ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 %i.bv ; 2 uses
  %i.hj = add i64 %.01114.i.i.i, %i.dj
  %.not.i.i.i = icmp ugt ptr %i.hi, %i.dh
  br i1 %.not.i.i.i, label %GC_reclaim_small_nonempty_block.exit.i31, label %bb.y, !llvm.loop !312

bb.am:                                            ; preds = %bb.x
  %.not61.i = icmp eq i64 %i.cu, 0
  br i1 %.not61.i, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bp, i64 25
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = and i8 %i.hl, 8
  %.not52.i = icmp eq i8 %i.hm, 0
  br i1 %.not52.i, label %bb.aq, label %.preheader.i32

.preheader.i32:                                   ; preds = %bb.an, %.preheader.i32
  %.0.in.i.i57.i = phi ptr [ %i.hs, %.preheader.i32 ], [ %i.be, %bb.an ]
  %.0.i.i58.i = load ptr, ptr %.0.in.i.i57.i, align 8 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i58.i, i64 8208
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = icmp ne i64 %i.ho, %i.bc
  %i.hq = icmp ne ptr %.0.i.i58.i, %i.bf
  %i.hr = select i1 %i.hp, i1 %i.hq, i1 false
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i58.i, i64 8216
  br i1 %i.hr, label %.preheader.i32, label %GC_find_header.exit.i59.i, !llvm.loop !2

GC_find_header.exit.i59.i:                        ; preds = %.preheader.i32
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i58.i, i64 %i.bn
  %i.hu = load ptr, ptr %i.ht, align 8            ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load i64, ptr %i.hv, align 8            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hy = load i8, ptr %i.hx, align 8
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.hz ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 16
  %i.ic = lshr i64 %i.hw, 4
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = load i64, ptr @GC_gc_no, align 8
  %i.if = trunc i64 %i.ie to i16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hu, i64 26
  store i16 %i.if, ptr %i.ig, align 2
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 28
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = load ptr, ptr %i.id, align 8
  %i.ik = tail call fastcc ptr @GC_reclaim_generic(ptr noundef %i.bm, ptr noundef %i.hu, i64 noundef %i.hw, i32 noundef %i.ii, ptr noundef %i.ij, ptr noundef nonnull @GC_bytes_found)
  %i.il = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.im = load volatile i64, ptr %i.il, align 8
  %.not.i.i = icmp eq i64 %i.im, 0
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %GC_find_header.exit.i59.i
  store ptr %i.ik, ptr %i.id, align 8
  br label %GC_reclaim_small_nonempty_block.exit.i31

bb.ap:                                            ; preds = %GC_find_header.exit.i59.i
  %i.in = load i64, ptr @GC_bytes_found, align 8
  %i.io = add i64 %i.in, 4096
  store i64 %i.io, ptr @GC_bytes_found, align 8
  tail call fastcc void @GC_freehblk(ptr noundef %i.bm)
  br label %GC_reclaim_small_nonempty_block.exit.i31

bb.aq:                                            ; preds = %bb.an
  %i.ip = load i64, ptr @GC_bytes_found, align 8
  %i.iq = add i64 %i.ip, 4096
  store i64 %i.iq, ptr @GC_bytes_found, align 8
  tail call fastcc void @GC_freehblk(ptr noundef %i.bm)
  br label %GC_reclaim_small_nonempty_block.exit.i31

bb.ar:                                            ; preds = %bb.am
  %i.ir = load i32, ptr @GC_find_leak, align 4
  %.not49.i = icmp eq i32 %i.ir, 0
  br i1 %.not49.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.is = load volatile i64, ptr %i.ct, align 8
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.bv to i16
  %i.it = udiv i16 4096, %.rhs.trunc.i.i
  %narrow.i.i = mul nuw nsw i16 %i.it, 7
  %i.iu = lshr i16 %narrow.i.i, 3
  %i.iv = zext nneg i16 %i.iu to i64
  %.not62.i = icmp ugt i64 %i.is, %i.iv
  br i1 %.not62.i, label %GC_reclaim_small_nonempty_block.exit.i31, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %.not51.i = icmp eq ptr %i.ix, null
  br i1 %.not51.i, label %GC_reclaim_small_nonempty_block.exit.i31, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iy = lshr i64 %i.bv, 4
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.iy ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8
  store ptr %i.ja, ptr %i.bp, align 8
  store ptr %i.bm, ptr %i.iz, align 8
  br label %GC_reclaim_small_nonempty_block.exit.i31

GC_reclaim_small_nonempty_block.exit.i31:         ; preds = %GC_add_leaked.exit, %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.jc = load atomic volatile i64, ptr %i.jb monotonic, align 8
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = load volatile i64, ptr %i.ct, align 8
  %i.jf = mul i64 %i.je, %i.bv                    ; 2 uses
  br i1 %i.jd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %GC_reclaim_small_nonempty_block.exit.i31
  %i.jg = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  %i.jh = add i64 %i.jg, %i.jf
  store i64 %i.jh, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 176), align 8
  br label %GC_reclaim_block.exit

bb.aw:                                            ; preds = %GC_reclaim_small_nonempty_block.exit.i31
  %i.ji = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  %i.jj = add i64 %i.ji, %i.jf
  store i64 %i.jj, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 168), align 8
  br label %GC_reclaim_block.exit

GC_reclaim_block.exit:                            ; preds = %bb.aw, %bb.av, %bb.w, %bb.v, %.thread.i, %bb.o, %bb.j
  %i.jk = add nsw i64 %.01720.i, -1
  br label %bb.ba

bb.ax:                                            ; preds = %bb.i
  %i.jl = icmp eq ptr %i.as, null
  br i1 %i.jl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.jm = add nsw i64 %.01720.i, -1
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jn = sub nsw i64 %.01720.i, %i.at
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %GC_reclaim_block.exit
  %.1.i = phi i64 [ %i.jm, %bb.ay ], [ %i.jn, %bb.az ], [ %i.jk, %GC_reclaim_block.exit ] ; 2 uses
  %i.jo = icmp sgt i64 %.1.i, -1
  br i1 %i.jo, label %bb.i, label %bb.bb, !llvm.loop !3

bb.bb:                                            ; preds = %bb.ba
  %i.jp = getelementptr inbounds nuw i8, ptr %.023.i, i64 8192
  %.0.i20 = load ptr, ptr %i.jp, align 8          ; 2 uses
  %.not.i21 = icmp eq ptr %.0.i20, null
  br i1 %.not.i21, label %GC_apply_to_all_blocks.exit.loopexit, label %.preheader.i, !llvm.loop !4

GC_apply_to_all_blocks.exit.loopexit:             ; preds = %bb.bb
  %.pre = load i32, ptr @GC_n_kinds, align 4
  br label %GC_apply_to_all_blocks.exit

GC_apply_to_all_blocks.exit:                      ; preds = %GC_apply_to_all_blocks.exit.loopexit, %._crit_edge
  %i.jq = phi i32 [ %.pre, %GC_apply_to_all_blocks.exit.loopexit ], [ %i.a, %._crit_edge ] ; 2 uses
  %.not25.i = icmp eq i32 %i.jq, 0
  br i1 %.not25.i, label %GC_reclaim_unconditionally_marked.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %GC_apply_to_all_blocks.exit, %.loopexit.i
  %i.jr = phi i32 [ %i.lq, %.loopexit.i ], [ %i.jq, %GC_apply_to_all_blocks.exit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %GC_apply_to_all_blocks.exit ] ; 2 uses
  %i.js = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv.i ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load i32, ptr %i.jt, align 16
  %.not.i22 = icmp eq i32 %i.ju, 0
  br i1 %.not.i22, label %.loopexit.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph23.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8            ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %.loopexit.i, label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.bc, %._crit_edge.i
  %.01520.i = phi i64 [ %i.lp, %._crit_edge.i ], [ 1, %bb.bc ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.01520.i ; 3 uses
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %.not1819.i = icmp eq ptr %i.jz, null
  br i1 %.not1819.i, label %._crit_edge.i, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i23, %GC_reclaim_small_nonempty_block.exit.i
  %i.ka = phi ptr [ %i.lo, %GC_reclaim_small_nonempty_block.exit.i ], [ %i.jz, %.preheader.i23 ] ; 2 uses
  %i.kb = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.kc = lshr i64 %i.kb, 22                      ; 3 uses
  %i.kd = and i64 %i.kc, 2047
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.kd ; 2 uses
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i24
  %.0.in.i.i = phi ptr [ %i.ke, %.lr.ph.i24 ], [ %i.kl, %bb.bd ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = icmp ne i64 %i.kh, %i.kc
  %i.kj = icmp ne ptr %.0.i.i, %i.kf
  %i.kk = select i1 %i.ki, i1 %i.kj, i1 false
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.kk, label %bb.bd, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.bd
  %i.km = lshr i64 %i.kb, 12
  %i.kn = and i64 %i.km, 1023                     ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8
  store ptr %i.kq, ptr %i.jy, align 8
  %i.kr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %GC_find_header.exit.i
  %.0.in.i.i.i = phi ptr [ %i.ke, %GC_find_header.exit.i ], [ %i.kx, %bb.be ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = icmp ne i64 %i.kt, %i.kc
  %i.kv = icmp ne ptr %.0.i.i.i, %i.kr
  %i.kw = select i1 %i.ku, i1 %i.kv, i1 false
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.kw, label %bb.be, label %GC_reclaim_small_nonempty_block.exit.i, !llvm.loop !2

GC_reclaim_small_nonempty_block.exit.i:           ; preds = %bb.be
  %2 = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %3 = load i64, ptr %2, align 8                  ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.kn
  %i.kz = load ptr, ptr %i.ky, align 8            ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load i8, ptr %i.la, align 8
  %i.lc = zext i8 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.lc ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 16
  %i.lf = load i64, ptr @GC_gc_no, align 8
  %i.lg = trunc i64 %i.lf to i16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 26
  store i16 %i.lg, ptr %i.lh, align 2
  %i.li = lshr i64 %3, 4
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = load ptr, ptr %i.lj, align 8
  %i.ln = tail call fastcc ptr @GC_reclaim_generic(ptr noundef nonnull %i.ka, ptr noundef nonnull %i.kz, i64 noundef %3, i32 noundef %i.ll, ptr noundef %i.lm, ptr noundef nonnull @GC_bytes_found)
  store ptr %i.ln, ptr %i.lj, align 8
  %i.lo = load ptr, ptr %i.jy, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.lo, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i24, !llvm.loop !313

._crit_edge.i:                                    ; preds = %GC_reclaim_small_nonempty_block.exit.i, %.preheader.i23
  %i.lp = add nuw nsw i64 %.01520.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lp, 129
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %.preheader.i23, !llvm.loop !314

.loopexit.loopexit.i:                             ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr @GC_n_kinds, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bc, %.lr.ph23.i
  %i.lq = phi i32 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.jr, %bb.bc ], [ %i.jr, %.lr.ph23.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lr = zext i32 %i.lq to i64
  %i.ls = icmp samesign ult i64 %indvars.iv.next.i, %i.lr
  br i1 %i.ls, label %.lr.ph23.i, label %GC_reclaim_unconditionally_marked.exit, !llvm.loop !315

GC_reclaim_unconditionally_marked.exit:           ; preds = %.loopexit.i, %GC_apply_to_all_blocks.exit
  ret void
}

; Function Attrs: inlinehint norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @GC_add_leaked(ptr noundef %0) unnamed_addr #41 {
bb.a:
  %.b = load i1, ptr @GC_findleak_delay_free, align 4
  br i1 %.b, label %bb.b, label %GC_check_leaked.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %GC_check_leaked.exit.thread, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.d = lshr i64 %i.c, 22                        ; 4 uses
  %i.e = and i64 %i.d, 2047
  %i.f = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.e ; 3 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.in.i.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.m, %bb.d ]
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8208
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ne i64 %i.i, %i.d
  %i.k = icmp ne ptr %.0.i.i.i.i, %i.g
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8216
  br i1 %i.l, label %bb.d, label %GC_size.exit.i.i, !llvm.loop !2

GC_size.exit.i.i:                                 ; preds = %bb.d
  %i.n = lshr i64 %i.c, 12
  %i.o = and i64 %i.n, 1023                       ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
  %i.t = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.u = xor i64 %i.t, %i.c
  %.not.i.i = icmp ugt i64 %i.u, 4095
  %i.v = icmp ult i64 %i.s, 40
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.v
  br i1 %or.cond.i.i, label %GC_check_leaked.exit.thread, label %bb.e

bb.e:                                             ; preds = %GC_size.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = xor i64 %i.x, %i.t
  %.not13.i.i = icmp eq i64 %i.y, -81929232789475893
  br i1 %.not13.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = lshr i64 %i.s, 3
  %i.aa = getelementptr [8 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = xor i64 %i.ac, %i.t
  %.not14.i.i = icmp eq i64 %i.ad, -4837202520199737873
  br i1 %.not14.i.i, label %bb.g, label %GC_check_leaked.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.af, %i.s
  br i1 %i.ag, label %GC_has_other_debug_info.exit.i, label %GC_check_leaked.exit.thread

GC_has_other_debug_info.exit.i:                   ; preds = %bb.g, %GC_has_other_debug_info.exit.i
  %.0.in.i.i = phi ptr [ %i.am, %GC_has_other_debug_info.exit.i ], [ %i.f, %bb.g ]
  %.0.i12.i = load ptr, ptr %.0.in.i.i, align 8   ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 8208
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp ne i64 %i.ai, %i.d
  %i.ak = icmp ne ptr %.0.i12.i, %i.g
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i12.i, i64 8216
  br i1 %i.al, label %GC_has_other_debug_info.exit.i, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %GC_has_other_debug_info.exit.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i12.i, i64 %i.o
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, -32
  %i.as = lshr i64 %i.ar, 3                       ; 2 uses
  %.not16.i = icmp eq i64 %i.as, 0
  br i1 %.not16.i, label %GC_check_leaked.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %GC_find_header.exit.i, %bb.j
  %.015.i = phi i64 [ %i.bq, %bb.j ], [ 0, %GC_find_header.exit.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.015.i
  %i.au = load i64, ptr %i.at, align 8
  %.not.i = icmp eq i64 %i.au, -1171307680339476753
  br i1 %.not.i, label %bb.j, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.0.in.i.i.i = phi ptr [ %i.ba, %.preheader.i ], [ %i.f, %.lr.ph.i ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp ne i64 %i.aw, %i.d
  %i.ay = icmp ne ptr %.0.i.i.i, %i.g
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.az, label %.preheader.i, label %GC_find_header.exit.i.i, !llvm.loop !2

GC_find_header.exit.i.i:                          ; preds = %.preheader.i
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.015.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.o
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = lshr i64 %i.c, 4
  %i.be = and i64 %i.bd, 255
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1
  %.not.i13.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i13.i, label %bb.h, label %GC_set_mark_bit.exit.i

bb.h:                                             ; preds = %GC_find_header.exit.i.i
  store i8 1, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 2 uses
  %i.bj = load volatile i64, ptr %i.bi, align 8
  %i.bk = add i64 %i.bj, 1
  store volatile i64 %i.bk, ptr %i.bi, align 8
  br label %GC_set_mark_bit.exit.i

GC_set_mark_bit.exit.i:                           ; preds = %bb.h, %GC_find_header.exit.i.i
  %i.bl = load i32, ptr @GC_n_smashed, align 4    ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @GC_smashed, i64 %i.bm
  store ptr %1, ptr %i.bn, align 8
  %i.bo = icmp ult i32 %i.bl, 19
  br i1 %i.bo, label %bb.i, label %GC_add_smashed.exit.i

bb.i:                                             ; preds = %GC_set_mark_bit.exit.i
  %i.bp = add nuw nsw i32 %i.bl, 1
  store i32 %i.bp, ptr @GC_n_smashed, align 4
  br label %GC_add_smashed.exit.i

GC_add_smashed.exit.i:                            ; preds = %bb.i, %GC_set_mark_bit.exit.i
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  br label %GC_check_leaked.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.bq = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bq, %i.as
  br i1 %exitcond.not.i, label %GC_check_leaked.exit, label %.lr.ph.i, !llvm.loop !40

GC_check_leaked.exit.thread:                      ; preds = %bb.g, %GC_size.exit.i.i, %bb.f, %bb.b, %bb.a
  store atomic volatile i64 1, ptr @GC_have_errors monotonic, align 8
  %i.br = load i32, ptr @GC_n_leaked, align 4     ; 3 uses
  %i.bs = icmp ult i32 %i.br, 40
  br i1 %i.bs, label %bb.k, label %GC_check_leaked.exit

bb.k:                                             ; preds = %GC_check_leaked.exit.thread
  %i.bt = add nuw nsw i32 %i.br, 1
  store i32 %i.bt, ptr @GC_n_leaked, align 4
  %i.bu = zext nneg i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @GC_leaked, i64 %i.bu
  store ptr %0, ptr %i.bv, align 8
  %i.bw = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.bx = lshr i64 %i.bw, 22                      ; 2 uses
  %i.by = and i64 %i.bx, 2047
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.by
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.0.in.i.i3 = phi ptr [ %i.bz, %bb.k ], [ %i.cg, %bb.l ]
  %.0.i.i = load ptr, ptr %.0.in.i.i3, align 8    ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = icmp ne i64 %i.cc, %i.bx
  %i.ce = icmp ne ptr %.0.i.i, %i.ca
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.cf, label %bb.l, label %GC_find_header.exit.i4, !llvm.loop !2

GC_find_header.exit.i4:                           ; preds = %bb.l
  %i.ch = lshr i64 %i.bw, 12
  %i.ci = and i64 %i.ch, 1023
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = lshr i64 %i.bw, 4
  %i.cm = and i64 %i.cl, 255
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1
  %.not.i5 = icmp eq i8 %i.cp, 0
  br i1 %.not.i5, label %bb.m, label %GC_check_leaked.exit

bb.m:                                             ; preds = %GC_find_header.exit.i4
  store i8 1, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 2 uses
  %i.cr = load volatile i64, ptr %i.cq, align 8
  %i.cs = add i64 %i.cr, 1
  store volatile i64 %i.cs, ptr %i.cq, align 8
  br label %GC_check_leaked.exit

GC_check_leaked.exit:                             ; preds = %bb.j, %bb.m, %GC_find_header.exit.i4, %GC_add_smashed.exit.i, %GC_find_header.exit.i, %GC_check_leaked.exit.thread
  ret void
}

; Function Attrs: inlinehint norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @GC_make_disappearing_links_disappear(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.x, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not39 = icmp eq i32 %1, 0
  %.b.i = load i1, ptr @GC_is_initialized, align 4
  %.b38 = load i1, ptr @GC_manual_vdb, align 4    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.03267 = phi i32 [ 0, %.preheader ], [ %.133.lcssa, %._crit_edge ] ; 2 uses
  %.03666 = phi i64 [ 0, %.preheader ], [ %i.ev, %._crit_edge ] ; 3 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03666
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not62 = icmp eq ptr %i.i, null
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread
  %.065 = phi ptr [ %.3, %.thread ], [ null, %bb.b ] ; 4 uses
  %.03064 = phi ptr [ %i.k, %.thread ], [ %i.i, %bb.b ] ; 11 uses
  %.13363 = phi i32 [ %.335, %.thread ], [ %.03267, %bb.b ] ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.03064, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  br i1 %.not39, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i64, ptr %.03064, align 8
  %i.m = xor i64 %i.l, -1                         ; 5 uses
  %i.n = inttoptr i64 %i.m to ptr
  br i1 %.b.i, label %bb.d, label %.thread, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i64 %i.m, 22                        ; 2 uses
  %i.p = and i64 %i.o, 2047
  %i.q = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.p
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.in.i = phi ptr [ %i.q, %bb.d ], [ %i.x, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ne i64 %i.t, %i.o
  %i.v = icmp ne ptr %.0.i, %i.r
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.w, label %bb.e, label %bb.f, !llvm.loop !6

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.m, 12
  %i.z = and i64 %i.y, 1023
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ad = and i64 %i.m, -4096
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = icmp ult ptr %i.ab, inttoptr (i64 4096 to ptr)
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.aw, %GC_find_header.exit.i ], [ %i.ab, %.preheader.i ]
  %.03745.i = phi ptr [ %i.ai, %GC_find_header.exit.i ], [ %i.ae, %.preheader.i ]
  %i.ag = ptrtoint ptr %.03646.i to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.ah ; 4 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = lshr i64 %i.aj, 22                      ; 2 uses
  %i.al = and i64 %i.ak, 2047
  %i.am = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.al
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.as, %bb.g ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp ne i64 %i.ao, %i.ak
  %i.aq = icmp ne ptr %.0.i.i, %i.r
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ar, label %bb.g, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.g
  %i.at = lshr i64 %i.aj, 12
  %i.au = and i64 %i.at, 1023
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = icmp ult ptr %i.aw, inttoptr (i64 4096 to ptr)
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !7

._crit_edge.i.loopexit:                           ; preds = %GC_find_header.exit.i
  %i.ay = ptrtoint ptr %i.ai to i64
end_hunk_2
begin_hunk_3_@GC_promote_black_lists:bb.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32768) %i.b, i8 0, i64 32768, i1 false)
  store ptr %i.a, ptr @GC_incomplete_normal_bl, align 8
  store ptr %i.b, ptr @GC_incomplete_stack_bl, align 8
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 264), align 8 ; 2 uses
  %.not12.i = icmp eq i64 %i.f, 0
  br i1 %.not12.i, label %total_stack_black_listed.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 92664), align 8
  br label %bb.d

bb.d:                                             ; preds = %GC_number_stack_black_listed.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %GC_number_stack_black_listed.exit.i ] ; 2 uses
  %.0810.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %GC_number_stack_black_listed.exit.i ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %.idx.i = and i64 %i.k, -4096                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %.not.i = icmp eq i64 %.idx.i, 0
  br i1 %.not.i, label %GC_number_stack_black_listed.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.011.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.d ]
  %.0810.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.m = ptrtoint ptr %.0810.i.i to i64           ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = lshr i64 %i.m, 18
  %i.p = and i64 %i.o, 4095
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.n, 63
  %i.t = lshr i64 %i.r, %i.s
  %i.u = and i64 %i.t, 1
  %spec.select.i.i = add i64 %i.u, %.011.i.i      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i, i64 4096 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.l
  br i1 %i.w, label %.lr.ph.i.i, label %GC_number_stack_black_listed.exit.i, !llvm.loop !318

GC_number_stack_black_listed.exit.i:              ; preds = %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.x = add i64 %.0.lcssa.i.i, %.0810.i          ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.y = and i64 %indvars.iv.next.i, 4294967295
  %i.z = icmp ugt i64 %i.f, %i.y
  br i1 %i.z, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !319

._crit_edge.loopexit.i:                           ; preds = %GC_number_stack_black_listed.exit.i
  %i.aa = shl i64 %i.x, 12
  br label %total_stack_black_listed.exit

total_stack_black_listed.exit:                    ; preds = %bb.c, %._crit_edge.loopexit.i
  %.08.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.aa, %._crit_edge.loopexit.i ] ; 3 uses
  store i64 %.08.lcssa.i, ptr @GC_total_stack_black_listed, align 8
  %i.ab = load i32, ptr @GC_print_stats, align 4
  %.not4 = icmp eq i32 %i.ab, 2
  br i1 %.not4, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %total_stack_black_listed.exit
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.185, i64 noundef %.08.lcssa.i)
  %.pr = load i64, ptr @GC_total_stack_black_listed, align 8
  br label %bb.f

bb.f:                                             ; preds = %total_stack_black_listed.exit, %bb.e
  %i.ac = phi i64 [ %.08.lcssa.i, %total_stack_black_listed.exit ], [ %.pr, %bb.e ] ; 2 uses
  %.not5 = icmp eq i64 %i.ac, 0
  br i1 %.not5, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr @GC_arrays, align 8
  %i.ae = udiv i64 %i.ad, %i.ac
  %i.af = shl i64 %i.ae, 12                       ; 2 uses
  store i64 %i.af, ptr @GC_black_list_spacing, align 8
  br label %bb.h

thread-pre-split:                                 ; preds = %bb.f
  %.pr6 = load i64, ptr @GC_black_list_spacing, align 8
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.g
  %.pr8 = phi i64 [ %.pr6, %thread-pre-split ], [ %i.af, %bb.g ] ; 2 uses
  %i.ag = icmp ult i64 %.pr8, 12288
  br i1 %i.ag, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp ugt i64 %.pr8, 8388608
  br i1 %i.ah, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.h
  %.sink = phi i64 [ 12288, %bb.h ], [ 8388608, %bb.i ]
  store i64 %.sink, ptr @GC_black_list_spacing, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_reclaim_all(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr @GC_print_stats, align 4
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #45
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @GC_on_abort, align 8
  call void %i.e(ptr noundef nonnull @.str.93) #45
  call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = load i32, ptr @GC_n_kinds, align 4       ; 2 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.d
  %.not24 = icmp eq ptr %0, null
  %.not26 = icmp eq i32 %1, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph32, %.loopexit27
  %i.g = phi i32 [ %i.f, %.lr.ph32 ], [ %i.bk, %.loopexit27 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %.loopexit27 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit27, label %.preheader

.preheader:                                       ; preds = %bb.e, %._crit_edge
  %.01929 = phi i64 [ %i.bj, %._crit_edge ], [ 1, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01929 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.m, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.n = phi ptr [ %i.bi, %bb.l ], [ %i.m, %.preheader ] ; 2 uses
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = call i32 %0() #45
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = lshr i64 %i.p, 22                        ; 3 uses
  %i.r = and i64 %i.q, 2047
  %i.s = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.r ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.in.i = phi ptr [ %i.s, %bb.g ], [ %i.z, %bb.h ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ne i64 %i.v, %i.q
  %i.x = icmp ne ptr %.0.i, %i.t
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.y, label %bb.h, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.h
  %i.aa = lshr i64 %i.p, 12
  %i.ab = and i64 %i.aa, 1023                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  store ptr %i.ae, ptr %i.l, align 8
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %GC_find_header.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 26
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = zext i16 %i.ag to i64
  %i.ai = load i64, ptr @GC_gc_no, align 8
  %i.aj = add i64 %i.ai, -1
  %i.ak = icmp eq i64 %i.aj, %i.ah
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %GC_find_header.exit
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.in.i.i = phi ptr [ %i.s, %bb.j ], [ %i.ar, %bb.k ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ne i64 %i.an, %i.q
  %i.ap = icmp ne ptr %.0.i.i, %i.al
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.aq, label %bb.k, label %GC_reclaim_small_nonempty_block.exit, !llvm.loop !2

GC_reclaim_small_nonempty_block.exit:             ; preds = %bb.k
  %4 = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %5 = load i64, ptr %4, align 8                  ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.ab
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 16
  %i.az = load i64, ptr @GC_gc_no, align 8
  %i.ba = trunc i64 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 26
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = lshr i64 %5, 4
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = load ptr, ptr %i.bd, align 8
  %i.bh = call fastcc ptr @GC_reclaim_generic(ptr noundef nonnull %i.n, ptr noundef nonnull %i.at, i64 noundef %5, i32 noundef %i.bf, ptr noundef %i.bg, ptr noundef nonnull @GC_bytes_found)
  store ptr %i.bh, ptr %i.bd, align 8
  %.pre = load ptr, ptr %i.l, align 8
  br label %bb.l

bb.l:                                             ; preds = %GC_reclaim_small_nonempty_block.exit, %bb.i
  %i.bi = phi ptr [ %.pre, %GC_reclaim_small_nonempty_block.exit ], [ %i.ae, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !320

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.bj = add nuw nsw i64 %.01929, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, 129
  br i1 %exitcond.not, label %.loopexit27.loopexit, label %.preheader, !llvm.loop !321

.loopexit27.loopexit:                             ; preds = %._crit_edge
  %.pre36 = load i32, ptr @GC_n_kinds, align 4
  br label %.loopexit27

.loopexit27:                                      ; preds = %.loopexit27.loopexit, %bb.e
  %i.bk = phi i32 [ %.pre36, %.loopexit27.loopexit ], [ %i.g, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.e, label %._crit_edge33, !llvm.loop !322

._crit_edge33:                                    ; preds = %.loopexit27, %bb.d
  %i.bn = load i32, ptr @GC_print_stats, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %._crit_edge33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #45
  %i.bp = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #45
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = load ptr, ptr @GC_on_abort, align 8
  call void %i.br(ptr noundef nonnull @.str.93) #45
  call void @abort() #48
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load i64, ptr %i.bu, align 8
  %reass.sub = sub i64 %i.bt, %i.bv
  %i.bw = add i64 %reass.sub, 1000000000          ; 2 uses
  %i.bx = udiv i64 %i.bw, 1000000
  %i.by = load i64, ptr %3, align 8
  %i.bz = load i64, ptr %2, align 8
  %i.ca = sub nsw i64 %i.by, %i.bz
  %i.cb = mul i64 %i.ca, 1000
  %i.cc = add nsw i64 %i.bx, -1000
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = urem i64 %i.bw, 1000000
  call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.186, i64 noundef %i.cd, i64 noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %._crit_edge33, %bb.o
  %.020 = phi i32 [ 1, %._crit_edge33 ], [ 1, %bb.o ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_print_all_smashed_proc() unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @GC_n_smashed, align 4     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.189, i32 noundef %i.a)
  %i.c = load i32, ptr @GC_n_smashed, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %._crit_edge.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @GC_smashed, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.g = lshr i64 %i.f, 22                        ; 2 uses
  %i.h = and i64 %i.g, 2047
  %i.i = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.h
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %.0.in.i = phi ptr [ %i.i, %.lr.ph ], [ %i.p, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ne i64 %i.l, %i.g
  %i.n = icmp ne ptr %.0.i, %i.j
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.o, label %bb.c, label %.preheader.i, !llvm.loop !6

.preheader.i:                                     ; preds = %bb.c
  %i.q = lshr i64 %i.f, 12
  %i.r = and i64 %i.q, 1023
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !57, !noundef !57 ; 3 uses
  %i.u = icmp ult ptr %i.t, inttoptr (i64 4096 to ptr)
  br i1 %i.u, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.v = and i64 %i.f, -4096
  %i.w = inttoptr i64 %i.v to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %GC_find_header.exit.i
  %.03646.i = phi ptr [ %i.an, %GC_find_header.exit.i ], [ %i.t, %.lr.ph.i.preheader ]
  %.03745.i = phi ptr [ %i.z, %GC_find_header.exit.i ], [ %i.w, %.lr.ph.i.preheader ]
  %i.x = ptrtoint ptr %.03646.i to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [4096 x i8], ptr %.03745.i, i64 %i.y ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = lshr i64 %i.aa, 22                      ; 2 uses
  %i.ac = and i64 %i.ab, 2047
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.0.in.i.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.aj, %bb.d ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ne i64 %i.af, %i.ab
  %i.ah = icmp ne ptr %.0.i.i, %i.j
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ai, label %bb.d, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.d
  %i.ak = lshr i64 %i.aa, 12
  %i.al = and i64 %i.ak, 1023
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp ult ptr %i.an, inttoptr (i64 4096 to ptr)
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %GC_find_header.exit.i, %.preheader.i
  %.pre-phi = phi i64 [ %i.f, %.preheader.i ], [ %i.aa, %GC_find_header.exit.i ] ; 2 uses
  %.036.lcssa.i = phi ptr [ %i.t, %.preheader.i ], [ %i.an, %GC_find_header.exit.i ]
  %i.ap = and i64 %.pre-phi, -8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = and i64 %.pre-phi, 4088
  %i.as = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 32
  %i.at = load i64, ptr %i.as, align 8
  %i.au = urem i64 %i.ar, %i.at
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  tail call fastcc void @GC_print_smashed_obj(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ax, ptr noundef %i.e)
  store ptr null, ptr %i.d, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr @GC_n_smashed, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !323

._crit_edge:                                      ; preds = %._crit_edge.i, %bb.b
  store i32 0, ptr @GC_n_smashed, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GC_debug_print_heap_obj_proc(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [41 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %select.unfold, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@GC_grow_table:bb.a
  %i.bv = lshr i64 %i.bu, 12
  %i.bw = lshr i64 %i.bu, 18
  %i.bx = and i64 %i.bw, 4095
  %i.by = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.bx
  %i.bz = and i64 %i.bv, 63
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = atomicrmw volatile or ptr %i.by, i64 %i.ca monotonic, align 8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge49, %GC_generic_malloc_inner_ignore_off_page.exit.thread, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_free_inner(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !2

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = and i64 %i.a, -4096
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = lshr i64 %i.a, 12
  %i.o = and i64 %i.n, 1023
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i8, ptr %i.r, align 8               ; 2 uses
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 9 uses
  %i.w = lshr i64 %i.v, 4
  %i.x = zext i8 %i.s to i64
  %i.y = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.x ; 2 uses
  %i.z = icmp ult i64 %i.v, 2064
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %GC_find_header.exit
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ab = add i64 %i.aa, %i.v
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ac = and i32 %i.t, 254
  %i.ad = icmp eq i32 %i.ac, 2
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr @GC_non_gc_bytes, align 8
  %i.af = sub i64 %i.ae, %i.v
  store i64 %i.af, ptr @GC_non_gc_bytes, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ah = load i32, ptr %i.ag, align 4
  %.not = icmp ne i32 %i.ah, 0
  %i.ai = icmp samesign ugt i64 %i.v, 8
  %or.cond = and i1 %i.ai, %.not
  br i1 %or.cond, label %bb.f, label %bb.g, !prof !50

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = add nsw i64 %i.v, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aj, i8 0, i64 %i.ak, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = load ptr, ptr %i.y, align 16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.w ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %0, align 8
  store ptr %0, ptr %i.am, align 8
  br label %bb.m

bb.h:                                             ; preds = %GC_find_header.exit
  %i.ao = add i64 %i.v, 4095                      ; 2 uses
  %i.ap = and i64 %i.ao, -4096
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.ar = add i64 %i.aq, %i.v
  store i64 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 88), align 8
  %i.as = and i32 %i.t, 254
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr @GC_non_gc_bytes, align 8
  %i.av = sub i64 %i.au, %i.v
  store i64 %i.av, ptr @GC_non_gc_bytes, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = icmp ugt i64 %i.ao, 8191
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  %i.ay = sub i64 %i.ax, %i.ap
  store i64 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 32), align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call fastcc void @GC_freehblk(ptr noundef %i.m)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @GC_extend_size_map(i64 noundef %0) unnamed_addr #27 {
bb.a:
  %i.a = load i32, ptr @GC_all_interior_pointers, align 4
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = add nsw i64 %i.b, 15                     ; 2 uses
  %i.d = sub nsw i64 -16, %i.b                    ; 2 uses
  %i.e = icmp ult i64 %0, %i.d
  %i.f = add i64 %i.c, %0
  %i.g = lshr i64 %i.f, 4
  %i.h = select i1 %i.e, i64 %i.g, i64 1152921504606846975, !prof !47 ; 4 uses
  %i.i = mul nuw i64 %i.h, 14                     ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = mul nuw i64 %i.h, 12
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.m, %bb.b ], [ %i.p, %bb.c ]  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.0
  %i.o = load i64, ptr %i.n, align 8
  %.not34 = icmp eq i64 %i.o, 0
  %i.p = add i64 %.0, 1
  br i1 %.not34, label %.loopexit, label %bb.c, !llvm.loop !327

bb.d:                                             ; preds = %bb.a
  %i.q = or disjoint i64 %i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.q, %bb.d ], [ %i.t, %bb.e ]  ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.1
  %i.s = load i64, ptr %i.r, align 8
  %.not = icmp eq i64 %i.s, 0
  %i.t = add i64 %.1, 1
  br i1 %.not, label %bb.f, label %bb.e, !llvm.loop !328

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ult i64 %.1, %i.d
  %i.v = add i64 %.1, %i.c
  %i.w = lshr i64 %i.v, 4
  %i.x = select i1 %i.u, i64 %i.w, i64 1152921504606846975, !prof !47 ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, %i.x
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.h)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.f
  %.031 = phi i64 [ %spec.select, %bb.f ], [ %i.h, %bb.c ]
  %.2 = phi i64 [ %.1, %bb.f ], [ %.0, %bb.c ]    ; 6 uses
  %i.aa = add nuw nsw i64 %.031, 1
  %i.ab = and i64 %i.aa, -2
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 128)
  %.rhs.trunc = trunc nuw nsw i64 %spec.store.select to i16
  %i.ac = udiv i16 256, %.rhs.trunc
  %i.ad = udiv i16 256, %i.ac
  %i.ae = and i16 %i.ad, 510
  %i.af = zext nneg i16 %i.ae to i64              ; 3 uses
  %i.ag = shl nuw nsw i64 %i.af, 4                ; 2 uses
  %i.ah = sub nsw i64 %i.ag, %i.b                 ; 2 uses
  %.not3538 = icmp ugt i64 %.2, %i.ah
  br i1 %.not3538, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.ai = or disjoint i64 %i.ag, 1
  %i.aj = sub nsw i64 %i.ai, %i.b
  %i.ak = add i64 %.2, 1
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.am = sub i64 %i.al, %.2                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %1 = add i64 %.2, %n.vec
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %.lr.ph.preheader, %middle.block
  %.339.ph = phi i64 [ %.2, %.lr.ph.preheader ], [ %1, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader41, %.lr.ph
  %.339 = phi i64 [ %i.as, %.lr.ph ], [ %.339.ph, %.lr.ph.preheader41 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 5608), i64 %.339
  store i64 %i.af, ptr %i.ar, align 8
  %i.as = add i64 %.339, 1                        ; 2 uses
  %.not35 = icmp ugt i64 %i.as, %i.ah
  br i1 %.not35, label %._crit_edge, label %.lr.ph, !llvm.loop !330

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_alloc_reclaim_list(ptr nofree noundef writeonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8 ; 4 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %.not33.i = icmp ult i64 %i.e, 1040
  br i1 %.not33.i, label %.lr.ph.split.i, label %GC_scratch_alloc.exit

.lr.ph.split.i:                                   ; preds = %bb.a, %bb.c
  %i.f = load i64, ptr @GC_page_size, align 8     ; 3 uses
  %notsub.i = add nsw i64 %i.f, -1
  %i.g = icmp ult i64 %notsub.i, -65537
  %i.h = add nsw i64 %i.f, 65535
  %i.i = select i1 %i.g, i64 %i.h, i64 -1, !prof !47
  %i.j = sub i64 0, %i.f
  %i.k = and i64 %i.i, %i.j                       ; 4 uses
  %i.l = tail call ptr @GC_unix_get_mem(i64 noundef %i.k) ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.n = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.n(ptr noundef nonnull @.str.153, i64 noundef 1040) #45, !inline_history !61
  %i.o = load i64, ptr @GC_page_size, align 8     ; 2 uses
  %i.p = sub nsw i64 0, %i.o                      ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1040
  %i.r = add i64 %i.o, 1039
  %i.s = select i1 %i.q, i64 %i.r, i64 -1, !prof !47
  %i.t = and i64 %i.s, %i.p                       ; 2 uses
  %i.u = tail call ptr @GC_unix_get_mem(i64 noundef %i.t) ; 2 uses
  %.not29.i = icmp eq ptr %i.u, null
  br i1 %.not29.i, label %GC_scratch_alloc.exit.thread, label %GC_scratch_alloc.exit.thread6

GC_scratch_alloc.exit.thread6:                    ; preds = %bb.b
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  %i.y = add i64 %i.x, %i.k
  store i64 %i.y, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 56), align 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 136), align 8
  %.not.i = icmp ult i64 %i.k, 1040
  br i1 %.not.i, label %.lr.ph.split.i, label %GC_scratch_alloc.exit.thread9

GC_scratch_alloc.exit.thread9:                    ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 1040
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  br label %bb.d

GC_scratch_alloc.exit:                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 120), align 8
  %i.ac = icmp eq ptr %i.a, null
  br i1 %i.ac, label %GC_scratch_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %GC_scratch_alloc.exit.thread9, %GC_scratch_alloc.exit.thread6, %GC_scratch_alloc.exit
  %.026.i8 = phi ptr [ %i.u, %GC_scratch_alloc.exit.thread6 ], [ %i.a, %GC_scratch_alloc.exit ], [ %i.l, %GC_scratch_alloc.exit.thread9 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.026.i8, i8 0, i64 1032, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.026.i8, ptr %i.ad, align 8
  br label %GC_scratch_alloc.exit.thread

GC_scratch_alloc.exit.thread:                     ; preds = %bb.b, %GC_scratch_alloc.exit, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %GC_scratch_alloc.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_allocobj(i64 noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.a ; 6 uses
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %0 ; 4 uses
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.j = shl i64 %0, 4
  %i.k = and i32 %1, -2
  %i.l = icmp eq i32 %i.k, 2
  %i.m = shl i64 %0, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.02740 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.v ] ; 2 uses
  %.02839 = phi i32 [ 0, %.lr.ph ], [ %.129, %bb.v ] ; 2 uses
  store atomic i8 1, ptr @GC_collecting monotonic, align 4
  %i.n = load i32, ptr @GC_incremental, align 4
  %i.o = icmp eq i32 %i.n, 0
  %i.p = load i64, ptr @GC_time_limit, align 8
  %i.q = icmp eq i64 %i.p, 999999
  %or.cond.not32 = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load i32, ptr @GC_dont_gc, align 4
  %i.s = icmp ne i32 %i.r, 0
  %or.cond3 = select i1 %or.cond.not32, i1 true, i1 %i.s
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @GC_collect_a_little_inner(i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.b, align 16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %0
  %i.w = icmp eq ptr %i.t, null
  br i1 %i.w, label %GC_continue_reclaim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %0 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %GC_reclaim_small_nonempty_block.exit.i, %bb.e
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %GC_continue_reclaim.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = lshr i64 %i.z, 22                       ; 3 uses
  %i.ab = and i64 %i.aa, 2047
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.in.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.aj, %bb.h ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8208
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ne i64 %i.af, %i.aa
  %i.ah = icmp ne ptr %.0.i.i, %i.ad
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8216
  br i1 %i.ai, label %bb.h, label %GC_find_header.exit.i, !llvm.loop !2

GC_find_header.exit.i:                            ; preds = %bb.h
  %i.ak = lshr i64 %i.z, 12
  %i.al = and i64 %i.ak, 1023                     ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  store ptr %i.ao, ptr %i.x, align 8
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %GC_find_header.exit.i
  %.0.in.i.i.i = phi ptr [ %i.ac, %GC_find_header.exit.i ], [ %i.av, %bb.i ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8208
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp ne i64 %i.ar, %i.aa
  %i.at = icmp ne ptr %.0.i.i.i, %i.ap
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8216
  br i1 %i.au, label %bb.i, label %GC_reclaim_small_nonempty_block.exit.i, !llvm.loop !2

GC_reclaim_small_nonempty_block.exit.i:           ; preds = %bb.i
  %2 = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %3 = load i64, ptr %2, align 8                  ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %i.al
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [48 x i8], ptr @GC_obj_kinds, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 16
  %i.bd = load i64, ptr @GC_gc_no, align 8
  %i.be = trunc i64 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 26
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = lshr i64 %3, 4
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = load ptr, ptr %i.bh, align 8
  %i.bl = tail call fastcc ptr @GC_reclaim_generic(ptr noundef nonnull %i.y, ptr noundef nonnull %i.ax, i64 noundef %3, i32 noundef %i.bj, ptr noundef %i.bk, ptr noundef nonnull @GC_bytes_found)
  store ptr %i.bl, ptr %i.bh, align 8
  %i.bm = load ptr, ptr %i.v, align 8
  %.not14.i = icmp eq ptr %i.bm, null
  br i1 %.not14.i, label %bb.f, label %GC_continue_reclaim.exit, !llvm.loop !331

GC_continue_reclaim.exit:                         ; preds = %bb.f, %GC_reclaim_small_nonempty_block.exit.i, %bb.d
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  %i.bn = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %GC_continue_reclaim.exit
  %i.bp = load i32, ptr %i.i, align 4
  %.b.i = load i1, ptr @GC_debugging_started, align 4
  %spec.store.select.i = select i1 %.b.i, i32 1, i32 %i.bp
  %i.bq = tail call fastcc ptr @GC_allochblk(i64 noundef %i.j, i32 noundef %1, i32 noundef 0) ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %GC_new_hblk.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.l, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = lshr i64 %i.bs, 22                      ; 2 uses
  %i.bu = and i64 %i.bt, 2047
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.bu
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.in.i.i35 = phi ptr [ %i.bv, %bb.l ], [ %i.cc, %bb.m ]
  %.0.i.i36 = load ptr, ptr %.0.in.i.i35, align 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 8208
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = icmp ne i64 %i.by, %i.bt
  %i.ca = icmp ne ptr %.0.i.i36, %i.bw
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i36, i64 8216
  br i1 %i.cb, label %bb.m, label %GC_find_header.exit.i37, !llvm.loop !2

GC_find_header.exit.i37:                          ; preds = %bb.m
  %i.cd = lshr i64 %i.bs, 12
  %i.ce = and i64 %i.cd, 1023
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i36, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i64, ptr %i.ch, align 8            ; 4 uses
  %i.cj = icmp ugt i64 %i.ci, 2048
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %GC_find_header.exit.i37
  %.rhs.trunc.i.i = trunc nuw nsw i64 %i.ci to i16
  %i.ck = urem i16 4096, %.rhs.trunc.i.i
  %narrow.i.i = sub nuw nsw i16 4096, %i.ck
  %i.cl = lshr i16 %narrow.i.i, 4
  %i.cm = zext nneg i16 %i.cl to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %GC_find_header.exit.i37
  %i.cn = phi i32 [ %i.cm, %bb.n ], [ 256, %GC_find_header.exit.i37 ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.cp = lshr i64 %i.ci, 4
  %i.cq = trunc i64 %i.cp to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.012.i.i = phi i32 [ 0, %bb.o ], [ %i.ct, %bb.p ] ; 2 uses
  %i.cr = zext nneg i32 %.012.i.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  store i8 1, ptr %i.cs, align 1
  %i.ct = add i32 %.012.i.i, %i.cq                ; 2 uses
  %.not.i.i = icmp ugt i32 %i.ct, %i.cn
  br i1 %.not.i.i, label %GC_set_hdr_marks.exit.i, label %bb.p, !llvm.loop !20

GC_set_hdr_marks.exit.i:                          ; preds = %bb.p
  %i.cu = udiv i64 4096, %i.ci
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store volatile i64 %i.cu, ptr %i.cv, align 8
  br label %bb.q

bb.q:                                             ; preds = %GC_set_hdr_marks.exit.i, %bb.k
  %i.cw = load ptr, ptr %i.b, align 16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %0
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call fastcc ptr @GC_build_fl(ptr noundef %i.bq, i64 noundef %i.m, i32 noundef %spec.store.select.i, ptr noundef %i.cy)
  %i.da = load ptr, ptr %i.b, align 16
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %0
  store ptr %i.cz, ptr %i.db, align 8
  br label %GC_new_hblk.exit

GC_new_hblk.exit:                                 ; preds = %bb.j, %bb.q
  %i.dc = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %GC_new_hblk.exit
  store atomic i8 1, ptr @GC_collecting monotonic, align 4
  %i.de = load i32, ptr @GC_incremental, align 4
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = load i64, ptr @GC_time_limit, align 8
  %i.dh = icmp ne i64 %i.dg, 999999
  %or.cond5.not34 = select i1 %i.df, i1 true, i1 %i.dh
  %i.di = icmp ne i32 %.02740, 0
  %or.cond7 = select i1 %or.cond5.not34, i1 true, i1 %i.di
  %i.dj = load i32, ptr @GC_dont_gc, align 4
  %i.dk = icmp ne i32 %i.dj, 0
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.dk
  br i1 %or.cond9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @GC_collect_a_little_inner(i32 noundef 1)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dl = tail call fastcc i32 @GC_collect_or_expand(i64 noundef 1, i32 noundef 0, i32 noundef %.02839)
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.t
  %.129 = phi i32 [ %.02839, %bb.s ], [ 1, %bb.t ]
  %.1 = phi i32 [ 1, %bb.s ], [ %.02740, %bb.t ]
  store atomic i8 0, ptr @GC_collecting monotonic, align 4
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dm = icmp eq ptr %.pre, null
  br i1 %i.dm, label %bb.b, label %._crit_edge, !llvm.loop !332

._crit_edge:                                      ; preds = %GC_continue_reclaim.exit, %GC_new_hblk.exit, %bb.v, %.preheader
  %.lcssa = phi ptr [ %i.f, %.preheader ], [ %i.dc, %GC_new_hblk.exit ], [ %i.bn, %GC_continue_reclaim.exit ], [ %.pre, %bb.v ]
  store i32 0, ptr @GC_fail_count, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %._crit_edge, %bb.u
  %.0 = phi ptr [ %.lcssa, %._crit_edge ], [ null, %bb.u ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GC_alloc_large_and_clear(i64 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @GC_alloc_large(i64 noundef %0, i32 noundef %1, i32 noundef %2) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @GC_debugging_started, align 4
  br i1 %.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [48 x i8], ptr @GC_obj_kinds, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add i64 %0, 4095
  %i.g = and i64 %i.f, -4096
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.a, i8 0, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @GC_collect_or_expand(i64 noundef range(i64 0, 4503599627370496) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = call i32 @pthread_setcancelstate(i32 noundef 1, ptr noundef nonnull %i.a) #45 ; 0 uses
  %i.c = load i32, ptr @GC_incremental, align 4
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load i32, ptr @GC_dont_gc, align 4
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.j, label %bb.b

end_hunk_4
begin_hunk_5_@GC_push_complex_descriptor:bb.a

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.be(ptr noundef nonnull @.str.229) #45
  tail call void @abort() #48
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph77
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph77.epil.preheader

.lr.ph77.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.04675.epil.init = phi ptr [ %.tr, %.lr.ph77.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ]
  %.05074.epil.init = phi ptr [ %.tr56, %.lr.ph77.preheader ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph77.epil

.lr.ph77.epil:                                    ; preds = %.lr.ph77.epil, %.lr.ph77.epil.preheader
  %.04675.epil = phi ptr [ %i.bh, %.lr.ph77.epil ], [ %.04675.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %.05074.epil = phi ptr [ %i.bf, %.lr.ph77.epil ], [ %.05074.epil.init, %.lr.ph77.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph77.epil ], [ 0, %.lr.ph77.epil.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.05074.epil, i64 16 ; 3 uses
  store ptr %.04675.epil, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.05074.epil, i64 24
  store i64 %i.c, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.04675.epil, i64 %i.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph77.epil, !llvm.loop !348

.loopexit:                                        ; preds = %bb.f, %bb.e, %.lr.ph, %.loopexit.loopexit.unr-lcssa, %.lr.ph77.epil, %bb.d, %bb.c, %bb.h, %bb.b
  %.2 = phi ptr [ %i.bf, %.lr.ph77.epil ], [ null, %bb.h ], [ null, %bb.b ], [ null, %.lr.ph ], [ %.tr56, %bb.c ], [ %.tr56, %bb.d ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ], [ %i.ap, %bb.e ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @GC_descr_obj_size(ptr nofree noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %accumulator.tr = phi i64 [ 1, %bb.a ], [ %i.l, %bb.c ] ; 3 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %i.k, %bb.c ]   ; 7 uses
  %i.a = load i64, ptr %.tr, align 8
  switch i64 %i.a, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = mul i64 %i.e, %i.c
  %i.g = mul i64 %i.f, %accumulator.tr
  br label %common.ret33

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = mul i64 %i.i, %accumulator.tr
  br label %tailrecurse

common.ret33:                                     ; preds = %bb.e, %bb.b, %bb.d
  %common.ret33.op = phi i64 [ %accumulator.ret.tr, %bb.d ], [ %i.g, %bb.b ], [ 0, %bb.e ]
  ret i64 %common.ret33.op

bb.d:                                             ; preds = %tailrecurse
  %i.m = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call fastcc i64 @GC_descr_obj_size(ptr noundef %i.q)
  %i.s = add i64 %i.r, %i.o
  %accumulator.ret.tr = mul i64 %i.s, %accumulator.tr
  br label %common.ret33

bb.e:                                             ; preds = %tailrecurse
  %i.t = load ptr, ptr @GC_current_warn_proc, align 8
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -1 to ptr)
  br i1 %i.u, label %common.ret33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.v(ptr noundef nonnull @.str.229) #45
  tail call void @abort() #48
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @GC_push_typed_structures_proc() #2 {
bb.a:
  tail call void @GC_push_all_eager(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 440), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 448))
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @GC_make_sequence_descriptor(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @GC_malloc_kind(i64 noundef 24, i32 noundef 1) #53 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  %.b = load i1, ptr @GC_manual_vdb, align 4
  br i1 %.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = lshr i64 %i.d, 12
  %i.f = lshr i64 %i.d, 18
  %i.g = and i64 %i.f, 4095
  %i.h = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.g
  %i.i = and i64 %i.e, 63
  %i.j = shl nuw i64 1, %i.i
  %i.k = atomicrmw volatile or ptr %i.h, i64 %i.j monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %0) #45, !srcloc !350
  tail call void asm sideeffect " ", "X,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %1) #45, !srcloc !351
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #42

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal void @looping_handler(i32 noundef %0) #38 {
bb.a:
  tail call void (ptr, ...) @GC_err_printf(ptr noundef nonnull @.str.231, i32 noundef %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  br label %bb.b
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #14

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #43

; Function Attrs: noreturn nounwind uwtable
define internal void @GC_fault_handler(i32 %0) #38 {
bb.a:
  tail call void @siglongjmp(ptr noundef nonnull @GC_jmp_buf, i32 noundef 1) #48
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #44

declare i32 @close(i32 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @GC_write_fault_handler(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %0, 11
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = lshr i64 %i.d, 22                        ; 2 uses
  %i.f = and i64 %i.e, 2047
  %i.g = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.f
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ne i64 %i.j, %i.e
  %i.l = icmp ne ptr %.0.i, %i.h
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.m, label %bb.c, label %is_header_found_async.exit, !llvm.loop !352

is_header_found_async.exit:                       ; preds = %bb.c
  %3 = load i64, ptr @GC_page_size, align 8       ; 2 uses
  %i.o = sub i64 0, %3
  %i.p = and i64 %i.o, %i.d
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = lshr i64 %i.d, 12
  %i.s = and i64 %i.r, 1023
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %.not29 = icmp eq ptr %i.u, null
  br i1 %.not29, label %bb.d, label %bb.i

bb.d:                                             ; preds = %is_header_found_async.exit
  %i.v = load ptr, ptr @GC_old_segv_handler, align 8 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.262, ptr noundef %i.b)
  %i.x = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.x(ptr noundef nonnull @.str.263) #45
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %.b = load i1, ptr @GC_old_segv_handler_used_si, align 4
  br i1 %.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void %i.v(i32 noundef 11, ptr noundef nonnull %1, ptr noundef %2) #45
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  tail call void %i.v(i32 noundef 11) #45
  br label %.loopexit

bb.i:                                             ; preds = %is_header_found_async.exit
  %i.y = load i32, ptr @GC_pages_executable, align 4
  %.not27 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not27, i32 3, i32 7
  %i.aa = tail call i32 @mprotect(ptr noundef %i.q, i64 noundef %3, i32 noundef %i.z) #45
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.ac = load i64, ptr @GC_page_size, align 8
  %.fr = freeze i64 %i.ac                         ; 2 uses
  %i.ad = lshr i64 %.fr, 12                       ; 3 uses
  switch i64 %i.ad, label %.lr.ph.preheader.new [
    i64 0, label %.loopexit
    i64 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %.preheader
  %unroll_iter = and i64 %i.ad, 4503599627370494
  br label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr @GC_pages_executable, align 4
  %.not28 = icmp eq i32 %i.ae, 0
  %i.af = load i64, ptr @GC_page_size, align 8    ; 2 uses
  %i.ag = tail call ptr @__errno_location() #51
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.158, ptr noundef %i.q, i64 noundef %i.af, i32 noundef %i.ah)
  %i.ai = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ai(ptr noundef nonnull @.str.159) #45
  tail call void @abort() #48
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.160, ptr noundef %i.q, i64 noundef %i.af, i32 noundef %i.ah)
  %i.aj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.aj(ptr noundef nonnull @.str.161) #45
  tail call void @abort() #48
  unreachable

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.030 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bd, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [4096 x i8], ptr %i.q, i64 %.030
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = lshr i64 %i.al, 12
  %i.an = lshr i64 %i.al, 18
  %i.ao = and i64 %i.an, 4095
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.ao
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = atomicrmw volatile or ptr %i.ap, i64 %i.ar monotonic, align 8 ; 0 uses
  %i.at = getelementptr inbounds nuw [4096 x i8], ptr %i.q, i64 %.030
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4096
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = lshr i64 %i.av, 12
  %i.ax = lshr i64 %i.av, 18
  %i.ay = and i64 %i.ax, 4095
  %i.az = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.ay
  %i.ba = and i64 %i.aw, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = atomicrmw volatile or ptr %i.az, i64 %i.bb monotonic, align 8 ; 0 uses
  %i.bd = add nuw nsw i64 %.030, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !353

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %i.be = and i64 %.fr, 4096
  %lcmp.mod.not = icmp eq i64 %i.be, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader, %.loopexit.loopexit.unr-lcssa
  %.030.epil.init = phi i64 [ 0, %.preheader ], [ %i.bd, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod32 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod32)
  %i.bf = getelementptr inbounds nuw [4096 x i8], ptr %i.q, i64 %.030.epil.init
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = lshr i64 %i.bg, 12
  %i.bi = lshr i64 %i.bg, 18
  %i.bj = and i64 %i.bi, 4095
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 59896), i64 %i.bj
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = atomicrmw volatile or ptr %i.bk, i64 %i.bm monotonic, align 8 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.g, %bb.h
  ret void

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, ...) @GC_log_printf(ptr noundef nonnull @.str.262, ptr noundef %i.b)
  %i.bo = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bo(ptr noundef nonnull @.str.263) #45
  tail call void @abort() #48
  unreachable
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @soft_dirty_open_files() unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca [40 x i8], align 16               ; 6 uses
  %i.c = tail call i32 @getpid() #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 40, ptr noundef nonnull @.str.272, i64 noundef %i.d, ptr noundef nonnull @.str.270) #45 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 39
  store i8 0, ptr %i.f, align 1
  %i.g = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.b, i32 noundef 1) #45 ; 3 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %open_proc_fd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.g, i32 noundef 2, i32 noundef 1) #45
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.k(ptr noundef nonnull @.str.274, i64 noundef 0) #45, !inline_history !354
  br label %bb.d

open_proc_fd.exit:                                ; preds = %bb.a
  %i.l = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.l(ptr noundef nonnull @.str.273, i64 noundef ptrtoint (ptr @.str.270 to i64)) #45, !inline_history !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  store i32 -1, ptr @clear_refs_fd, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #45
  store i32 %i.g, ptr @clear_refs_fd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 40, ptr noundef nonnull @.str.272, i64 noundef %i.d, ptr noundef nonnull @.str.271) #45 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  store i8 0, ptr %i.n, align 1
  %i.o = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 0) #45 ; 3 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.o, i32 noundef 2, i32 noundef 1) #45
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.f, label %open_proc_fd.exit3.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @GC_current_warn_proc, align 8
  tail call void %i.s(ptr noundef nonnull @.str.274, i64 noundef 0) #45, !inline_history !354
  br label %open_proc_fd.exit3.thread

open_proc_fd.exit3.thread:                        ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  store i32 %i.o, ptr @pagemap_fd, align 4
end_hunk_5
