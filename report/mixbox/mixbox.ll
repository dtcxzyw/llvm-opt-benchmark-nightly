Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mixbox/original/mixbox?download=true
inline.NumInlined: 22
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZZL10mixbox_lutvEN13mixbox_init_tC2Ev:bb.a
  %rev.i.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i)
  %i.fb = zext i16 %rev.i.i.i.i to i32            ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.v ], [ 10, %bb.u ] ; 7 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !28
  %i.fe = icmp sgt i32 %i.fd, %i.fb
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %i.fe, label %bb.w, label %bb.v, !llvm.loop !32

bb.w:                                             ; preds = %bb.v
  %i.ff = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 3 uses
  %i.fg = icmp samesign ugt i64 %indvars.iv.i.i.i, 15
  br i1 %i.fg, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = sub nuw nsw i32 16, %i.ff
  %i.fi = lshr i32 %i.fb, %i.fh
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i.i.i
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !27
  %i.fl = zext i16 %i.fk to i32
  %i.fm = sub nsw i32 %i.fi, %i.fl
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !27
  %i.fp = zext i16 %i.fo to i32
  %i.fq = add nsw i32 %i.fm, %i.fp                ; 2 uses
  %i.fr = icmp sgt i32 %i.fq, 287
  br i1 %i.fr, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = sext i32 %i.fq to i64                   ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.p, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !10
  %i.fv = zext i8 %i.fu to i64
  %.not.i76.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.fv
  br i1 %.not.i76.i.i, label %bb.z, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.fw = lshr i32 %i.eq, %i.ff                   ; 2 uses
  store i32 %i.fw, ptr %i.k, align 4, !tbaa !23
  %i.fx = load i32, ptr %i.j, align 8, !tbaa !22
  %i.fy = sub nsw i32 %i.fx, %i.ff                ; 2 uses
  store i32 %i.fy, ptr %i.j, align 8, !tbaa !22
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.fs
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !27
  %i.gb = zext i16 %i.ga to i32
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i

