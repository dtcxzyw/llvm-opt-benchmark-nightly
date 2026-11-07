Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 300
begin_hunk_0_@jar_xm_get_position:bb.a
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.e = load i8, ptr %i.d, align 4
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  store i8 %i.h, ptr %2, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.j = load i8, ptr %i.i, align 1
  store i8 %i.j, ptr %3, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not18 = icmp eq ptr %4, null
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %4, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @jar_xm_get_latest_trigger_of_instrument(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr [272 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @jar_xm_get_latest_trigger_of_sample(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr [272 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i16 %2 to i64
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load i64, ptr %i.i, align 8
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @jar_xm_get_latest_trigger_of_channel(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr [256 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -112
  %i.f = load i64, ptr %i.e, align 8
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden i64 @jar_xm_get_remaining_samples(ptr noundef initializes((409, 410)) %0) local_unnamed_addr #8 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 409
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.a ]
  %i.e = load float, ptr %i.d, align 8
  %i.f = uitofp i64 %.010 to float
  %i.g = fadd float %i.e, %i.f
  %i.h = fptoui float %i.g to i64                 ; 2 uses
  store float 0.000000e+00, ptr %i.d, align 8
  tail call fastcc void @jar_xm_tick(ptr noundef nonnull %0)
  %i.i = load i8, ptr %i.a, align 8
  %i.j = icmp eq i8 %i.i, %i.b
  br i1 %i.j, label %bb.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  store i8 %i.b, ptr %i.a, align 8
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jar_xm_tick(ptr nofree noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 374 ; 23 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %jar_xm_row.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !range !66, !noundef !53
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 394
  %i.h = load i8, ptr %i.g, align 2               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  store i8 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 395 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 373
  store i8 %i.k, ptr %i.l, align 1
  store i8 0, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 393
  store i8 0, ptr %i.m, align 1
  store i8 0, ptr %i.j, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i8 %i.h to i16
  %.not.i.i = icmp ugt i16 %i.o, %i.p
  br i1 %.not.i.i, label %jar_xm_post_pattern_change.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i16, ptr %i.q, align 4
  %i.s = trunc i16 %i.r to i8                     ; 2 uses
  store i8 %i.s, ptr %i.i, align 4
  br label %jar_xm_post_pattern_change.exit.sink.split.i

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 393 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !range !66, !noundef !53
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 3 uses
  %i.x = load i8, ptr %i.w, align 4               ; 2 uses
  br i1 %i.v, label %bb.f, label %jar_xm_post_pattern_change.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = add i8 %i.x, 1                           ; 3 uses
  store i8 %i.y, ptr %i.w, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 395 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 373
  store i8 %i.aa, ptr %i.ab, align 1
  store i8 0, ptr %i.t, align 1
  store i8 0, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i8 %i.y to i16
  %.not.i61.i = icmp ugt i16 %i.ad, %i.ae
  br i1 %.not.i61.i, label %jar_xm_post_pattern_change.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = trunc i16 %i.ag to i8                   ; 2 uses
  store i8 %i.ah, ptr %i.w, align 4
  br label %jar_xm_post_pattern_change.exit.sink.split.i

jar_xm_post_pattern_change.exit.sink.split.i:     ; preds = %bb.g, %bb.d
  %.ph.i = phi i8 [ %i.s, %bb.d ], [ %i.ah, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ak = load <2 x i16>, ptr %i.ai, align 4
  store <2 x i16> %i.ak, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.am = load float, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %i.am, ptr %i.an, align 8
  br label %jar_xm_post_pattern_change.exit.i

jar_xm_post_pattern_change.exit.i:                ; preds = %jar_xm_post_pattern_change.exit.sink.split.i, %bb.f, %bb.e, %bb.c
  %i.ao = phi i8 [ %i.h, %bb.c ], [ %i.x, %bb.e ], [ %i.y, %bb.f ], [ %.ph.i, %jar_xm_post_pattern_change.exit.sink.split.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 4 uses
  %i.at = zext i8 %i.ao to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %.not67.i = icmp eq i16 %i.az, 0
  br i1 %.not67.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %jar_xm_post_pattern_change.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.n
  %1 = trunc nuw i8 %.1.i to i1
  br i1 %1, label %bb.o, label %._crit_edge.i.._crit_edge.thread.i_crit_edge

._crit_edge.i.._crit_edge.thread.i_crit_edge:     ; preds = %._crit_edge.i
  %.pre = load i8, ptr %i.as, align 4
  %.pre303 = zext i8 %.pre to i64
  br label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.n, %.lr.ph.i
  %i.bd = phi i16 [ %i.az, %.lr.ph.i ], [ %i.bz, %bb.n ]
  %.066.i = phi i8 [ 0, %.lr.ph.i ], [ %i.by, %bb.n ] ; 2 uses
  %.05465.i = phi i8 [ 0, %.lr.ph.i ], [ %.1.i, %bb.n ]
  %i.be = zext i16 %i.bd to i64
  %i.bf = load ptr, ptr %i.ba, align 8
  %i.bg = load i8, ptr %i.bb, align 1
  %i.bh = zext i8 %i.bg to i64
  %i.bi = mul nuw nsw i64 %i.bh, %i.be
  %i.bj = getelementptr inbounds nuw [5 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = zext i8 %.066.i to i64                  ; 2 uses
  %i.bl = getelementptr inbounds nuw [5 x i8], ptr %i.bj, i64 %i.bk ; 4 uses
  %i.bm = load ptr, ptr %i.bc, align 8
  %i.bn = getelementptr inbounds nuw [256 x i8], ptr %i.bm, i64 %i.bk ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bl, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %.not58.i = icmp eq i8 %i.bq, 14
  br i1 %.not58.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %i.bt = and i8 %i.bs, -16
  %.not59.i = icmp eq i8 %i.bt, -48
  br i1 %.not59.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call fastcc void @jar_xm_handle_note_and_instrument(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bl)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bu = and i8 %i.bs, 15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 105
  store i8 %i.bu, ptr %i.bv, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %2 = trunc nuw i8 %.05465.i to i1
  br i1 %2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 107
  %i.bx = load i8, ptr %i.bw, align 1
  %.not60.i = icmp ne i8 %i.bx, 0
  %spec.select.i = zext i1 %.not60.i to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.i = phi i8 [ 1, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %i.by = add i8 %.066.i, 1                       ; 2 uses
  %i.bz = load i16, ptr %i.ay, align 2            ; 2 uses
  %i.ca = zext i8 %i.by to i16
  %i.cb = icmp ugt i16 %i.bz, %i.ca
  br i1 %i.cb, label %bb.h, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i.._crit_edge.thread.i_crit_edge, %jar_xm_post_pattern_change.exit.i
  %.pre-phi = phi i64 [ %.pre303, %._crit_edge.i.._crit_edge.thread.i_crit_edge ], [ %i.at, %jar_xm_post_pattern_change.exit.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = shl nuw nsw i64 %.pre-phi, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 373
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ch ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1             ; 2 uses
  %i.cl = add i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i8 %i.ck, ptr %i.cm, align 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 373 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = add i8 %i.co, 1                         ; 3 uses
  store i8 %i.cp, ptr %i.cn, align 1
  %i.cq = load i8, ptr %i.d, align 8, !range !66, !noundef !53
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %jar_xm_row.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 393
  %i.ct = load i8, ptr %i.cs, align 1, !range !66, !noundef !53
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %jar_xm_row.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = load i16, ptr %i.ax, align 8
  %i.cw = zext i8 %i.cp to i16
  %.not.i = icmp ule i16 %i.cv, %i.cw
  %i.cx = icmp eq i8 %i.cp, 0
  %or.cond.i = or i1 %i.cx, %.not.i
  br i1 %or.cond.i, label %bb.r, label %jar_xm_row.exit

bb.r:                                             ; preds = %bb.q
  %i.cy = load i8, ptr %i.as, align 4
  %i.cz = add i8 %i.cy, 1                         ; 2 uses
  store i8 %i.cz, ptr %i.as, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 395 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1
  store i8 %i.db, ptr %i.cn, align 1
  store i8 0, ptr %i.da, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = zext i8 %i.cz to i16
  %.not.i63.i = icmp ugt i16 %i.dd, %i.de
  br i1 %.not.i63.i, label %jar_xm_row.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dg = load i16, ptr %i.df, align 4
  %i.dh = trunc i16 %i.dg to i8
  store i8 %i.dh, ptr %i.as, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.dk = load <2 x i16>, ptr %i.di, align 4
  store <2 x i16> %i.dk, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dm = load float, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %i.dm, ptr %i.dn, align 8
  br label %jar_xm_row.exit

jar_xm_row.exit:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.a
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2
  %.not299 = icmp eq i16 %i.dp, 0
  br i1 %.not299, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %jar_xm_row.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 62
  br label %bb.t

._crit_edge:                                      ; preds = %bb.fw, %jar_xm_row.exit
  %i.dv = load i16, ptr %i.a, align 2
  %i.dw = add i16 %i.dv, 1                        ; 2 uses
  store i16 %i.dw, ptr %i.a, align 2
  %i.dx = zext i16 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.dz = load i16, ptr %i.dy, align 4
  %i.ea = zext i16 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 4
  %i.ed = zext i16 %i.ec to i32
  %i.ee = add nuw nsw i32 %i.ed, %i.ea
  %.not = icmp samesign ugt i32 %i.ee, %i.dx
  br i1 %.not, label %bb.fy, label %bb.fx

bb.t:                                             ; preds = %.lr.ph, %bb.fw
  %.0204298 = phi i8 [ 0, %.lr.ph ], [ %i.aeg, %bb.fw ] ; 2 uses
  %i.ef = load ptr, ptr %i.dq, align 8
  %i.eg = zext i8 %.0204298 to i64
  %i.eh = getelementptr inbounds nuw [256 x i8], ptr %i.ef, i64 %i.eg ; 128 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 8 uses
  %i.ej = load ptr, ptr %i.ei, align 8            ; 5 uses
  %.not.i228 = icmp eq ptr %i.ej, null
  br i1 %.not.i228, label %jar_xm_autovibrato.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 174
  %i.el = load i8, ptr %i.ek, align 2, !range !66, !noundef !53
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 62
  %i.eo = load i8, ptr %i.en, align 2, !range !66, !noundef !53
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 244
  %i.er = load i16, ptr %i.eq, align 4
  %i.es = uitofp i16 %i.er to float
  %i.et = fmul nnan float %i.es, f0x37800000
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eh, i64 64 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 8
  %i.ew = fsub float %i.ev, %i.et                 ; 2 uses
  %i.ex = fcmp olt float %i.ew, 0.000000e+00
  %spec.store.select.i = select i1 %i.ex, float 0.000000e+00, float %i.ew
  store float %spec.store.select.i, ptr %i.eu, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ej, i64 122
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 76
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eh, i64 68
  tail call fastcc void @jar_xm_envelope_tick(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ez, ptr noundef nonnull %i.fa)
  %.pre.i = load ptr, ptr %i.ei, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.fb = phi ptr [ %.pre.i, %bb.x ], [ %i.ej, %bb.u ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 230
  %i.fd = load i8, ptr %i.fc, align 2, !range !66, !noundef !53
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %jar_xm_envelopes.exit, label %jar_xm_envelopes.exit.thread

jar_xm_envelopes.exit:                            ; preds = %bb.y
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 178
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eh, i64 78
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  tail call fastcc void @jar_xm_envelope_tick(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fh)
  %.pr.pre = load ptr, ptr %i.ei, align 8         ; 2 uses
  %i.fi = icmp eq ptr %.pr.pre, null
  br i1 %i.fi, label %jar_xm_autovibrato.exit, label %jar_xm_envelopes.exit.thread

jar_xm_envelopes.exit.thread:                     ; preds = %bb.y, %jar_xm_envelopes.exit
  %.pr336 = phi ptr [ %.pr.pre, %jar_xm_envelopes.exit ], [ %i.fb, %bb.y ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pr336, i64 241 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %jar_xm_autovibrato.exit, label %bb.z

bb.z:                                             ; preds = %jar_xm_envelopes.exit.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eh, i64 60 ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 4            ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.pr336, i64 240
  %i.fp = load i8, ptr %i.fo, align 8             ; 2 uses
  %i.fq = zext i8 %i.fp to i16
  %i.fr = icmp ult i16 %i.fn, %i.fq
  %i.fs = uitofp i16 %i.fn to float
  %i.ft = uitofp i8 %i.fp to float
  %i.fu = fdiv float %i.fs, %i.ft
  %.0.i = select i1 %i.fr, float %i.fu, float 1.000000e+00
  %i.fv = add i16 %i.fn, 1
  store i16 %i.fv, ptr %i.fm, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %.pr336, i64 242
  %i.fx = load i8, ptr %i.fw, align 2
  %i.fy = getelementptr inbounds nuw i8, ptr %.pr336, i64 236
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = trunc i16 %i.fn to i8
  %i.gb = mul i8 %i.fx, %i.ga                     ; 2 uses
  %i.gc = lshr i8 %i.gb, 2                        ; 3 uses
  switch i32 %i.fz, label %jar_xm_waveform.exit.i [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gd = uitofp nneg i8 %i.gc to float
  %i.ge = fmul nnan float %i.gd, f0x40C90FD8
  %i.gf = fmul nnan float %i.ge, 1.562500e-02
  %i.gg = tail call float @sinf(float noundef %i.gf) #61
  %i.gh = fneg float %i.gg
  br label %jar_xm_waveform.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.gi = zext nneg i8 %i.gc to i32
  %i.gj = sub nsw i32 32, %i.gi
  %i.gk = sitofp i32 %i.gj to float
  %i.gl = fmul nnan float %i.gk, 3.125000e-02
  br label %jar_xm_waveform.exit.i

bb.ac:                                            ; preds = %bb.z
  %i.gm = icmp slt i8 %i.gb, 0
  %i.gn = select i1 %i.gm, float 1.000000e+00, float -1.000000e+00
  br label %jar_xm_waveform.exit.i

bb.ad:                                            ; preds = %bb.z
  %i.go = load i32, ptr @jar_xm_waveform.next_rand, align 4
  %i.gp = mul i32 %i.go, 1103515245
  %i.gq = add i32 %i.gp, 12345                    ; 2 uses
  store i32 %i.gq, ptr @jar_xm_waveform.next_rand, align 4
  %i.gr = lshr i32 %i.gq, 16
end_hunk_0
