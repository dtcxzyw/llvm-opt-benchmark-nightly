Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_huf?download=true
inline.NumInlined: 45
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@internal_huf_decompress:bb.a
  store <2 x i64> %i.jz, ptr %i.kb, align 8, !tbaa !10
  %index.next278 = add nuw i64 %index272, 4       ; 2 uses
  %vec.ind.next279 = add nuw nsw <2 x i64> %vec.ind273, splat (i64 4)
  %i.kc = icmp eq i64 %index.next278, 56
  br i1 %i.kc, label %scalar.ph269, label %vector.body271, !llvm.loop !81

bb.ak:                                            ; preds = %bb.al, %.critedge164.i
  %indvars.iv.i.i = phi i64 [ 0, %.critedge164.i ], [ %indvars.iv.next.i.i.1, %bb.al ] ; 7 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.ke = load i64, ptr %i.kd, align 16, !tbaa !10 ; 2 uses
  %.not82.i.i = icmp eq i64 %i.ke, -1
  %i.kf = sub nuw nsw i64 64, %indvars.iv.i.i
  %i.kg = shl i64 %i.ke, %i.kf
  %.sink.i.i = select i1 %.not82.i.i, i64 -1, i64 %i.kg
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.i.i
  store i64 %.sink.i.i, ptr %i.kh, align 8, !tbaa !10
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 58
  br i1 %exitcond.not.i.i, label %vector.ph270, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10 ; 2 uses
  %.not82.i.i.1 = icmp eq i64 %i.kj, -1
  %i.kk = sub nuw nsw i64 63, %indvars.iv.i.i
  %i.kl = shl i64 %i.kj, %i.kk
  %.sink.i.i.1 = select i1 %.not82.i.i.1, i64 -1, i64 %i.kl
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.next.i.i
  store i64 %.sink.i.i.1, ptr %i.km, align 8, !tbaa !10
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.ak

vector.body283:                                   ; preds = %scalar.ph269, %vector.body283
  %index284 = phi i64 [ %index.next285.1, %vector.body283 ], [ 0, %scalar.ph269 ] ; 4 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %index284 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store <4 x i32> splat (i32 65535), ptr %i.kn, align 4, !tbaa !22
  store <4 x i32> splat (i32 65535), ptr %i.ko, align 4, !tbaa !22
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %index284 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store <4 x i8> zeroinitializer, ptr %i.kp, align 1, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %i.kq, align 1, !tbaa !28
  %index.next285 = or disjoint i64 %index284, 8   ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %index.next285 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store <4 x i32> splat (i32 65535), ptr %i.kr, align 4, !tbaa !22
  store <4 x i32> splat (i32 65535), ptr %i.ks, align 4, !tbaa !22
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ln, i64 %index.next285 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store <4 x i8> zeroinitializer, ptr %i.kt, align 1, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %i.ku, align 1, !tbaa !28
  %index.next285.1 = add nuw nsw i64 %index284, 16 ; 2 uses
  %i.kv = icmp eq i64 %index.next285.1, 4096
  br i1 %i.kv, label %.critedge86.preheader.i.i, label %vector.body283, !llvm.loop !82

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph269
  %i.kw = zext i8 %i.du to i64
  %i.kx = zext nneg i32 %i.bo to i64
  br label %.lr.ph.i183.i

scalar.ph269:                                     ; preds = %vector.body271
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 262616
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !10
  %i.lc = lshr i64 %i.lb, 7
  %i.ld = sub i64 %i.kz, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 263096
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.lg = load i64, ptr %i.lf, align 16, !tbaa !10
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 262624
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !10
  %i.lj = lshr i64 %i.li, 6
  %i.lk = sub i64 %i.lg, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 263104
  store i64 %i.lk, ptr %i.ll, align 8, !tbaa !10
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 263112 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 279496 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 12
  br i1 %.not154240.i, label %vector.body283, label %.lr.ph.preheader.i.i

.critedge86.preheader.i.i:                        ; preds = %.critedge84.i.i, %vector.body283
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 262256
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, -1
  br i1 %i.lr, label %.critedge86.i.i, label %bb.ar

