inline.NumInlined: 64
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@OJPEGReadHeaderInfoSec:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %i.gr, i64 1616
  store i8 0, ptr %i.if, align 8, !tbaa !99
  br label %thread-pre-split

bb.bq:                                            ; preds = %bb.bn
  %i.ig = zext i16 %i.ho to i32
  %i.ih = add nuw nsw i32 %i.ig, 6                ; 2 uses
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ii) #13 ; 13 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.19) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bs:                                            ; preds = %bb.bq
  store i32 %i.ih, ptr %i.ij, align 4, !tbaa !3
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i8 -1, ptr %i.il, align 4, !tbaa !101
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 5
  store i8 -60, ptr %i.im, align 1, !tbaa !101
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  store i8 %i.ha, ptr %i.in, align 2, !tbaa !101
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 7
  store i8 %i.hk, ptr %i.io, align 1, !tbaa !101
  %i.ip = add i16 %i.ho, -2
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %.pre.i59.i = load i16, ptr %i.gs, align 8, !tbaa !95
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %i.ir = phi i16 [ %.pre.i59.i, %bb.bs ], [ %i.jb, %bb.bv ] ; 2 uses
  %.021.i.i101 = phi i16 [ %i.ip, %bb.bs ], [ %i.jc, %bb.bv ] ; 2 uses
  %.020.i.i102 = phi ptr [ %i.iq, %bb.bs ], [ %i.jd, %bb.bv ] ; 2 uses
  %i.is = icmp eq i16 %i.ir, 0
  br i1 %i.is, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.it = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.gr)
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.bw, label %._crit_edge.i61.i

._crit_edge.i61.i:                                ; preds = %bb.bu
  %.pre23.i.i105 = load i16, ptr %i.gs, align 8, !tbaa !95
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i61.i, %bb.bt
  %i.iv = phi i16 [ %.pre23.i.i105, %._crit_edge.i61.i ], [ %i.ir, %bb.bt ]
  %spec.select.i60.i = tail call i16 @llvm.umin.i16(i16 %.021.i.i101, i16 %i.iv) ; 3 uses
  %i.iw = load ptr, ptr %i.gy, align 8, !tbaa !100
  %i.ix = zext i16 %spec.select.i60.i to i64      ; 3 uses
  tail call void @_TIFFmemcpy(ptr noundef %.020.i.i102, ptr noundef %i.iw, i64 noundef %i.ix) #13
  %i.iy = load ptr, ptr %i.gy, align 8, !tbaa !100
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ix
  store ptr %i.iz, ptr %i.gy, align 8, !tbaa !100
  %i.ja = load i16, ptr %i.gs, align 8, !tbaa !95
  %i.jb = sub i16 %i.ja, %spec.select.i60.i       ; 2 uses
  store i16 %i.jb, ptr %i.gs, align 8, !tbaa !95
  %i.jc = sub i16 %.021.i.i101, %spec.select.i60.i ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.020.i.i102, i64 %i.ix
  %.not.i.i103 = icmp eq i16 %i.jc, 0
  br i1 %.not.i.i103, label %OJPEGReadBlock.exit.i104, label %bb.bt

bb.bw:                                            ; preds = %bb.bu
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

OJPEGReadBlock.exit.i104:                         ; preds = %bb.bv
  %i.je = load i8, ptr %i.iq, align 4, !tbaa !101 ; 4 uses
  %i.jf = and i8 %i.je, -16
  switch i8 %i.jf, label %bb.cc [
    i8 0, label %bb.bx
    i8 16, label %bb.cd
  ]

bb.bx:                                            ; preds = %OJPEGReadBlock.exit.i104
  %i.jg = icmp ugt i8 %i.je, 3
  br i1 %i.jg, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bz:                                            ; preds = %bb.bx
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gr, i64 408
  %i.ji = zext nneg i8 %i.je to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.ji ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !138 ; 2 uses
  %.not58.i = icmp eq ptr %i.jk, null
  br i1 %.not58.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.jk) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.ij, ptr %i.jj, align 8, !tbaa !138
  br label %thread-pre-split

