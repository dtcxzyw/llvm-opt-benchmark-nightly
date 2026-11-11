Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@get_siz:bb.a
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 18 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !42
  %i.af = load i32, ptr %i.aa, align 1, !tbaa !43
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 22 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !42
  %i.aj = load i32, ptr %i.ae, align 1, !tbaa !43
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 26 ; 2 uses
  store ptr %i.am, ptr %i.a, align 8, !tbaa !42
  %i.an = load i32, ptr %i.ai, align 1, !tbaa !43
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1212 ; 3 uses
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 30 ; 2 uses
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !42
  %i.ar = load i32, ptr %i.am, align 1, !tbaa !43
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 34 ; 2 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !42
  %i.av = load i32, ptr %i.aq, align 1, !tbaa !43
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !42
  %i.az = load i16, ptr %i.au, align 1, !tbaa !43 ; 4 uses
  %i.ba = tail call i16 @llvm.bswap.i16(i16 %i.az) ; 4 uses
  %i.bb = zext i16 %i.ba to i32                   ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 792
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !257
  %i.be = tail call i32 @av_image_check_size2(i32 noundef %i.u, i32 noundef %i.y, i64 noundef %i.bd, i32 noundef -1, i32 noundef 0, ptr noundef %i.q) #10
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.bf, ptr noundef nonnull @.str.36) #10
  br label %.loopexit383

bb.e:                                             ; preds = %bb.c
  %i.bg = icmp eq i16 %i.az, 0
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bh, i32 noundef 16, ptr noundef nonnull @.str.37, i32 noundef %i.bj) #10
  br label %.loopexit383

bb.g:                                             ; preds = %bb.e
  %i.bk = icmp ugt i16 %i.ba, 4
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.bl, ptr noundef nonnull @.str.38, i32 noundef %i.bb) #10
  br label %.loopexit383

bb.i:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %i.at, align 8, !tbaa !75 ; 3 uses
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load i32, ptr %i.ax, align 4, !tbaa !79 ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %i.ad, align 8, !tbaa !76 ; 4 uses
  %i.br = icmp slt i32 %i.bq, %i.bm
  br i1 %i.br, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.ah, align 4, !tbaa !80 ; 4 uses
  %i.bt = icmp slt i32 %i.bs, %i.bo
  br i1 %i.bt, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %i.al, align 8, !tbaa !74
  %i.bv = sext i32 %i.bu to i64
  %i.bw = zext nneg i32 %i.bm to i64
  %i.bx = add nsw i64 %i.bv, %i.bw
  %i.by = zext nneg i32 %i.bq to i64
  %.not338 = icmp sgt i64 %i.bx, %i.by
  br i1 %.not338, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = load i32, ptr %i.ap, align 4, !tbaa !78
  %i.ca = sext i32 %i.bz to i64
  %i.cb = zext nneg i32 %i.bo to i64
  %i.cc = add nsw i64 %i.ca, %i.cb
  %i.cd = zext nneg i32 %i.bs to i64
  %.not339 = icmp sgt i64 %i.cc, %i.cd
  br i1 %.not339, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ce, i32 noundef 16, ptr noundef nonnull @.str.39) #10
  br label %.loopexit383

bb.p:                                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.v, align 8, !tbaa !77
  %.not340 = icmp slt i32 %i.bq, %i.cf
  br i1 %.not340, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %i.z, align 4, !tbaa !81
  %.not341 = icmp slt i32 %i.bs, %i.cg
  br i1 %.not341, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ch, i32 noundef 16, ptr noundef nonnull @.str.40) #10
  br label %.loopexit383

bb.s:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !36
  %.not342 = icmp eq i32 %i.cj, 0
  %i.ck = or i32 %i.bs, %i.bq
  %or.cond = icmp eq i32 %i.ck, 0
  %or.cond381 = or i1 %or.cond, %.not342
  br i1 %or.cond381, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cl, i32 noundef 16, ptr noundef nonnull @.str.41) #10
  br label %.loopexit383

bb.u:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  store i32 %i.bb, ptr %i.cm, align 4, !tbaa !57
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = mul nuw nsw i32 %i.bb, 3
  %i.cu = icmp sgt i32 %i.ct, %i.cs
  br i1 %i.cu, label %bb.v, label %.lr.ph395

.lr.ph395:                                        ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cw, i32 noundef 16, ptr noundef nonnull @.str.43, i32 noundef %i.bb) #10
  br label %.loopexit383

.preheader385:                                    ; preds = %bb.y
  %i.cx = icmp sgt i32 %i.dq, 0
  br i1 %i.cx, label %.lr.ph399, label %._crit_edge400

.lr.ph399:                                        ; preds = %.preheader385
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 5 uses
  %wide.trip.count438 = zext nneg i32 %i.dq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count438, 3      ; 3 uses
  %i.cz = icmp ult i32 %i.dq, 4
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph399.new

