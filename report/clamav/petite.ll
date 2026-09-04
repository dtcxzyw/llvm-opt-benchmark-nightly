Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/petite?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@petite_inflate2x_1to9:bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #6
  %wide.trip.count1717 = zext nneg i32 %.079714352072 to i64
  br label %.lr.ph1499

.lr.ph1499:                                       ; preds = %.lr.ph1499.preheader, %.lr.ph1499
  %indvars.iv1692 = phi i64 [ 0, %.lr.ph1499.preheader ], [ %indvars.iv.next1693, %.lr.ph1499 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [36 x i8], ptr %.078414382070, i64 %indvars.iv1692 ; 4 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !14
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !16
  %i.ez = trunc nuw nsw i64 %indvars.iv1692 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %i.ez, i32 noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew, i32 noundef %i.ey) #6
  %indvars.iv.next1693 = add nuw nsw i64 %indvars.iv1692, 1 ; 2 uses
  %exitcond1718.not = icmp eq i64 %indvars.iv.next1693, %wide.trip.count1717
  br i1 %exitcond1718.not, label %._crit_edge1500, label %.lr.ph1499

._crit_edge1500:                                  ; preds = %.lr.ph1499
  %i.fa = tail call i32 @cli_rebuildpe(ptr noundef %0, ptr noundef nonnull %.078414382070, i32 noundef %.079714352072, i32 noundef %5, i32 noundef %.8, i32 noundef %9, i32 noundef %10, i32 noundef %7) #6
  %.not926 = icmp eq i32 %i.fa, 0
  br i1 %.not926, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %._crit_edge1500
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.al:                                            ; preds = %._crit_edge1500
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.am:                                            ; preds = %bb.e
  %.not934 = icmp sgt i32 %i.af, -1
  br i1 %.not934, label %bb.ba, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.q, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %.282914312076, i64 4 ; 2 uses
  %i.fc = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fd = add i64 %i.fc, 8                        ; 2 uses
  %.not980 = icmp ule i64 %i.fd, %i.p
  %i.fe = icmp ugt i64 %i.fd, %i.o
  %or.cond997 = and i1 %.not980, %i.fe
  %i.ff = icmp ugt i64 %i.p, %i.fc
  %or.cond998 = and i1 %i.ff, %or.cond997
  br i1 %or.cond998, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not981 = icmp eq ptr %.078414382070, null
  br i1 %.not981, label %.thread1189, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.ar:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %.282914312076, i64 8
  %i.fh = load i32, ptr %i.fg, align 1, !tbaa !15 ; 3 uses
  %i.fi = icmp ugt i32 %i.fh, -5
  br i1 %i.fi, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not989 = icmp eq ptr %.078414382070, null
  br i1 %.not989, label %.thread1189, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.au:                                            ; preds = %bb.ar
  %i.fj = add nuw i32 %i.fh, 4
  %i.fk = load i32, ptr %i.fb, align 1, !tbaa !15
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl i32 %i.af, 2                        ; 3 uses
  %i.fn = add i32 %i.fm, -4
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = sub nsw i64 %i.fl, %i.fo                ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.c, i64 %i.fp ; 2 uses
  %i.fr = sext i32 %i.fh to i64
  %i.fs = sub nsw i64 %i.fr, %i.fo                ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.c, i64 %i.fs ; 2 uses
  %i.fu = zext i32 %i.fm to i64                   ; 3 uses
  %i.fv = add i32 %i.fm, -1
  %or.cond999.not = icmp uge i32 %i.fv, %2
  %.not984 = icmp slt i64 %i.fp, %i.a
  %or.cond1218 = select i1 %or.cond999.not, i1 true, i1 %.not984
  br i1 %or.cond1218, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fw = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fx = add i64 %i.fw, %i.fu                    ; 2 uses
  %.not985 = icmp ugt i64 %i.fx, %i.p
  %i.fy = icmp ule i64 %i.fx, %i.o
  %or.cond1000.not1505 = or i1 %.not985, %i.fy
  %i.fz = icmp ule i64 %i.p, %i.fw
  %or.cond1001.not1503 = or i1 %i.fz, %or.cond1000.not1505
  %.not986 = icmp slt i64 %i.fs, %i.a
  %or.cond1219 = select i1 %or.cond1001.not1503, i1 true, i1 %.not986
  br i1 %or.cond1219, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ga = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.gb = add i64 %i.ga, %i.fu                    ; 2 uses
  %.not987 = icmp ule i64 %i.gb, %i.p
  %i.gc = icmp ugt i64 %i.gb, %i.o
  %or.cond1002 = and i1 %.not987, %i.gc
  %i.gd = icmp ugt i64 %i.p, %i.ga
  %or.cond1003 = and i1 %i.gd, %or.cond1002
  br i1 %or.cond1003, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.not988 = icmp eq ptr %.078414382070, null
  br i1 %.not988, label %.thread1189, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.az:                                            ; preds = %bb.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ft, ptr align 1 %i.fq, i64 %i.fu, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.282914312076, i64 12
  br label %.thread1169

