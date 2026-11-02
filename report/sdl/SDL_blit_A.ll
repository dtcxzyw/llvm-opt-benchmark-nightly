Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_A?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@BlitNtoNSurfaceAlphaKey:bb.a
  %i.baw = xor i32 %.3732, 255
  %i.bax = mul nuw nsw i32 %i.baw, %i.o
  %i.bay = mul nuw nsw i32 %.3732, 255
  %i.baz = add nuw nsw i32 %i.bay, 1
  %i.bba = add nuw nsw i32 %i.baz, %i.bax         ; 2 uses
  %i.bbb = lshr i32 %i.bba, 8
  %i.bbc = and i32 %i.bbb, 255
  %i.bbd = add nuw nsw i32 %i.bbc, %i.bba
  %i.bbe = lshr i32 %i.bbd, 8
  %i.bbf = and i32 %i.bbe, 255                    ; 3 uses
  switch i8 %i.l, label %bb.br [
    i8 1, label %bb.bn
    i8 2, label %bb.bo
    i8 3, label %bb.bp
    i8 4, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.bbg = load i8, ptr %i.al, align 4
  %i.bbh = zext i8 %i.bbg to i32
  %i.bbi = sub nsw i32 8, %i.bbh
  %i.bbj = lshr i32 %i.bab, %i.bbi
  %i.bbk = load i8, ptr %i.an, align 4
  %i.bbl = zext nneg i8 %i.bbk to i32
  %i.bbm = shl i32 %i.bbj, %i.bbl
  %i.bbn = load i8, ptr %i.ao, align 1
  %i.bbo = zext i8 %i.bbn to i32
  %i.bbp = sub nsw i32 8, %i.bbo
  %i.bbq = lshr i32 %i.bal, %i.bbp
  %i.bbr = load i8, ptr %i.aq, align 1
  %i.bbs = zext nneg i8 %i.bbr to i32
  %i.bbt = shl i32 %i.bbq, %i.bbs
  %i.bbu = or i32 %i.bbt, %i.bbm
  %i.bbv = load i8, ptr %i.ar, align 2
  %i.bbw = zext i8 %i.bbv to i32
  %i.bbx = sub nsw i32 8, %i.bbw
  %i.bby = lshr i32 %i.bav, %i.bbx
  %i.bbz = load i8, ptr %i.at, align 2
  %i.bca = zext nneg i8 %i.bbz to i32
  %i.bcb = shl i32 %i.bby, %i.bca
  %i.bcc = or i32 %i.bbu, %i.bcb
  %i.bcd = load i8, ptr %i.au, align 1
  %i.bce = zext i8 %i.bcd to i32
  %i.bcf = sub nsw i32 8, %i.bce
  %i.bcg = lshr i32 %i.bbf, %i.bcf
  %i.bch = load i8, ptr %i.aw, align 1
  %i.bci = zext nneg i8 %i.bch to i32
  %i.bcj = shl i32 %i.bcg, %i.bci
  %i.bck = or i32 %i.bcc, %i.bcj
  %i.bcl = trunc i32 %i.bck to i8
  store i8 %i.bcl, ptr %.4712, align 1
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  %i.bcm = load i8, ptr %i.al, align 4
  %i.bcn = zext i8 %i.bcm to i32
  %i.bco = sub nsw i32 8, %i.bcn
  %i.bcp = lshr i32 %i.bab, %i.bco
  %i.bcq = load i8, ptr %i.an, align 4
  %i.bcr = zext nneg i8 %i.bcq to i32
  %i.bcs = shl i32 %i.bcp, %i.bcr
  %i.bct = load i8, ptr %i.ao, align 1
  %i.bcu = zext i8 %i.bct to i32
  %i.bcv = sub nsw i32 8, %i.bcu
  %i.bcw = lshr i32 %i.bal, %i.bcv
  %i.bcx = load i8, ptr %i.aq, align 1
  %i.bcy = zext nneg i8 %i.bcx to i32
  %i.bcz = shl i32 %i.bcw, %i.bcy
  %i.bda = or i32 %i.bcz, %i.bcs
  %i.bdb = load i8, ptr %i.ar, align 2
  %i.bdc = zext i8 %i.bdb to i32
  %i.bdd = sub nsw i32 8, %i.bdc
  %i.bde = lshr i32 %i.bav, %i.bdd
  %i.bdf = load i8, ptr %i.at, align 2
  %i.bdg = zext nneg i8 %i.bdf to i32
  %i.bdh = shl i32 %i.bde, %i.bdg
  %i.bdi = or i32 %i.bda, %i.bdh
  %i.bdj = load i8, ptr %i.au, align 1
  %i.bdk = zext i8 %i.bdj to i32
  %i.bdl = sub nsw i32 8, %i.bdk
  %i.bdm = lshr i32 %i.bbf, %i.bdl
  %i.bdn = load i8, ptr %i.aw, align 1
  %i.bdo = zext nneg i8 %i.bdn to i32
  %i.bdp = shl i32 %i.bdm, %i.bdo
  %i.bdq = or i32 %i.bdi, %i.bdp
  %i.bdr = trunc i32 %i.bdq to i16
  store i16 %i.bdr, ptr %.4712, align 2
  br label %bb.br

bb.bp:                                            ; preds = %bb.bm
  %i.bds = trunc i32 %i.baa to i8
  %i.bdt = load i8, ptr %i.an, align 4
  %i.bdu = lshr i8 %i.bdt, 3
  %i.bdv = zext nneg i8 %i.bdu to i64
  %i.bdw = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.bdv
  store i8 %i.bds, ptr %i.bdw, align 1
  %i.bdx = trunc i32 %i.bak to i8
  %i.bdy = load i8, ptr %i.aq, align 1
  %i.bdz = lshr i8 %i.bdy, 3
  %i.bea = zext nneg i8 %i.bdz to i64
  %i.beb = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.bea
  store i8 %i.bdx, ptr %i.beb, align 1
  %i.bec = trunc i32 %i.bau to i8
  %i.bed = load i8, ptr %i.at, align 2
  %i.bee = lshr i8 %i.bed, 3
  %i.bef = zext nneg i8 %i.bee to i64
  %i.beg = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.bef
  store i8 %i.bec, ptr %i.beg, align 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.beh = load i8, ptr %i.al, align 4
  %i.bei = zext i8 %i.beh to i32
  %i.bej = sub nsw i32 8, %i.bei
  %i.bek = lshr i32 %i.bab, %i.bej
  %i.bel = load i8, ptr %i.an, align 4
  %i.bem = zext nneg i8 %i.bel to i32
  %i.ben = shl i32 %i.bek, %i.bem
  %i.beo = load i8, ptr %i.ao, align 1
  %i.bep = zext i8 %i.beo to i32
  %i.beq = sub nsw i32 8, %i.bep
  %i.ber = lshr i32 %i.bal, %i.beq
  %i.bes = load i8, ptr %i.aq, align 1
  %i.bet = zext nneg i8 %i.bes to i32
  %i.beu = shl i32 %i.ber, %i.bet
  %i.bev = or i32 %i.beu, %i.ben
  %i.bew = load i8, ptr %i.ar, align 2
  %i.bex = zext i8 %i.bew to i32
  %i.bey = sub nsw i32 8, %i.bex
  %i.bez = lshr i32 %i.bav, %i.bey
  %i.bfa = load i8, ptr %i.at, align 2
  %i.bfb = zext nneg i8 %i.bfa to i32
  %i.bfc = shl i32 %i.bez, %i.bfb
  %i.bfd = or i32 %i.bev, %i.bfc
  %i.bfe = load i8, ptr %i.au, align 1
  %i.bff = zext i8 %i.bfe to i32
  %i.bfg = sub nsw i32 8, %i.bff
  %i.bfh = lshr i32 %i.bbf, %i.bfg
  %i.bfi = load i8, ptr %i.aw, align 1
  %i.bfj = zext nneg i8 %i.bfi to i32
  %i.bfk = shl i32 %i.bfh, %i.bfj
  %i.bfl = or i32 %i.bfd, %i.bfk
  store i32 %i.bfl, ptr %.4712, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.bg
  %i.bfm = getelementptr inbounds nuw i8, ptr %.4, i64 %i.ax ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %.4712, i64 %i.ay ; 2 uses
  %i.bfo = add nsw i32 %.3736, -1
  %i.bfp = icmp sgt i32 %.3736, 1
  br i1 %i.bfp, label %bb.c, label %bb.bs, !llvm.loop !52

default.unreachable757:                           ; preds = %bb.b
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.bfq = getelementptr inbounds i8, ptr %i.bfm, i64 %i.az
  %i.bfr = getelementptr inbounds i8, ptr %i.bfn, i64 %i.ba
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.bs, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @SDL_Get8888AlphaMaskAndShift(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Blit16to16SurfaceAlpha128(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext range(i16 -2082, -1057) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not146 = icmp eq i32 %i.d, 0
  br i1 %.not146, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %i.g = ashr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = ashr i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i16 %1 to i32                       ; 10 uses
  %i.p = and i32 %i.o, 4095
  %i.q = xor i32 %i.p, 4095                       ; 4 uses
  %i.r = add nsw i32 %i.b, -1                     ; 2 uses
  %i.s = mul nuw i32 %i.o, 65537                  ; 7 uses
  %i.t = xor i32 %i.s, -1                         ; 4 uses
  %i.u = sext i32 %i.l to i64                     ; 2 uses
  %i.v = sext i32 %i.g to i64
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert174 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat175 = shufflevector <4 x i32> %broadcast.splatinsert174, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph150, %bb.m
  %.in = phi i32 [ %i.d, %.lr.ph150 ], [ %i.w, %bb.m ]
  %.0111148 = phi ptr [ %i.n, %.lr.ph150 ], [ %.7, %bb.m ] ; 7 uses
  %.0112147 = phi ptr [ %i.i, %.lr.ph150 ], [ %.7119, %bb.m ] ; 9 uses
  %i.w = add nsw i32 %.in, -1                     ; 2 uses
  %i.x = ptrtoint ptr %.0111148 to i64            ; 2 uses
  %i.y = ptrtoint ptr %.0112147 to i64            ; 2 uses
  %i.z = xor i64 %i.x, %i.y
  %i.aa = and i64 %i.z, 2
  %.not125 = icmp eq i64 %i.aa, 0
  br i1 %.not125, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = and i64 %i.y, 2
  %.not128 = icmp eq i64 %i.ab, 0
  br i1 %.not128, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i16, ptr %.0112147, align 2
  %i.ad = load i16, ptr %.0111148, align 2
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = and i32 %i.ae, %i.o
  %i.ag = zext i16 %i.ac to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, %i.o
  %i.ai = add nuw nsw i32 %i.af, %i.ah
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.q, %i.ag
  %i.al = and i32 %i.ak, %i.ae
  %i.am = add nuw nsw i32 %i.aj, %i.al
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %.0112147, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.0112147, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.0111148, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0123 = phi i32 [ %i.r, %bb.d ], [ %i.b, %bb.c ] ; 6 uses
  %.1113 = phi ptr [ %i.ao, %bb.d ], [ %.0112147, %bb.c ] ; 7 uses
  %.1 = phi ptr [ %i.ap, %bb.d ], [ %.0111148, %bb.c ] ; 3 uses
  %i.aq = getelementptr i8, ptr %.1, i64 2        ; 6 uses
  %i.ar = getelementptr inbounds i8, ptr %.1, i64 -2
  %i.as = load i32, ptr %i.ar, align 4            ; 4 uses
  %i.at = icmp sgt i32 %.0123, 1
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.au = add nsw i32 %.0123, -2                  ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 1
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check190 = icmp ult i32 %i.au, 6
  br i1 %min.iters.check190, label %.lr.ph.preheader214, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.preheader
  %i.ay = shl nuw nsw i64 %i.av, 1
  %i.az = and i64 %i.ay, 8589934588               ; 2 uses
  %i.ba = getelementptr i8, ptr %.1113, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = getelementptr i8, ptr %.1, i64 %i.az
  %i.bd = getelementptr i8, ptr %i.bc, i64 6
  %bound0192 = icmp ult ptr %.1113, %i.bd
  %bound1193 = icmp ult ptr %i.aq, %i.bb
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.preheader214, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck191
  %n.vec196 = and i64 %i.ax, 4294967292           ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec196, 2            ; 2 uses
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %.1113, i64 %i.be ; 2 uses
  %i.bh = trunc nuw i64 %n.vec196 to i32
  %i.bi = shl i32 %i.bh, 1
  %i.bj = sub i32 %.0123, %i.bi                   ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.as, i64 3
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph195
  %index202 = phi i64 [ 0, %vector.ph195 ], [ %index.next207, %vector.body201 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph195 ], [ %wide.load205.a, %vector.body201 ]
  %i.bk = shl i64 %index202, 2                    ; 2 uses
  %next.gep203.a = getelementptr i8, ptr %i.aq, i64 %i.bk
  %next.gep204 = getelementptr i8, ptr %.1113, i64 %i.bk ; 2 uses
  %wide.load205.a = load <4 x i32>, ptr %next.gep203.a, align 4, !alias.scope !65 ; 4 uses
  %i.bl = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load205.a, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %wide.load206 = load <4 x i32>, ptr %next.gep204, align 4, !alias.scope !66, !noalias !65 ; 2 uses
  %i.bm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load205.a, <4 x i32> %i.bl, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bn = and <4 x i32> %i.bm, %broadcast.splat198
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 1)
  %i.bp = and <4 x i32> %wide.load206, %broadcast.splat198
  %i.bq = lshr <4 x i32> %i.bp, splat (i32 1)
  %i.br = add nuw <4 x i32> %i.bo, %i.bq
  %i.bs = and <4 x i32> %wide.load206, %broadcast.splat200
  %i.bt = and <4 x i32> %i.bs, %i.bm
  %i.bu = add <4 x i32> %i.br, %i.bt
  store <4 x i32> %i.bu, ptr %next.gep204, align 4, !alias.scope !66, !noalias !65
  %index.next207 = add nuw i64 %index202, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next207, %n.vec196
  br i1 %i.bv, label %middle.block208, label %vector.body201, !llvm.loop !57

middle.block208:                                  ; preds = %vector.body201
  %vector.recur.extract = extractelement <4 x i32> %wide.load205.a, i64 3 ; 2 uses
  %cmp.n209 = icmp eq i64 %i.ax, %n.vec196
  br i1 %cmp.n209, label %._crit_edge, label %.lr.ph.preheader214

.lr.ph.preheader214:                              ; preds = %vector.memcheck191, %.lr.ph.preheader, %middle.block208
  %.2133.ph = phi ptr [ %i.aq, %vector.memcheck191 ], [ %i.aq, %.lr.ph.preheader ], [ %i.bf, %middle.block208 ]
  %.2114132.ph = phi ptr [ %.1113, %vector.memcheck191 ], [ %.1113, %.lr.ph.preheader ], [ %i.bg, %middle.block208 ]
  %.0122131.ph = phi i32 [ %i.as, %vector.memcheck191 ], [ %i.as, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block208 ]
  %.1124130.ph = phi i32 [ %.0123, %vector.memcheck191 ], [ %.0123, %.lr.ph.preheader ], [ %i.bj, %middle.block208 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader214, %.lr.ph
  %.2133 = phi ptr [ %i.ci, %.lr.ph ], [ %.2133.ph, %.lr.ph.preheader214 ] ; 2 uses
  %.2114132 = phi ptr [ %i.ch, %.lr.ph ], [ %.2114132.ph, %.lr.ph.preheader214 ] ; 3 uses
  %.0122131 = phi i32 [ %i.bw, %.lr.ph ], [ %.0122131.ph, %.lr.ph.preheader214 ]
  %.1124130 = phi i32 [ %i.cj, %.lr.ph ], [ %.1124130.ph, %.lr.ph.preheader214 ] ; 2 uses
  %i.bw = load i32, ptr %.2133, align 4           ; 3 uses
  %i.bx = load i32, ptr %.2114132, align 4        ; 2 uses
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %.0122131, i32 16) ; 2 uses
  %i.bz = and i32 %i.by, %i.s
  %i.ca = lshr i32 %i.bz, 1
  %i.cb = and i32 %i.bx, %i.s
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = add nuw i32 %i.ca, %i.cc
  %i.ce = and i32 %i.bx, %i.t
  %i.cf = and i32 %i.ce, %i.by
  %i.cg = add i32 %i.cd, %i.cf
  store i32 %i.cg, ptr %.2114132, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.2114132, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.2133, i64 4 ; 2 uses
  %i.cj = add nsw i32 %.1124130, -2               ; 2 uses
  %i.ck = icmp samesign ugt i32 %.1124130, 3
  br i1 %i.ck, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %middle.block208, %bb.e
  %.1124.lcssa = phi i32 [ %.0123, %bb.e ], [ %i.bj, %middle.block208 ], [ %i.cj, %.lr.ph ]
  %.0122.lcssa = phi i32 [ %i.as, %bb.e ], [ %vector.recur.extract, %middle.block208 ], [ %i.bw, %.lr.ph ]
  %.2114.lcssa = phi ptr [ %.1113, %bb.e ], [ %i.bg, %middle.block208 ], [ %i.ch, %.lr.ph ] ; 4 uses
  %.2.lcssa = phi ptr [ %i.aq, %bb.e ], [ %i.bf, %middle.block208 ], [ %i.ci, %.lr.ph ] ; 2 uses
  %.not129 = icmp eq i32 %.1124.lcssa, 0
  br i1 %.not129, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cl = load i16, ptr %.2114.lcssa, align 2
  %i.cm = lshr i32 %.0122.lcssa, 16               ; 2 uses
  %i.cn = and i32 %i.cm, %i.o
  %i.co = zext i16 %i.cl to i32                   ; 2 uses
  %i.cp = and i32 %i.co, %i.o
  %i.cq = add nuw nsw i32 %i.cp, %i.cn
  %i.cr = lshr i32 %i.cq, 1
  %i.cs = and i32 %i.cm, %i.q
  %i.ct = and i32 %i.cs, %i.co
  %i.cu = add nuw nsw i32 %i.cr, %i.ct
  %i.cv = trunc i32 %i.cu to i16
  store i16 %i.cv, ptr %.2114.lcssa, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.2114.lcssa, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.3115 = phi ptr [ %i.cx, %bb.f ], [ %.2114.lcssa, %._crit_edge ]
  %.3 = phi ptr [ %i.cw, %bb.f ], [ %.2.lcssa, %._crit_edge ]
  %i.cy = getelementptr [2 x i8], ptr %.3, i64 %i.u
  %i.cz = getelementptr i8, ptr %i.cy, i64 -2
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.da = and i64 %i.x, 2
  %.not126 = icmp eq i64 %i.da, 0
  br i1 %.not126, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.db = load i16, ptr %.0112147, align 2
  %i.dc = load i16, ptr %.0111148, align 2
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %i.de = and i32 %i.dd, %i.o
  %i.df = zext i16 %i.db to i32                   ; 2 uses
  %i.dg = and i32 %i.df, %i.o
  %i.dh = add nuw nsw i32 %i.de, %i.dg
  %i.di = lshr i32 %i.dh, 1
  %i.dj = and i32 %i.q, %i.df
  %i.dk = and i32 %i.dj, %i.dd
  %i.dl = add nuw nsw i32 %i.di, %i.dk
  %i.dm = trunc i32 %i.dl to i16
  store i16 %i.dm, ptr %.0112147, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.0111148, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %.0112147, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0120 = phi i32 [ %i.r, %bb.i ], [ %i.b, %bb.h ] ; 6 uses
  %.4116 = phi ptr [ %i.do, %bb.i ], [ %.0112147, %bb.h ] ; 7 uses
  %.4 = phi ptr [ %i.dn, %bb.i ], [ %.0111148, %bb.h ] ; 7 uses
  %i.dp = icmp sgt i32 %.0120, 1
  br i1 %i.dp, label %.lr.ph141.preheader, label %._crit_edge142

.lr.ph141.preheader:                              ; preds = %bb.j
  %i.dq = add nsw i32 %.0120, -2                  ; 2 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dq, 14
  br i1 %min.iters.check, label %.lr.ph141.preheader213, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph141.preheader
  %i.du = shl nuw nsw i64 %i.dr, 1
  %i.dv = and i64 %i.du, 8589934588
  %i.dw = add nuw nsw i64 %i.dv, 4                ; 2 uses
  %i.dx = getelementptr i8, ptr %.4116, i64 %i.dw
  %i.dy = getelementptr i8, ptr %.4, i64 %i.dw
  %bound0 = icmp ult ptr %.4116, %i.dy
  %bound1 = icmp ult ptr %.4, %i.dx
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph141.preheader213, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4294967288              ; 4 uses
  %i.dz = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ea = getelementptr i8, ptr %.4, i64 %i.dz    ; 2 uses
  %i.eb = getelementptr i8, ptr %.4116, i64 %i.dz ; 2 uses
  %i.ec = trunc nuw i64 %n.vec to i32
  %i.ed = shl i32 %i.ec, 1
  %i.ee = sub i32 %.0120, %i.ed                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.4, i64 %i.ef ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.4116, i64 %i.ef ; 3 uses
  %i.eg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !67 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.eg, align 4, !alias.scope !67 ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %next.gep176, align 4, !alias.scope !68, !noalias !67 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %i.eh, align 4, !alias.scope !68, !noalias !67 ; 2 uses
  %i.ei = and <4 x i32> %wide.load, %broadcast.splat
  %i.ej = and <4 x i32> %wide.load177, %broadcast.splat
  %i.ek = lshr <4 x i32> %i.ei, splat (i32 1)
  %i.el = lshr <4 x i32> %i.ej, splat (i32 1)
  %i.em = and <4 x i32> %wide.load178, %broadcast.splat
  %i.en = and <4 x i32> %wide.load179, %broadcast.splat
  %i.eo = lshr <4 x i32> %i.em, splat (i32 1)
  %i.ep = lshr <4 x i32> %i.en, splat (i32 1)
  %i.eq = add nuw <4 x i32> %i.eo, %i.ek
  %i.er = add nuw <4 x i32> %i.ep, %i.el
  %i.es = and <4 x i32> %wide.load, %broadcast.splat175
  %i.et = and <4 x i32> %wide.load177, %broadcast.splat175
  %i.eu = and <4 x i32> %i.es, %wide.load178
  %i.ev = and <4 x i32> %i.et, %wide.load179
  %i.ew = add <4 x i32> %i.eq, %i.eu
  %i.ex = add <4 x i32> %i.er, %i.ev
  store <4 x i32> %i.ew, ptr %next.gep176, align 4, !alias.scope !68, !noalias !67
  store <4 x i32> %i.ex, ptr %i.eh, align 4, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %._crit_edge142, label %.lr.ph141.preheader213

.lr.ph141.preheader213:                           ; preds = %vector.memcheck, %.lr.ph141.preheader, %middle.block
  %.5139.ph = phi ptr [ %.4, %vector.memcheck ], [ %.4, %.lr.ph141.preheader ], [ %i.ea, %middle.block ]
  %.5117138.ph = phi ptr [ %.4116, %vector.memcheck ], [ %.4116, %.lr.ph141.preheader ], [ %i.eb, %middle.block ]
  %.1121137.ph = phi i32 [ %.0120, %vector.memcheck ], [ %.0120, %.lr.ph141.preheader ], [ %i.ee, %middle.block ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader213, %.lr.ph141
  %.5139 = phi ptr [ %i.fj, %.lr.ph141 ], [ %.5139.ph, %.lr.ph141.preheader213 ] ; 2 uses
  %.5117138 = phi ptr [ %i.fk, %.lr.ph141 ], [ %.5117138.ph, %.lr.ph141.preheader213 ] ; 3 uses
  %.1121137 = phi i32 [ %i.fl, %.lr.ph141 ], [ %.1121137.ph, %.lr.ph141.preheader213 ] ; 2 uses
  %i.ez = load i32, ptr %.5139, align 4           ; 2 uses
  %i.fa = load i32, ptr %.5117138, align 4        ; 2 uses
  %i.fb = and i32 %i.ez, %i.s
  %i.fc = lshr i32 %i.fb, 1
  %i.fd = and i32 %i.fa, %i.s
  %i.fe = lshr i32 %i.fd, 1
  %i.ff = add nuw i32 %i.fe, %i.fc
  %i.fg = and i32 %i.ez, %i.t
  %i.fh = and i32 %i.fg, %i.fa
  %i.fi = add i32 %i.ff, %i.fh
  store i32 %i.fi, ptr %.5117138, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.5139, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.5117138, i64 4 ; 2 uses
  %i.fl = add nsw i32 %.1121137, -2               ; 2 uses
  %i.fm = icmp samesign ugt i32 %.1121137, 3
  br i1 %i.fm, label %.lr.ph141, label %._crit_edge142, !llvm.loop !63

._crit_edge142:                                   ; preds = %.lr.ph141, %middle.block, %bb.j
  %.1121.lcssa = phi i32 [ %.0120, %bb.j ], [ %i.ee, %middle.block ], [ %i.fl, %.lr.ph141 ]
  %.5117.lcssa = phi ptr [ %.4116, %bb.j ], [ %i.eb, %middle.block ], [ %i.fk, %.lr.ph141 ] ; 4 uses
  %.5.lcssa = phi ptr [ %.4, %bb.j ], [ %i.ea, %middle.block ], [ %i.fj, %.lr.ph141 ] ; 3 uses
  %.not127 = icmp eq i32 %.1121.lcssa, 0
  br i1 %.not127, label %bb.l, label %bb.k

end_hunk_0