.lr.ph399.new:                                    ; preds = %.lr.ph399
  %unroll_iter = and i64 %wide.trip.count438, 2147483644
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph395, %bb.y
  %i.da = phi i32 [ %i.bb, %.lr.ph395 ], [ %i.dq, %bb.y ] ; 9 uses
  %.0312394 = phi i32 [ 0, %.lr.ph395 ], [ %i.dr, %bb.y ] ; 2 uses
  %i.db = zext nneg i32 %.0312394 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !46
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %.preheader386, label %bb.y

.preheader386:                                    ; preds = %bb.w
  %i.df = icmp sgt i32 %i.da, 0
  br i1 %i.df, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader386
  %wide.trip.count = zext nneg i32 %i.da to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.da, 8
  br i1 %min.iters.check, label %.lr.ph.preheader513, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %2 = trunc <4 x i64> %vec.ind to <4 x i32>
  %i.dg = add <4 x i32> %2, splat (i32 1)
  %3 = trunc <4 x i64> %vec.ind to <4 x i32>
  %4 = add <4 x i32> %3, splat (i32 5)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> %i.dg, ptr %1, align 4, !tbaa !46
  store <4 x i32> %4, ptr %i.dh, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader513

.lr.ph.preheader513:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader513, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader513 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dk = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !46
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !248

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader386
  %.1313.lcssa = phi i32 [ 0, %.preheader386 ], [ %i.da, %middle.block ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.dl = and i32 %i.da, 1
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.dn = zext nneg i32 %i.da to i64
  %i.do = getelementptr [4 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  store i32 0, ptr %i.dp, align 4, !tbaa !46
  %.pre = load i32, ptr %i.cm, align 4, !tbaa !57
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %._crit_edge
  %i.dq = phi i32 [ %.pre, %bb.x ], [ %i.da, %._crit_edge ], [ %i.da, %bb.w ] ; 7 uses
  %.2 = phi i32 [ %.1313.lcssa, %bb.x ], [ %.1313.lcssa, %._crit_edge ], [ %.0312394, %bb.w ]
  %i.dr = add nuw nsw i32 %.2, 1                  ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.dq
  br i1 %i.ds, label %bb.w, label %.preheader385, !llvm.loop !249

bb.z:                                             ; preds = %bb.z, %.lr.ph399.new
  %indvars.iv435 = phi i64 [ 0, %.lr.ph399.new ], [ %indvars.iv.next436.3, %bb.z ] ; 5 uses
  %.0398 = phi i32 [ 0, %.lr.ph399.new ], [ %i.el, %bb.z ]
  %niter = phi i64 [ 0, %.lr.ph399.new ], [ %niter.next.3, %bb.z ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !46
  %i.dv = shl nuw i32 1, %i.du
  %i.dw = or i32 %i.dv, %.0398
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !46
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = or i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !46
  %i.ef = shl nuw i32 1, %i.ee
  %i.eg = or i32 %i.ef, %i.eb
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !46
  %i.ek = shl nuw i32 1, %i.ej
  %i.el = or i32 %i.ek, %i.eg                     ; 3 uses
  %indvars.iv.next436.3 = add nuw nsw i64 %indvars.iv435, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge400.loopexit.unr-lcssa, label %bb.z, !llvm.loop !250

._crit_edge400.loopexit.unr-lcssa:                ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge400, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge400.loopexit.unr-lcssa, %.lr.ph399
  %indvars.iv435.epil.init = phi i64 [ 0, %.lr.ph399 ], [ %indvars.iv.next436.3, %._crit_edge400.loopexit.unr-lcssa ]
  %.0398.epil.init = phi i32 [ 0, %.lr.ph399 ], [ %i.el, %._crit_edge400.loopexit.unr-lcssa ]
  %lcmp.mod516 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod516)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader
  %indvars.iv435.epil = phi i64 [ %indvars.iv435.epil.init, %.epil.preheader ], [ %indvars.iv.next436.epil, %bb.aa ] ; 2 uses
  %.0398.epil = phi i32 [ %.0398.epil.init, %.epil.preheader ], [ %i.ep, %bb.aa ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aa ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv435.epil
  %i.en = load i32, ptr %i.em, align 4, !tbaa !46
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = or i32 %i.eo, %.0398.epil               ; 2 uses
  %indvars.iv.next436.epil = add nuw nsw i64 %indvars.iv435.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge400, label %bb.aa, !llvm.loop !251

._crit_edge400:                                   ; preds = %._crit_edge400.loopexit.unr-lcssa, %bb.aa, %.preheader385
  %.0.lcssa = phi i32 [ 0, %.preheader385 ], [ %i.el, %._crit_edge400.loopexit.unr-lcssa ], [ %i.ep, %bb.aa ]
  %i.eq = sext i32 %i.dq to i64
  %i.er = getelementptr inbounds [4 x i8], ptr @constinit, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !46
  %.not345 = icmp eq i32 %.0.lcssa, %i.es
  br i1 %.not345, label %.preheader384, label %.loopexit383

.preheader384:                                    ; preds = %._crit_edge400
  %i.et = icmp sgt i32 %i.dq, 0
  br i1 %i.et, label %.lr.ph404, label %._crit_edge405

.lr.ph404:                                        ; preds = %.preheader384
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph404, %bb.ad
  %indvars.iv440 = phi i64 [ 0, %.lr.ph404 ], [ %indvars.iv.next441, %bb.ad ] ; 6 uses
  %i.fa = phi ptr [ %.promoted, %.lr.ph404 ], [ %i.fn, %bb.ad ] ; 4 uses
  %.0310403 = phi i32 [ 0, %.lr.ph404 ], [ %i.gg, %bb.ad ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1 ; 2 uses
  store ptr %i.fb, ptr %i.a, align 8, !tbaa !42
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !43  ; 2 uses
  %i.fd = and i8 %i.fc, 127
  %i.fe = add nuw i8 %i.fd, 1                     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv440
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !43
  %i.fg = zext i8 %i.fe to i32
  %i.fh = load i32, ptr %i.ev, align 8, !tbaa !90
  %. = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 %i.fg)
  store i32 %., ptr %i.ev, align 8, !tbaa !90
  %.lobit = lshr i8 %i.fc, 7
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv440
  store i8 %.lobit, ptr %i.fi, align 1, !tbaa !43
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 2 ; 2 uses
  store ptr %i.fj, ptr %i.a, align 8, !tbaa !42
  %i.fk = load i8, ptr %i.fb, align 1, !tbaa !43  ; 3 uses
  %i.fl = zext i8 %i.fk to i32                    ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv440
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !46
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 3 ; 2 uses
  store ptr %i.fn, ptr %i.a, align 8, !tbaa !42
  %i.fo = load i8, ptr %i.fj, align 1, !tbaa !43  ; 3 uses
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv440
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !46
  switch i8 %i.fk, label %bb.ac [
    i8 0, label %bb.ae
    i8 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fr = icmp ugt i8 %i.fk, 4
  %i.fs = icmp eq i8 %i.fo, 3
  %i.ft = add i8 %i.fo, -5
  %i.fu = icmp ult i8 %i.ft, -4
  %i.fv = or i1 %i.fs, %i.fu
  %or.cond358 = select i1 %i.fr, i1 true, i1 %i.fv
  br i1 %or.cond358, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv440
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !46 ; 2 uses
  %.not355 = icmp eq i32 %i.fx, 0
  %.pre456 = load i32, ptr %i.cm, align 4, !tbaa !57 ; 2 uses
  %spec.select491 = select i1 %.not355, i32 %.pre456, i32 %i.fx
  %i.fy = lshr i32 %i.fp, 1
  %i.fz = shl i32 %spec.select491, 2              ; 2 uses
  %i.ga = add i32 %i.fz, -4
  %i.gb = shl i32 %i.fy, %i.ga
  %i.gc = lshr i32 %i.fl, 1
  %i.gd = add i32 %i.fz, -2
  %i.ge = shl i32 %i.gc, %i.gd
  %i.gf = or disjoint i32 %i.gb, %i.ge
  %i.gg = or i32 %i.gf, %.0310403                 ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %i.gh = sext i32 %.pre456 to i64
  %i.gi = icmp slt i64 %indvars.iv.next441, %i.gh
  br i1 %i.gi, label %bb.ab, label %._crit_edge405, !llvm.loop !252

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.ab
  %i.gj = load ptr, ptr %i.p, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gj, i32 noundef 16, ptr noundef nonnull @.str.44, i32 noundef %i.fl, i32 noundef %i.fp) #10
  br label %.loopexit383

._crit_edge405:                                   ; preds = %bb.ad, %.preheader384
  %.0310.lcssa = phi i32 [ 0, %.preheader384 ], [ %i.gg, %bb.ad ] ; 2 uses
  %i.gk = load i32, ptr %i.v, align 8, !tbaa !77
  %i.gl = load i32, ptr %i.at, align 8, !tbaa !75
  %i.gm = sub nsw i32 %i.gk, %i.gl
  %i.gn = load i32, ptr %i.al, align 8, !tbaa !74
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = sext i32 %i.gm to i64
  %i.gq = add nsw i64 %i.gp, -1
  %i.gr = add nsw i64 %i.gq, %i.go
  %i.gs = sdiv i64 %i.gr, %i.go                   ; 3 uses
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 5 uses
  store i32 %i.gt, ptr %i.gu, align 8, !tbaa !59
  %i.gv = load i32, ptr %i.z, align 4, !tbaa !81
  %i.gw = load i32, ptr %i.ax, align 4, !tbaa !79
end_hunk_0
