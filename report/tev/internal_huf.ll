Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/internal_huf?download=true
inline.NumInlined: 45
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@internal_huf_decompress:bb.a
bb.af:                                            ; preds = %bb.ae
  %.not160.i = icmp eq ptr %.060, null
  br i1 %.not160.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.ag:                                            ; preds = %bb.ae
  %i.ih = trunc nuw nsw i64 %.0258.i to i32
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ig
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !16
  %i.ij = add nuw nsw i64 %i.ig, 1
  store i64 %i.ij, ptr %i.if, align 8, !tbaa !12
  br label %bb.al

bb.ah:                                            ; preds = %fasthuf_read_bits.exit174.i
  %i.ik = icmp eq i64 %i.ic, 63
  br i1 %i.ik, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.il = icmp samesign ult i32 %.lcssa.i171.i, 14
  br i1 %i.il, label %bb.aj, label %fasthuf_read_bits.exit179.i

bb.aj:                                            ; preds = %bb.ai
  %i.im = shl i64 %.7.i, 8
  %i.in = getelementptr inbounds nuw i8, ptr %.8206.i, i64 1
  %i.io = load i8, ptr %.8206.i, align 1, !tbaa !18
  %i.ip = zext i8 %i.io to i64
  %i.iq = or disjoint i64 %i.im, %i.ip
  %i.ir = add nuw nsw i32 %.lcssa.i171.i, 2
  br label %fasthuf_read_bits.exit179.i, !llvm.loop !83

fasthuf_read_bits.exit179.i:                      ; preds = %bb.aj, %bb.ai
  %.9.i = phi ptr [ %i.in, %bb.aj ], [ %.8206.i, %bb.ai ]
  %.8.i = phi i64 [ %i.iq, %bb.aj ], [ %.7.i, %bb.ai ] ; 2 uses
  %.lcssa.i176.i = phi i32 [ %i.ir, %bb.aj ], [ %i.hz, %bb.ai ]
  %i.is = add nsw i32 %.lcssa.i176.i, -8          ; 2 uses
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = lshr i64 %.8.i, %i.it
  %i.iv = and i64 %i.iu, 255
  %i.iw = add nuw nsw i64 %.0258.i, 5
  %i.ix = add nuw nsw i64 %i.iw, %i.iv
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.iy = add nsw i64 %.0258.i, -58
  %i.iz = add i64 %i.iy, %i.ic
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %fasthuf_read_bits.exit179.i, %bb.ag, %bb.ad
  %.4202.i = phi ptr [ %.8206.i, %bb.ad ], [ %.8206.i, %bb.ag ], [ %.9.i, %fasthuf_read_bits.exit179.i ], [ %.8206.i, %bb.ak ] ; 2 uses
  %.4197.i = phi i64 [ %.7.i, %bb.ad ], [ %.7.i, %bb.ag ], [ %.8.i, %fasthuf_read_bits.exit179.i ], [ %.7.i, %bb.ak ]
  %.4.i = phi i32 [ %i.hz, %bb.ad ], [ %i.hz, %bb.ag ], [ %i.is, %fasthuf_read_bits.exit179.i ], [ %i.hz, %bb.ak ]
  %.1.i = phi i64 [ %.0258.i, %bb.ad ], [ %.0258.i, %bb.ag ], [ %i.ix, %fasthuf_read_bits.exit179.i ], [ %i.iz, %bb.ak ] ; 2 uses
  %i.ja = add nuw nsw i64 %.1.i, 1
  %.not158.not.i = icmp ult i64 %.1.i, %i.ab
  br i1 %.not158.not.i, label %bb.ac, label %.critedge164.i, !llvm.loop !92