_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i:    ; preds = %bb.z, %bb.t
  %i.gc = phi i32 [ %i.fw, %bb.z ], [ %i.ex, %bb.t ] ; 4 uses
  %i.gd = phi i32 [ %i.fy, %bb.z ], [ %i.ez, %bb.t ] ; 7 uses
  %.0.i.i.i = phi i32 [ %i.gb, %bb.z ], [ %i.fa, %bb.t ] ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %.0.i.i.i, 18
  br i1 %or.cond.i.i, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i
  %i.ge = icmp samesign ult i32 %.0.i.i.i, 16
  br i1 %i.ge, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gf = trunc nuw nsw i32 %.0.i.i.i to i8
  %i.gg = add nsw i32 %.05685.i.i, 1
  %i.gh = sext i32 %.05685.i.i to i64
  %i.gi = getelementptr inbounds i8, ptr %i.a, i64 %i.gh
  store i8 %i.gf, ptr %i.gi, align 1, !tbaa !10
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  switch i32 %.0.i.i.i, label %bb.ai [
    i32 16, label %bb.ad
    i32 17, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gj = icmp slt i32 %i.gd, 2
  br i1 %i.gj, label %bb.ae, label %_ZL8zreceiveP4zbufi.exit71.i.i

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre100.i.i = load i32, ptr %i.k, align 4, !tbaa !23
  %.pre101.i.i = load i32, ptr %i.j, align 8, !tbaa !22
  br label %_ZL8zreceiveP4zbufi.exit71.i.i

_ZL8zreceiveP4zbufi.exit71.i.i:                   ; preds = %bb.ae, %bb.ad
  %i.gk = phi i32 [ %i.gd, %bb.ad ], [ %.pre101.i.i, %bb.ae ]
  %i.gl = phi i32 [ %i.gc, %bb.ad ], [ %.pre100.i.i, %bb.ae ] ; 2 uses
  %i.gm = lshr i32 %i.gl, 2                       ; 2 uses
  store i32 %i.gm, ptr %i.k, align 4, !tbaa !23
  %i.gn = add nsw i32 %i.gk, -2                   ; 2 uses
  store i32 %i.gn, ptr %i.j, align 8, !tbaa !22
  %i.go = icmp eq i32 %.05685.i.i, 0
  br i1 %i.go, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZL8zreceiveP4zbufi.exit71.i.i
  %i.gp = and i32 %i.gl, 3
  %i.gq = add nuw nsw i32 %i.gp, 3
  %i.gr = sext i32 %.05685.i.i to i64
  %i.gs = getelementptr i8, ptr %i.a, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 -1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !10
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ac
  %i.gv = icmp slt i32 %i.gd, 3
  br i1 %i.gv, label %bb.ah, label %_ZL8zreceiveP4zbufi.exit70.i.i

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre98.i.i = load i32, ptr %i.k, align 4, !tbaa !23
  %.pre99.i.i = load i32, ptr %i.j, align 8, !tbaa !22
  br label %_ZL8zreceiveP4zbufi.exit70.i.i

_ZL8zreceiveP4zbufi.exit70.i.i:                   ; preds = %bb.ah, %bb.ag
  %i.gw = phi i32 [ %i.gd, %bb.ag ], [ %.pre99.i.i, %bb.ah ]
  %i.gx = phi i32 [ %i.gc, %bb.ag ], [ %.pre98.i.i, %bb.ah ] ; 2 uses
  %i.gy = and i32 %i.gx, 7
  %i.gz = lshr i32 %i.gx, 3                       ; 2 uses
  store i32 %i.gz, ptr %i.k, align 4, !tbaa !23
  %i.ha = add nsw i32 %i.gw, -3                   ; 2 uses
  store i32 %i.ha, ptr %i.j, align 8, !tbaa !22
  %i.hb = add nuw nsw i32 %i.gy, 3
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ac
  %i.hc = icmp slt i32 %i.gd, 7
  br i1 %i.hc, label %bb.aj, label %_ZL8zreceiveP4zbufi.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre102.i.i = load i32, ptr %i.k, align 4, !tbaa !23
  %.pre103.i.i = load i32, ptr %i.j, align 8, !tbaa !22
  br label %_ZL8zreceiveP4zbufi.exit.i.i

_ZL8zreceiveP4zbufi.exit.i.i:                     ; preds = %bb.aj, %bb.ai
  %i.hd = phi i32 [ %i.gd, %bb.ai ], [ %.pre103.i.i, %bb.aj ]
  %i.he = phi i32 [ %i.gc, %bb.ai ], [ %.pre102.i.i, %bb.aj ] ; 2 uses
  %i.hf = and i32 %i.he, 127
  %i.hg = lshr i32 %i.he, 7                       ; 2 uses
  store i32 %i.hg, ptr %i.k, align 4, !tbaa !23
  %i.hh = add nsw i32 %i.hd, -7                   ; 2 uses
  store i32 %i.hh, ptr %i.j, align 8, !tbaa !22
  %i.hi = add nuw nsw i32 %i.hf, 11
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL8zreceiveP4zbufi.exit.i.i, %_ZL8zreceiveP4zbufi.exit70.i.i, %bb.af
  %i.hj = phi i32 [ %i.gm, %bb.af ], [ %i.gz, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ %i.hg, %_ZL8zreceiveP4zbufi.exit.i.i ]
  %i.hk = phi i32 [ %i.gn, %bb.af ], [ %i.ha, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ %i.hh, %_ZL8zreceiveP4zbufi.exit.i.i ]
  %.052.i.i = phi i32 [ %i.gq, %bb.af ], [ %i.hb, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ %i.hi, %_ZL8zreceiveP4zbufi.exit.i.i ] ; 3 uses
  %.0.i.i = phi i8 [ %i.gu, %bb.af ], [ 0, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ 0, %_ZL8zreceiveP4zbufi.exit.i.i ]
  %i.hl = sub nsw i32 %i.ek, %.05685.i.i
  %i.hm = icmp slt i32 %i.hl, %.052.i.i
  br i1 %i.hm, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ak
  %i.hn = sext i32 %.05685.i.i to i64
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.hn
  %i.ho = zext nneg i32 %.052.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i, i8 %.0.i.i, i64 %i.ho, i1 false), !tbaa !10
  %i.hp = add nsw i32 %.052.i.i, %.05685.i.i
  br label %bb.al

bb.al:                                            ; preds = %.preheader.preheader.i.i, %bb.ab
  %i.hq = phi i32 [ %i.gc, %bb.ab ], [ %i.hj, %.preheader.preheader.i.i ]
  %i.hr = phi i32 [ %i.gd, %bb.ab ], [ %i.hk, %.preheader.preheader.i.i ]
  %.359.i.i = phi i32 [ %i.gg, %bb.ab ], [ %i.hp, %.preheader.preheader.i.i ] ; 3 uses
  %i.hs = icmp slt i32 %.359.i.i, %i.ek
  br i1 %i.hs, label %.preheader79.i.i, label %bb.am, !llvm.loop !33

bb.am:                                            ; preds = %bb.al
  %.not66.i.i = icmp eq i32 %.359.i.i, %i.ek
  br i1 %.not66.i.i, label %bb.an, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.ht = call fastcc noundef i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr noundef %i.r, ptr noundef %i.a, i32 noundef %i.ax)
  %.not67.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not67.i.i, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %_ZL21compute_huffman_codesP4zbuf.exit.i

_ZL21compute_huffman_codesP4zbuf.exit.thread.i:   ; preds = %bb.an, %bb.am, %bb.p, %bb.ak, %_ZL8zreceiveP4zbufi.exit71.i.i, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i, %bb.y, %bb.x, %bb.w, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  br label %_ZL10decompressPci.exit

