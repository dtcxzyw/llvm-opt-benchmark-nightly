Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_memory_region?download=true
inline.NumInlined: 23
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@intel_memory_regions_hw_probe:bb.a
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.au, ptr noundef %i.av, i64 noundef %i.ao, ptr noundef %i.al, i64 noundef %i.as, ptr noundef %i.ap) #12
  br label %.preheader.split.us.3

__drm_to_dev.exit82.us.2:                         ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.ak, i64 196
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr i8, ptr %i.ak, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.ax, ptr noundef %i.ay, i64 noundef %i.ao, ptr noundef %i.al) #12
  br label %.preheader.split.us.3

.preheader.split.us.3:                            ; preds = %__drm_to_dev.exit82.us.2, %__drm_to_dev.exit80.us.2, %.preheader.split.us.2
  %i.az = getelementptr i8, ptr %0, i64 2952
  %i.ba = load ptr, ptr %i.az, align 8            ; 9 uses
  %.not.us.3 = icmp eq ptr %i.ba, null
  br i1 %.not.us.3, label %.preheader.split.us.4, label %bb.e

bb.e:                                             ; preds = %.preheader.split.us.3
  %i.bb = getelementptr i8, ptr %i.ba, i64 48     ; 3 uses
  %.val75.us.3 = load i64, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.ba, i64 56
  %.val76.us.3 = load i64, ptr %i.bc, align 8
  %reass.sub101.3 = sub i64 %.val76.us.3, %.val75.us.3
  %i.bd = add i64 %reass.sub101.3, 1
  %i.be = lshr i64 %i.bd, 20                      ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ba, i64 112    ; 2 uses
  %.val73.us.3 = load i64, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.ba, i64 120
  %.val74.us.3 = load i64, ptr %i.bg, align 8
  %reass.sub.i77.us.3 = sub i64 %.val74.us.3, %.val73.us.3
  %i.bh = add i64 %reass.sub.i77.us.3, 1          ; 2 uses
  %.not68.us.3 = icmp eq i64 %i.bh, 0
  br i1 %.not68.us.3, label %__drm_to_dev.exit82.us.3, label %__drm_to_dev.exit80.us.3

__drm_to_dev.exit80.us.3:                         ; preds = %bb.e
  %i.bi = lshr i64 %i.bh, 20
  %i.bj = getelementptr i8, ptr %i.ba, i64 196
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr i8, ptr %i.ba, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.bk, ptr noundef %i.bl, i64 noundef %i.be, ptr noundef %i.bb, i64 noundef %i.bi, ptr noundef %i.bf) #12
  br label %.preheader.split.us.4

__drm_to_dev.exit82.us.3:                         ; preds = %bb.e
  %i.bm = getelementptr i8, ptr %i.ba, i64 196
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr i8, ptr %i.ba, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.bn, ptr noundef %i.bo, i64 noundef %i.be, ptr noundef %i.bb) #12
  br label %.preheader.split.us.4

.preheader.split.us.4:                            ; preds = %__drm_to_dev.exit82.us.3, %__drm_to_dev.exit80.us.3, %.preheader.split.us.3
  %i.bp = getelementptr i8, ptr %0, i64 2960
  %i.bq = load ptr, ptr %i.bp, align 8            ; 9 uses
  %.not.us.4 = icmp eq ptr %i.bq, null
  br i1 %.not.us.4, label %.preheader.split.us.5, label %bb.f