.lr.ph.i183.i:                                    ; preds = %.critedge84.i.i, %.lr.ph.preheader.i.i
  %.06994.i.i = phi i64 [ %i.mh, %.critedge84.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.ls = shl nuw i64 %.06994.i.i, 52             ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %.06994.i.i ; 2 uses
  store i32 65535, ptr %i.lt, align 4, !tbaa !22
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.06994.i.i ; 2 uses
  store i8 0, ptr %i.lu, align 1, !tbaa !28
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i183.i
  %indvars.iv106.i.i = phi i64 [ %i.kw, %.lr.ph.i183.i ], [ %indvars.iv.next107.i.i, %bb.ap ] ; 6 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv106.i.i
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !10
  %.not80.i.i = icmp ugt i64 %i.lw, %i.ls
  br i1 %.not80.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lx = trunc i64 %indvars.iv106.i.i to i8
  store i8 %i.lx, ptr %i.lu, align 1, !tbaa !28
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv106.i.i
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !10
  %i.ma = sub nsw i64 64, %indvars.iv106.i.i
  %i.mb = and i64 %i.ma, 4294967295
  %i.mc = lshr i64 %i.ls, %i.mb
  %i.md = add i64 %i.lz, %i.mc                    ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.kx
  br i1 %i.me, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not81.i.i = icmp eq ptr %.060, null
  br i1 %.not81.i.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.ap:                                            ; preds = %bb.am
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1
  %exitcond109.not.i.i = icmp eq i64 %indvars.iv106.i.i, %.pre181
  br i1 %exitcond109.not.i.i, label %.critedge84.i.i, label %bb.am, !llvm.loop !83

bb.aq:                                            ; preds = %bb.an
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.md
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !22
  store i32 %i.mg, ptr %i.lt, align 4, !tbaa !22
  br label %.critedge84.i.i

.critedge84.i.i:                                  ; preds = %bb.ap, %bb.aq
  %i.mh = add nuw nsw i64 %.06994.i.i, 1          ; 2 uses
  %exitcond110.i.i = icmp eq i64 %i.mh, 4096
  br i1 %exitcond110.i.i, label %.critedge86.preheader.i.i, label %.lr.ph.i183.i, !llvm.loop !84

.critedge86.i.i:                                  ; preds = %.critedge86.preheader.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 262248
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !10 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, -1
  br i1 %i.mk, label %.critedge86.1.i.i, label %bb.ar

.critedge86.1.i.i:                                ; preds = %.critedge86.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 262240
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !10 ; 2 uses
  %i.mn = icmp eq i64 %i.mm, -1
  br i1 %i.mn, label %.critedge86.2.i.i, label %bb.ar

.critedge86.2.i.i:                                ; preds = %.critedge86.1.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 262232
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !10 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, -1
  br i1 %i.mq, label %.critedge86.3.i.i, label %bb.ar

.critedge86.3.i.i:                                ; preds = %.critedge86.2.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 262224
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !10 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, -1
  br i1 %i.mt, label %.critedge86.4.i.i, label %bb.ar

.critedge86.4.i.i:                                ; preds = %.critedge86.3.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 262216
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !10 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, -1
  br i1 %i.mw, label %.critedge86.5.i.i, label %bb.ar

.critedge86.5.i.i:                                ; preds = %.critedge86.4.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 262208
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !10 ; 2 uses
  %i.mz = icmp eq i64 %i.my, -1
  br i1 %i.mz, label %.critedge86.6.i.i, label %bb.ar

.critedge86.6.i.i:                                ; preds = %.critedge86.5.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 262200
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !10 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, -1
  br i1 %i.nc, label %.critedge86.7.i.i, label %bb.ar

.critedge86.7.i.i:                                ; preds = %.critedge86.6.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 262192
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !10 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, -1
  br i1 %i.nf, label %.critedge86.8.i.i, label %bb.ar

.critedge86.8.i.i:                                ; preds = %.critedge86.7.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 262184
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !10 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, -1
  br i1 %i.ni, label %.critedge86.9.i.i, label %bb.ar

.critedge86.9.i.i:                                ; preds = %.critedge86.8.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 262176
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !10 ; 2 uses
  %i.nl = icmp eq i64 %i.nk, -1
  br i1 %i.nl, label %.critedge86.10.i.i, label %bb.ar

.critedge86.10.i.i:                               ; preds = %.critedge86.9.i.i
  %i.nm = getelementptr inbounds nuw i8, ptr %5, i64 262168
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !10 ; 2 uses
  %i.no = icmp eq i64 %i.nn, -1
  %spec.select.i.i = select i1 %i.no, i64 %i.jm, i64 %i.nn
  br label %bb.ar

fasthuf_initialize.exit.thread.sink.split:        ; preds = %bb.ao, %bb.ae, %bb.z, %bb.x, %bb.t, %bb.j
  %.str.3.sink = phi ptr [ @.str.2, %bb.z ], [ @.str.3, %bb.ae ], [ @.str.1, %bb.x ], [ @.str, %bb.t ], [ @.str, %bb.j ], [ @.str.4, %bb.ao ]
  %i.np = getelementptr inbounds nuw i8, ptr %.060, i64 72
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !85
  %i.nr = tail call i32 (ptr, i32, ptr, ...) %i.nq(ptr noundef nonnull %.060, i32 noundef 23, ptr noundef nonnull %.str.3.sink) #10 ; 0 uses
  br label %fasthuf_initialize.exit.thread

fasthuf_initialize.exit.thread:                   ; preds = %fasthuf_initialize.exit.thread.sink.split, %bb.z, %bb.x, %bb.t, %bb.j, %bb.ae, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.critedge

bb.ar:                                            ; preds = %.critedge86.10.i.i, %.critedge86.9.i.i, %.critedge86.8.i.i, %.critedge86.7.i.i, %.critedge86.6.i.i, %.critedge86.5.i.i, %.critedge86.4.i.i, %.critedge86.3.i.i, %.critedge86.2.i.i, %.critedge86.1.i.i, %.critedge86.i.i, %.critedge86.preheader.i.i
  %7 = phi i64 [ %spec.select.i.i, %.critedge86.10.i.i ], [ %i.lq, %.critedge86.preheader.i.i ], [ %i.mj, %.critedge86.i.i ], [ %i.mm, %.critedge86.1.i.i ], [ %i.mp, %.critedge86.2.i.i ], [ %i.ms, %.critedge86.3.i.i ], [ %i.mv, %.critedge86.4.i.i ], [ %i.my, %.critedge86.5.i.i ], [ %i.nb, %.critedge86.6.i.i ], [ %i.ne, %.critedge86.7.i.i ], [ %i.nh, %.critedge86.8.i.i ], [ %i.nk, %.critedge86.9.i.i ]
  %i.ns = getelementptr inbounds nuw i8, ptr %5, i64 283592
  store i64 %7, ptr %i.ns, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.nt = ptrtoint ptr %.3204.lcssa.i to i64
  %i.nu = ptrtoint ptr %1 to i64
  %i.nv = sub i64 %i.s, %i.nu
  %i.nw = add i64 %i.nv, %i.nt
  %i.nx = icmp ugt i64 %i.nw, %2
  br i1 %i.nx, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ny = tail call fastcc i32 @fasthuf_decode(ptr noundef %.060, ptr noundef nonnull %5, ptr noundef %.3204.lcssa.i, i64 noundef %i.q, ptr noundef %3, i64 noundef %4)
  br label %.critedge

bb.at:                                            ; preds = %bb.h
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 524296 ; 3 uses
  %i.oa = add i64 %2, -20                         ; 7 uses
  %.not78.i = icmp samesign ugt i32 %i.i, %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(786440) %5, i8 0, i64 786440, i1 false)
  br i1 %.not78.i, label %._crit_edge85.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.at
  %i.ob = add nuw nsw i32 %i.k, 1
  %i.oc = zext nneg i32 %i.ob to i64              ; 2 uses
  %i.od = ptrtoint ptr %i.p to i64                ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i80, %.lr.ph84.i
  %.03782.i = phi i32 [ %i.i, %.lr.ph84.i ], [ %.pre-phi183, %._crit_edge.i80 ] ; 13 uses
  %.06181.i = phi i32 [ 0, %.lr.ph84.i ], [ %.162.i, %._crit_edge.i80 ] ; 3 uses
  %.06380.i = phi i64 [ 0, %.lr.ph84.i ], [ %.164.i, %._crit_edge.i80 ] ; 2 uses
  %.06779.i = phi ptr [ %i.p, %.lr.ph84.i ], [ %.168.i, %._crit_edge.i80 ] ; 4 uses
  %i.oe = icmp ult i32 %.06181.i, 6
  br i1 %i.oe, label %bb.av, label %getBits.exit.i

bb.av:                                            ; preds = %bb.au
  %i.of = ptrtoint ptr %.06779.i to i64
  %i.og = sub i64 %i.of, %i.od
  %.not41.i = icmp ult i64 %i.og, %i.oa
  br i1 %.not41.i, label %._crit_edge.loopexit.i.i, label %hufUnpackEncTable.exit

._crit_edge.loopexit.i.i:                         ; preds = %bb.av
  %i.oh = shl i64 %.06380.i, 8
  %i.oi = load i8, ptr %.06779.i, align 1, !tbaa !28
  %i.oj = zext i8 %i.oi to i64
  %i.ok = or disjoint i64 %i.oh, %i.oj
  %i.ol = or disjoint i32 %.06181.i, 8
  %i.om = getelementptr inbounds nuw i8, ptr %.06779.i, i64 1
  br label %getBits.exit.i

getBits.exit.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.au
  %.265.i = phi i64 [ %i.ok, %._crit_edge.loopexit.i.i ], [ %.06380.i, %bb.au ] ; 9 uses
  %.0.lcssa.i.i = phi ptr [ %i.om, %._crit_edge.loopexit.i.i ], [ %.06779.i, %bb.au ] ; 10 uses
  %.lcssa.i.i79 = phi i32 [ %i.ol, %._crit_edge.loopexit.i.i ], [ %.06181.i, %bb.au ] ; 2 uses
  %i.on = add i32 %.lcssa.i.i79, -6               ; 9 uses
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = lshr i64 %.265.i, %i.oo
  %i.oq = and i64 %i.op, 63                       ; 8 uses
  %i.or = zext nneg i32 %.03782.i to i64          ; 3 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.or
  store i64 %i.oq, ptr %i.os, align 8, !tbaa !10
  %i.ot = icmp eq i64 %i.oq, 63
  br i1 %i.ot, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %getBits.exit.i
  %i.ou = icmp ult i32 %i.on, 8
  br i1 %i.ou, label %bb.ax, label %getBits.exit50.i

bb.ax:                                            ; preds = %bb.aw
  %i.ov = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ow = sub i64 %i.ov, %i.od
  %.not43.i = icmp ult i64 %i.ow, %i.oa
  br i1 %.not43.i, label %._crit_edge.loopexit.i49.i, label %hufUnpackEncTable.exit

._crit_edge.loopexit.i49.i:                       ; preds = %bb.ax
  %i.ox = shl i64 %.265.i, 8
  %i.oy = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !28
  %i.oz = zext i8 %i.oy to i64
  %i.pa = or disjoint i64 %i.ox, %i.oz
  %i.pb = add nuw nsw i32 %.lcssa.i.i79, 2
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  br label %getBits.exit50.i