_ZL21compute_huffman_codesP4zbuf.exit.i:          ; preds = %bb.an
  %i.hu = zext nneg i32 %i.ax to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hu
  %i.hw = call fastcc noundef i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr noundef %i.s, ptr noundef %i.hv, i32 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  %.not23.i = icmp eq i32 %i.hw, 0
  br i1 %.not23.i, label %_ZL10decompressPci.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZL21compute_huffman_codesP4zbuf.exit.i
  %i.hx = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i.i, %bb.ao
  %.051.i.i = phi ptr [ %i.hx, %bb.ao ], [ %.7.i.i, %.loopexit.i.i ] ; 16 uses
  %i.hy = load i32, ptr %i.j, align 8, !tbaa !22
  %i.hz = icmp slt i32 %i.hy, 16
  br i1 %i.hz, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ia = load i32, ptr %i.i, align 8, !tbaa !21
  %.not.i74.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i74.i.i, label %bb.ar, label %_ZL10decompressPci.exit

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.ib = load i32, ptr %i.k, align 4, !tbaa !23  ; 4 uses
  %i.ic = and i32 %i.ib, 511
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.id
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !27 ; 2 uses
  %.not15.i72.i.i = icmp eq i16 %i.if, 0
  br i1 %.not15.i72.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ig = zext i16 %i.if to i32                   ; 2 uses
  %i.ih = lshr i32 %i.ig, 9                       ; 2 uses
  %i.ii = lshr i32 %i.ib, %i.ih                   ; 2 uses
  store i32 %i.ii, ptr %i.k, align 4, !tbaa !23
  %i.ij = load i32, ptr %i.j, align 8, !tbaa !22
  %i.ik = sub nsw i32 %i.ij, %i.ih                ; 2 uses
  store i32 %i.ik, ptr %i.j, align 8, !tbaa !22
  %i.il = and i32 %i.ig, 511
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i

bb.au:                                            ; preds = %bb.as
  %trunc.i.i.i44.i = trunc i32 %i.ib to i16
  %rev.i.i.i45.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i44.i)
  %i.im = zext i16 %rev.i.i.i45.i to i32          ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.i.i46.i = phi i64 [ %indvars.iv.next.i.i47.i, %bb.av ], [ 10, %bb.au ] ; 7 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i46.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !28
  %i.ip = icmp sgt i32 %i.io, %i.im
  %indvars.iv.next.i.i47.i = add nuw nsw i64 %indvars.iv.i.i46.i, 1
  br i1 %i.ip, label %bb.aw, label %bb.av, !llvm.loop !32

bb.aw:                                            ; preds = %bb.av
  %i.iq = trunc nuw nsw i64 %indvars.iv.i.i46.i to i32 ; 3 uses
  %i.ir = icmp samesign ugt i64 %indvars.iv.i.i46.i, 15
  br i1 %i.ir, label %_ZL10decompressPci.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.is = sub nuw nsw i32 16, %i.iq
  %i.it = lshr i32 %i.im, %i.is
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.i.i46.i
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !27
  %i.iw = zext i16 %i.iv to i32
  %i.ix = sub nsw i32 %i.it, %i.iw
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.i.i46.i
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !27
  %i.ja = zext i16 %i.iz to i32
  %i.jb = add nsw i32 %i.ix, %i.ja                ; 2 uses
  %i.jc = icmp sgt i32 %i.jb, 287
  br i1 %i.jc, label %_ZL10decompressPci.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jd = sext i32 %i.jb to i64                   ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %i.w, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !10
  %i.jg = zext i8 %i.jf to i64
  %.not.i76.i48.i = icmp eq i64 %indvars.iv.i.i46.i, %i.jg
  br i1 %.not.i76.i48.i, label %bb.az, label %_ZL10decompressPci.exit

bb.az:                                            ; preds = %bb.ay
  %i.jh = lshr i32 %i.ib, %i.iq                   ; 2 uses
  store i32 %i.jh, ptr %i.k, align 4, !tbaa !23
  %i.ji = load i32, ptr %i.j, align 8, !tbaa !22
  %i.jj = sub nsw i32 %i.ji, %i.iq                ; 2 uses
  store i32 %i.jj, ptr %i.j, align 8, !tbaa !22
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.jd
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !27
  %i.jm = zext i16 %i.jl to i32
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i

_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i:  ; preds = %bb.az, %bb.at
  %i.jn = phi i32 [ %i.jh, %bb.az ], [ %i.ii, %bb.at ] ; 3 uses
  %.pr.i = phi i32 [ %i.jj, %bb.az ], [ %i.ik, %bb.at ] ; 4 uses
  %.0.i73.i.i = phi i32 [ %i.jm, %bb.az ], [ %i.il, %bb.at ] ; 5 uses
  %i.jo = icmp samesign ult i32 %.0.i73.i.i, 256
  br i1 %i.jo, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i
  %i.jp = load ptr, ptr %i.h, align 8, !tbaa !43
  %.not69.i.i = icmp ult ptr %.051.i.i, %i.jp
  br i1 %.not69.i.i, label %bb.bb, label %_ZL10decompressPci.exit