bb.ba:                                            ; preds = %bb.am
  br i1 %i.q, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gf = getelementptr inbounds nuw i8, ptr %.282914312076, i64 4 ; 2 uses
  %i.gg = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gh = add i64 %i.gg, 8                        ; 2 uses
  %.not936 = icmp ule i64 %i.gh, %i.p
  %i.gi = icmp ugt i64 %i.gh, %i.o
  %or.cond1004 = and i1 %.not936, %i.gi
  %i.gj = icmp ugt i64 %i.p, %i.gg
  %or.cond1005 = and i1 %i.gj, %or.cond1004
  br i1 %or.cond1005, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not937 = icmp eq ptr %.078414382070, null
  br i1 %.not937, label %.thread1189, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.be:                                            ; preds = %bb.bb
  %i.gk = load i32, ptr %i.gf, align 1, !tbaa !15 ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.282914312076, i64 8
  %i.gm = load i32, ptr %i.gl, align 1, !tbaa !15 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.282914312076, i64 16 ; 2 uses
  %i.go = icmp sgt i32 %.079714352072, 95
  br i1 %i.go, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #6
  tail call void @free(ptr noundef %.078414382070) #6
  br label %.thread1189

bb.bg:                                            ; preds = %bb.be
  %i.gp = add nsw i32 %.079714352072, 1           ; 4 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = mul nsw i64 %i.gq, 36
  %i.gs = tail call ptr @cli_max_realloc(ptr noundef %.078414382070, i64 noundef %i.gr) #6 ; 18 uses
  %.not938 = icmp eq ptr %i.gs, null
  br i1 %.not938, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %.not939 = icmp eq ptr %.078414382070, null
  br i1 %.not939, label %.thread1189, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @free(ptr noundef nonnull %.078414382070) #6
  br label %.thread1189

bb.bj:                                            ; preds = %bb.bg
  %i.gt = sext i32 %.079714352072 to i64
  %i.gu = getelementptr inbounds [36 x i8], ptr %i.gs, i64 %i.gt ; 6 uses
  store i32 %i.gm, ptr %i.gu, align 4, !tbaa !14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12 ; 5 uses
  store i32 %i.gk, ptr %i.gv, align 4, !tbaa !16
  %i.gw = sub i32 %.082414322075, %i.gm           ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  %spec.select1919 = select i1 %i.gx, i32 %i.gw, i32 %i.gk ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %spec.select1919, ptr %i.gy, align 4, !tbaa !17
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i32 0, ptr %i.gz, align 4, !tbaa !18
  %.not940 = icmp eq i32 %i.gk, 0
  br i1 %.not940, label %.thread1169, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = zext nneg i32 %i.af to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ha ; 3 uses
  %i.hc = zext i32 %i.gm to i64                   ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hc ; 3 uses
  br i1 %.not1501, label %.loopexit1231.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bk
  %i.he = zext i32 %spec.select1919 to i64
  %i.hf = add i32 %spec.select1919, -1
  %i.hg = add nuw nsw i64 %i.he, %i.hc            ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph, %bb.bq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bq ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !17 ; 3 uses
  %i.hk = zext i32 %i.hj to i64
  %.not941 = icmp ne i32 %i.hj, 0
  %or.cond1006.not = icmp ult i32 %i.hf, %i.hj
  %or.cond1920 = select i1 %.not941, i1 %or.cond1006.not, i1 false
  br i1 %or.cond1920, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.hl = load i32, ptr %i.hh, align 4, !tbaa !14 ; 3 uses
  %.not944 = icmp ult i32 %i.gm, %i.hl
  br i1 %.not944, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = add nuw nsw i64 %i.hm, %i.hk            ; 2 uses
  %.not945 = icmp samesign ule i64 %i.hg, %i.hn
  %i.ho = icmp samesign ugt i64 %i.hg, %i.hm
  %or.cond1007 = select i1 %.not945, i1 %i.ho, i1 false
  %i.hp = icmp samesign ugt i64 %i.hn, %i.hc
  %or.cond1008 = select i1 %or.cond1007, i1 %i.hp, i1 false
  br i1 %or.cond1008, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.hq = trunc nuw i64 %indvars.iv to i32
  %.not946 = icmp eq i32 %.078814372071, 0
  br i1 %.not946, label %bb.bp, label %.loopexit1231

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.hl, ptr %i.gu, align 4, !tbaa !14
  %i.hr = load i32, ptr %i.hh, align 4, !tbaa !14
  %i.hs = add i32 %i.gm, %i.gk
  %i.ht = sub i32 %i.hs, %i.hr
  store i32 %i.ht, ptr %i.gv, align 4, !tbaa !16
  br label %.loopexit1231