.critedge164.i:                                   ; preds = %bb.al, %._crit_edge253.i
  %.3201.lcssa.i = phi ptr [ %i.p, %._crit_edge253.i ], [ %.4202.i, %bb.al ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 262160 ; 5 uses
  br label %bb.am

vector.ph246:                                     ; preds = %bb.am
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 262632
  store i64 0, ptr %i.jc, align 8, !tbaa !12
  %i.jd = load i64, ptr %i.c, align 16, !tbaa !12
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !12 ; 2 uses
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 262640 ; 3 uses
  store i64 %i.jf, ptr %i.jg, align 8, !tbaa !12
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph246
  %index248 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body247 ] ; 2 uses
  %vec.ind249 = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph246 ], [ %vec.ind.next255, %vector.body247 ] ; 3 uses
  %i.jh = or disjoint i64 %index248, 1            ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load250 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !12
  %wide.load251 = load <2 x i64>, ptr %i.jj, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jh ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load252 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !12
  %wide.load253 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !12
  %i.jm = sub nuw nsw <2 x i64> splat (i64 64), %vec.ind249
  %i.jn = sub nuw nsw <2 x i64> splat (i64 62), %vec.ind249
  %i.jo = lshr <2 x i64> %wide.load252, %i.jm
  %i.jp = lshr <2 x i64> %wide.load253, %i.jn
  %i.jq = sub <2 x i64> %wide.load250, %i.jo
  %i.jr = sub <2 x i64> %wide.load251, %i.jp
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jh ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <2 x i64> %i.jq, ptr %i.js, align 8, !tbaa !12
  store <2 x i64> %i.jr, ptr %i.jt, align 8, !tbaa !12
  %index.next254 = add nuw i64 %index248, 4       ; 2 uses
  %vec.ind.next255 = add nuw nsw <2 x i64> %vec.ind249, splat (i64 4)
  %i.ju = icmp eq i64 %index.next254, 56
  br i1 %i.ju, label %scalar.ph245, label %vector.body247, !llvm.loop !93

bb.am:                                            ; preds = %bb.an, %.critedge164.i
  %indvars.iv.i.i = phi i64 [ 0, %.critedge164.i ], [ %indvars.iv.next.i.i.1, %bb.an ] ; 7 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.jw = load i64, ptr %i.jv, align 16, !tbaa !12 ; 2 uses
  %.not82.i.i = icmp eq i64 %i.jw, -1
  %i.jx = sub nuw nsw i64 64, %indvars.iv.i.i
  %i.jy = shl i64 %i.jw, %i.jx
  %.sink.i.i = select i1 %.not82.i.i, i64 -1, i64 %i.jy
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i.i
  store i64 %.sink.i.i, ptr %i.jz, align 8, !tbaa !12
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 58
  br i1 %exitcond.not.i.i, label %vector.ph246, label %bb.an

bb.an:                                            ; preds = %bb.am
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !12 ; 2 uses
  %.not82.i.i.1 = icmp eq i64 %i.kb, -1
  %i.kc = sub nuw nsw i64 63, %indvars.iv.i.i
  %i.kd = shl i64 %i.kb, %i.kc
  %.sink.i.i.1 = select i1 %.not82.i.i.1, i64 -1, i64 %i.kd
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i
  store i64 %.sink.i.i.1, ptr %i.ke, align 8, !tbaa !12
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.am

vector.body259:                                   ; preds = %scalar.ph245, %vector.body259
  %index260 = phi i64 [ %index.next261.1, %vector.body259 ], [ 0, %scalar.ph245 ] ; 4 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index260 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <4 x i32> splat (i32 65535), ptr %i.kf, align 4, !tbaa !16
  store <4 x i32> splat (i32 65535), ptr %i.kg, align 4, !tbaa !16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index260 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store <4 x i8> zeroinitializer, ptr %i.kh, align 1, !tbaa !18
  store <4 x i8> zeroinitializer, ptr %i.ki, align 1, !tbaa !18
  %index.next261 = or disjoint i64 %index260, 8   ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index.next261 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <4 x i32> splat (i32 65535), ptr %i.kj, align 4, !tbaa !16
  store <4 x i32> splat (i32 65535), ptr %i.kk, align 4, !tbaa !16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index.next261 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  store <4 x i8> zeroinitializer, ptr %i.kl, align 1, !tbaa !18
  store <4 x i8> zeroinitializer, ptr %i.km, align 1, !tbaa !18
  %index.next261.1 = add nuw nsw i64 %index260, 16 ; 2 uses
  %i.kn = icmp eq i64 %index.next261.1, 4096
  br i1 %i.kn, label %.critedge86.preheader.i.i, label %vector.body259, !llvm.loop !94

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph245
  %i.ko = zext i8 %i.dq to i64
  %i.kp = zext nneg i32 %i.bo to i64
  br label %.lr.ph.i180.i