bb.bb:                                            ; preds = %bb.ba
  %i.jq = trunc nuw i32 %.0.i73.i.i to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 1
  store i8 %i.jq, ptr %.051.i.i, align 1, !tbaa !10
  br label %.loopexit.i.i

bb.bc:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i
  %i.js = icmp eq i32 %.0.i73.i.i, 256
  br i1 %i.js, label %bb.bv, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jt = add nsw i32 %.0.i73.i.i, -257
  %i.ju = zext nneg i32 %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr @_ZL12zlength_base, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !28 ; 2 uses
  %i.jx = add nsw i32 %.0.i73.i.i, -285
  %.not.i28.i = icmp ult i32 %i.jx, -20
  br i1 %.not.i28.i, label %thread-pre-split.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @_ZL13zlength_extra, i64 %i.ju
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !28 ; 4 uses
  %i.ka = icmp slt i32 %.pr.i, %i.jz
  br i1 %i.ka, label %bb.bf, label %_ZL8zreceiveP4zbufi.exit71.i29.i

bb.bf:                                            ; preds = %bb.be
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre.i42.i = load i32, ptr %i.k, align 4, !tbaa !23
  %.pre101.i43.i = load i32, ptr %i.j, align 8, !tbaa !22
  br label %_ZL8zreceiveP4zbufi.exit71.i29.i

_ZL8zreceiveP4zbufi.exit71.i29.i:                 ; preds = %bb.bf, %bb.be
  %i.kb = phi i32 [ %.pr.i, %bb.be ], [ %.pre101.i43.i, %bb.bf ]
  %i.kc = phi i32 [ %i.jn, %bb.be ], [ %.pre.i42.i, %bb.bf ] ; 2 uses
  %notmask.i70.i.i = shl nsw i32 -1, %i.jz
  %i.kd = xor i32 %notmask.i70.i.i, -1
  %i.ke = and i32 %i.kc, %i.kd
  %i.kf = lshr i32 %i.kc, %i.jz                   ; 2 uses
  store i32 %i.kf, ptr %i.k, align 4, !tbaa !23
  %i.kg = sub nsw i32 %i.kb, %i.jz                ; 2 uses
  store i32 %i.kg, ptr %i.j, align 8, !tbaa !22
  %i.kh = add i32 %i.ke, %i.jw
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZL8zreceiveP4zbufi.exit71.i29.i, %bb.bd
  %i.ki = phi i32 [ %i.kf, %_ZL8zreceiveP4zbufi.exit71.i29.i ], [ %i.jn, %bb.bd ]
  %i.kj = phi i32 [ %i.kg, %_ZL8zreceiveP4zbufi.exit71.i29.i ], [ %.pr.i, %bb.bd ]
  %.047.i.i = phi i32 [ %i.kh, %_ZL8zreceiveP4zbufi.exit71.i29.i ], [ %i.jw, %bb.bd ] ; 10 uses
  %i.kk = icmp slt i32 %i.kj, 16
  br i1 %i.kk, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %thread-pre-split.i.i
  %i.kl = load i32, ptr %i.i, align 8, !tbaa !21
  %.not.i.i40.i = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i40.i, label %bb.bh, label %_ZL10decompressPci.exit

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre102.i41.i = load i32, ptr %i.k, align 4, !tbaa !23
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %thread-pre-split.i.i
  %i.km = phi i32 [ %.pre102.i41.i, %bb.bh ], [ %i.ki, %thread-pre-split.i.i ] ; 4 uses
  %i.kn = and i32 %i.km, 511
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !27 ; 2 uses
  %.not15.i.i30.i = icmp eq i16 %i.kq, 0
  br i1 %.not15.i.i30.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kr = zext i16 %i.kq to i32                   ; 2 uses
  %i.ks = lshr i32 %i.kr, 9                       ; 2 uses
  %i.kt = lshr i32 %i.km, %i.ks                   ; 2 uses
  store i32 %i.kt, ptr %i.k, align 4, !tbaa !23
  %i.ku = load i32, ptr %i.j, align 8, !tbaa !22
  %i.kv = sub nsw i32 %i.ku, %i.ks                ; 2 uses
  store i32 %i.kv, ptr %i.j, align 8, !tbaa !22
  %i.kw = and i32 %i.kr, 511
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i

bb.bk:                                            ; preds = %bb.bi
  %trunc.i.i77.i.i = trunc i32 %i.km to i16
  %rev.i.i78.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i77.i.i)
  %i.kx = zext i16 %rev.i.i78.i.i to i32          ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.i79.i.i = phi i64 [ %indvars.iv.next.i80.i.i, %bb.bl ], [ 10, %bb.bk ] ; 7 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i79.i.i
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !28
  %i.la = icmp sgt i32 %i.kz, %i.kx
  %indvars.iv.next.i80.i.i = add nuw nsw i64 %indvars.iv.i79.i.i, 1
  br i1 %i.la, label %bb.bm, label %bb.bl, !llvm.loop !32

