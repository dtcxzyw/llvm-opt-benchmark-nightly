inline.NumInlined: 64
inline.NumDeleted: 29
begin_hunk_0_@OJPEGReadHeaderInfoSec:bb.a
  %.pre.i.i96 = load i16, ptr %i.ed, align 8, !tbaa !95
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i95, %bb.ai
  %i.ei = phi i16 [ %.pre.i.i96, %._crit_edge.i.i95 ], [ %i.ee, %bb.ai ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 1640 ; 8 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !100 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !101
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !100
  %i.en = add i16 %i.ei, -1                       ; 3 uses
  store i16 %i.en, ptr %i.ed, align 8, !tbaa !95
  %i.eo = zext i8 %i.el to i16
  %i.ep = shl nuw i16 %i.eo, 8
  %i.eq = icmp eq i16 %i.en, 0
  br i1 %i.eq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.er = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.ec)
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %OJPEGReadBytePeek.exit.thread, label %._crit_edge12.i.i92

._crit_edge12.i.i92:                              ; preds = %bb.al
  %.pre13.i.i93 = load ptr, ptr %i.ej, align 8, !tbaa !100
  %.pre14.i.i94 = load i16, ptr %i.ed, align 8, !tbaa !95
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge12.i.i92, %bb.ak
  %i.et = phi i16 [ %.pre14.i.i94, %._crit_edge12.i.i92 ], [ %i.en, %bb.ak ]
  %i.eu = phi ptr [ %.pre13.i.i93, %._crit_edge12.i.i92 ], [ %i.em, %bb.ak ] ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !101
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  store ptr %i.ew, ptr %i.ej, align 8, !tbaa !100
  %i.ex = add i16 %i.et, -1                       ; 4 uses
  store i16 %i.ex, ptr %i.ed, align 8, !tbaa !95
  %i.ey = zext i8 %i.ev to i16
  %i.ez = or disjoint i16 %i.ep, %i.ey            ; 2 uses
  %i.fa = icmp ult i16 %i.ez, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ec, i64 289
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !178
  %i.fd = icmp eq i8 %i.fc, 0                     ; 2 uses
  br i1 %i.fa, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  br i1 %i.fd, label %bb.ao, label %OJPEGReadBytePeek.exit.thread

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDqt.module, ptr noundef nonnull @.str.18) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.ap:                                            ; preds = %bb.am
  %i.fe = add i16 %i.ez, -2                       ; 4 uses
  br i1 %i.fd, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %spec.select.i.i = tail call i16 @llvm.umin.i16(i16 range(i16 1, -2) %i.fe, i16 %i.ex) ; 3 uses
  %i.ff = zext i16 %spec.select.i.i to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ff
  store ptr %i.fg, ptr %i.ej, align 8, !tbaa !100
  %i.fh = sub i16 %i.ex, %spec.select.i.i
  store i16 %i.fh, ptr %i.ed, align 8, !tbaa !95
  %.not.not.i.i = icmp ugt i16 %i.fe, %i.ex
  br i1 %.not.not.i.i, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %bb.aq
  %i.fi = sub i16 %i.fe, %spec.select.i.i
  %i.fj = zext i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ec, i64 1624 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !97 ; 2 uses
  %spec.select2122.i.i = tail call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fj) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ec, i64 1608 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !94
  %i.fo = add i64 %i.fn, %spec.select2122.i.i
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !94
  %i.fp = sub i64 %i.fl, %spec.select2122.i.i
  store i64 %i.fp, ptr %i.fk, align 8, !tbaa !97
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 1616
  store i8 0, ptr %i.fq, align 8, !tbaa !99
  br label %thread-pre-split

bb.as:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ec, i64 376
  br label %bb.at