bb.bq:                                            ; preds = %bb.bl, %bb.bm, %bb.bn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1231.thread, label %bb.bl

.loopexit1231:                                    ; preds = %bb.bo, %bb.bp
  %i.hu = icmp eq i32 %4, %i.hq
  br i1 %i.hu, label %.loopexit1231.thread, label %bb.br

.loopexit1231.thread:                             ; preds = %bb.bk, %.loopexit1231, %bb.bq
  tail call void @free(ptr noundef %i.gs) #6
  br label %.thread1189

bb.br:                                            ; preds = %.loopexit1231
  %i.hv = icmp ult i32 %i.gk, 65536               ; 3 uses
  %i.hw = icmp ult i32 %i.gk, 262144              ; 3 uses
  %. = select i1 %i.hw, i32 32383, i32 31999
  %.1009 = select i1 %i.hw, i32 1663, i32 1279
  %.1010 = select i1 %i.hw, i32 7, i32 8
  %i.hx = select i1 %i.hv, i32 16287, i32 %.
  %i.hy = select i1 %i.hv, i32 927, i32 %.1009
  %.0737 = select i1 %i.hv, i32 5, i32 %.1010
  %.not947 = icmp ult i32 %i.af, %1
  br i1 %.not947, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = ptrtoint ptr %i.hb to i64               ; 2 uses
  %i.ia = add i64 %i.hz, 1                        ; 2 uses
  %.not948 = icmp ugt i64 %i.ia, %i.p
  %i.ib = icmp ule i64 %i.ia, %i.o
  %or.cond1011.not1509 = or i1 %.not948, %i.ib
  %i.ic = icmp ule i64 %i.p, %i.hz
  %or.cond1012.not1507 = or i1 %i.ic, %or.cond1011.not1509
  %.not949 = icmp ult i32 %i.gm, %1
  %or.cond1220 = select i1 %or.cond1012.not1507, i1 true, i1 %.not949
  br i1 %or.cond1220, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.id = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.ie = add i64 %i.id, 1                        ; 2 uses
  %.not950 = icmp ule i64 %i.ie, %i.p
  %i.if = icmp ugt i64 %i.ie, %i.o
  %or.cond1013 = and i1 %.not950, %i.if
  %i.ig = icmp ugt i64 %i.p, %i.id
  %or.cond1014 = and i1 %i.ig, %or.cond1013
  br i1 %or.cond1014, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  tail call void @free(ptr noundef %i.gs) #6
  br label %.thread1189

bb.bv:                                            ; preds = %bb.bt
  %i.ih = add i32 %i.gk, -1                       ; 2 uses
  %i.ii = load i8, ptr %i.hb, align 1, !tbaa !15
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 2 uses
  store i8 %i.ii, ptr %i.hd, align 1, !tbaa !15
  %.not9511423 = icmp eq i32 %i.ih, 0
  br i1 %.not9511423, label %._crit_edge, label %.lr.ph1429.preheader

.lr.ph1429.preheader:                             ; preds = %bb.bv
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  br label %.lr.ph1429