bb.bm:                                            ; preds = %bb.bl
  %i.lb = trunc nuw nsw i64 %indvars.iv.i79.i.i to i32 ; 3 uses
  %i.lc = icmp samesign ugt i64 %indvars.iv.i79.i.i, 15
  br i1 %i.lc, label %_ZL10decompressPci.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ld = sub nuw nsw i32 16, %i.lb
  %i.le = lshr i32 %i.kx, %i.ld
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv.i79.i.i
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !27
  %i.lh = zext i16 %i.lg to i32
  %i.li = sub nsw i32 %i.le, %i.lh
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.i79.i.i
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !27
  %i.ll = zext i16 %i.lk to i32
  %i.lm = add nsw i32 %i.li, %i.ll                ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 287
  br i1 %i.ln, label %_ZL10decompressPci.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lo = sext i32 %i.lm to i64                   ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.ab, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !10
  %i.lr = zext i8 %i.lq to i64
  %.not.i81.i.i = icmp eq i64 %indvars.iv.i79.i.i, %i.lr
  br i1 %.not.i81.i.i, label %bb.bp, label %_ZL10decompressPci.exit

bb.bp:                                            ; preds = %bb.bo
  %i.ls = lshr i32 %i.km, %i.lb                   ; 2 uses
  store i32 %i.ls, ptr %i.k, align 4, !tbaa !23
  %i.lt = load i32, ptr %i.j, align 8, !tbaa !22
  %i.lu = sub nsw i32 %i.lt, %i.lb                ; 2 uses
  store i32 %i.lu, ptr %i.j, align 8, !tbaa !22
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.lo
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !27
  %i.lx = zext i16 %i.lw to i32
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i

_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i:  ; preds = %bb.bp, %bb.bj
  %i.ly = phi i32 [ %i.ls, %bb.bp ], [ %i.kt, %bb.bj ]
  %i.lz = phi i32 [ %i.lu, %bb.bp ], [ %i.kv, %bb.bj ] ; 2 uses
  %.0.i.i32.i = phi i32 [ %i.lx, %bb.bp ], [ %i.kw, %bb.bj ] ; 2 uses
  %i.ma = zext nneg i32 %.0.i.i32.i to i64        ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr @_ZL10zdist_base, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !28 ; 2 uses
  %i.md = add nsw i32 %.0.i.i32.i, -30
  %.not64.i.i = icmp ult i32 %i.md, -26
  br i1 %.not64.i.i, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i
  %i.me = getelementptr inbounds nuw [4 x i8], ptr @_ZL11zdist_extra, i64 %i.ma
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !28 ; 4 uses
  %i.mg = icmp slt i32 %i.lz, %i.mf
  br i1 %i.mg, label %bb.br, label %_ZL8zreceiveP4zbufi.exit.i33.i

bb.br:                                            ; preds = %bb.bq
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre103.i39.i = load i32, ptr %i.k, align 4, !tbaa !23
  %.pre104.i.i = load i32, ptr %i.j, align 8, !tbaa !22
  br label %_ZL8zreceiveP4zbufi.exit.i33.i

_ZL8zreceiveP4zbufi.exit.i33.i:                   ; preds = %bb.br, %bb.bq
  %i.mh = phi i32 [ %i.lz, %bb.bq ], [ %.pre104.i.i, %bb.br ]
  %i.mi = phi i32 [ %i.ly, %bb.bq ], [ %.pre103.i39.i, %bb.br ] ; 2 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.mf
  %i.mj = xor i32 %notmask.i.i.i, -1
  %i.mk = and i32 %i.mi, %i.mj
  %i.ml = lshr i32 %i.mi, %i.mf
  store i32 %i.ml, ptr %i.k, align 4, !tbaa !23
  %i.mm = sub nsw i32 %i.mh, %i.mf
  store i32 %i.mm, ptr %i.j, align 8, !tbaa !22
  %i.mn = add i32 %i.mk, %i.mc
  br label %bb.bs

bb.bs:                                            ; preds = %_ZL8zreceiveP4zbufi.exit.i33.i, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i
  %.0.i34.i = phi i32 [ %i.mn, %_ZL8zreceiveP4zbufi.exit.i33.i ], [ %i.mc, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i ] ; 2 uses
  %i.mo = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.mp = ptrtoint ptr %.051.i.i to i64
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = sext i32 %.0.i34.i to i64               ; 3 uses
  %i.mt = icmp slt i64 %i.mr, %i.ms
  br i1 %i.mt, label %_ZL10decompressPci.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mu = sext i32 %.047.i.i to i64
  %i.mv = getelementptr inbounds i8, ptr %.051.i.i, i64 %i.mu
  %i.mw = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.mx = icmp ugt ptr %i.mv, %i.mw
  br i1 %i.mx, label %_ZL10decompressPci.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.my = sub nsw i64 0, %i.ms
  %i.mz = getelementptr inbounds i8, ptr %.051.i.i, i64 %i.my ; 6 uses
  %2 = icmp eq i32 %.0.i34.i, 1
  %.not67.i35.i = icmp eq i32 %.047.i.i, 0        ; 2 uses
  br i1 %2, label %3, label %8