bb.f:                                             ; preds = %.preheader.split.us.4
  %i.br = getelementptr i8, ptr %i.bq, i64 48     ; 3 uses
  %.val75.us.4 = load i64, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 56
  %.val76.us.4 = load i64, ptr %i.bs, align 8
  %reass.sub101.4 = sub i64 %.val76.us.4, %.val75.us.4
  %i.bt = add i64 %reass.sub101.4, 1
  %i.bu = lshr i64 %i.bt, 20                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bq, i64 112    ; 2 uses
  %.val73.us.4 = load i64, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %i.bq, i64 120
  %.val74.us.4 = load i64, ptr %i.bw, align 8
  %reass.sub.i77.us.4 = sub i64 %.val74.us.4, %.val73.us.4
  %i.bx = add i64 %reass.sub.i77.us.4, 1          ; 2 uses
  %.not68.us.4 = icmp eq i64 %i.bx, 0
  br i1 %.not68.us.4, label %__drm_to_dev.exit82.us.4, label %__drm_to_dev.exit80.us.4

__drm_to_dev.exit80.us.4:                         ; preds = %bb.f
  %i.by = lshr i64 %i.bx, 20
  %i.bz = getelementptr i8, ptr %i.bq, i64 196
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = getelementptr i8, ptr %i.bq, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.ca, ptr noundef %i.cb, i64 noundef %i.bu, ptr noundef %i.br, i64 noundef %i.by, ptr noundef %i.bv) #12
  br label %.preheader.split.us.5

__drm_to_dev.exit82.us.4:                         ; preds = %bb.f
  %i.cc = getelementptr i8, ptr %i.bq, i64 196
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr i8, ptr %i.bq, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.cd, ptr noundef %i.ce, i64 noundef %i.bu, ptr noundef %i.br) #12
  br label %.preheader.split.us.5

.preheader.split.us.5:                            ; preds = %__drm_to_dev.exit82.us.4, %__drm_to_dev.exit80.us.4, %.preheader.split.us.4
  %i.cf = getelementptr i8, ptr %0, i64 2968
  %i.cg = load ptr, ptr %i.cf, align 8            ; 9 uses
  %.not.us.5 = icmp eq ptr %i.cg, null
  br i1 %.not.us.5, label %.preheader.split.us.6, label %bb.g

bb.g:                                             ; preds = %.preheader.split.us.5
  %i.ch = getelementptr i8, ptr %i.cg, i64 48     ; 3 uses
  %.val75.us.5 = load i64, ptr %i.ch, align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 56
  %.val76.us.5 = load i64, ptr %i.ci, align 8
  %reass.sub101.5 = sub i64 %.val76.us.5, %.val75.us.5
  %i.cj = add i64 %reass.sub101.5, 1
  %i.ck = lshr i64 %i.cj, 20                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cg, i64 112    ; 2 uses
  %.val73.us.5 = load i64, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.cg, i64 120
  %.val74.us.5 = load i64, ptr %i.cm, align 8
  %reass.sub.i77.us.5 = sub i64 %.val74.us.5, %.val73.us.5
  %i.cn = add i64 %reass.sub.i77.us.5, 1          ; 2 uses
  %.not68.us.5 = icmp eq i64 %i.cn, 0
  br i1 %.not68.us.5, label %__drm_to_dev.exit82.us.5, label %__drm_to_dev.exit80.us.5

__drm_to_dev.exit80.us.5:                         ; preds = %bb.g
  %i.co = lshr i64 %i.cn, 20
  %i.cp = getelementptr i8, ptr %i.cg, i64 196
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = getelementptr i8, ptr %i.cg, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.cq, ptr noundef %i.cr, i64 noundef %i.ck, ptr noundef %i.ch, i64 noundef %i.co, ptr noundef %i.cl) #12
  br label %.preheader.split.us.6

__drm_to_dev.exit82.us.5:                         ; preds = %bb.g
  %i.cs = getelementptr i8, ptr %i.cg, i64 196
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr i8, ptr %i.cg, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.ct, ptr noundef %i.cu, i64 noundef %i.ck, ptr noundef %i.ch) #12
  br label %.preheader.split.us.6