getBits.exit50.i:                                 ; preds = %._crit_edge.loopexit.i49.i, %bb.aw
  %.366.i = phi i64 [ %i.pa, %._crit_edge.loopexit.i49.i ], [ %.265.i, %bb.aw ] ; 4 uses
  %.0.lcssa.i47.i = phi ptr [ %i.pc, %._crit_edge.loopexit.i49.i ], [ %.0.lcssa.i.i, %bb.aw ] ; 3 uses
  %.lcssa.i48.i = phi i32 [ %i.pb, %._crit_edge.loopexit.i49.i ], [ %i.on, %bb.aw ]
  %i.pd = add i32 %.lcssa.i48.i, -8               ; 4 uses
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = lshr i64 %.366.i, %i.pe
  %i.pg = and i64 %i.pf, 255                      ; 3 uses
  %i.ph = add nuw nsw i64 %i.pg, 6                ; 5 uses
  %i.pi = add nuw nsw i64 %i.ph, %i.or
  %i.pj = icmp samesign ugt i64 %i.pi, %i.oc
  br i1 %i.pj, label %hufUnpackEncTable.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %getBits.exit50.i
  %min.iters.check = icmp samesign ult i64 %i.pg, 8
  %i.pk = trunc nuw nsw i64 %i.pg to i32
  %i.pl = sub nuw nsw i32 -6, %i.pk
  %i.pm = icmp ult i32 %i.pl, %.03782.i
  %or.cond289 = select i1 %min.iters.check, i1 true, i1 %i.pm
  br i1 %or.cond289, label %.preheader.i.preheader305, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.ph, 508                     ; 3 uses
  %i.pn = and i64 %i.ph, 3
  %i.po = trunc nuw nsw i64 %n.vec to i32
  %i.pp = add i32 %.03782.i, %i.po                ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pq = trunc i64 %index to i32
  %i.pr = add i32 %.03782.i, %i.pq
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ps ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store <2 x i64> zeroinitializer, ptr %i.pt, align 8, !tbaa !10
  store <2 x i64> zeroinitializer, ptr %i.pu, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pv = icmp eq i64 %index.next, %n.vec
  br i1 %i.pv, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ph, %n.vec
  br i1 %cmp.n, label %._crit_edge.i80, label %.preheader.i.preheader305