bb.cc:                                            ; preds = %OJPEGReadBlock.exit.i104
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.cd:                                            ; preds = %OJPEGReadBlock.exit.i104
  %i.jl = and i8 %i.je, 15                        ; 2 uses
  %i.jm = icmp samesign ugt i8 %i.jl, 3
  br i1 %i.jm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ij) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.cf:                                            ; preds = %bb.cd
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gr, i64 440
  %i.jo = zext nneg i8 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jo ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !138 ; 2 uses
  %.not57.i = icmp eq ptr %i.jq, null
  br i1 %.not57.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.jq) #13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  store ptr %i.ij, ptr %i.jp, align 8, !tbaa !138
  br label %thread-pre-split

bb.ci:                                            ; preds = %bb.n, %bb.n, %bb.n
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !68  ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 475 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !186
  %.not.i111 = icmp eq i8 %i.jt, 0
  br i1 %.not.i111, label %bb.cj, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 289 ; 12 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !178
  %i.jw = icmp eq i8 %i.jv, 0
  br i1 %i.jw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 476
  store i8 %i.az, ptr %i.jx, align 4, !tbaa !187
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 1632 ; 7 uses
  %i.jz = load i16, ptr %i.jy, align 8, !tbaa !95 ; 2 uses
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.kb = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jr)
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %._crit_edge.i.i117

._crit_edge.i.i117:                               ; preds = %bb.cm
  %.pre.i.i118 = load i16, ptr %i.jy, align 8, !tbaa !95
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i.i117, %bb.cl
  %i.kd = phi i16 [ %.pre.i.i118, %._crit_edge.i.i117 ], [ %i.jz, %bb.cl ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 1640 ; 6 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !100 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !101
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1 ; 2 uses
  store ptr %i.kh, ptr %i.ke, align 8, !tbaa !100
  %i.ki = add i16 %i.kd, -1                       ; 3 uses
  store i16 %i.ki, ptr %i.jy, align 8, !tbaa !95
  %i.kj = zext i8 %i.kg to i16
  %i.kk = shl nuw i16 %i.kj, 8
  %i.kl = icmp eq i16 %i.ki, 0
  br i1 %i.kl, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.km = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jr)
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %._crit_edge12.i.i114

._crit_edge12.i.i114:                             ; preds = %bb.co
  %.pre13.i.i115 = load ptr, ptr %i.ke, align 8, !tbaa !100
  %.pre14.i.i116 = load i16, ptr %i.jy, align 8, !tbaa !95
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge12.i.i114, %bb.cn
  %i.ko = phi i16 [ %.pre14.i.i116, %._crit_edge12.i.i114 ], [ %i.ki, %bb.cn ]
  %i.kp = phi ptr [ %.pre13.i.i115, %._crit_edge12.i.i114 ], [ %i.kh, %bb.cn ] ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !101
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 1 ; 2 uses
  store ptr %i.kr, ptr %i.ke, align 8, !tbaa !100
  %i.ks = add i16 %i.ko, -1                       ; 3 uses
  store i16 %i.ks, ptr %i.jy, align 8, !tbaa !95
  %i.kt = zext i8 %i.kq to i16
  %i.ku = or disjoint i16 %i.kk, %i.kt            ; 3 uses
  %i.kv = icmp ult i16 %i.ku, 11
  br i1 %i.kv, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.kw = load i8, ptr %i.ju, align 1, !tbaa !178
  %i.kx = icmp eq i8 %i.kw, 0
  br i1 %i.kx, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.ky = add i16 %i.ku, -8                       ; 2 uses
  %i.kz = urem i16 %i.ky, 3
  %i.la = udiv i16 %i.ky, 3                       ; 3 uses
  %.not79.i = icmp eq i16 %i.kz, 0
  br i1 %.not79.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lb = load i8, ptr %i.ju, align 1, !tbaa !178
  %i.lc = icmp eq i8 %i.lb, 0
  br i1 %i.lc, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.ct:                                            ; preds = %bb.cr
  %i.ld = load i8, ptr %i.ju, align 1, !tbaa !178 ; 2 uses
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jr, i64 268
  %i.lg = load i8, ptr %i.lf, align 4, !tbaa !87
  %i.lh = zext i8 %i.lg to i16
  %.not80.i = icmp eq i16 %i.la, %i.lh
  br i1 %.not80.i, label %bb.cv, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.li = icmp eq i16 %i.ks, 0
  br i1 %i.li, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lj = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jr)
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %bb.cw
  %.pre.i113 = load ptr, ptr %i.ke, align 8, !tbaa !100
  %.pre106.i = load i16, ptr %i.jy, align 8, !tbaa !95
  %.pre319 = load i8, ptr %i.ju, align 1, !tbaa !178
  br label %bb.cx