bb.at:                                            ; preds = %bb.bf, %bb.as
  %.045.i = phi i16 [ %i.fe, %bb.as ], [ %i.gq, %bb.bf ] ; 2 uses
  %i.fs = icmp ult i16 %.045.i, 65
  br i1 %i.fs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDqt.module, ptr noundef nonnull @.str.18) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.av:                                            ; preds = %bb.at
  %i.ft = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 73) #13 ; 7 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDqt.module, ptr noundef nonnull @.str.19) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.ax:                                            ; preds = %bb.av
  store i32 73, ptr %i.ft, align 4, !tbaa !3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store <4 x i8> <i8 -1, i8 -37, i8 0, i8 67>, ptr %i.fv, align 4, !tbaa !101
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %.pre.i39.i = load i16, ptr %i.ed, align 8, !tbaa !95
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.fx = phi i16 [ %.pre.i39.i, %bb.ax ], [ %i.gh, %bb.ba ] ; 2 uses
  %.021.i.i = phi i16 [ 65, %bb.ax ], [ %i.gi, %bb.ba ] ; 2 uses
  %.020.i.i = phi ptr [ %i.fw, %bb.ax ], [ %i.gj, %bb.ba ] ; 2 uses
  %i.fy = icmp eq i16 %i.fx, 0
  br i1 %i.fy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fz = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.ec)
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.bb, label %._crit_edge.i41.i

._crit_edge.i41.i:                                ; preds = %bb.az
  %.pre23.i.i = load i16, ptr %i.ed, align 8, !tbaa !95
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i41.i, %bb.ay
  %i.gb = phi i16 [ %.pre23.i.i, %._crit_edge.i41.i ], [ %i.fx, %bb.ay ]
  %spec.select.i40.i = tail call i16 @llvm.umin.i16(i16 %.021.i.i, i16 %i.gb) ; 3 uses
  %i.gc = load ptr, ptr %i.ej, align 8, !tbaa !100
  %i.gd = zext i16 %spec.select.i40.i to i64      ; 3 uses
  tail call void @_TIFFmemcpy(ptr noundef %.020.i.i, ptr noundef %i.gc, i64 noundef %i.gd) #13
  %i.ge = load ptr, ptr %i.ej, align 8, !tbaa !100
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store ptr %i.gf, ptr %i.ej, align 8, !tbaa !100
  %i.gg = load i16, ptr %i.ed, align 8, !tbaa !95
  %i.gh = sub i16 %i.gg, %spec.select.i40.i       ; 2 uses
  store i16 %i.gh, ptr %i.ed, align 8, !tbaa !95
  %i.gi = sub i16 %.021.i.i, %spec.select.i40.i   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 %i.gd
  %.not.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not.i.i, label %OJPEGReadBlock.exit.i, label %bb.ay

bb.bb:                                            ; preds = %bb.az
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.ft) #13
  br label %OJPEGReadBytePeek.exit.thread

OJPEGReadBlock.exit.i:                            ; preds = %bb.ba
  %i.gk = load i8, ptr %i.fw, align 1, !tbaa !101
  %i.gl = and i8 %i.gk, 15                        ; 2 uses
  %i.gm = icmp samesign ugt i8 %i.gl, 3
  br i1 %i.gm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %OJPEGReadBlock.exit.i
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDqt.module, ptr noundef nonnull @.str.18) #13
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.ft) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bd:                                            ; preds = %OJPEGReadBlock.exit.i
  %i.gn = zext nneg i8 %i.gl to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gn ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !138 ; 2 uses
  %.not37.i = icmp eq ptr %i.gp, null
  br i1 %.not37.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.gp) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.ft, ptr %i.go, align 8, !tbaa !138
  %i.gq = add i16 %.045.i, -65                    ; 2 uses
  %.not38.i = icmp eq i16 %i.gq, 0
  br i1 %.not38.i, label %thread-pre-split, label %bb.at

bb.bg:                                            ; preds = %bb.n
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !68  ; 11 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1632 ; 10 uses
  %i.gt = load i16, ptr %i.gs, align 8, !tbaa !95 ; 2 uses
  %i.gu = icmp eq i16 %i.gt, 0
  br i1 %i.gu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.gv = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.gr)
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %OJPEGReadBytePeek.exit.thread, label %._crit_edge.i.i109