3:                                                ; preds = %bb.bu
  br i1 %.not67.i35.i, label %.loopexit.i.i, label %.preheader.preheader.i37.i.a

.preheader.preheader.i37.i.a:                     ; preds = %3
  %4 = load i8, ptr %i.mz, align 1, !tbaa !10
  %5 = zext i32 %.047.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.051.i.i, i8 %4, i64 %5, i1 false), !tbaa !10
  %scevgep.i38.i = getelementptr i8, ptr %.051.i.i, i64 1
  %6 = add i32 %.047.i.i, -1
  %7 = zext i32 %6 to i64
  %scevgep100.i.i = getelementptr i8, ptr %scevgep.i38.i, i64 %7
  br label %.loopexit.i.i

8:                                                ; preds = %bb.bu
  br i1 %.not67.i35.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %8
  %i.na = zext i32 %.047.i.i to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %.047.i.i, 4
  %i.nb = add nsw i64 %i.ms, -1
  %diff.check = icmp ult i64 %i.nb, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader93.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %.047.i.i, 32
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nc = and i64 %i.na, 28
  %n.vec = and i64 %i.na, 4294967264              ; 6 uses
  %i.nd = getelementptr i8, ptr %.051.i.i, i64 %n.vec ; 2 uses
  %i.ne = getelementptr i8, ptr %i.mz, i64 %n.vec
  %i.nf = trunc nuw i64 %n.vec to i32
  %i.ng = sub i32 %.047.i.i, %i.nf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.051.i.i, i64 %index ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.mz, i64 %index ; 2 uses
  %i.nh = getelementptr i8, ptr %next.gep86, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep86, align 1, !tbaa !10
  %wide.load87 = load <16 x i8>, ptr %i.nh, align 1, !tbaa !10
  %i.ni = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !10
  store <16 x i8> %wide.load87, ptr %i.ni, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nj = icmp eq i64 %index.next, %n.vec
  br i1 %i.nj, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.na
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nc, 0
  br i1 %min.epilog.iters.check, label %.preheader93.i.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.na, 4294967292            ; 5 uses
  %i.nk = getelementptr i8, ptr %.051.i.i, i64 %n.vec90 ; 2 uses
  %i.nl = getelementptr i8, ptr %i.mz, i64 %n.vec90
  %i.nm = trunc nuw i64 %n.vec90 to i32
  %i.nn = sub i32 %.047.i.i, %i.nm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %next.gep92 = getelementptr i8, ptr %.051.i.i, i64 %index91
  %next.gep93 = getelementptr i8, ptr %i.mz, i64 %index91
  %wide.load94 = load <4 x i8>, ptr %next.gep93, align 1, !tbaa !10
  store <4 x i8> %wide.load94, ptr %next.gep92, align 1, !tbaa !10
  %index.next95 = add nuw i64 %index91, 4         ; 2 uses
  %i.no = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.no, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %n.vec90, %i.na
  br i1 %cmp.n96, label %.loopexit.i.i, label %.preheader93.i.i.preheader