bb.cx:                                            ; preds = %._crit_edge105.i, %bb.cv
  %i.ll = phi i8 [ %.pre319, %._crit_edge105.i ], [ %i.ld, %bb.cv ]
  %i.lm = phi i16 [ %.pre106.i, %._crit_edge105.i ], [ %i.ks, %bb.cv ]
  %i.ln = phi ptr [ %.pre.i113, %._crit_edge105.i ], [ %i.kr, %bb.cv ] ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !101 ; 2 uses
  store i8 %i.lo, ptr %i.b, align 1, !tbaa !101
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  store ptr %i.lp, ptr %i.ke, align 8, !tbaa !100
  %i.lq = add i16 %i.lm, -1
  store i16 %i.lq, ptr %i.jy, align 8, !tbaa !95
  %.not81.i = icmp eq i8 %i.lo, 8
  %.not82.i = icmp eq i8 %i.ll, 0                 ; 2 uses
  br i1 %.not81.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  br i1 %.not82.i, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

bb.cz:                                            ; preds = %bb.cx
  br i1 %.not82.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call fastcc void @OJPEGReadSkip(ptr noundef nonnull %i.jr, i16 noundef zeroext 4)
  br label %bb.dh

bb.db:                                            ; preds = %bb.cz
  %i.lr = call fastcc i32 @OJPEGReadWord(ptr noundef nonnull %i.jr, ptr noundef %i.c)
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lt = load i16, ptr %i.c, align 2, !tbaa !163
  %i.lu = zext i16 %i.lt to i32                   ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jr, i64 252
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !80
  %i.lx = icmp ugt i32 %i.lw, %i.lu
  br i1 %i.lx, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jr, i64 264
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !85
  %i.ma = icmp ugt i32 %i.lz, %i.lu
  br i1 %i.ma, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jr, i64 484
  store i32 %i.lu, ptr %i.mb, align 4, !tbaa !188
  %i.mc = call fastcc i32 @OJPEGReadWord(ptr noundef nonnull %i.jr, ptr noundef %i.c)
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.me = load i16, ptr %i.c, align 2, !tbaa !163
  %i.mf = zext i16 %i.me to i32                   ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jr, i64 248
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !78
  %i.mi = icmp ugt i32 %i.mh, %i.mf
  %i.mj = getelementptr inbounds nuw i8, ptr %i.jr, i64 256
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !84 ; 2 uses
  %i.ml = icmp ugt i32 %i.mk, %i.mf
  %or.cond.i = select i1 %i.mi, i1 %i.ml, i1 false
  br i1 %or.cond.i, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %._crit_edge107.i

._crit_edge107.i:                                 ; preds = %bb.df
  %i.mm = icmp ult i32 %i.mk, %i.mf
  br i1 %i.mm, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge107.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jr, i64 480
  store i32 %i.mf, ptr %i.mn, align 8, !tbaa !189
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %i.mo = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mq = load i8, ptr %i.b, align 1, !tbaa !101
  %i.mr = zext i8 %i.mq to i16
  %.not83.i = icmp eq i16 %i.la, %i.mr
  br i1 %.not83.i, label %.lr.ph.i, label %bb.dw