._crit_edge.i.i109:                               ; preds = %bb.bh
  %.pre.i.i110 = load i16, ptr %i.gs, align 8, !tbaa !95
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i.i109, %bb.bg
  %i.gx = phi i16 [ %.pre.i.i110, %._crit_edge.i.i109 ], [ %i.gt, %bb.bg ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 1640 ; 8 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !100 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !101 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.hb, ptr %i.gy, align 8, !tbaa !100
  %i.hc = add i16 %i.gx, -1                       ; 3 uses
  store i16 %i.hc, ptr %i.gs, align 8, !tbaa !95
  %1 = zext i8 %i.ha to i16
  %2 = shl nuw i16 %1, 8
  %i.hd = icmp eq i16 %i.hc, 0
  br i1 %i.hd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.he = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.gr)
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %OJPEGReadBytePeek.exit.thread, label %._crit_edge12.i.i106

._crit_edge12.i.i106:                             ; preds = %bb.bj
  %.pre13.i.i107 = load ptr, ptr %i.gy, align 8, !tbaa !100
  %.pre14.i.i108 = load i16, ptr %i.gs, align 8, !tbaa !95
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge12.i.i106, %bb.bi
  %i.hg = phi i16 [ %.pre14.i.i108, %._crit_edge12.i.i106 ], [ %i.hc, %bb.bi ]
  %i.hh = phi ptr [ %.pre13.i.i107, %._crit_edge12.i.i106 ], [ %i.hb, %bb.bi ] ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !101 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 2 uses
  store ptr %i.hj, ptr %i.gy, align 8, !tbaa !100
  %i.hk = add i16 %i.hg, -1                       ; 4 uses
  store i16 %i.hk, ptr %i.gs, align 8, !tbaa !95
  %i.hl = zext i8 %i.hi to i16
  %i.hm = or disjoint i16 %2, %i.hl               ; 4 uses
  %i.hn = icmp ult i16 %i.hm, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gr, i64 289
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !178
  %i.hq = icmp eq i8 %i.hp, 0                     ; 2 uses
  br i1 %i.hn, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.hq, label %bb.bm, label %OJPEGReadBytePeek.exit.thread

bb.bm:                                            ; preds = %bb.bl
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.hq, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hr = add i16 %i.hm, -2                       ; 3 uses
  %spec.select.i.i97 = tail call i16 @llvm.umin.i16(i16 range(i16 1, -2) %i.hr, i16 %i.hk) ; 3 uses
  %i.hs = zext i16 %spec.select.i.i97 to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hs
  store ptr %i.ht, ptr %i.gy, align 8, !tbaa !100
  %i.hu = sub i16 %i.hk, %spec.select.i.i97
  store i16 %i.hu, ptr %i.gs, align 8, !tbaa !95
  %.not.not.i.i98 = icmp ugt i16 %i.hr, %i.hk
  br i1 %.not.not.i.i98, label %bb.bp, label %thread-pre-split

bb.bp:                                            ; preds = %bb.bo
  %i.hv = sub i16 %i.hr, %spec.select.i.i97
  %i.hw = zext i16 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gr, i64 1624 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !97 ; 2 uses
  %spec.select2122.i.i100 = tail call i64 @llvm.umin.i64(i64 %i.hy, i64 %i.hw) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 1608 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !94
  %i.ib = add i64 %i.ia, %spec.select2122.i.i100
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !94
  %i.ic = sub i64 %i.hy, %spec.select2122.i.i100
  store i64 %i.ic, ptr %i.hx, align 8, !tbaa !97
  %i.id = getelementptr inbounds nuw i8, ptr %i.gr, i64 1616
  store i8 0, ptr %i.id, align 8, !tbaa !99
  br label %thread-pre-split