.preheader.split.us.6:                            ; preds = %__drm_to_dev.exit82.us.5, %__drm_to_dev.exit80.us.5, %.preheader.split.us.5
  %i.cv = getelementptr i8, ptr %0, i64 2976
  %i.cw = load ptr, ptr %i.cv, align 8            ; 9 uses
  %.not.us.6 = icmp eq ptr %i.cw, null
  br i1 %.not.us.6, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.preheader.split.us.6
  %i.cx = getelementptr i8, ptr %i.cw, i64 48     ; 3 uses
  %.val75.us.6 = load i64, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %i.cw, i64 56
  %.val76.us.6 = load i64, ptr %i.cy, align 8
  %reass.sub101.6 = sub i64 %.val76.us.6, %.val75.us.6
  %i.cz = add i64 %reass.sub101.6, 1
  %i.da = lshr i64 %i.cz, 20                      ; 2 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 112    ; 2 uses
  %.val73.us.6 = load i64, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %i.cw, i64 120
  %.val74.us.6 = load i64, ptr %i.dc, align 8
  %reass.sub.i77.us.6 = sub i64 %.val74.us.6, %.val73.us.6
  %i.dd = add i64 %reass.sub.i77.us.6, 1          ; 2 uses
  %.not68.us.6 = icmp eq i64 %i.dd, 0
  br i1 %.not68.us.6, label %__drm_to_dev.exit82.us.6, label %__drm_to_dev.exit80.us.6

__drm_to_dev.exit80.us.6:                         ; preds = %bb.h
  %i.de = lshr i64 %i.dd, 20
  %i.df = getelementptr i8, ptr %i.cw, i64 196
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr i8, ptr %i.cw, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.dg, ptr noundef %i.dh, i64 noundef %i.da, ptr noundef %i.cx, i64 noundef %i.de, ptr noundef %i.db) #12
  br label %.loopexit

__drm_to_dev.exit82.us.6:                         ; preds = %bb.h
  %i.di = getelementptr i8, ptr %i.cw, i64 196
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = getelementptr i8, ptr %i.cw, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.dj, ptr noundef %i.dk, i64 noundef %i.da, ptr noundef %i.cx) #12
  br label %.loopexit