.lr.ph.i:                                         ; preds = %bb.di
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jr, i64 488 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jr, i64 294 ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.jr, i64 292 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jr, i64 293 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jr, i64 491 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jr, i64 494 ; 2 uses
  %wide.trip.count.i = zext nneg i16 %i.la to i64
  %i.my = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i
  %i.na = load i8, ptr %i.ju, align 1, !tbaa !178
  %i.nb = icmp eq i8 %i.na, 0
  br i1 %i.nb, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.nc = load i8, ptr %i.b, align 1, !tbaa !101
  store i8 %i.nc, ptr %i.ms, align 8, !tbaa !101
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.nd = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nf = load i8, ptr %i.ju, align 1, !tbaa !178
  %.not84.peel.i = icmp eq i8 %i.nf, 0
  %i.ng = load i8, ptr %i.b, align 1, !tbaa !101  ; 4 uses
  br i1 %.not84.peel.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nh = lshr i8 %i.ng, 4                        ; 2 uses
  store i8 %i.nh, ptr %i.mu, align 4, !tbaa !38
  %i.ni = and i8 %i.ng, 15                        ; 2 uses
  store i8 %i.ni, ptr %i.mv, align 1, !tbaa !39
  switch i8 %i.nh, label %bb.dp [
    i8 1, label %bb.do
    i8 2, label %bb.do
    i8 4, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn, %bb.dn
  switch i8 %i.ni, label %bb.dp [
    i8 1, label %bb.ds
    i8 2, label %bb.ds
    i8 4, label %bb.ds
  ]

bb.dp:                                            ; preds = %bb.do, %bb.dn
  store i8 1, ptr %i.mt, align 2, !tbaa !120
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dm
  store i8 %i.ng, ptr %i.mw, align 1, !tbaa !101
  %i.nj = load i8, ptr %i.mt, align 2, !tbaa !120
  %i.nk = icmp eq i8 %i.nj, 0
  br i1 %i.nk, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.nl = zext i8 %i.ng to i32
  %i.nm = load i8, ptr %i.mu, align 4, !tbaa !38
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 4
  %i.np = load i8, ptr %i.mv, align 1, !tbaa !39
  %i.nq = zext i8 %i.np to i32
  %i.nr = or i32 %i.no, %i.nq
  %.not86.peel.i = icmp eq i32 %i.nr, %i.nl
  br i1 %.not86.peel.i, label %bb.ds, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.do, %bb.do
  %i.ns = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nu = load i8, ptr %i.ju, align 1, !tbaa !178 ; 2 uses
  %i.nv = icmp eq i8 %i.nu, 0
  br i1 %i.nv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.nw = load i8, ptr %i.b, align 1, !tbaa !101
  store i8 %i.nw, ptr %i.mx, align 2, !tbaa !101
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %exitcond.peel.not.i = icmp ult i16 %i.ku, 14
  br i1 %exitcond.peel.not.i, label %._crit_edge.i112, label %.peel.next.i

bb.dw:                                            ; preds = %bb.di
  %i.nx = load i8, ptr %i.ju, align 1, !tbaa !178
  %i.ny = icmp eq i8 %i.nx, 0
  br i1 %i.ny, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

.peel.next.i:                                     ; preds = %bb.dv, %bb.eh
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.eh ], [ 1, %bb.dv ] ; 4 uses
  %i.nz = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.dx