bb.bq:                                            ; preds = %bb.bn
  %i.ie = zext i16 %i.hm to i32
  %i.if = add nuw nsw i32 %i.ie, 6                ; 2 uses
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ig) #13 ; 13 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.19) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bs:                                            ; preds = %bb.bq
  store i32 %i.if, ptr %i.ih, align 4, !tbaa !3
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store i8 -1, ptr %i.ij, align 4, !tbaa !101
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 5
  store i8 -60, ptr %i.ik, align 1, !tbaa !101
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 6
  store i8 %i.ha, ptr %i.il, align 2, !tbaa !101
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 7
  store i8 %i.hi, ptr %i.im, align 1, !tbaa !101
  %i.in = add i16 %i.hm, -2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %.pre.i59.i = load i16, ptr %i.gs, align 8, !tbaa !95
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %i.ip = phi i16 [ %.pre.i59.i, %bb.bs ], [ %i.iz, %bb.bv ] ; 2 uses
  %.021.i.i101 = phi i16 [ %i.in, %bb.bs ], [ %i.ja, %bb.bv ] ; 2 uses
  %.020.i.i102 = phi ptr [ %i.io, %bb.bs ], [ %i.jb, %bb.bv ] ; 2 uses
  %i.iq = icmp eq i16 %i.ip, 0
  br i1 %i.iq, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ir = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.gr)
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bw, label %._crit_edge.i61.i

._crit_edge.i61.i:                                ; preds = %bb.bu
  %.pre23.i.i105 = load i16, ptr %i.gs, align 8, !tbaa !95
  br label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i61.i, %bb.bt
  %i.it = phi i16 [ %.pre23.i.i105, %._crit_edge.i61.i ], [ %i.ip, %bb.bt ]
  %spec.select.i60.i = tail call i16 @llvm.umin.i16(i16 %.021.i.i101, i16 %i.it) ; 3 uses
  %i.iu = load ptr, ptr %i.gy, align 8, !tbaa !100
  %i.iv = zext i16 %spec.select.i60.i to i64      ; 3 uses
  tail call void @_TIFFmemcpy(ptr noundef %.020.i.i102, ptr noundef %i.iu, i64 noundef %i.iv) #13
  %i.iw = load ptr, ptr %i.gy, align 8, !tbaa !100
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store ptr %i.ix, ptr %i.gy, align 8, !tbaa !100
  %i.iy = load i16, ptr %i.gs, align 8, !tbaa !95
  %i.iz = sub i16 %i.iy, %spec.select.i60.i       ; 2 uses
  store i16 %i.iz, ptr %i.gs, align 8, !tbaa !95
  %i.ja = sub i16 %.021.i.i101, %spec.select.i60.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.020.i.i102, i64 %i.iv
  %.not.i.i103 = icmp eq i16 %i.ja, 0
  br i1 %.not.i.i103, label %OJPEGReadBlock.exit.i104, label %bb.bt

bb.bw:                                            ; preds = %bb.bu
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ih) #13
  br label %OJPEGReadBytePeek.exit.thread

OJPEGReadBlock.exit.i104:                         ; preds = %bb.bv
  %i.jc = load i8, ptr %i.io, align 1, !tbaa !101 ; 4 uses
  %i.jd = and i8 %i.jc, -16
  switch i8 %i.jd, label %bb.cc [
    i8 0, label %bb.bx
    i8 16, label %bb.cd
  ]

bb.bx:                                            ; preds = %OJPEGReadBlock.exit.i104
  %i.je = icmp ugt i8 %i.jc, 3
  br i1 %i.je, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ih) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.bz:                                            ; preds = %bb.bx
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gr, i64 408
  %i.jg = zext nneg i8 %i.jc to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !138 ; 2 uses
  %.not58.i = icmp eq ptr %i.ji, null
  br i1 %.not58.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ji) #13
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.ih, ptr %i.jh, align 8, !tbaa !138
  br label %thread-pre-split

bb.cc:                                            ; preds = %OJPEGReadBlock.exit.i104
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ih) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.cd:                                            ; preds = %OJPEGReadBlock.exit.i104
  %i.jj = and i8 %i.jc, 15                        ; 2 uses
  %i.jk = icmp samesign ugt i8 %i.jj, 3
  br i1 %i.jk, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamDht.module, ptr noundef nonnull @.str.20) #13
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ih) #13
  br label %OJPEGReadBytePeek.exit.thread