.lr.ph1429:                                       ; preds = %.lr.ph1429.preheader, %.loopexit1228
  %.07711428 = phi i32 [ %.2773, %.loopexit1228 ], [ 0, %.lr.ph1429.preheader ] ; 2 uses
  %.07791427 = phi i32 [ %.1780, %.loopexit1228 ], [ %i.ih, %.lr.ph1429.preheader ] ; 3 uses
  %.07811426 = phi ptr [ %.2783, %.loopexit1228 ], [ %i.ij, %.lr.ph1429.preheader ] ; 12 uses
  %.01425 = phi i8 [ %.61108, %.loopexit1228 ], [ 0, %.lr.ph1429.preheader ] ; 3 uses
  %.011131424 = phi ptr [ %.61119, %.loopexit1228 ], [ %i.ik, %.lr.ph1429.preheader ] ; 5 uses
  %i.il = shl i8 %.01425, 1
  %i.im = and i8 %.01425, 127
  %.not.i = icmp eq i8 %i.im, 0
  br i1 %.not.i, label %bb.bw, label %doubledl.exit

bb.bw:                                            ; preds = %.lr.ph1429
  %i.in = icmp uge ptr %.011131424, %0
  %.not20.i = icmp ult ptr %.011131424, %i.s
  %or.cond.i = select i1 %i.in, i1 %.not20.i, i1 false
  br i1 %or.cond.i, label %bb.bx, label %doubledl.exit.thread

bb.bx:                                            ; preds = %bb.bw
  %i.io = load i8, ptr %.011131424, align 1, !tbaa !15 ; 2 uses
  %i.ip = shl i8 %i.io, 1
  %i.iq = or disjoint i8 %i.ip, 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.011131424, i64 1
  br label %doubledl.exit

doubledl.exit:                                    ; preds = %.lr.ph1429, %bb.bx
  %.71120 = phi ptr [ %i.ir, %bb.bx ], [ %.011131424, %.lr.ph1429 ] ; 5 uses
  %.016.i = phi i8 [ %i.iq, %bb.bx ], [ %i.il, %.lr.ph1429 ] ; 2 uses
  %.0.i = phi i8 [ %i.io, %bb.bx ], [ %.01425, %.lr.ph1429 ]
  %cond = icmp sgt i8 %.0.i, -1
  br i1 %cond, label %bb.by, label %.preheader1230

doubledl.exit.thread:                             ; preds = %bb.bw
  tail call void @free(ptr noundef %i.gs) #6
  br label %.thread1189

bb.by:                                            ; preds = %doubledl.exit
  %.not964 = icmp ult ptr %.71120, %0
  br i1 %.not964, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.is = ptrtoint ptr %.71120 to i64             ; 2 uses
  %i.it = add i64 %i.is, 1                        ; 2 uses
  %.not965 = icmp ugt i64 %i.it, %i.p
  %i.iu = icmp ule i64 %i.it, %i.o
  %or.cond1015.not1513 = or i1 %.not965, %i.iu
  %i.iv = icmp ule i64 %i.p, %i.is
  %or.cond1016.not1511 = or i1 %i.iv, %or.cond1015.not1513
  %.not966 = icmp ult ptr %.07811426, %0
  %or.cond1221 = select i1 %or.cond1016.not1511, i1 true, i1 %.not966
  br i1 %or.cond1221, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iw = ptrtoint ptr %.07811426 to i64          ; 2 uses
  %i.ix = add i64 %i.iw, 1                        ; 2 uses
  %.not967 = icmp ule i64 %i.ix, %i.p
  %i.iy = icmp ugt i64 %i.ix, %i.o
  %or.cond1017 = and i1 %.not967, %i.iy
  %i.iz = icmp ugt i64 %i.p, %i.iw
  %or.cond1018 = and i1 %i.iz, %or.cond1017
  br i1 %or.cond1018, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  tail call void @free(ptr noundef %i.gs) #6
  br label %.thread1189

bb.cc:                                            ; preds = %bb.ca
  %i.ja = getelementptr inbounds nuw i8, ptr %.71120, i64 1
  %i.jb = load i8, ptr %.71120, align 1, !tbaa !15
  %i.jc = trunc i32 %.07791427 to i8
  %i.jd = xor i8 %i.jb, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %.07811426, i64 1
  store i8 %i.jd, ptr %.07811426, align 1, !tbaa !15
  %i.jf = add i32 %.07791427, -1
  br label %.loopexit1228