.preheader.i.preheader305:                        ; preds = %.preheader.i.preheader, %middle.block
  %.077.i.ph = phi i64 [ %i.ph, %.preheader.i.preheader ], [ %i.pn, %middle.block ] ; 4 uses
  %.13876.i.ph = phi i32 [ %.03782.i, %.preheader.i.preheader ], [ %i.pp, %middle.block ] ; 2 uses
  %i.pw = add nsw i64 %.077.i.ph, -1
  %xtraiter = and i64 %.077.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader305, %.preheader.i.prol
  %.077.i.prol = phi i64 [ %i.px, %.preheader.i.prol ], [ %.077.i.ph, %.preheader.i.preheader305 ]
  %.13876.i.prol = phi i32 [ %i.py, %.preheader.i.prol ], [ %.13876.i.ph, %.preheader.i.preheader305 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader305 ]
  %i.px = add nsw i64 %.077.i.prol, -1            ; 2 uses
  %i.py = add i32 %.13876.i.prol, 1               ; 3 uses
  %i.pz = zext i32 %.13876.i.prol to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.pz
  store i64 0, ptr %i.qa, align 8, !tbaa !10
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !99

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader305
  %.lcssa308.unr = phi i32 [ poison, %.preheader.i.preheader305 ], [ %i.py, %.preheader.i.prol ]
  %.077.i.unr = phi i64 [ %.077.i.ph, %.preheader.i.preheader305 ], [ %i.px, %.preheader.i.prol ]
  %.13876.i.unr = phi i32 [ %.13876.i.ph, %.preheader.i.preheader305 ], [ %i.py, %.preheader.i.prol ]
  %i.qb = icmp ult i64 %i.pw, 3
  br i1 %i.qb, label %._crit_edge.i80, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.077.i = phi i64 [ %i.ql, %.preheader.i ], [ %.077.i.unr, %.preheader.i.prol.loopexit ]
  %.13876.i = phi i32 [ %i.qm, %.preheader.i ], [ %.13876.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.qc = add i32 %.13876.i, 1
  %i.qd = zext i32 %.13876.i to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qd
  store i64 0, ptr %i.qe, align 8, !tbaa !10
  %i.qf = add i32 %.13876.i, 2
  %i.qg = zext i32 %i.qc to i64
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qg
  store i64 0, ptr %i.qh, align 8, !tbaa !10
  %i.qi = add i32 %.13876.i, 3
  %i.qj = zext i32 %i.qf to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qj
  store i64 0, ptr %i.qk, align 8, !tbaa !10
  %i.ql = add nsw i64 %.077.i, -4                 ; 2 uses
  %i.qm = add i32 %.13876.i, 4                    ; 2 uses
  %i.qn = zext i32 %i.qi to i64
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qn
  store i64 0, ptr %i.qo, align 8, !tbaa !10
  %.not44.i.3 = icmp eq i64 %i.ql, 0
  br i1 %.not44.i.3, label %._crit_edge.i80, label %.preheader.i, !llvm.loop !100

bb.ay:                                            ; preds = %getBits.exit.i
  %i.qp = icmp samesign ugt i64 %i.oq, 58
  br i1 %i.qp, label %bb.az, label %.._crit_edge.i80_crit_edge

.._crit_edge.i80_crit_edge:                       ; preds = %bb.ay
  %.pre182 = add nuw nsw i32 %.03782.i, 1
  br label %._crit_edge.i80

bb.az:                                            ; preds = %bb.ay
  %i.qq = add nsw i64 %i.oq, -57
  %i.qr = add nuw nsw i64 %i.qq, %i.or
  %i.qs = icmp samesign ugt i64 %i.qr, %i.oc
  br i1 %i.qs, label %hufUnpackEncTable.exit, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.az
  %i.qt = zext i32 %.03782.i to i64
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.qt
  store i64 0, ptr %i.qu, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@internal_huf_decompress:bb.a
  br i1 %.not42.i.1, label %._crit_edge.i80, label %.lr.ph.i85.2

.lr.ph.i85.2:                                     ; preds = %.lr.ph.i85
  %i.qz = add i32 %.03782.i, 3                    ; 2 uses
  %i.ra = zext i32 %i.qw to i64
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ra
  store i64 0, ptr %i.rb, align 8, !tbaa !10
  %.not42.i.2 = icmp eq i64 %i.oq, 60
  br i1 %.not42.i.2, label %._crit_edge.i80, label %.lr.ph.i85.3

.lr.ph.i85.3:                                     ; preds = %.lr.ph.i85.2
  %i.rc = add i32 %.03782.i, 4                    ; 2 uses
  %i.rd = zext i32 %i.qz to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rd
  store i64 0, ptr %i.re, align 8, !tbaa !10
  %.not42.i.3 = icmp eq i64 %i.oq, 61
  br i1 %.not42.i.3, label %._crit_edge.i80, label %.lr.ph.i85.4

.lr.ph.i85.4:                                     ; preds = %.lr.ph.i85.3
  %i.rf = add i32 %.03782.i, 5                    ; 2 uses
  %i.rg = zext i32 %i.rc to i64
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rg
  store i64 0, ptr %i.rh, align 8, !tbaa !10
  %.not42.i.4 = icmp eq i64 %i.oq, 62
  br i1 %.not42.i.4, label %._crit_edge.i80, label %.lr.ph.i85.5

.lr.ph.i85.5:                                     ; preds = %.lr.ph.i85.4
  %i.ri = add i32 %.03782.i, 6
  %i.rj = zext i32 %i.rf to i64
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.rj
  store i64 0, ptr %i.rk, align 8, !tbaa !10
  br label %._crit_edge.i80

._crit_edge.i80:                                  ; preds = %.lr.ph.i85, %.lr.ph.i85.2, %.lr.ph.i85.3, %.lr.ph.i85.4, %.lr.ph.i85.5, %.preheader.i.prol.loopexit, %.preheader.i, %middle.block, %.._crit_edge.i80_crit_edge
  %.pre-phi183 = phi i32 [ %.pre182, %.._crit_edge.i80_crit_edge ], [ %i.qm, %.preheader.i ], [ %i.pp, %middle.block ], [ %.lcssa308.unr, %.preheader.i.prol.loopexit ], [ %i.ri, %.lr.ph.i85.5 ], [ %i.qw, %.lr.ph.i85 ], [ %i.qz, %.lr.ph.i85.2 ], [ %i.rc, %.lr.ph.i85.3 ], [ %i.rf, %.lr.ph.i85.4 ] ; 2 uses
  %.168.i = phi ptr [ %.0.lcssa.i.i, %.._crit_edge.i80_crit_edge ], [ %.0.lcssa.i47.i, %.preheader.i.prol.loopexit ], [ %.0.lcssa.i47.i, %middle.block ], [ %.0.lcssa.i47.i, %.preheader.i ], [ %.0.lcssa.i.i, %.lr.ph.i85.5 ], [ %.0.lcssa.i.i, %.lr.ph.i85.4 ], [ %.0.lcssa.i.i, %.lr.ph.i85.3 ], [ %.0.lcssa.i.i, %.lr.ph.i85.2 ], [ %.0.lcssa.i.i, %.lr.ph.i85 ] ; 2 uses
  %.164.i = phi i64 [ %.265.i, %.._crit_edge.i80_crit_edge ], [ %.366.i, %.preheader.i.prol.loopexit ], [ %.366.i, %middle.block ], [ %.366.i, %.preheader.i ], [ %.265.i, %.lr.ph.i85.5 ], [ %.265.i, %.lr.ph.i85.4 ], [ %.265.i, %.lr.ph.i85.3 ], [ %.265.i, %.lr.ph.i85.2 ], [ %.265.i, %.lr.ph.i85 ]
  %.162.i = phi i32 [ %i.on, %.._crit_edge.i80_crit_edge ], [ %i.pd, %.preheader.i.prol.loopexit ], [ %i.pd, %middle.block ], [ %i.pd, %.preheader.i ], [ %i.on, %.lr.ph.i85.5 ], [ %i.on, %.lr.ph.i85.4 ], [ %i.on, %.lr.ph.i85.3 ], [ %i.on, %.lr.ph.i85.2 ], [ %i.on, %.lr.ph.i85 ]
  %.not.i = icmp ugt i32 %.pre-phi183, %i.k
  br i1 %.not.i, label %._crit_edge85.i, label %bb.au, !llvm.loop !101

._crit_edge85.i:                                  ; preds = %._crit_edge.i80, %bb.at
  %.067.lcssa.i = phi ptr [ %i.p, %bb.at ], [ %.168.i, %._crit_edge.i80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 0, i64 472, i1 false), !tbaa !10
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge85.i
  %indvars.iv.i.i81 = phi i64 [ 0, %._crit_edge85.i ], [ %indvars.iv.next.i.i82.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i81
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !10
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rm ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !10
  %i.rp = add i64 %i.ro, 1
  store i64 %i.rp, ptr %i.rn, align 8, !tbaa !10
  %exitcond.not.i.i83 = icmp eq i64 %indvars.iv.i.i81, 65536
  br i1 %exitcond.not.i.i83, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i81
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !10
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rs ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !10
  %i.rv = add i64 %i.ru, 1
  store i64 %i.rv, ptr %i.rt, align 8, !tbaa !10
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i81
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !10
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ry ; 2 uses
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !10
  %i.sb = add i64 %i.sa, 1
  store i64 %i.sb, ptr %i.rz, align 8, !tbaa !10
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i.i81
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !10
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.se ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !10
  %i.sh = add i64 %i.sg, 1
  store i64 %i.sh, ptr %i.sf, align 8, !tbaa !10
  %indvars.iv.next.i.i82.3 = add nuw nsw i64 %indvars.iv.i.i81, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.02232.i.i = phi i64 [ %i.sp, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv36.i.i ; 2 uses
  %i.sj = load i64, ptr %i.si, align 16, !tbaa !10
  %i.sk = add i64 %i.sj, %.02232.i.i
  %i.sl = lshr i64 %i.sk, 1                       ; 2 uses
  store i64 %.02232.i.i, ptr %i.si, align 16, !tbaa !10
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !10
  %i.so = add i64 %i.sn, %i.sl
  %i.sp = lshr i64 %i.so, 1
  store i64 %i.sl, ptr %i.sm, align 8, !tbaa !10
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not315 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not315, label %.preheader.i.i84, label %.preheader27.i.i, !llvm.loop !25

.preheader.i.i84:                                 ; preds = %.preheader27.i.i, %bb.bd
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %bb.bd ], [ 0, %.preheader27.i.i ] ; 4 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv39.i.i ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !10 ; 3 uses
  %.not.i.i = icmp eq i64 %i.sr, 0
  br i1 %.not.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader.i.i84
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sr ; 2 uses
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !10 ; 2 uses
  %i.su = add i64 %i.st, 1
  store i64 %i.su, ptr %i.ss, align 8, !tbaa !10
  %i.sv = shl i64 %i.st, 6
  %i.sw = or i64 %i.sv, %i.sr
  store i64 %i.sw, ptr %i.sq, align 8, !tbaa !10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader.i.i84
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufCanonicalCodeTable.exit.i, label %.preheader.i.i84.1

.preheader.i.i84.1:                               ; preds = %bb.bb
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv39.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 2 uses
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !10 ; 3 uses
  %.not.i.i.1 = icmp eq i64 %i.sz, 0
  br i1 %.not.i.i.1, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i84.1
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sz ; 2 uses
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !10 ; 2 uses
  %i.tc = add i64 %i.tb, 1
  store i64 %i.tc, ptr %i.ta, align 8, !tbaa !10
  %i.td = shl i64 %i.tb, 6
  %i.te = or i64 %i.td, %i.sz
  store i64 %i.te, ptr %i.sy, align 8, !tbaa !10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader.i.i84.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i84

hufCanonicalCodeTable.exit.i:                     ; preds = %bb.bb
  %i.tf = ptrtoint ptr %.067.lcssa.i to i64
  %i.tg = ptrtoint ptr %i.p to i64
  %.neg.i = add i64 %i.oa, %i.tg
  %i.th = sub i64 %.neg.i, %i.tf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %hufUnpackEncTable.exit

hufUnpackEncTable.exit:                           ; preds = %bb.av, %bb.ax, %getBits.exit50.i, %bb.az, %hufCanonicalCodeTable.exit.i
  %.1 = phi ptr [ %.067.lcssa.i, %hufCanonicalCodeTable.exit.i ], [ %i.p, %bb.az ], [ %i.p, %getBits.exit50.i ], [ %i.p, %bb.ax ], [ %i.p, %bb.av ]
  %.0 = phi i64 [ %i.th, %hufCanonicalCodeTable.exit.i ], [ %i.oa, %bb.az ], [ %i.oa, %getBits.exit50.i ], [ %i.oa, %bb.ax ], [ %i.oa, %bb.av ]
  %i.ti = shl i64 %.0, 3
  %.not75 = icmp ult i64 %i.ti, %i.q
  br i1 %.not75, label %.critedge, label %bb.be

bb.be:                                            ; preds = %hufUnpackEncTable.exit
  %i.tj = tail call fastcc i32 @hufBuildDecTable(ptr noundef %.060, ptr noundef nonnull %5, i32 noundef %i.i, i32 noundef %i.k, ptr noundef nonnull %i.nz) ; 2 uses
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.tl = tail call fastcc i32 @hufDecode(ptr noundef nonnull %5, ptr noundef nonnull %i.nz, ptr noundef %.1, i64 noundef %i.q, i32 noundef %i.k, i64 noundef %4, ptr noundef %3)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.2 = phi i32 [ %i.tl, %bb.bf ], [ %i.tj, %bb.be ]
  %.not.i86 = icmp eq ptr %.060, null
  br i1 %.not.i86, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tm = getelementptr inbounds nuw i8, ptr %.060, i64 96
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.to = phi ptr [ %i.tn, %bb.bh ], [ @internal_exr_free, %bb.bg ]
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi
  %indvars.iv.i87 = phi i64 [ 0, %bb.bi ], [ %indvars.iv.next.i88, %bb.bl ] ; 2 uses
  %i.tp = getelementptr inbounds nuw [16 x i8], ptr %i.nz, i64 %indvars.iv.i87
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !103 ; 2 uses
  %.not12.i = icmp eq ptr %i.tr, null
  br i1 %.not12.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void %i.to(ptr noundef nonnull %i.tr) #10, !inline_history !105
  store ptr null, ptr %i.tq, align 8, !tbaa !103
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, 16384
  br i1 %exitcond.not.i89, label %.critedge, label %bb.bj, !llvm.loop !106

.critedge:                                        ; preds = %bb.bl, %hufUnpackEncTable.exit, %fasthuf_initialize.exit.thread, %bb.ar, %bb.as, %bb.g, %bb.f, %bb.e, %bb.d
  %.265 = phi i32 [ %., %bb.d ], [ %i.ny, %bb.as ], [ 1, %bb.ar ], [ 3, %bb.e ], [ 23, %bb.f ], [ 23, %hufUnpackEncTable.exit ], [ 1, %bb.g ], [ 23, %fasthuf_initialize.exit.thread ], [ %.2, %bb.bl ]
  ret i32 %.265
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @fasthuf_decode(ptr noundef %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias nofree noundef captures(none) %4, i64 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = add nsw i64 %3, -128                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 283592
  %i.c = load i64, ptr %i.b, align 8, !tbaa !97
  %i.d = load i32, ptr %1, align 8, !tbaa !62
  %.not303 = icmp eq i64 %5, 0
  br i1 %.not303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 1
  %i.f = tail call i64 @llvm.bswap.i64(i64 %.val)
  %.val123 = load i64, ptr %2, align 1
  %i.g = tail call i64 @llvm.bswap.i64(i64 %.val123)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 279496
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 263112
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 262160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 262640
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FastHufDecoder_refill.exit155
  %.087302 = phi i32 [ 64, %.lr.ph ], [ %.7, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.094301 = phi i64 [ 0, %.lr.ph ], [ %.296, %FastHufDecoder_refill.exit155 ] ; 5 uses
  %.0185300 = phi ptr [ %i.h, %.lr.ph ], [ %.5, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.0188299 = phi i32 [ 64, %.lr.ph ], [ %.5193, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.0206298 = phi i64 [ %i.f, %.lr.ph ], [ %.5211, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.0227297 = phi i64 [ %i.g, %.lr.ph ], [ %.5232, %FastHufDecoder_refill.exit155 ] ; 5 uses
  %.0242296 = phi i64 [ %i.a, %.lr.ph ], [ %.5247, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.not114 = icmp ugt i64 %i.c, %.0227297
  br i1 %.not114, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i64 %.0227297, 52                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %.087302, 64
  br i1 %i.u, label %.preheader262, label %FastHufDecoder_refill.exit

.preheader262:                                    ; preds = %bb.d, %.sink.split.i
  %.6248 = phi i64 [ %.8250, %.sink.split.i ], [ %.0242296, %bb.d ] ; 9 uses
  %.6233 = phi i64 [ %.7234, %.sink.split.i ], [ %.0227297, %bb.d ]
  %.6212 = phi i64 [ %.9215, %.sink.split.i ], [ %.0206298, %bb.d ] ; 3 uses
  %.6194 = phi i32 [ 64, %.sink.split.i ], [ %.0188299, %bb.d ] ; 4 uses
  %.6186 = phi ptr [ %.9, %.sink.split.i ], [ %.0185300, %bb.d ] ; 7 uses
  %.041.i = phi i32 [ %.1.i, %.sink.split.i ], [ %.087302, %bb.d ] ; 4 uses
  %i.v = icmp sgt i32 %.041.i, 0
  br i1 %i.v, label %bb.e, label %bb.h, !prof !27

bb.e:                                             ; preds = %.preheader262
  %i.w = sub nuw nsw i32 64, %.041.i              ; 3 uses
  %i.x = zext nneg i32 %.041.i to i64
  %i.y = lshr i64 %.6212, %i.x
  %i.z = or i64 %i.y, %.6233                      ; 2 uses
  %.not.i = icmp slt i32 %.6194, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.w to i64
  %i.ab = shl i64 %.6212, %i.aa
  %i.ac = sub nsw i32 %.6194, %i.w
  br label %FastHufDecoder_refill.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %.041.i, %.6194
  br label %bb.h

bb.h:                                             ; preds = %.preheader262, %bb.g
  %.7234 = phi i64 [ %i.z, %bb.g ], [ %.6212, %.preheader262 ] ; 2 uses
  %.1.i = phi i32 [ %i.ad, %bb.g ], [ %.6194, %.preheader262 ] ; 2 uses
  %i.ae = icmp ugt i64 %.6248, 63
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !27

bb.i:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %.6186, align 1, !noalias !107
  %i.af = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %.6186, i64 8
  %i.ah = add i64 %.6248, -64
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp samesign ugt i64 %.6248, 7
  br i1 %i.ai, label %.lr.ph.i.preheader, label %bb.k

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.aj = add nsw i64 %.6248, -8                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %xtraiter = and i64 %i.al, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.aj, 24
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.al, 4611686018427387900
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.an = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ]
  %i.ao = phi ptr [ %.6186, %.lr.ph.i.preheader.new ], [ %i.bm, %.lr.ph.i ] ; 5 uses
  %.049.i = phi i64 [ 56, %.lr.ph.i.preheader.new ], [ %i.bn, %.lr.ph.i ] ; 5 uses
  %i.ap = phi i64 [ %.6248, %.lr.ph.i.preheader.new ], [ %i.bo, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !28, !noalias !107
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl i64 %i.ar, %.049.i
  %i.at = or i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.av = add nsw i64 %.049.i, -8
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !28, !noalias !107
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl i64 %i.ax, %i.av
  %i.az = or i64 %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bb = add nsw i64 %.049.i, -16
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !28, !noalias !107
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl i64 %i.bd, %i.bb
  %i.bf = or i64 %i.be, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.bh = add nsw i64 %.049.i, -24
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !28, !noalias !107
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl i64 %i.bj, %i.bh
  %i.bl = or i64 %i.bk, %i.bf                     ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bn = add i64 %.049.i, -32                    ; 3 uses
  %i.bo = add i64 %i.ap, -32                      ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !113

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %._crit_edge.i.unr-lcssa ]
  %.epil.init438 = phi ptr [ %.6186, %.lr.ph.i.preheader ], [ %i.bm, %._crit_edge.i.unr-lcssa ]
  %.049.i.epil.init = phi i64 [ 56, %.lr.ph.i.preheader ], [ %i.bn, %._crit_edge.i.unr-lcssa ]
  %.epil.init440 = phi i64 [ %.6248, %.lr.ph.i.preheader ], [ %i.bo, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod444 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod444)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.bp = phi i64 [ %i.bv, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bq = phi ptr [ %i.bw, %.lr.ph.i.epil ], [ %.epil.init438, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.049.i.epil = phi i64 [ %i.bx, %.lr.ph.i.epil ], [ %.049.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.br = phi i64 [ %i.by, %.lr.ph.i.epil ], [ %.epil.init440, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !28, !noalias !107
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl i64 %i.bt, %.049.i.epil
  %i.bv = or i64 %i.bu, %i.bp                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bx = add i64 %.049.i.epil, -8                ; 2 uses
  %i.by = add i64 %i.br, -8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !114

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa412 = phi i64 [ %i.bl, %._crit_edge.i.unr-lcssa ], [ %i.bv, %.lr.ph.i.epil ]
  %.lcssa411 = phi i64 [ %i.bn, %._crit_edge.i.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i.unr-lcssa ], [ %i.by, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.6186, i64 1
  %i.bz = add nsw i64 %.6248, -8
  %i.ca = lshr i64 %i.bz, 3
  %scevgep62.i = getelementptr i8, ptr %scevgep.i, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.j
  %.7249 = phi i64 [ %.lcssa, %._crit_edge.i ], [ %.6248, %bb.j ]
  %.7213 = phi i64 [ %.lcssa412, %._crit_edge.i ], [ 0, %bb.j ] ; 2 uses
  %.7187 = phi ptr [ %scevgep62.i, %._crit_edge.i ], [ %.6186, %bb.j ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %.lcssa411, %._crit_edge.i ], [ 56, %bb.j ]
  %.not45.i = icmp eq i64 %.7249, 0
  br i1 %.not45.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i8, ptr %.7187, align 1, !tbaa !28, !noalias !107
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl i64 %i.cc, %.0.lcssa.i
  %i.ce = or i64 %i.cd, %.7213
  %i.cf = getelementptr inbounds nuw i8, ptr %.7187, i64 1
  br label %.sink.split.i

end_hunk_1
begin_hunk_2_@hufDecode:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread314, label %.lr.ph370, !llvm.loop !151

.loopexit329:                                     ; preds = %.lr.ph380, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.t, %bb.v
  %.0152340 = phi i32 [ %i.cm, %bb.t ], [ %i.cm, %bb.v ], [ 0, %.preheader ], [ %i.cm, %middle.block ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cm, %.lr.ph380 ]
  %.10225 = phi ptr [ %.6221, %bb.t ], [ %.5220.lcssa, %bb.v ], [ %.1216382, %.preheader ], [ %.6221, %middle.block ], [ %.6221, %vec.epilog.middle.block ], [ %.6221, %.lr.ph380 ]
  %.9190 = phi ptr [ %.1182383, %bb.t ], [ %i.dx, %bb.v ], [ %.1182383, %.preheader ], [ %i.dj, %middle.block ], [ %i.dq, %vec.epilog.middle.block ], [ %i.du, %.lr.ph380 ]
  %.10172 = phi i64 [ %.6168, %bb.t ], [ %.5167.lcssa, %bb.v ], [ %.1163384, %.preheader ], [ %.6168, %middle.block ], [ %.6168, %vec.epilog.middle.block ], [ %.6168, %.lr.ph380 ]
  %.10 = phi i32 [ %i.cv, %bb.t ], [ %i.cf, %bb.v ], [ %.1156385, %.preheader ], [ %i.cv, %middle.block ], [ %i.cv, %vec.epilog.middle.block ], [ %i.cv, %.lr.ph380 ]
  %i.dy = icmp eq i32 %.0152340, %i.bk
  br i1 %i.dy, label %.thread314, label %.loopexit331

.loopexit331:                                     ; preds = %.lr.ph, %middle.block523, %vec.epilog.middle.block539, %bb.i, %bb.k, %.loopexit329
  %.13228 = phi ptr [ %.10225, %.loopexit329 ], [ %.1216382, %bb.k ], [ %.2217, %bb.i ], [ %.2217, %middle.block523 ], [ %.2217, %vec.epilog.middle.block539 ], [ %.2217, %.lr.ph ] ; 2 uses
  %.12193 = phi ptr [ %.9190, %.loopexit329 ], [ %i.bg, %bb.k ], [ %.1182383, %bb.i ], [ %i.as, %middle.block523 ], [ %i.az, %vec.epilog.middle.block539 ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.13175 = phi i64 [ %.10172, %.loopexit329 ], [ %.1163384, %bb.k ], [ %.2164, %bb.i ], [ %.2164, %middle.block523 ], [ %.2164, %vec.epilog.middle.block539 ], [ %.2164, %.lr.ph ] ; 2 uses
  %.13 = phi i32 [ %.10, %.loopexit329 ], [ %i.t, %bb.k ], [ %i.ae, %bb.i ], [ %i.ae, %middle.block523 ], [ %i.ae, %vec.epilog.middle.block539 ], [ %i.ae, %.lr.ph ] ; 3 uses
  %i.dz = icmp sgt i32 %.13, 13
  br i1 %i.dz, label %.lr.ph387, label %.loopexit332, !llvm.loop !152

._crit_edge398:                                   ; preds = %.loopexit332, %bb.a
  %.0215.lcssa = phi ptr [ %2, %bb.a ], [ %.1216.lcssa, %.loopexit332 ]
  %.0181.lcssa = phi ptr [ %6, %bb.a ], [ %.1182.lcssa, %.loopexit332 ] ; 2 uses
  %.0162.lcssa = phi i64 [ 0, %bb.a ], [ %.1163.lcssa, %.loopexit332 ]
  %.0155.lcssa = phi i32 [ 0, %bb.a ], [ %.1156.lcssa, %.loopexit332 ]
  %i.ea = sub nsw i64 0, %3
  %i.eb = and i64 %i.ea, 7                        ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = sub nsw i32 %.0155.lcssa, %i.ec         ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph414.preheader, label %._crit_edge415

.lr.ph414.preheader:                              ; preds = %._crit_edge398
  %i.ef = lshr i64 %.0162.lcssa, %i.eb
  br label %.lr.ph414

.lr.ph414:                                        ; preds = %.lr.ph414.preheader, %.loopexit
  %.14412 = phi i32 [ %.18, %.loopexit ], [ %i.ed, %.lr.ph414.preheader ] ; 3 uses
  %.14176411 = phi i64 [ %.18180, %.loopexit ], [ %i.ef, %.lr.ph414.preheader ] ; 4 uses
  %.13194410 = phi ptr [ %.17198, %.loopexit ], [ %.0181.lcssa, %.lr.ph414.preheader ] ; 11 uses
  %.14229409 = phi ptr [ %.18233, %.loopexit ], [ %.0215.lcssa, %.lr.ph414.preheader ] ; 5 uses
  %i.eg = sub nsw i32 14, %.14412
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl i64 %.14176411, %i.eh
  %i.ej = and i64 %i.ei, 16383
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !138 ; 3 uses
  %.not252 = icmp eq i32 %i.el, 0
  %i.em = icmp sgt i32 %i.el, %.14412
  %or.cond = or i1 %.not252, %i.em
  br i1 %or.cond, label %.thread314, label %bb.x

bb.x:                                             ; preds = %.lr.ph414
  %i.en = sub nsw i32 %.14412, %i.el              ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !139 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, %4
  br i1 %i.eq, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.er = icmp slt i32 %i.en, 8
  br i1 %i.er, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not253 = icmp ult ptr %.14229409, %i.d
  br i1 %.not253, label %bb.aa, label %.thread314

bb.aa:                                            ; preds = %bb.z
  %i.es = shl i64 %.14176411, 8
  %i.et = getelementptr inbounds nuw i8, ptr %.14229409, i64 1
  %i.eu = load i8, ptr %.14229409, align 1, !tbaa !28
  %i.ev = zext i8 %i.eu to i64
  %i.ew = or disjoint i64 %i.es, %i.ev
  %i.ex = add nsw i32 %i.en, 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.15230 = phi ptr [ %i.et, %bb.aa ], [ %.14229409, %bb.y ] ; 4 uses
  %.15177 = phi i64 [ %i.ew, %bb.aa ], [ %.14176411, %bb.y ] ; 5 uses
  %.15 = phi i32 [ %i.ex, %bb.aa ], [ %i.en, %bb.y ]
  %i.ey = add nsw i32 %.15, -8                    ; 5 uses
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 %.15177, %i.ez                 ; 5 uses
  %i.fb = trunc i64 %i.fa to i8                   ; 4 uses
  %i.fc = and i64 %i.fa, 255                      ; 5 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.13194410, i64 %i.fc
  %i.fe = icmp ugt ptr %i.fd, %i.a
  br i1 %i.fe, label %.thread314, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds i8, ptr %.13194410, i64 -2 ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %6
  br i1 %i.fg, label %.thread314, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fh = load i16, ptr %i.ff, align 2, !tbaa !8  ; 3 uses
  %.not254403 = icmp eq i8 %i.fb, 0
  br i1 %.not254403, label %.loopexit, label %iter.check558

iter.check558:                                    ; preds = %bb.ad
  %min.iters.check543 = icmp samesign ult i64 %i.fc, 4
  br i1 %min.iters.check543, label %.lr.ph407.preheader, label %vector.main.loop.iter.check544

vector.main.loop.iter.check544:                   ; preds = %iter.check558
  %min.iters.check545 = icmp samesign ult i64 %i.fc, 16
  br i1 %min.iters.check545, label %vec.epilog.ph562, label %vector.ph546

vector.ph546:                                     ; preds = %vector.main.loop.iter.check544
  %i.fi = and i64 %i.fa, 12
  %n.vec547 = and i64 %i.fa, 240                  ; 5 uses
  %i.fj = trunc nuw i64 %n.vec547 to i8
  %i.fk = sub i8 %i.fb, %i.fj
  %i.fl = shl nuw nsw i64 %n.vec547, 1
  %i.fm = getelementptr i8, ptr %.13194410, i64 %i.fl ; 2 uses
  %broadcast.splatinsert548 = insertelement <8 x i16> poison, i16 %i.fh, i64 0
  %broadcast.splat549 = shufflevector <8 x i16> %broadcast.splatinsert548, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph546
  %index551 = phi i64 [ 0, %vector.ph546 ], [ %index.next553, %vector.body550 ] ; 2 uses
  %i.fn = shl i64 %index551, 1
  %next.gep552 = getelementptr i8, ptr %.13194410, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep552, i64 16
  store <8 x i16> %broadcast.splat549, ptr %next.gep552, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat549, ptr %i.fo, align 2, !tbaa !8
  %index.next553 = add nuw i64 %index551, 16      ; 2 uses
  %i.fp = icmp eq i64 %index.next553, %n.vec547
  br i1 %i.fp, label %middle.block554, label %vector.body550, !llvm.loop !153

middle.block554:                                  ; preds = %vector.body550
  %cmp.n555 = icmp eq i64 %i.fc, %n.vec547
  br i1 %cmp.n555, label %.loopexit, label %vec.epilog.iter.check560

vec.epilog.iter.check560:                         ; preds = %middle.block554
  %min.epilog.iters.check561 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check561, label %.lr.ph407.preheader, label %vec.epilog.ph562, !prof !126

vec.epilog.ph562:                                 ; preds = %vector.main.loop.iter.check544, %vec.epilog.iter.check560
  %vec.epilog.resume.val556 = phi i64 [ %n.vec547, %vec.epilog.iter.check560 ], [ 0, %vector.main.loop.iter.check544 ]
  %n.vec563 = and i64 %i.fa, 252                  ; 4 uses
  %i.fq = trunc nuw i64 %n.vec563 to i8
  %i.fr = sub i8 %i.fb, %i.fq
  %i.fs = shl nuw nsw i64 %n.vec563, 1
  %i.ft = getelementptr i8, ptr %.13194410, i64 %i.fs ; 2 uses
  %broadcast.splatinsert564 = insertelement <4 x i16> poison, i16 %i.fh, i64 0
  %broadcast.splat565 = shufflevector <4 x i16> %broadcast.splatinsert564, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph562
  %index567 = phi i64 [ %vec.epilog.resume.val556, %vec.epilog.ph562 ], [ %index.next569, %vec.epilog.vector.body566 ] ; 2 uses
  %i.fu = shl i64 %index567, 1
  %next.gep568 = getelementptr i8, ptr %.13194410, i64 %i.fu
  store <4 x i16> %broadcast.splat565, ptr %next.gep568, align 2, !tbaa !8
  %index.next569 = add nuw i64 %index567, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next569, %n.vec563
  br i1 %i.fv, label %vec.epilog.middle.block570, label %vec.epilog.vector.body566, !llvm.loop !154

vec.epilog.middle.block570:                       ; preds = %vec.epilog.vector.body566
  %cmp.n571 = icmp eq i64 %i.fc, %n.vec563
  br i1 %cmp.n571, label %.loopexit, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %iter.check558, %vec.epilog.iter.check560, %vec.epilog.middle.block570
  %.0405.ph = phi i8 [ %i.fb, %iter.check558 ], [ %i.fk, %vec.epilog.iter.check560 ], [ %i.fr, %vec.epilog.middle.block570 ]
  %.14195404.ph = phi ptr [ %.13194410, %iter.check558 ], [ %i.fm, %vec.epilog.iter.check560 ], [ %i.ft, %vec.epilog.middle.block570 ]
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %.lr.ph407
  %.0405 = phi i8 [ %i.fw, %.lr.ph407 ], [ %.0405.ph, %.lr.ph407.preheader ]
  %.14195404 = phi ptr [ %i.fx, %.lr.ph407 ], [ %.14195404.ph, %.lr.ph407.preheader ] ; 2 uses
  %i.fw = add i8 %.0405, -1                       ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.14195404, i64 2 ; 2 uses
  store i16 %i.fh, ptr %.14195404, align 2, !tbaa !8
  %.not254 = icmp eq i8 %i.fw, 0
  br i1 %.not254, label %.loopexit, label %.lr.ph407, !llvm.loop !155

bb.ae:                                            ; preds = %bb.x
  %i.fy = icmp ult ptr %.13194410, %i.a
  br i1 %i.fy, label %bb.af, label %.thread314

bb.af:                                            ; preds = %bb.ae
  %i.fz = trunc i32 %i.ep to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %.13194410, i64 2
  store i16 %i.fz, ptr %.13194410, align 2, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph407, %middle.block554, %vec.epilog.middle.block570, %bb.ad, %bb.af
  %.18233 = phi ptr [ %.14229409, %bb.af ], [ %.15230, %bb.ad ], [ %.15230, %middle.block554 ], [ %.15230, %vec.epilog.middle.block570 ], [ %.15230, %.lr.ph407 ]
  %.17198 = phi ptr [ %i.ga, %bb.af ], [ %.13194410, %bb.ad ], [ %i.fm, %middle.block554 ], [ %i.ft, %vec.epilog.middle.block570 ], [ %i.fx, %.lr.ph407 ] ; 2 uses
  %.18180 = phi i64 [ %.14176411, %bb.af ], [ %.15177, %bb.ad ], [ %.15177, %middle.block554 ], [ %.15177, %vec.epilog.middle.block570 ], [ %.15177, %.lr.ph407 ]
  %.18 = phi i32 [ %i.en, %bb.af ], [ %i.ey, %bb.ad ], [ %i.ey, %middle.block554 ], [ %i.ey, %vec.epilog.middle.block570 ], [ %i.ey, %.lr.ph407 ] ; 2 uses
  %i.gb = icmp sgt i32 %.18, 0
  br i1 %i.gb, label %.lr.ph414, label %._crit_edge415, !llvm.loop !156

._crit_edge415:                                   ; preds = %.loopexit, %._crit_edge398
  %.13194.lcssa = phi ptr [ %.0181.lcssa, %._crit_edge398 ], [ %.17198, %.loopexit ]
  %.not = icmp ne ptr %.13194.lcssa, %i.a
  %.262 = zext i1 %.not to i32
  br label %.thread314

.thread314:                                       ; preds = %.loopexit329, %bb.r, %bb.p, %bb.s, %bb.u, %bb.l, %bb.g, %bb.e, %bb.h, %bb.b, %bb.j, %bb.w, %bb.ab, %bb.z, %bb.ac, %.lr.ph414, %bb.ae, %._crit_edge415
  %.15214 = phi i32 [ %.262, %._crit_edge415 ], [ 23, %bb.w ], [ 23, %bb.ab ], [ 23, %bb.ae ], [ 23, %.lr.ph414 ], [ 1, %bb.ac ], [ 1, %bb.z ], [ 23, %.loopexit329 ], [ 1, %bb.p ], [ 23, %bb.r ], [ 23, %bb.u ], [ 23, %bb.l ], [ 1, %bb.s ], [ 1, %bb.e ], [ 23, %bb.g ], [ 23, %bb.j ], [ 1, %bb.h ], [ 23, %bb.b ]
  ret i32 %.15214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

declare noalias ptr @internal_exr_alloc(i64 noundef) local_unnamed_addr #7

declare void @internal_exr_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 long", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = !{!5, !5, i64 0}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!6, !6, i64 0}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = !{!35}
!35 = distinct !{!35, !36, !"hufEncode: argument 0"}
!36 = distinct !{!36, !"hufEncode"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"hufEncode: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !36, !"hufEncode: argument 2"}
!41 = !{!35, !40, !42, !43}
!42 = distinct !{!42, !36, !"hufEncode: argument 3"}
!43 = distinct !{!43, !36, !"hufEncode: argument 4"}
!44 = !{!38, !40, !42, !43}
!45 = !{!35, !38, !42, !43}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = !{!58, !59, i64 24}
!58 = !{!"_exr_decode_pipeline", !11, i64 0, !19, i64 8, !9, i64 16, !9, i64 18, !5, i64 20, !59, i64 24, !60, i64 32, !5, i64 96, !5, i64 100, !11, i64 104, !19, i64 112, !19, i64 120, !11, i64 128, !19, i64 136, !11, i64 144, !19, i64 152, !11, i64 160, !61, i64 168, !11, i64 176, !19, i64 184, !11, i64 192, !19, i64 200, !11, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !19, i64 248, !19, i64 256, !6, i64 264}
!59 = !{!"p1 _ZTS19_priv_exr_context_t", !19, i64 0}
!60 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !6, i64 22, !6, i64 23, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!61 = !{!"p1 int", !19, i64 0}
!62 = !{!63, !5, i64 0}
!63 = !{!"FastHufDecoder", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 12, !6, i64 262160, !6, i64 262640, !6, i64 263112, !6, i64 279496, !11, i64 283592}
!64 = !{!63, !5, i64 4}
!65 = !{!63, !6, i64 8}
!66 = !{!63, !6, i64 9}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = !{!70, !70, i64 0}
!70 = !{!"double", !6, i64 0}
!71 = distinct !{!71, !13, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = distinct !{!74, !13, !73, !72}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13, !72, !73}
!82 = distinct !{!82, !13, !72, !73}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = !{!86, !19, i64 72}
!86 = !{!"_priv_exr_context_t", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !87, i64 8, !87, i64 24, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !89, i64 124, !19, i64 128, !19, i64 136, !19, i64 144, !11, i64 152, !19, i64 160, !19, i64 168, !11, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !90, i64 200, !95, i64 464, !96, i64 472, !91, i64 480, !6, i64 504, !6, i64 544, !6, i64 545, !6, i64 546, !5, i64 548}
!87 = !{!"", !5, i64 0, !5, i64 4, !88, i64 8}
!88 = !{!"p1 omnipotent char", !19, i64 0}
!89 = !{!"float", !6, i64 0}
!90 = !{!"_priv_exr_part_t", !5, i64 0, !5, i64 4, !91, i64 8, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !93, i64 144, !93, i64 160, !5, i64 176, !5, i64 180, !5, i64 184, !89, i64 188, !5, i64 192, !5, i64 196, !61, i64 200, !61, i64 208, !61, i64 216, !61, i64 224, !11, i64 232, !9, i64 240, !9, i64 242, !5, i64 244, !11, i64 248, !6, i64 256}
!91 = !{!"exr_attribute_list", !5, i64 0, !5, i64 4, !92, i64 8, !92, i64 16}
!92 = !{!"any p2 pointer", !19, i64 0}
!93 = !{!"", !94, i64 0, !94, i64 8}
!94 = !{!"", !5, i64 0, !5, i64 4}
!95 = !{!"p1 _ZTS16_priv_exr_part_t", !19, i64 0}
!96 = !{!"p2 _ZTS16_priv_exr_part_t", !92, i64 0}
!97 = !{!63, !11, i64 283592}
!98 = distinct !{!98, !13, !72, !73}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !13, !72}
!101 = distinct !{!101, !13}
!102 = !{!86, !19, i64 96}
!103 = !{!104, !61, i64 8}
!104 = !{!"_HufDec", !5, i64 0, !5, i64 4, !61, i64 8}
!105 = distinct !{null}
!106 = distinct !{!106, !13}
!107 = !{!108, !110, !111, !112}
!108 = distinct !{!108, !109, !"FastHufDecoder_refill: argument 0"}
!109 = distinct !{!109, !"FastHufDecoder_refill"}
!110 = distinct !{!110, !109, !"FastHufDecoder_refill: argument 1"}
!111 = distinct !{!111, !109, !"FastHufDecoder_refill: argument 2"}
!112 = distinct !{!112, !109, !"FastHufDecoder_refill: argument 3"}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!118 = !{!119, !121, !122, !123}
!119 = distinct !{!119, !120, !"FastHufDecoder_refill: argument 0"}
!120 = distinct !{!120, !"FastHufDecoder_refill"}
!121 = distinct !{!121, !120, !"FastHufDecoder_refill: argument 1"}
!122 = distinct !{!122, !120, !"FastHufDecoder_refill: argument 2"}
!123 = distinct !{!123, !120, !"FastHufDecoder_refill: argument 3"}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !13, !72, !73}
!126 = !{!"branch_weights", i32 4, i32 12}
!127 = distinct !{!127, !13, !72, !73}
!128 = distinct !{!128, !13, !73, !72}
!129 = !{!130, !132, !133, !134}
!130 = distinct !{!130, !131, !"FastHufDecoder_refill: argument 0"}
!131 = distinct !{!131, !"FastHufDecoder_refill"}
!132 = distinct !{!132, !131, !"FastHufDecoder_refill: argument 1"}
!133 = distinct !{!133, !131, !"FastHufDecoder_refill: argument 2"}
!134 = distinct !{!134, !131, !"FastHufDecoder_refill: argument 3"}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !13}
!137 = !{!86, !19, i64 88}
!138 = !{!104, !5, i64 0}
!139 = !{!104, !5, i64 4}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13, !72, !73}
!145 = distinct !{!145, !13, !72, !73}
!146 = distinct !{!146, !13, !73, !72}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13, !72, !73}
!149 = distinct !{!149, !13, !72, !73}
!150 = distinct !{!150, !13, !73, !72}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13, !72, !73}
!154 = distinct !{!154, !13, !72, !73}
!155 = distinct !{!155, !13, !73, !72}
end_hunk_2