bb.dx:                                            ; preds = %.peel.next.i
  %i.ob = load i8, ptr %i.ju, align 1, !tbaa !178
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.od = load i8, ptr %i.b, align 1, !tbaa !101
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ms, i64 %indvars.iv.i
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !101
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.of = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.oh = load i8, ptr %i.ju, align 1, !tbaa !178
  %.not84.i = icmp eq i8 %i.oh, 0
  %i.oi = load i8, ptr %i.b, align 1, !tbaa !101  ; 3 uses
  br i1 %.not84.i, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not87.i = icmp eq i8 %i.oi, 17
  br i1 %.not87.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i8 1, ptr %i.mt, align 2, !tbaa !120
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mw, i64 %indvars.iv.i
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !101
  %i.ok = load i8, ptr %i.mt, align 2, !tbaa !120
  %i.ol = icmp ne i8 %i.ok, 0
  %.not85.i = icmp eq i8 %i.oi, 17
  %or.cond124.i = select i1 %i.ol, i1 true, i1 %.not85.i
  br i1 %or.cond124.i, label %bb.ee, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.om = call fastcc i32 @OJPEGReadByte(ptr noundef nonnull %i.jr, ptr noundef %i.b)
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.oo = load i8, ptr %i.ju, align 1, !tbaa !178 ; 2 uses
  %i.op = icmp eq i8 %i.oo, 0
  br i1 %i.op, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.oq = load i8, ptr %i.b, align 1, !tbaa !101
  %i.or = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.i
  store i8 %i.oq, ptr %i.or, align 1, !tbaa !101
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i112, label %.peel.next.i, !llvm.loop !190

._crit_edge.i112:                                 ; preds = %bb.eh, %bb.dv
  %i.os = phi i8 [ %i.nu, %bb.dv ], [ %i.oo, %bb.eh ]
  %i.ot = icmp eq i8 %i.os, 0
  br i1 %i.ot, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %._crit_edge.i112
  store i8 1, ptr %i.js, align 1, !tbaa !186
  br label %bb.ej

OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split: ; preds = %bb.dr, %._crit_edge107.i, %bb.df, %bb.dd, %bb.cu, %bb.ci, %bb.ed, %bb.dw, %bb.cy, %bb.cs, %bb.cq
  %.str.15.sink = phi ptr [ @.str.23, %bb.cy ], [ @.str.21, %bb.cq ], [ @.str.21, %bb.cs ], [ @.str.21, %bb.dw ], [ @.str.27, %bb.ed ], [ @.str.25, %bb.df ], [ @.str.27, %bb.dr ], [ @.str.24, %bb.dd ], [ @.str.15, %bb.ci ], [ @.str.22, %bb.cu ], [ @.str.26, %._crit_edge107.i ]
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamSof.module, ptr noundef nonnull %.str.15.sink) #13
  br label %OJPEGReadHeaderInfoSecStreamSof.exit.thread

OJPEGReadHeaderInfoSecStreamSof.exit.thread:      ; preds = %bb.co, %bb.de, %bb.dh, %bb.cm, %bb.cw, %bb.db, %bb.ds, %bb.dl, %.lr.ph.i, %.peel.next.i, %bb.dz, %bb.ee, %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split, %bb.cq, %bb.cs, %bb.dw, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.ej:                                            ; preds = %bb.ei, %._crit_edge.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ou = load i8, ptr %i.ag, align 1, !tbaa !178
  %.not80 = icmp eq i8 %i.ou, 0
  br i1 %.not80, label %OJPEGReadSkip.exit, label %OJPEGReadBytePeek.exit.thread

bb.ek:                                            ; preds = %bb.n
  %i.ov = load i8, ptr %i.ag, align 1, !tbaa !178
  %.not79 = icmp eq i8 %i.ov, 0
  br i1 %.not79, label %bb.el, label %OJPEGReadBytePeek.exit.thread

bb.el:                                            ; preds = %bb.ek
  %i.ow = tail call fastcc i32 @OJPEGReadHeaderInfoSecStreamSos(ptr noundef %0)
  %i.ox = icmp eq i32 %i.ow, 0
  br i1 %i.ox, label %OJPEGReadBytePeek.exit.thread, label %OJPEGReadSkip.exit.thread164

bb.em:                                            ; preds = %bb.n
  %i.oy = zext i8 %i.az to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSec.module, ptr noundef nonnull @.str.16, i32 noundef %i.oy) #13
  br label %OJPEGReadBytePeek.exit.thread