bb.i:                                             ; preds = %bb.a, %bb.w
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.w ] ; 5 uses
  %i.dl = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 24
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 1, %indvars.iv
  %i.dq = and i64 %i.dp, %i.do
  %.not69 = icmp eq i64 %i.dq, 0
  br i1 %.not69, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dr = getelementptr [4 x i8], ptr @intel_region_map, i64 %indvars.iv
  %i.ds = load i16, ptr %i.dr, align 4            ; 2 uses
  switch i16 %i.ds, label %bb.w [
    i16 0, label %bb.k
    i16 3, label %bb.n
    i16 2, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.dt = getelementptr i8, ptr %i.dl, i64 28
  %i.du = load i64, ptr %i.dt, align 4
  %i.dv = and i64 %i.du, 4
  %.not70 = icmp eq i64 %i.dv, 0
  br i1 %.not70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = tail call ptr @i915_gem_ttm_system_setup(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0) #12
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.dx = tail call ptr @i915_gem_shmem_setup(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0) #12
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.dy = tail call ptr @i915_gem_stolen_lmem_setup(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext 0) #12 ; 4 uses
  %i.dz = icmp ugt ptr %i.dy, inttoptr (i64 -4096 to ptr)
  br i1 %i.dz, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.dy, ptr %i.b, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  %i.ea = tail call ptr @i915_gem_stolen_smem_setup(ptr noundef %0, i16 noundef zeroext 2, i16 noundef zeroext 0) #12 ; 4 uses
  %i.eb = icmp ugt ptr %i.ea, inttoptr (i64 -4096 to ptr)
  br i1 %i.eb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ea, ptr %i.b, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o, %bb.l, %bb.m
  %.060 = phi ptr [ %i.dw, %bb.l ], [ %i.dx, %bb.m ], [ %i.dy, %bb.n ], [ %i.dy, %bb.o ], [ %i.ea, %bb.p ], [ %i.ea, %bb.q ] ; 5 uses
  %i.ec = icmp ugt ptr %.060, inttoptr (i64 -4096 to ptr)
  br i1 %i.ec, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ed = zext nneg i16 %i.ds to i32
  %i.ee = ptrtoint ptr %.060 to i64
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = getelementptr i8, ptr %0, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  br label %bb.ae

bb.u:                                             ; preds = %bb.r
  %.not71 = icmp eq ptr %.060, null
  br i1 %.not71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr i8, ptr %.060, i64 196
  %i.ej = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %.060, ptr %i.ek, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %bb.j, %bb.v, %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %.preheader, label %bb.i, !llvm.loop !16

bb.x:                                             ; preds = %.preheader.split.split.preheader
  %i.el = getelementptr i8, ptr %i.e, i64 48      ; 3 uses
  %.val75 = load i64, ptr %i.el, align 8
  %i.em = getelementptr i8, ptr %i.e, i64 56
  %.val76 = load i64, ptr %i.em, align 8
  %reass.sub = sub i64 %.val76, %.val75
  %i.en = add i64 %reass.sub, 1
  %i.eo = lshr i64 %i.en, 20                      ; 2 uses
  %i.ep = getelementptr i8, ptr %i.e, i64 112     ; 2 uses
  %.val73 = load i64, ptr %i.ep, align 8
  %i.eq = getelementptr i8, ptr %i.e, i64 120
  %.val74 = load i64, ptr %i.eq, align 8
  %reass.sub.i77 = sub i64 %.val74, %.val73
  %i.er = add i64 %reass.sub.i77, 1               ; 2 uses
  %.not68 = icmp eq i64 %i.er, 0
  br i1 %.not68, label %__drm_to_dev.exit82, label %__drm_to_dev.exit80

__drm_to_dev.exit80:                              ; preds = %bb.x
  %i.es = lshr i64 %i.er, 20
  %i.et = load ptr, ptr %i.d, align 8
  %i.eu = getelementptr i8, ptr %i.e, i64 196
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = getelementptr i8, ptr %i.e, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.et, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.ev, ptr noundef %i.ew, i64 noundef %i.eo, ptr noundef %i.el, i64 noundef %i.es, ptr noundef %i.ep) #12
  br label %.preheader.split.split.1

__drm_to_dev.exit82:                              ; preds = %bb.x
  %i.ex = load ptr, ptr %i.d, align 8
  %i.ey = getelementptr i8, ptr %i.e, i64 196
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = getelementptr i8, ptr %i.e, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ex, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.ez, ptr noundef %i.fa, i64 noundef %i.eo, ptr noundef %i.el) #12
  br label %.preheader.split.split.1

.preheader.split.split.1:                         ; preds = %__drm_to_dev.exit80, %__drm_to_dev.exit82, %.preheader.split.split.preheader
  %i.fb = getelementptr i8, ptr %0, i64 2936
  %i.fc = load ptr, ptr %i.fb, align 8            ; 9 uses
  %.not.1 = icmp eq ptr %i.fc, null
  br i1 %.not.1, label %.preheader.split.split.2, label %bb.y

bb.y:                                             ; preds = %.preheader.split.split.1
  %i.fd = getelementptr i8, ptr %i.fc, i64 48     ; 3 uses
  %.val75.1 = load i64, ptr %i.fd, align 8
  %i.fe = getelementptr i8, ptr %i.fc, i64 56
  %.val76.1 = load i64, ptr %i.fe, align 8
  %reass.sub.1 = sub i64 %.val76.1, %.val75.1
  %i.ff = add i64 %reass.sub.1, 1
  %i.fg = lshr i64 %i.ff, 20                      ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fc, i64 112    ; 2 uses
  %.val73.1 = load i64, ptr %i.fh, align 8
  %i.fi = getelementptr i8, ptr %i.fc, i64 120
  %.val74.1 = load i64, ptr %i.fi, align 8
  %reass.sub.i77.1 = sub i64 %.val74.1, %.val73.1
  %i.fj = add i64 %reass.sub.i77.1, 1             ; 2 uses
  %.not68.1 = icmp eq i64 %i.fj, 0
  br i1 %.not68.1, label %__drm_to_dev.exit82.1, label %__drm_to_dev.exit80.1