bb.cf:                                            ; preds = %bb.cd
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gr, i64 440
  %i.jm = zext nneg i8 %i.jj to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !138 ; 2 uses
  %.not57.i = icmp eq ptr %i.jo, null
  br i1 %.not57.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.jo) #13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  store ptr %i.ih, ptr %i.jn, align 8, !tbaa !138
  br label %thread-pre-split

bb.ci:                                            ; preds = %bb.n, %bb.n, %bb.n
  %i.jp = load ptr, ptr %i.d, align 8, !tbaa !68  ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 475 ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !186
  %.not.i111 = icmp eq i8 %i.jr, 0
  br i1 %.not.i111, label %bb.cj, label %OJPEGReadHeaderInfoSecStreamSof.exit.thread.sink.split

bb.cj:                                            ; preds = %bb.ci
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 289 ; 12 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !178
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jp, i64 476
  store i8 %i.az, ptr %i.jv, align 4, !tbaa !187
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 1632 ; 7 uses
  %i.jx = load i16, ptr %i.jw, align 8, !tbaa !95 ; 2 uses
  %i.jy = icmp eq i16 %i.jx, 0
  br i1 %i.jy, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.jz = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.jp)
  %i.ka = icmp eq i32 %i.jz, 0
end_hunk_0
begin_hunk_1_@OJPEGLibjpegJpegSourceMgrFillInputBuffer:bb.a
  %.val61.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val61.i, i64 400
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !138 ; 3 uses
  %.not.i83.i = icmp eq ptr %i.ak, null
  br i1 %.not.i83.i, label %OJPEGWriteStreamQTable.exit84.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add i32 %i.am, -4
  br label %OJPEGWriteStreamQTable.exit84.i