.preheader1230:                                   ; preds = %doubledl.exit, %doubledl.exit1053
  %.11114 = phi ptr [ %.111124, %doubledl.exit1053 ], [ %.71120, %doubledl.exit ] ; 5 uses
  %.11105 = phi i8 [ %.016.i1048, %doubledl.exit1053 ], [ %.016.i, %doubledl.exit ] ; 3 uses
  %.1775 = phi i32 [ %i.jr, %doubledl.exit1053 ], [ 1, %doubledl.exit ] ; 2 uses
  %i.jg = shl i8 %.11105, 1
  %i.jh = and i8 %.11105, 127
  %.not.i1040 = icmp eq i8 %i.jh, 0
  br i1 %.not.i1040, label %bb.cd, label %doubledl.exit1046

bb.cd:                                            ; preds = %.preheader1230
  %i.ji = icmp uge ptr %.11114, %0
  %.not20.i1044 = icmp ult ptr %.11114, %i.s
  %or.cond.i1045 = select i1 %i.ji, i1 %.not20.i1044, i1 false
  br i1 %or.cond.i1045, label %bb.ce, label %doubledl.exit1046.thread

bb.ce:                                            ; preds = %bb.cd
  %i.jj = load i8, ptr %.11114, align 1, !tbaa !15 ; 2 uses
  %i.jk = shl i8 %i.jj, 1
  %i.jl = or disjoint i8 %i.jk, 1
  %i.jm = getelementptr inbounds nuw i8, ptr %.11114, i64 1
  br label %doubledl.exit1046

doubledl.exit1046:                                ; preds = %.preheader1230, %bb.ce
  %.91122 = phi ptr [ %i.jm, %bb.ce ], [ %.11114, %.preheader1230 ] ; 5 uses
  %.016.i1041 = phi i8 [ %i.jl, %bb.ce ], [ %i.jg, %.preheader1230 ] ; 3 uses
  %.0.i1042 = phi i8 [ %i.jj, %bb.ce ], [ %.11105, %.preheader1230 ]
  %i.jn = icmp sgt i32 %.1775, 1073741822
  br i1 %i.jn, label %bb.cf, label %bb.cg

doubledl.exit1046.thread:                         ; preds = %bb.cd
  tail call void @free(ptr noundef %i.gs) #6
  br label %.thread1189

bb.cf:                                            ; preds = %doubledl.exit1046
  tail call void @free(ptr noundef %i.gs) #6
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #6
  br label %.thread1189

bb.cg:                                            ; preds = %doubledl.exit1046
  %i.jo = lshr i8 %.0.i1042, 7
  %i.jp = zext nneg i8 %i.jo to i32
  %i.jq = shl nsw i32 %.1775, 1
  %i.jr = or disjoint i32 %i.jq, %i.jp            ; 4 uses
  %i.js = shl i8 %.016.i1041, 1
  %i.jt = and i8 %.016.i1041, 127
  %.not.i1047 = icmp eq i8 %i.jt, 0
  br i1 %.not.i1047, label %bb.ch, label %doubledl.exit1053

bb.ch:                                            ; preds = %bb.cg
  %i.ju = icmp uge ptr %.91122, %0
  %.not20.i1051 = icmp ult ptr %.91122, %i.s
  %or.cond.i1052 = select i1 %i.ju, i1 %.not20.i1051, i1 false
  br i1 %or.cond.i1052, label %bb.ci, label %doubledl.exit1053.thread

bb.ci:                                            ; preds = %bb.ch
  %i.jv = load i8, ptr %.91122, align 1, !tbaa !15 ; 2 uses
  %i.jw = shl i8 %i.jv, 1
  %i.jx = or disjoint i8 %i.jw, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.91122, i64 1
  br label %doubledl.exit1053

doubledl.exit1053:                                ; preds = %bb.cg, %bb.ci
  %.111124 = phi ptr [ %i.jy, %bb.ci ], [ %.91122, %bb.cg ] ; 3 uses
  %.016.i1048 = phi i8 [ %i.jx, %bb.ci ], [ %i.js, %bb.cg ] ; 3 uses
  %.0.i1049 = phi i8 [ %i.jv, %bb.ci ], [ %.016.i1041, %bb.cg ]
  %cond1213 = icmp sgt i8 %.0.i1049, -1
  br i1 %cond1213, label %bb.cj, label %.preheader1230

doubledl.exit1053.thread:                         ; preds = %bb.ch
  tail call void @free(ptr noundef %i.gs) #6
  br label %.thread1189

end_hunk_0