__drm_to_dev.exit80.1:                            ; preds = %bb.y
  %i.fk = lshr i64 %i.fj, 20
  %i.fl = load ptr, ptr %i.d, align 8
  %i.fm = getelementptr i8, ptr %i.fc, i64 196
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = getelementptr i8, ptr %i.fc, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fl, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.fn, ptr noundef %i.fo, i64 noundef %i.fg, ptr noundef %i.fd, i64 noundef %i.fk, ptr noundef %i.fh) #12
  br label %.preheader.split.split.2

__drm_to_dev.exit82.1:                            ; preds = %bb.y
  %i.fp = load ptr, ptr %i.d, align 8
  %i.fq = getelementptr i8, ptr %i.fc, i64 196
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = getelementptr i8, ptr %i.fc, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fp, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.fr, ptr noundef %i.fs, i64 noundef %i.fg, ptr noundef %i.fd) #12
  br label %.preheader.split.split.2

.preheader.split.split.2:                         ; preds = %__drm_to_dev.exit82.1, %__drm_to_dev.exit80.1, %.preheader.split.split.1
  %i.ft = getelementptr i8, ptr %0, i64 2944
  %i.fu = load ptr, ptr %i.ft, align 8            ; 9 uses
  %.not.2 = icmp eq ptr %i.fu, null
  br i1 %.not.2, label %.preheader.split.split.3, label %bb.z

bb.z:                                             ; preds = %.preheader.split.split.2
  %i.fv = getelementptr i8, ptr %i.fu, i64 48     ; 3 uses
  %.val75.2 = load i64, ptr %i.fv, align 8
  %i.fw = getelementptr i8, ptr %i.fu, i64 56
  %.val76.2 = load i64, ptr %i.fw, align 8
  %reass.sub.2 = sub i64 %.val76.2, %.val75.2
  %i.fx = add i64 %reass.sub.2, 1
  %i.fy = lshr i64 %i.fx, 20                      ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fu, i64 112    ; 2 uses
  %.val73.2 = load i64, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %i.fu, i64 120
  %.val74.2 = load i64, ptr %i.ga, align 8
  %reass.sub.i77.2 = sub i64 %.val74.2, %.val73.2
  %i.gb = add i64 %reass.sub.i77.2, 1             ; 2 uses
  %.not68.2 = icmp eq i64 %i.gb, 0
  br i1 %.not68.2, label %__drm_to_dev.exit82.2, label %__drm_to_dev.exit80.2

__drm_to_dev.exit80.2:                            ; preds = %bb.z
  %i.gc = lshr i64 %i.gb, 20
  %i.gd = load ptr, ptr %i.d, align 8
  %i.ge = getelementptr i8, ptr %i.fu, i64 196
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = getelementptr i8, ptr %i.fu, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gd, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.gf, ptr noundef %i.gg, i64 noundef %i.fy, ptr noundef %i.fv, i64 noundef %i.gc, ptr noundef %i.fz) #12
  br label %.preheader.split.split.3

__drm_to_dev.exit82.2:                            ; preds = %bb.z
  %i.gh = load ptr, ptr %i.d, align 8
  %i.gi = getelementptr i8, ptr %i.fu, i64 196
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = getelementptr i8, ptr %i.fu, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gh, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.gj, ptr noundef %i.gk, i64 noundef %i.fy, ptr noundef %i.fv) #12
  br label %.preheader.split.split.3