OJPEGWriteStreamQTable.exit84.i:                  ; preds = %bb.k, %bb.j
  %.1119 = phi ptr [ %.08, %bb.j ], [ %i.al, %bb.k ]
  %.11 = phi i32 [ 0, %bb.j ], [ %i.an, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val61.i, i64 3696 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !107
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.l:                                             ; preds = %bb.b
  %.val68.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val68.i, i64 408
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !138 ; 3 uses
  %.not.i85.i = icmp eq ptr %i.as, null
  br i1 %.not.i85.i, label %OJPEGWriteStreamDcTable.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add i32 %i.au, -4
  br label %OJPEGWriteStreamDcTable.exit.i

OJPEGWriteStreamDcTable.exit.i:                   ; preds = %bb.m, %bb.l
  %.1018 = phi ptr [ %.08, %bb.l ], [ %i.at, %bb.m ]
  %.10 = phi i32 [ 0, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.val68.i, i64 3696 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !107
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.n:                                             ; preds = %bb.b
  %.val67.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val67.i, i64 416
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !138 ; 3 uses
  %.not.i86.i = icmp eq ptr %i.ba, null
  br i1 %.not.i86.i, label %OJPEGWriteStreamDcTable.exit87.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bd = add i32 %i.bc, -4
  br label %OJPEGWriteStreamDcTable.exit87.i

OJPEGWriteStreamDcTable.exit87.i:                 ; preds = %bb.o, %bb.n
  %.917 = phi ptr [ %.08, %bb.n ], [ %i.bb, %bb.o ]
  %.9 = phi i32 [ 0, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = getelementptr inbounds nuw i8, ptr %.val67.i, i64 3696 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !107
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.p:                                             ; preds = %bb.b
  %.val66.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val66.i, i64 424
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138 ; 3 uses
  %.not.i88.i = icmp eq ptr %i.bi, null
  br i1 %.not.i88.i, label %OJPEGWriteStreamDcTable.exit89.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bl = add i32 %i.bk, -4
  br label %OJPEGWriteStreamDcTable.exit89.i

OJPEGWriteStreamDcTable.exit89.i:                 ; preds = %bb.q, %bb.p
  %.816 = phi ptr [ %.08, %bb.p ], [ %i.bj, %bb.q ]
  %.8 = phi i32 [ 0, %bb.p ], [ %i.bl, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.val66.i, i64 3696 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !107
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.r:                                             ; preds = %bb.b
  %.val65.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val65.i, i64 432
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !138 ; 3 uses
  %.not.i90.i = icmp eq ptr %i.bq, null
  br i1 %.not.i90.i, label %OJPEGWriteStreamDcTable.exit91.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bt = add i32 %i.bs, -4
  br label %OJPEGWriteStreamDcTable.exit91.i

OJPEGWriteStreamDcTable.exit91.i:                 ; preds = %bb.s, %bb.r
  %.715 = phi ptr [ %.08, %bb.r ], [ %i.br, %bb.s ]
  %.7 = phi i32 [ 0, %bb.r ], [ %i.bt, %bb.s ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.val65.i, i64 3696 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !107
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.t:                                             ; preds = %bb.b
  %.val72.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val72.i, i64 440
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138 ; 3 uses
  %.not.i92.i = icmp eq ptr %i.by, null
  br i1 %.not.i92.i, label %OJPEGWriteStreamAcTable.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !3
  %i.cb = add i32 %i.ca, -4
  br label %OJPEGWriteStreamAcTable.exit.i

OJPEGWriteStreamAcTable.exit.i:                   ; preds = %bb.u, %bb.t
  %.614 = phi ptr [ %.08, %bb.t ], [ %i.bz, %bb.u ]
  %.6 = phi i32 [ 0, %bb.t ], [ %i.cb, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.val72.i, i64 3696 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !107
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.v:                                             ; preds = %bb.b
  %.val71.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val71.i, i64 448
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !138 ; 3 uses
  %.not.i93.i = icmp eq ptr %i.cg, null
  br i1 %.not.i93.i, label %OJPEGWriteStreamAcTable.exit94.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.cj = add i32 %i.ci, -4
  br label %OJPEGWriteStreamAcTable.exit94.i

OJPEGWriteStreamAcTable.exit94.i:                 ; preds = %bb.w, %bb.v
  %.513 = phi ptr [ %.08, %bb.v ], [ %i.ch, %bb.w ]
  %.5 = phi i32 [ 0, %bb.v ], [ %i.cj, %bb.w ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.val71.i, i64 3696 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !107
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.x:                                             ; preds = %bb.b
  %.val70.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val70.i, i64 456
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !138 ; 3 uses
  %.not.i95.i = icmp eq ptr %i.co, null
  br i1 %.not.i95.i, label %OJPEGWriteStreamAcTable.exit96.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cr = add i32 %i.cq, -4
  br label %OJPEGWriteStreamAcTable.exit96.i

OJPEGWriteStreamAcTable.exit96.i:                 ; preds = %bb.y, %bb.x
  %.412 = phi ptr [ %.08, %bb.x ], [ %i.cp, %bb.y ]
  %.4 = phi i32 [ 0, %bb.x ], [ %i.cr, %bb.y ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.val70.i, i64 3696 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !107
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.z:                                             ; preds = %bb.b
  %.val69.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val69.i, i64 464
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !138 ; 3 uses
  %.not.i97.i = icmp eq ptr %i.cw, null
  br i1 %.not.i97.i, label %OJPEGWriteStreamAcTable.exit98.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cz = add i32 %i.cy, -4
  br label %OJPEGWriteStreamAcTable.exit98.i

OJPEGWriteStreamAcTable.exit98.i:                 ; preds = %bb.aa, %bb.z
  %.311 = phi ptr [ %.08, %bb.z ], [ %i.cx, %bb.aa ]
  %.3 = phi i32 [ 0, %bb.z ], [ %i.cz, %bb.aa ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val69.i, i64 3696 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !107
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.ab:                                            ; preds = %bb.b
  %.val73.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val73.i, i64 472
  %i.de = load i16, ptr %i.dd, align 8, !tbaa !91 ; 3 uses
  %.not.i99.i = icmp eq i16 %i.de, 0
  br i1 %.not.i99.i, label %OJPEGWriteStreamDri.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %1 = getelementptr inbounds nuw i8, ptr %.val73.i, i64 3700 ; 2 uses
  store <4 x i8> <i8 -1, i8 -35, i8 0, i8 4>, ptr %1, align 4, !tbaa !101
  %2 = lshr i16 %i.de, 8
  %3 = trunc nuw i16 %2 to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.val73.i, i64 3704
  store i8 %3, ptr %i.df, align 4, !tbaa !101
  %i.dg = trunc i16 %i.de to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val73.i, i64 3705
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !101
  br label %OJPEGWriteStreamDri.exit.i

OJPEGWriteStreamDri.exit.i:                       ; preds = %bb.ac, %bb.ab
  %.210 = phi ptr [ %.08, %bb.ab ], [ %1, %bb.ac ]
  %.2 = phi i32 [ 0, %bb.ab ], [ 6, %bb.ac ]
  %i.di = getelementptr inbounds nuw i8, ptr %.val73.i, i64 3696 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !107
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.ad:                                            ; preds = %bb.b
  %.val74.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 19 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3700 ; 5 uses
  store i8 -1, ptr %i.dl, align 4, !tbaa !101
  %i.dm = getelementptr inbounds nuw i8, ptr %.val74.i, i64 476
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !187
  %i.do = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3701
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !101
  %i.dp = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3702
  store i8 0, ptr %i.dp, align 2, !tbaa !101
  %i.dq = getelementptr inbounds nuw i8, ptr %.val74.i, i64 270
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !89  ; 7 uses
  %i.ds = mul i8 %i.dr, 3
  %i.dt = add i8 %i.ds, 8
  %i.du = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3703
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !101
  %i.dv = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3704
  store i8 8, ptr %i.dv, align 4, !tbaa !101
  %i.dw = getelementptr inbounds nuw i8, ptr %.val74.i, i64 484
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !188 ; 2 uses
  %i.dy = lshr i32 %i.dx, 8
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3705
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !101
  %i.eb = trunc i32 %i.dx to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3706
  store i8 %i.eb, ptr %i.ec, align 2, !tbaa !101
  %i.ed = getelementptr inbounds nuw i8, ptr %.val74.i, i64 480
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !189 ; 2 uses
  %i.ef = lshr i32 %i.ee, 8
  %i.eg = trunc i32 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3707
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !101
  %i.ei = trunc i32 %i.ee to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3708
  store i8 %i.ei, ptr %i.ej, align 4, !tbaa !101
  %i.ek = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3709
  store i8 %i.dr, ptr %i.ek, align 1, !tbaa !101
  %.not.i100.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i100.i, label %OJPEGWriteStreamSof.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %.val74.i, i64 488 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val74.i, i64 269
  %i.en = load i8, ptr %i.em, align 1, !tbaa !88
  %i.eo = getelementptr inbounds nuw i8, ptr %.val74.i, i64 491 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val74.i, i64 494 ; 3 uses
  %i.eq = zext i8 %i.en to i64                    ; 3 uses
  %wide.trip.count.i.i = zext i8 %i.dr to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.er = icmp eq i8 %i.dr, 1
  br i1 %i.er, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 254
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.new
  %indvars.iv2.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next3.i.i.1, %bb.ae ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ae ]
  %i.es = add nuw nsw i64 %indvars.iv2.i.i, %i.eq ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !101
  %i.ev = mul nuw nsw i64 %indvars.iv2.i.i, 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ev ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 10
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !101
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.es
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !101
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 11
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !101
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !101
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !101
  %indvars.iv.next3.i.i = or disjoint i64 %indvars.iv2.i.i, 1 ; 2 uses
  %i.fe = add nuw nsw i64 %indvars.iv.next3.i.i, %i.eq ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !101
  %i.fh = mul nuw nsw i64 %indvars.iv.next3.i.i, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 10
  store i8 %i.fg, ptr %i.fj, align 1, !tbaa !101
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fe
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !101
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 11
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !101
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fe
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !101
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !101
  %indvars.iv.next3.i.i.1 = add nuw nsw i64 %indvars.iv2.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %OJPEGWriteStreamSof.exit.i.loopexit.unr-lcssa, label %bb.ae

OJPEGWriteStreamSof.exit.i.loopexit.unr-lcssa:    ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %OJPEGWriteStreamSof.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %OJPEGWriteStreamSof.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv2.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next3.i.i.1, %OJPEGWriteStreamSof.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i8 %i.dr to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.fq = add nuw nsw i64 %indvars.iv2.i.i.epil.init, %i.eq ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !101
  %i.ft = mul nuw nsw i64 %indvars.iv2.i.i.epil.init, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 10
  store i8 %i.fs, ptr %i.fv, align 1, !tbaa !101
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fq
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !101
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 11
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !101
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fq
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !101
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !101
  br label %OJPEGWriteStreamSof.exit.i

OJPEGWriteStreamSof.exit.i:                       ; preds = %.epil.preheader, %OJPEGWriteStreamSof.exit.i.loopexit.unr-lcssa, %bb.ad
  %i.gc = zext i8 %i.dr to i32
  %i.gd = mul nuw nsw i32 %i.gc, 3
  %i.ge = add nuw nsw i32 %i.gd, 10
  %i.gf = getelementptr inbounds nuw i8, ptr %.val74.i, i64 3696 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !107
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !107
  br label %OJPEGWriteStream.exit.thread

bb.af:                                            ; preds = %bb.b
  %.val75.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 10 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.val75.i, i64 3700 ; 7 uses
  store i8 -1, ptr %i.gi, align 4, !tbaa !101
  %i.gj = getelementptr inbounds nuw i8, ptr %.val75.i, i64 3701
  store i8 -38, ptr %i.gj, align 1, !tbaa !101
  %i.gk = getelementptr inbounds nuw i8, ptr %.val75.i, i64 3702
  store i8 0, ptr %i.gk, align 2, !tbaa !101
  %i.gl = getelementptr inbounds nuw i8, ptr %.val75.i, i64 270
  %i.gm = load i8, ptr %i.gl, align 2, !tbaa !89  ; 7 uses
  %i.gn = shl i8 %i.gm, 1
  %i.go = add i8 %i.gn, 6
  %i.gp = getelementptr inbounds nuw i8, ptr %.val75.i, i64 3703
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !101
  %i.gq = getelementptr inbounds nuw i8, ptr %.val75.i, i64 3704
  store i8 %i.gm, ptr %i.gq, align 4, !tbaa !101
  %.not.i101.i = icmp eq i8 %i.gm, 0
  br i1 %.not.i101.i, label %OJPEGWriteStreamSos.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.af
  %i.gr = getelementptr inbounds nuw i8, ptr %.val75.i, i64 497 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val75.i, i64 269
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !88
  %i.gu = getelementptr inbounds nuw i8, ptr %.val75.i, i64 500 ; 3 uses
  %i.gv = zext i8 %i.gt to i64                    ; 3 uses
  %wide.trip.count.i103.i = zext i8 %i.gm to i64  ; 7 uses
  %min.iters.check = icmp ult i8 %i.gm, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i8 %i.gm, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i103.i, 12
  %n.vec = and i64 %wide.trip.count.i103.i, 240   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gw = add nuw nsw i64 %index, %i.gv           ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %wide.load = load <8 x i8>, ptr %i.gx, align 1, !tbaa !101
  %wide.load47 = load <8 x i8>, ptr %i.gy, align 1, !tbaa !101
  %i.gz = shl nuw nsw i64 %index, 1
  %i.ha = shl i64 %index, 1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 5
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 21
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %wide.load48 = load <8 x i8>, ptr %i.hf, align 1, !tbaa !101
  %wide.load49 = load <8 x i8>, ptr %i.hg, align 1, !tbaa !101
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> %wide.load48, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.hd, align 1, !tbaa !101
  %interleaved.vec50 = shufflevector <8 x i8> %wide.load47, <8 x i8> %wide.load49, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec50, ptr %i.he, align 1, !tbaa !101
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !211
end_hunk_1