scalar.ph245:                                     ; preds = %vector.body247
  %i.kq = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 262616
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !12
  %i.ku = lshr i64 %i.kt, 7
  %i.kv = sub i64 %i.kr, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 263096
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !12
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ky = load i64, ptr %i.kx, align 16, !tbaa !12
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 262624
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !12
  %i.lb = lshr i64 %i.la, 6
  %i.lc = sub i64 %i.ky, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 263104
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !12
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 263112 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 279496 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 12
  br i1 %.not154231.i, label %vector.body259, label %.lr.ph.preheader.i.i

.critedge86.preheader.i.i:                        ; preds = %.critedge84.i.i, %vector.body259
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 262256
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !12 ; 2 uses
  %i.lj = icmp eq i64 %i.li, -1
  br i1 %i.lj, label %.critedge86.i.i, label %bb.at

.lr.ph.i180.i:                                    ; preds = %.critedge84.i.i, %.lr.ph.preheader.i.i
  %.06994.i.i = phi i64 [ %i.ly, %.critedge84.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.lk = shl nuw i64 %.06994.i.i, 52             ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.06994.i.i ; 2 uses
  store i32 65535, ptr %i.ll, align 4, !tbaa !16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.06994.i.i ; 2 uses
  store i8 0, ptr %i.lm, align 1, !tbaa !18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.lr.ph.i180.i
  %indvars.iv106.i.i = phi i64 [ %i.ko, %.lr.ph.i180.i ], [ %indvars.iv.next107.i.i, %bb.ar ] ; 6 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv106.i.i
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !12
  %.not80.i.i = icmp ugt i64 %i.lo, %i.lk
  br i1 %.not80.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lp = trunc i64 %indvars.iv106.i.i to i8
  store i8 %i.lp, ptr %i.lm, align 1, !tbaa !18
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv106.i.i
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !12
  %i.ls = sub nsw i64 64, %indvars.iv106.i.i
  %7 = and i64 %i.ls, 4294967295
  %i.lt = lshr i64 %i.lk, %7
  %i.lu = add i64 %i.lr, %i.lt                    ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.kp
  br i1 %i.lv, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not81.i.i = icmp eq ptr %.060, null
  br i1 %.not81.i.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.ar:                                            ; preds = %bb.ao
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1
  %exitcond109.not.i.i = icmp eq i64 %indvars.iv106.i.i, %.pre169
  br i1 %exitcond109.not.i.i, label %.critedge84.i.i, label %bb.ao, !llvm.loop !95

bb.as:                                            ; preds = %bb.ap
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lu
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !16
  store i32 %i.lx, ptr %i.ll, align 4, !tbaa !16
  br label %.critedge84.i.i

.critedge84.i.i:                                  ; preds = %bb.ar, %bb.as
  %i.ly = add nuw nsw i64 %.06994.i.i, 1          ; 2 uses
  %exitcond110.i.i = icmp eq i64 %i.ly, 4096
  br i1 %exitcond110.i.i, label %.critedge86.preheader.i.i, label %.lr.ph.i180.i, !llvm.loop !96

.critedge86.i.i:                                  ; preds = %.critedge86.preheader.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 262248
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !12 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, -1
  br i1 %i.mb, label %.critedge86.1.i.i, label %bb.at

.critedge86.1.i.i:                                ; preds = %.critedge86.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 262240
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !12 ; 2 uses
  %i.me = icmp eq i64 %i.md, -1
  br i1 %i.me, label %.critedge86.2.i.i, label %bb.at

.critedge86.2.i.i:                                ; preds = %.critedge86.1.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 262232
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !12 ; 2 uses
  %i.mh = icmp eq i64 %i.mg, -1
  br i1 %i.mh, label %.critedge86.3.i.i, label %bb.at

.critedge86.3.i.i:                                ; preds = %.critedge86.2.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 262224
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !12 ; 2 uses
  %i.mk = icmp eq i64 %i.mj, -1
  br i1 %i.mk, label %.critedge86.4.i.i, label %bb.at

.critedge86.4.i.i:                                ; preds = %.critedge86.3.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 262216
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !12 ; 2 uses
  %i.mn = icmp eq i64 %i.mm, -1
  br i1 %i.mn, label %.critedge86.5.i.i, label %bb.at

.critedge86.5.i.i:                                ; preds = %.critedge86.4.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 262208
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !12 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, -1
  br i1 %i.mq, label %.critedge86.6.i.i, label %bb.at

.critedge86.6.i.i:                                ; preds = %.critedge86.5.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 262200
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !12 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, -1
  br i1 %i.mt, label %.critedge86.7.i.i, label %bb.at

.critedge86.7.i.i:                                ; preds = %.critedge86.6.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 262192
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !12 ; 2 uses
  %i.mw = icmp eq i64 %i.mv, -1
  br i1 %i.mw, label %.critedge86.8.i.i, label %bb.at

.critedge86.8.i.i:                                ; preds = %.critedge86.7.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 262184
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !12 ; 2 uses
  %i.mz = icmp eq i64 %i.my, -1
  br i1 %i.mz, label %.critedge86.9.i.i, label %bb.at

.critedge86.9.i.i:                                ; preds = %.critedge86.8.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 262176
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !12 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, -1
  br i1 %i.nc, label %.critedge86.10.i.i, label %bb.at

.critedge86.10.i.i:                               ; preds = %.critedge86.9.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 262168
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !12 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, -1
  %spec.select.i.i = select i1 %i.nf, i64 %i.je, i64 %i.ne
  br label %bb.at

fasthuf_initialize.exit.thread.sink.split:        ; preds = %bb.aq, %bb.af, %bb.aa, %bb.y, %bb.t, %bb.j
  %.str.3.sink = phi ptr [ @.str.2, %bb.aa ], [ @.str.3, %bb.af ], [ @.str.1, %bb.y ], [ @.str, %bb.t ], [ @.str, %bb.j ], [ @.str.4, %bb.aq ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.060, i64 72
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !37
  %i.ni = tail call i32 (ptr, i32, ptr, ...) %i.nh(ptr noundef nonnull %.060, i32 noundef 23, ptr noundef nonnull %.str.3.sink) #10 ; 0 uses
  br label %fasthuf_initialize.exit.thread

fasthuf_initialize.exit.thread:                   ; preds = %fasthuf_initialize.exit.thread.sink.split, %bb.aa, %bb.y, %bb.t, %bb.j, %bb.af, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.critedge

bb.at:                                            ; preds = %.critedge86.10.i.i, %.critedge86.9.i.i, %.critedge86.8.i.i, %.critedge86.7.i.i, %.critedge86.6.i.i, %.critedge86.5.i.i, %.critedge86.4.i.i, %.critedge86.3.i.i, %.critedge86.2.i.i, %.critedge86.1.i.i, %.critedge86.i.i, %.critedge86.preheader.i.i
  %i.nj = phi i64 [ %spec.select.i.i, %.critedge86.10.i.i ], [ %i.li, %.critedge86.preheader.i.i ], [ %i.ma, %.critedge86.i.i ], [ %i.md, %.critedge86.1.i.i ], [ %i.mg, %.critedge86.2.i.i ], [ %i.mj, %.critedge86.3.i.i ], [ %i.mm, %.critedge86.4.i.i ], [ %i.mp, %.critedge86.5.i.i ], [ %i.ms, %.critedge86.6.i.i ], [ %i.mv, %.critedge86.7.i.i ], [ %i.my, %.critedge86.8.i.i ], [ %i.nb, %.critedge86.9.i.i ]
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 283592
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.nl = ptrtoint ptr %.3201.lcssa.i to i64
  %i.nm = ptrtoint ptr %1 to i64
  %i.nn = sub i64 %i.s, %i.nm
  %i.no = add i64 %i.nn, %i.nl
  %i.np = icmp ugt i64 %i.no, %2
  br i1 %i.np, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nq = tail call fastcc i32 @fasthuf_decode(ptr noundef %.060, ptr noundef nonnull %5, ptr noundef %.3201.lcssa.i, i64 noundef %i.q, ptr noundef %3, i64 noundef %4)
  br label %.critedge

bb.av:                                            ; preds = %bb.h
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 524296 ; 3 uses
  %i.ns = add i64 %2, -20                         ; 7 uses
  %.not77.i = icmp samesign ugt i32 %i.i, %i.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(786440) %5, i8 0, i64 786440, i1 false)
  br i1 %.not77.i, label %._crit_edge84.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %bb.av
  %i.nt = add nuw nsw i32 %i.k, 1
  %i.nu = zext nneg i32 %i.nt to i64              ; 2 uses
  %i.nv = ptrtoint ptr %i.p to i64                ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i80, %.lr.ph83.i
  %.03781.i = phi i32 [ %i.i, %.lr.ph83.i ], [ %.pre-phi171, %._crit_edge.i80 ] ; 13 uses
  %.06080.i = phi i32 [ 0, %.lr.ph83.i ], [ %.161.i, %._crit_edge.i80 ] ; 3 uses
  %.06279.i = phi i64 [ 0, %.lr.ph83.i ], [ %.163.i, %._crit_edge.i80 ] ; 2 uses
  %.06678.i = phi ptr [ %i.p, %.lr.ph83.i ], [ %.167.i, %._crit_edge.i80 ] ; 4 uses
  %i.nw = icmp ult i32 %.06080.i, 6
  br i1 %i.nw, label %bb.ax, label %getBits.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.nx = ptrtoint ptr %.06678.i to i64
  %i.ny = sub i64 %i.nx, %i.nv
  %.not41.i = icmp ult i64 %i.ny, %i.ns
  br i1 %.not41.i, label %._crit_edge.loopexit.i.i, label %hufUnpackEncTable.exit

._crit_edge.loopexit.i.i:                         ; preds = %bb.ax
  %i.nz = shl i64 %.06279.i, 8
  %i.oa = load i8, ptr %.06678.i, align 1, !tbaa !18
  %i.ob = zext i8 %i.oa to i64
  %i.oc = or disjoint i64 %i.nz, %i.ob
  %i.od = or disjoint i32 %.06080.i, 8
  %i.oe = getelementptr inbounds nuw i8, ptr %.06678.i, i64 1
  br label %getBits.exit.i

getBits.exit.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.aw
  %.264.i = phi i64 [ %i.oc, %._crit_edge.loopexit.i.i ], [ %.06279.i, %bb.aw ] ; 9 uses
  %.0.lcssa.i.i = phi ptr [ %i.oe, %._crit_edge.loopexit.i.i ], [ %.06678.i, %bb.aw ] ; 10 uses
  %.lcssa.i.i79 = phi i32 [ %i.od, %._crit_edge.loopexit.i.i ], [ %.06080.i, %bb.aw ] ; 2 uses
  %i.of = add i32 %.lcssa.i.i79, -6               ; 9 uses
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = lshr i64 %.264.i, %i.og
  %i.oi = and i64 %i.oh, 63                       ; 8 uses
  %i.oj = zext nneg i32 %.03781.i to i64          ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.oj
  store i64 %i.oi, ptr %i.ok, align 8, !tbaa !12
  %i.ol = icmp eq i64 %i.oi, 63
  br i1 %i.ol, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %getBits.exit.i
  %i.om = icmp ult i32 %i.of, 8
  br i1 %i.om, label %bb.az, label %getBits.exit49.i

bb.az:                                            ; preds = %bb.ay
  %i.on = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.oo = sub i64 %i.on, %i.nv
  %.not43.i = icmp ult i64 %i.oo, %i.ns
  br i1 %.not43.i, label %._crit_edge.loopexit.i48.i, label %hufUnpackEncTable.exit

._crit_edge.loopexit.i48.i:                       ; preds = %bb.az
  %i.op = shl i64 %.264.i, 8
  %i.oq = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !18
  %i.or = zext i8 %i.oq to i64
  %i.os = or disjoint i64 %i.op, %i.or
  %i.ot = add nuw nsw i32 %.lcssa.i.i79, 2
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  br label %getBits.exit49.i

getBits.exit49.i:                                 ; preds = %._crit_edge.loopexit.i48.i, %bb.ay
  %.365.i = phi i64 [ %i.os, %._crit_edge.loopexit.i48.i ], [ %.264.i, %bb.ay ] ; 4 uses
  %.0.lcssa.i46.i = phi ptr [ %i.ou, %._crit_edge.loopexit.i48.i ], [ %.0.lcssa.i.i, %bb.ay ] ; 3 uses
  %.lcssa.i47.i = phi i32 [ %i.ot, %._crit_edge.loopexit.i48.i ], [ %i.of, %bb.ay ]
  %i.ov = add i32 %.lcssa.i47.i, -8               ; 4 uses
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = lshr i64 %.365.i, %i.ow
end_hunk_0