OJPEGReadSkip.exit:                               ; preds = %bb.ej
  %.not82 = icmp eq i8 %i.az, -38
  br i1 %.not82, label %OJPEGReadSkip.exit.thread164.thread, label %thread-pre-split

OJPEGReadSkip.exit.thread164:                     ; preds = %bb.k, %bb.el
  %.pr371 = load i8, ptr %i.ag, align 1, !tbaa !178
  %.not83 = icmp eq i8 %.pr371, 0
  br i1 %.not83, label %OJPEGReadSkip.exit.thread164.thread, label %OJPEGReadBytePeek.exit.thread

OJPEGReadSkip.exit.thread164.thread:              ; preds = %OJPEGReadSkip.exit, %OJPEGReadSkip.exit.thread164
  %i.oz = getelementptr inbounds nuw i8, ptr %i.e, i64 475 ; 2 uses
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !186
  %i.pb = icmp eq i8 %i.pa, 0
  br i1 %i.pb, label %bb.en, label %OJPEGReadBytePeek.exit.thread

bb.en:                                            ; preds = %OJPEGReadSkip.exit.thread164.thread
  %i.pc = load ptr, ptr %i.d, align 8, !tbaa !68  ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 304 ; 3 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !160
  %i.pf = icmp eq i64 %i.pe, 0
  br i1 %i.pf, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesQTable.module, ptr noundef nonnull @.str.29) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.ep:                                            ; preds = %bb.en
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 1616
  store i8 0, ptr %i.pg, align 8, !tbaa !99
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 268 ; 2 uses
  %i.pi = load i8, ptr %i.ph, align 4, !tbaa !87  ; 2 uses
  %.not74.i = icmp eq i8 %i.pi, 0
  br i1 %.not74.i, label %OJPEGReadHeaderInfoSecTablesQTable.exit, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.ep
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pc, i64 376
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 494 ; 2 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.fd, %.lr.ph73.i
  %indvars.iv299 = phi i32 [ %indvars.iv.next300, %bb.fd ], [ -1, %.lr.ph73.i ] ; 2 uses
  %i.po = phi i8 [ %i.qt, %bb.fd ], [ %i.pi, %.lr.ph73.i ]
  %indvars.iv.i119 = phi i64 [ %indvars.iv.next.i125, %bb.fd ], [ 0, %.lr.ph73.i ] ; 7 uses
  %i.pp = phi i32 [ %i.qu, %bb.fd ], [ 0, %.lr.ph73.i ]
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv.i119 ; 3 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !160 ; 3 uses
  %.not.i120 = icmp eq i64 %i.pr, 0
  br i1 %.not.i120, label %bb.fc, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ps = icmp eq i64 %indvars.iv.i119, 0
  br i1 %i.ps, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pt = getelementptr i8, ptr %i.pq, i64 -8
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !160
  %.not65.i = icmp eq i64 %i.pr, %i.pu
  br i1 %.not65.i, label %bb.fc, label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.pv = icmp samesign ugt i32 %i.pp, 1
  br i1 %i.pv, label %.lr.ph.i126.preheader, label %._crit_edge.i121

.lr.ph.i126.preheader:                            ; preds = %bb.et
  %wide.trip.count = zext i32 %indvars.iv299 to i64
  br label %.lr.ph.i126

bb.eu:                                            ; preds = %.lr.ph.i126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i121, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.preheader, %bb.eu
  %indvars.iv = phi i64 [ 0, %.lr.ph.i126.preheader ], [ %indvars.iv.next, %bb.eu ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !160
  %i.py = icmp eq i64 %i.pr, %i.px
  br i1 %i.py, label %bb.ev, label %bb.eu

bb.ev:                                            ; preds = %.lr.ph.i126
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesQTable.module, ptr noundef nonnull @.str.30) #13
  br label %OJPEGReadBytePeek.exit.thread

end_hunk_0