.preheader93.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.i.i.ph = phi ptr [ %.051.i.i, %iter.check ], [ %i.nd, %vec.epilog.iter.check ], [ %i.nk, %vec.epilog.middle.block ] ; 2 uses
  %.048.i.i.ph = phi ptr [ %i.mz, %iter.check ], [ %i.ne, %vec.epilog.iter.check ], [ %i.nl, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.ph = phi i32 [ %.047.i.i, %iter.check ], [ %i.ng, %vec.epilog.iter.check ], [ %i.nn, %vec.epilog.middle.block ] ; 4 uses
  %i.np = add nsw i32 %.2.i.i.ph, -1
  %xtraiter = and i32 %.2.i.i.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader93.i.i.prol.loopexit, label %.preheader93.i.i.prol

.preheader93.i.i.prol:                            ; preds = %.preheader93.i.i.preheader, %.preheader93.i.i.prol
  %.3.i.i.prol = phi ptr [ %i.ns, %.preheader93.i.i.prol ], [ %.3.i.i.ph, %.preheader93.i.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi ptr [ %i.nq, %.preheader93.i.i.prol ], [ %.048.i.i.ph, %.preheader93.i.i.preheader ] ; 2 uses
  %.2.i.i.prol = phi i32 [ %i.nt, %.preheader93.i.i.prol ], [ %.2.i.i.ph, %.preheader93.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader93.i.i.prol ], [ 0, %.preheader93.i.i.preheader ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 1 ; 2 uses
  %i.nr = load i8, ptr %.048.i.i.prol, align 1, !tbaa !10
  %i.ns = getelementptr inbounds nuw i8, ptr %.3.i.i.prol, i64 1 ; 3 uses
  store i8 %i.nr, ptr %.3.i.i.prol, align 1, !tbaa !10
  %i.nt = add nsw i32 %.2.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader93.i.i.prol.loopexit, label %.preheader93.i.i.prol, !llvm.loop !36

.preheader93.i.i.prol.loopexit:                   ; preds = %.preheader93.i.i.prol, %.preheader93.i.i.preheader
  %.lcssa114.unr = phi ptr [ poison, %.preheader93.i.i.preheader ], [ %i.ns, %.preheader93.i.i.prol ]
  %.3.i.i.unr = phi ptr [ %.3.i.i.ph, %.preheader93.i.i.preheader ], [ %i.ns, %.preheader93.i.i.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nq, %.preheader93.i.i.prol ]
  %.2.i.i.unr = phi i32 [ %.2.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nt, %.preheader93.i.i.prol ]
  %i.nu = icmp ult i32 %i.np, 7
  br i1 %i.nu, label %.loopexit.i.i, label %.preheader93.i.i

.preheader93.i.i:                                 ; preds = %.preheader93.i.i.prol.loopexit, %.preheader93.i.i
  %.3.i.i = phi ptr [ %i.os, %.preheader93.i.i ], [ %.3.i.i.unr, %.preheader93.i.i.prol.loopexit ] ; 9 uses
  %.048.i.i = phi ptr [ %i.oq, %.preheader93.i.i ], [ %.048.i.i.unr, %.preheader93.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i = phi i32 [ %i.ot, %.preheader93.i.i ], [ %.2.i.i.unr, %.preheader93.i.i.prol.loopexit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 1
  %i.nw = load i8, ptr %.048.i.i, align 1, !tbaa !10
  %i.nx = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.nw, ptr %.3.i.i, align 1, !tbaa !10
  %i.ny = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 2
  %i.nz = load i8, ptr %i.nv, align 1, !tbaa !10
  %i.oa = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2
  store i8 %i.nz, ptr %i.nx, align 1, !tbaa !10
  %i.ob = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 3
  %i.oc = load i8, ptr %i.ny, align 1, !tbaa !10
  %i.od = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 3
  store i8 %i.oc, ptr %i.oa, align 1, !tbaa !10
  %i.oe = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.of = load i8, ptr %i.ob, align 1, !tbaa !10
  %i.og = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  store i8 %i.of, ptr %i.od, align 1, !tbaa !10
  %i.oh = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 5
  %i.oi = load i8, ptr %i.oe, align 1, !tbaa !10
  %i.oj = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 5
  store i8 %i.oi, ptr %i.og, align 1, !tbaa !10
  %i.ok = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 6
  %i.ol = load i8, ptr %i.oh, align 1, !tbaa !10
  %i.om = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 6
  store i8 %i.ol, ptr %i.oj, align 1, !tbaa !10
  %i.on = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 7
  %i.oo = load i8, ptr %i.ok, align 1, !tbaa !10
  %i.op = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 7
  store i8 %i.oo, ptr %i.om, align 1, !tbaa !10
  %i.oq = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.or = load i8, ptr %i.on, align 1, !tbaa !10
  %i.os = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 2 uses
  store i8 %i.or, ptr %i.op, align 1, !tbaa !10
  %i.ot = add nsw i32 %.2.i.i, -8                 ; 2 uses
  %.not66.i36.i.7 = icmp eq i32 %i.ot, 0
  br i1 %.not66.i36.i.7, label %.loopexit.i.i, label %.preheader93.i.i, !llvm.loop !37

.loopexit.i.i:                                    ; preds = %.preheader93.i.i.prol.loopexit, %.preheader93.i.i, %middle.block, %vec.epilog.middle.block, %8, %.preheader.preheader.i37.i.a, %3, %bb.bb
  %.7.i.i = phi ptr [ %i.jr, %bb.bb ], [ %scevgep100.i.i, %.preheader.preheader.i37.i.a ], [ %.051.i.i, %3 ], [ %.051.i.i, %8 ], [ %i.nk, %vec.epilog.middle.block ], [ %i.nd, %middle.block ], [ %.lcssa114.unr, %.preheader93.i.i.prol.loopexit ], [ %i.os, %.preheader93.i.i ]
  br label %bb.ap, !llvm.loop !38

bb.bv:                                            ; preds = %bb.bc
  store ptr %.051.i.i, ptr %i.g, align 8, !tbaa !42
  %.not25.i = icmp eq i32 %i.ai, 0
  br i1 %.not25.i, label %thread-pre-split.i, label %.preheader.i, !llvm.loop !39

.preheader.i:                                     ; preds = %bb.bv, %.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.us.i ], [ 0, %bb.bv ] ; 3 uses
  %i.ou = and i64 %indvars.iv.i, 63
  %.not26.i = icmp eq i64 %i.ou, 0
  br i1 %.not26.i, label %.split.us.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.ov = mul nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %i.ow = add nuw nsw i64 %i.ov, 4294967293
  %i.ox = and i64 %i.ow, 4294967295
  %i.oy = getelementptr inbounds nuw i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 %i.ox ; 3 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !10
  %i.pa = getelementptr inbounds nuw i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 %i.ov ; 4 uses
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !10
  %i.pc = add i8 %i.oz, -127
  %i.pd = add i8 %i.pc, %i.pb
  store i8 %i.pd, ptr %i.pa, align 1, !tbaa !10
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !10
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 1 ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !10
  %i.pi = add i8 %i.pf, -127
  %i.pj = add i8 %i.pi, %i.ph
  store i8 %i.pj, ptr %i.pg, align 1, !tbaa !10
  %i.pk = getelementptr inbounds nuw i8, ptr %i.oy, i64 2
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !10
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pa, i64 2 ; 2 uses
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !10
  %i.po = add i8 %i.pl, -127
  %i.pp = add i8 %i.po, %i.pn
  store i8 %i.pp, ptr %i.pm, align 1, !tbaa !10
  br label %.split.us.i

.split.us.i:                                      ; preds = %.preheader.split.preheader.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 266369
  br i1 %exitcond.not.i, label %_ZL10decompressPci.exit, label %.preheader.i, !llvm.loop !40

_ZL10decompressPci.exit:                          ; preds = %_ZL8zreceiveP4zbufi.exit.i, %_ZL21compute_huffman_codesP4zbuf.exit.i, %bb.aq, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bg, %bb.bm, %bb.bn, %bb.bo, %bb.bs, %bb.bt, %.split.us.i, %_ZL21compute_huffman_codesP4zbuf.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL9fill_bitsP4zbuf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !23
  %.promoted12 = load i32, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZL5zget8P4zbuf.exit, %bb.a
  %i.h = phi i32 [ %i.bj, %_ZL5zget8P4zbuf.exit ], [ %.promoted12, %bb.a ] ; 4 uses
  %i.i = phi i32 [ %i.bi, %_ZL5zget8P4zbuf.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.highbits = lshr i32 %i.i, %i.h
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.g, align 8, !tbaa !21
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10    ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !18
  %i.u = icmp sgt i32 %i.s, 39
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !21
  br label %_ZL5zget8P4zbuf.exit

bb.h:                                             ; preds = %bb.f
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @_ZL21mixbox_lut_compressed, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !24   ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %.pre = load i8, ptr %i.x, align 1, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.y = phi i8 [ %.pre, %bb.h ], [ %i.q, %bb.e ] ; 2 uses
  %i.z = phi i32 [ 0, %bb.h ], [ %i.n, %bb.e ]    ; 2 uses
  %i.aa = phi ptr [ %i.x, %bb.h ], [ %i.m, %bb.e ]
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = icmp sgt i8 %i.y, 91
  %.v.i11 = select i1 %i.ad, i8 -36, i8 -35
  %i.ae = add i8 %.v.i11, %i.y
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load <4 x i8>, ptr %i.ag, align 1, !tbaa !10 ; 2 uses
  %i.ai = icmp sgt <4 x i8> %i.ah, splat (i8 91)
  %i.aj = select <4 x i1> %i.ai, <4 x i8> splat (i8 -36), <4 x i8> splat (i8 -35)
  %i.ak = add <4 x i8> %i.aj, %i.ah               ; 4 uses
  %i.al = extractelement <4 x i8> %i.ak, i64 0
  %i.am = zext i8 %i.al to i32
  %i.an = extractelement <4 x i8> %i.ak, i64 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = extractelement <4 x i8> %i.ak, i64 2
  %i.aq = zext i8 %i.ap to i32
  %i.ar = extractelement <4 x i8> %i.ak, i64 3
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, 85
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = mul nuw nsw i32 %i.au, 85
  %i.aw = add nuw nsw i32 %i.av, %i.ao
  %i.ax = mul nuw nsw i32 %i.aw, 85
  %i.ay = add nuw nsw i32 %i.ax, %i.am
  %i.az = mul nuw nsw i32 %i.ay, 85
  %i.ba = add nuw nsw i32 %i.az, %i.af
  store i32 %i.ba, ptr %i.f, align 4
  %i.bb = add nsw i32 %i.z, 5
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.bc = zext nneg i32 %i.k to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = add nsw i32 %i.j, 1
  store i32 %i.bf, ptr %i.c, align 8, !tbaa !20
  %i.bg = zext i8 %i.be to i32
  br label %_ZL5zget8P4zbuf.exit

_ZL5zget8P4zbuf.exit:                             ; preds = %bb.g, %bb.j
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.bg, %bb.j ]
  %i.bh = shl i32 %.0.i, %i.h
  %i.bi = or i32 %i.bh, %i.i                      ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !23
  %i.bj = add nsw i32 %i.h, 8                     ; 2 uses
  store i32 %i.bj, ptr %i.b, align 8, !tbaa !22
  %i.bk = icmp slt i32 %i.h, 17
  br i1 %i.bk, label %bb.b, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %_ZL5zget8P4zbuf.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
.preheader74.preheader:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %0, i8 0, i64 1024, i1 false), !tbaa !27
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader74.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
end_hunk_0