.preheader.split.split.3:                         ; preds = %__drm_to_dev.exit82.2, %__drm_to_dev.exit80.2, %.preheader.split.split.2
  %i.gl = getelementptr i8, ptr %0, i64 2952
  %i.gm = load ptr, ptr %i.gl, align 8            ; 9 uses
  %.not.3 = icmp eq ptr %i.gm, null
  br i1 %.not.3, label %.preheader.split.split.4, label %bb.aa

bb.aa:                                            ; preds = %.preheader.split.split.3
  %i.gn = getelementptr i8, ptr %i.gm, i64 48     ; 3 uses
  %.val75.3 = load i64, ptr %i.gn, align 8
  %i.go = getelementptr i8, ptr %i.gm, i64 56
  %.val76.3 = load i64, ptr %i.go, align 8
  %reass.sub.3 = sub i64 %.val76.3, %.val75.3
  %i.gp = add i64 %reass.sub.3, 1
  %i.gq = lshr i64 %i.gp, 20                      ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gm, i64 112    ; 2 uses
  %.val73.3 = load i64, ptr %i.gr, align 8
  %i.gs = getelementptr i8, ptr %i.gm, i64 120
  %.val74.3 = load i64, ptr %i.gs, align 8
  %reass.sub.i77.3 = sub i64 %.val74.3, %.val73.3
  %i.gt = add i64 %reass.sub.i77.3, 1             ; 2 uses
  %.not68.3 = icmp eq i64 %i.gt, 0
  br i1 %.not68.3, label %__drm_to_dev.exit82.3, label %__drm_to_dev.exit80.3

__drm_to_dev.exit80.3:                            ; preds = %bb.aa
  %i.gu = lshr i64 %i.gt, 20
  %i.gv = load ptr, ptr %i.d, align 8
  %i.gw = getelementptr i8, ptr %i.gm, i64 196
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = getelementptr i8, ptr %i.gm, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gv, i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %i.gx, ptr noundef %i.gy, i64 noundef %i.gq, ptr noundef %i.gn, i64 noundef %i.gu, ptr noundef %i.gr) #12
  br label %.preheader.split.split.4

__drm_to_dev.exit82.3:                            ; preds = %bb.aa
  %i.gz = load ptr, ptr %i.d, align 8
  %i.ha = getelementptr i8, ptr %i.gm, i64 196
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = getelementptr i8, ptr %i.gm, i64 200
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gz, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.hb, ptr noundef %i.hc, i64 noundef %i.gq, ptr noundef %i.gn) #12
  br label %.preheader.split.split.4

.preheader.split.split.4:                         ; preds = %__drm_to_dev.exit82.3, %__drm_to_dev.exit80.3, %.preheader.split.split.3
  %i.hd = getelementptr i8, ptr %0, i64 2960
  %i.he = load ptr, ptr %i.hd, align 8            ; 9 uses
  %.not.4 = icmp eq ptr %i.he, null
  br i1 %.not.4, label %.preheader.split.split.5, label %bb.ab

bb.ab:                                            ; preds = %.preheader.split.split.4
  %i.hf = getelementptr i8, ptr %i.he, i64 48     ; 3 uses
  %.val75.4 = load i64, ptr %i.hf, align 8
  %i.hg = getelementptr i8, ptr %i.he, i64 56
  %.val76.4 = load i64, ptr %i.hg, align 8
  %reass.sub.4 = sub i64 %.val76.4, %.val75.4
  %i.hh = add i64 %reass.sub.4, 1
  %i.hi = lshr i64 %i.hh, 20                      ; 2 uses
  %i.hj = getelementptr i8, ptr %i.he, i64 112    ; 2 uses
  %.val73.4 = load i64, ptr %i.hj, align 8
  %i.hk = getelementptr i8, ptr %i.he, i64 120
  %.val74.4 = load i64, ptr %i.hk, align 8
  %reass.sub.i77.4 = sub i64 %.val74.4, %.val73.4
  %i.hl = add i64 %reass.sub.i77.4, 1             ; 2 uses
end_hunk_0
