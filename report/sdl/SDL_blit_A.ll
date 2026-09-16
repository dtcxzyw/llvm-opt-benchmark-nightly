Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_A?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@BlitNtoNSurfaceAlphaKey:bb.a
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
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer
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
  %.0123 = phi i32 [ %i.r, %bb.d ], [ %i.b, %bb.c ] ; 9 uses
  %.1113 = phi ptr [ %i.ao, %bb.d ], [ %.0112147, %bb.c ] ; 7 uses
  %.1 = phi ptr [ %i.ap, %bb.d ], [ %.0111148, %bb.c ] ; 3 uses
  %i.aq = getelementptr i8, ptr %.1, i64 2        ; 6 uses
  %i.ar = getelementptr inbounds i8, ptr %.1, i64 -2
  %i.as = load i32, ptr %i.ar, align 4            ; 4 uses
  %i.at = icmp sgt i32 %.0123, 1
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %2 = tail call i32 @llvm.smin.i32(i32 %.0123, i32 3)
  %i.au = add nuw i32 %.0123, 1
  %3 = sub i32 %i.au, %2                          ; 2 uses
  %i.av = lshr i32 %3, 1
  %narrow = add nuw i32 %i.av, 1
  %i.aw = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check191 = icmp ult i32 %3, 6
  br i1 %min.iters.check191, label %.lr.ph.preheader212, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.preheader
  %scevgep183 = getelementptr i8, ptr %.1113, i64 4
  %i.ax = add nuw i32 %.0123, 1
  %smin184 = tail call i32 @llvm.smin.i32(i32 %.0123, i32 3)
  %4 = sub i32 %i.ax, %smin184
  %i.ay = lshr i32 %4, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.ba
  %scevgep185 = getelementptr i8, ptr %.1, i64 6
  %scevgep186 = getelementptr i8, ptr %scevgep185, i64 %i.ba
  %bound0187 = icmp ult ptr %.1113, %scevgep186
  %bound1188 = icmp ult ptr %i.aq, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %.lr.ph.preheader212, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck182
  %n.vec193 = and i64 %i.aw, 4294967292           ; 4 uses
  %i.bb = shl nuw nsw i64 %n.vec193, 2            ; 2 uses
  %i.bc = getelementptr i8, ptr %i.aq, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %.1113, i64 %i.bb ; 2 uses
  %i.be = trunc nuw i64 %n.vec193 to i32
  %i.bf = shl i32 %i.be, 1
  %i.bg = sub i32 %.0123, %i.bf                   ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.as, i64 3
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph192
  %index199 = phi i64 [ 0, %vector.ph192 ], [ %index.next204, %vector.body198 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph192 ], [ %wide.load202, %vector.body198 ]
  %i.bh = shl i64 %index199, 2                    ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.aq, i64 %i.bh
  %next.gep201 = getelementptr i8, ptr %.1113, i64 %i.bh ; 2 uses
  %wide.load202 = load <4 x i32>, ptr %next.gep200, align 4, !alias.scope !65 ; 4 uses
  %i.bi = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load202, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %wide.load203 = load <4 x i32>, ptr %next.gep201, align 4, !alias.scope !66, !noalias !65 ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load202, <4 x i32> %i.bi, <4 x i32> splat (i32 16)) ; 2 uses
  %i.bk = and <4 x i32> %i.bj, %broadcast.splat195
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 1)
  %i.bm = and <4 x i32> %wide.load203, %broadcast.splat195
  %i.bn = lshr <4 x i32> %i.bm, splat (i32 1)
  %i.bo = add nuw <4 x i32> %i.bl, %i.bn
  %i.bp = and <4 x i32> %wide.load203, %broadcast.splat197
  %i.bq = and <4 x i32> %i.bp, %i.bj
  %i.br = add <4 x i32> %i.bo, %i.bq
  store <4 x i32> %i.br, ptr %next.gep201, align 4, !alias.scope !66, !noalias !65
  %index.next204 = add nuw i64 %index199, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next204, %n.vec193
  br i1 %i.bs, label %middle.block205, label %vector.body198, !llvm.loop !57

middle.block205:                                  ; preds = %vector.body198
  %vector.recur.extract = extractelement <4 x i32> %wide.load202, i64 3 ; 2 uses
  %cmp.n206 = icmp eq i64 %n.vec193, %i.aw
  br i1 %cmp.n206, label %._crit_edge, label %.lr.ph.preheader212

.lr.ph.preheader212:                              ; preds = %vector.memcheck182, %.lr.ph.preheader, %middle.block205
  %.2133.ph = phi ptr [ %i.aq, %vector.memcheck182 ], [ %i.aq, %.lr.ph.preheader ], [ %i.bc, %middle.block205 ]
  %.2114132.ph = phi ptr [ %.1113, %vector.memcheck182 ], [ %.1113, %.lr.ph.preheader ], [ %i.bd, %middle.block205 ]
  %.0122131.ph = phi i32 [ %i.as, %vector.memcheck182 ], [ %i.as, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block205 ]
  %.1124130.ph = phi i32 [ %.0123, %vector.memcheck182 ], [ %.0123, %.lr.ph.preheader ], [ %i.bg, %middle.block205 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader212, %.lr.ph
  %.2133 = phi ptr [ %i.cf, %.lr.ph ], [ %.2133.ph, %.lr.ph.preheader212 ] ; 2 uses
  %.2114132 = phi ptr [ %i.ce, %.lr.ph ], [ %.2114132.ph, %.lr.ph.preheader212 ] ; 3 uses
  %.0122131 = phi i32 [ %i.bt, %.lr.ph ], [ %.0122131.ph, %.lr.ph.preheader212 ]
  %.1124130 = phi i32 [ %i.cg, %.lr.ph ], [ %.1124130.ph, %.lr.ph.preheader212 ] ; 2 uses
  %i.bt = load i32, ptr %.2133, align 4           ; 3 uses
  %i.bu = load i32, ptr %.2114132, align 4        ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bt, i32 %.0122131, i32 16) ; 2 uses
  %i.bw = and i32 %i.bv, %i.s
  %i.bx = lshr i32 %i.bw, 1
  %i.by = and i32 %i.bu, %i.s
  %i.bz = lshr i32 %i.by, 1
  %i.ca = add nuw i32 %i.bx, %i.bz
  %i.cb = and i32 %i.bu, %i.t
  %i.cc = and i32 %i.cb, %i.bv
  %i.cd = add i32 %i.ca, %i.cc
  store i32 %i.cd, ptr %.2114132, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.2114132, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2133, i64 4 ; 2 uses
  %i.cg = add nsw i32 %.1124130, -2               ; 2 uses
  %i.ch = icmp samesign ugt i32 %.1124130, 3
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %middle.block205, %bb.e
  %.1124.lcssa = phi i32 [ %.0123, %bb.e ], [ %i.bg, %middle.block205 ], [ %i.cg, %.lr.ph ]
  %.0122.lcssa = phi i32 [ %i.as, %bb.e ], [ %vector.recur.extract, %middle.block205 ], [ %i.bt, %.lr.ph ]
  %.2114.lcssa = phi ptr [ %.1113, %bb.e ], [ %i.bd, %middle.block205 ], [ %i.ce, %.lr.ph ] ; 4 uses
  %.2.lcssa = phi ptr [ %i.aq, %bb.e ], [ %i.bc, %middle.block205 ], [ %i.cf, %.lr.ph ] ; 2 uses
  %.not129 = icmp eq i32 %.1124.lcssa, 0
  br i1 %.not129, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ci = load i16, ptr %.2114.lcssa, align 2
  %i.cj = lshr i32 %.0122.lcssa, 16               ; 2 uses
  %i.ck = and i32 %i.cj, %i.o
  %i.cl = zext i16 %i.ci to i32                   ; 2 uses
  %i.cm = and i32 %i.cl, %i.o
  %i.cn = add nuw nsw i32 %i.cm, %i.ck
  %i.co = lshr i32 %i.cn, 1
  %i.cp = and i32 %i.cj, %i.q
  %i.cq = and i32 %i.cp, %i.cl
  %i.cr = add nuw nsw i32 %i.co, %i.cq
  %i.cs = trunc i32 %i.cr to i16
  store i16 %i.cs, ptr %.2114.lcssa, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.2114.lcssa, i64 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.3115 = phi ptr [ %i.cu, %bb.f ], [ %.2114.lcssa, %._crit_edge ]
  %.3 = phi ptr [ %i.ct, %bb.f ], [ %.2.lcssa, %._crit_edge ]
  %i.cv = getelementptr [2 x i8], ptr %.3, i64 %i.u
  %i.cw = getelementptr i8, ptr %i.cv, i64 -2
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.cx = and i64 %i.x, 2
  %.not126 = icmp eq i64 %i.cx, 0
  br i1 %.not126, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load i16, ptr %.0112147, align 2
  %i.cz = load i16, ptr %.0111148, align 2
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %i.db = and i32 %i.da, %i.o
  %i.dc = zext i16 %i.cy to i32                   ; 2 uses
  %i.dd = and i32 %i.dc, %i.o
  %i.de = add nuw nsw i32 %i.db, %i.dd
  %i.df = lshr i32 %i.de, 1
  %i.dg = and i32 %i.q, %i.dc
  %i.dh = and i32 %i.dg, %i.da
  %i.di = add nuw nsw i32 %i.df, %i.dh
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %.0112147, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %.0111148, i64 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.0112147, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0120 = phi i32 [ %i.r, %bb.i ], [ %i.b, %bb.h ] ; 9 uses
  %.4116 = phi ptr [ %i.dl, %bb.i ], [ %.0112147, %bb.h ] ; 7 uses
  %.4 = phi ptr [ %i.dk, %bb.i ], [ %.0111148, %bb.h ] ; 7 uses
  %i.dm = icmp sgt i32 %.0120, 1
  br i1 %i.dm, label %.lr.ph141.preheader, label %._crit_edge142

.lr.ph141.preheader:                              ; preds = %bb.j
  %5 = tail call i32 @llvm.smin.i32(i32 %.0120, i32 3)
  %i.dn = add nuw i32 %.0120, 1
  %6 = sub i32 %i.dn, %5                          ; 2 uses
  %i.do = lshr i32 %6, 1
  %narrow210 = add nuw i32 %i.do, 1
  %i.dp = zext i32 %narrow210 to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %6, 14
  br i1 %min.iters.check, label %.lr.ph141.preheader211, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph141.preheader
  %scevgep = getelementptr i8, ptr %.4116, i64 4
  %i.dq = add nuw i32 %.0120, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %.0120, i32 3)
  %7 = sub i32 %i.dq, %smin
  %i.dr = lshr i32 %7, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2                ; 2 uses
  %scevgep171 = getelementptr i8, ptr %scevgep, i64 %i.dt
  %scevgep172 = getelementptr i8, ptr %.4, i64 4
  %scevgep173 = getelementptr i8, ptr %scevgep172, i64 %i.dt
  %bound0 = icmp ult ptr %.4116, %scevgep173
  %bound1 = icmp ult ptr %.4, %scevgep171
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph141.preheader211, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4294967288              ; 4 uses
  %i.du = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.dv = getelementptr i8, ptr %.4, i64 %i.du    ; 2 uses
  %i.dw = getelementptr i8, ptr %.4116, i64 %i.du ; 2 uses
  %i.dx = trunc nuw i64 %n.vec to i32
  %i.dy = shl i32 %i.dx, 1
  %i.dz = sub i32 %.0120, %i.dy                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.4, i64 %i.ea ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.4116, i64 %i.ea ; 3 uses
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !67 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.eb, align 4, !alias.scope !67 ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load178 = load <4 x i32>, ptr %next.gep176, align 4, !alias.scope !68, !noalias !67 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %i.ec, align 4, !alias.scope !68, !noalias !67 ; 2 uses
  %i.ed = and <4 x i32> %wide.load, %broadcast.splat
  %i.ee = and <4 x i32> %wide.load177, %broadcast.splat
  %i.ef = lshr <4 x i32> %i.ed, splat (i32 1)
  %i.eg = lshr <4 x i32> %i.ee, splat (i32 1)
  %i.eh = and <4 x i32> %wide.load178, %broadcast.splat
  %i.ei = and <4 x i32> %wide.load179, %broadcast.splat
  %i.ej = lshr <4 x i32> %i.eh, splat (i32 1)
  %i.ek = lshr <4 x i32> %i.ei, splat (i32 1)
  %i.el = add nuw <4 x i32> %i.ej, %i.ef
  %i.em = add nuw <4 x i32> %i.ek, %i.eg
  %i.en = and <4 x i32> %wide.load, %broadcast.splat175
  %i.eo = and <4 x i32> %wide.load177, %broadcast.splat175
  %i.ep = and <4 x i32> %i.en, %wide.load178
  %i.eq = and <4 x i32> %i.eo, %wide.load179
  %i.er = add <4 x i32> %i.el, %i.ep
  %i.es = add <4 x i32> %i.em, %i.eq
  store <4 x i32> %i.er, ptr %next.gep176, align 4, !alias.scope !68, !noalias !67
  store <4 x i32> %i.es, ptr %i.ec, align 4, !alias.scope !68, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dp
  br i1 %cmp.n, label %._crit_edge142, label %.lr.ph141.preheader211

.lr.ph141.preheader211:                           ; preds = %vector.memcheck, %.lr.ph141.preheader, %middle.block
  %.5139.ph = phi ptr [ %.4, %vector.memcheck ], [ %.4, %.lr.ph141.preheader ], [ %i.dv, %middle.block ]
  %.5117138.ph = phi ptr [ %.4116, %vector.memcheck ], [ %.4116, %.lr.ph141.preheader ], [ %i.dw, %middle.block ]
  %.1121137.ph = phi i32 [ %.0120, %vector.memcheck ], [ %.0120, %.lr.ph141.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader211, %.lr.ph141
  %.5139 = phi ptr [ %i.fe, %.lr.ph141 ], [ %.5139.ph, %.lr.ph141.preheader211 ] ; 2 uses
  %.5117138 = phi ptr [ %i.ff, %.lr.ph141 ], [ %.5117138.ph, %.lr.ph141.preheader211 ] ; 3 uses
  %.1121137 = phi i32 [ %i.fg, %.lr.ph141 ], [ %.1121137.ph, %.lr.ph141.preheader211 ] ; 2 uses
  %i.eu = load i32, ptr %.5139, align 4           ; 2 uses
  %i.ev = load i32, ptr %.5117138, align 4        ; 2 uses
  %i.ew = and i32 %i.eu, %i.s
  %i.ex = lshr i32 %i.ew, 1
  %i.ey = and i32 %i.ev, %i.s
  %i.ez = lshr i32 %i.ey, 1
  %i.fa = add nuw i32 %i.ez, %i.ex
  %i.fb = and i32 %i.eu, %i.t
  %i.fc = and i32 %i.fb, %i.ev
  %i.fd = add i32 %i.fa, %i.fc
  store i32 %i.fd, ptr %.5117138, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.5139, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.5117138, i64 4 ; 2 uses
  %i.fg = add nsw i32 %.1121137, -2               ; 2 uses
  %i.fh = icmp samesign ugt i32 %.1121137, 3
  br i1 %i.fh, label %.lr.ph141, label %._crit_edge142, !llvm.loop !63

._crit_edge142:                                   ; preds = %.lr.ph141, %middle.block, %bb.j
  %.1121.lcssa = phi i32 [ %.0120, %bb.j ], [ %i.dz, %middle.block ], [ %i.fg, %.lr.ph141 ]
  %.5117.lcssa = phi ptr [ %.4116, %bb.j ], [ %i.dw, %middle.block ], [ %i.ff, %.lr.ph141 ] ; 4 uses
  %.5.lcssa = phi ptr [ %.4, %bb.j ], [ %i.dv, %middle.block ], [ %i.fe, %.lr.ph141 ] ; 3 uses
  %.not127 = icmp eq i32 %.1121.lcssa, 0
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge142
  %i.fi = load i16, ptr %.5117.lcssa, align 2
  %i.fj = load i16, ptr %.5.lcssa, align 2
  %i.fk = zext i16 %i.fj to i32                   ; 2 uses
  %i.fl = and i32 %i.fk, %i.o
  %i.fm = zext i16 %i.fi to i32                   ; 2 uses
  %i.fn = and i32 %i.fm, %i.o
  %i.fo = add nuw nsw i32 %i.fl, %i.fn
  %i.fp = lshr i32 %i.fo, 1
  %i.fq = and i32 %i.q, %i.fm
  %i.fr = and i32 %i.fq, %i.fk
  %i.fs = add nuw nsw i32 %i.fp, %i.fr
  %i.ft = trunc i32 %i.fs to i16
  store i16 %i.ft, ptr %.5117.lcssa, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %.5.lcssa, i64 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.5117.lcssa, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge142
  %.6118 = phi ptr [ %i.fv, %bb.k ], [ %.5117.lcssa, %._crit_edge142 ]
  %.6 = phi ptr [ %i.fu, %bb.k ], [ %.5.lcssa, %._crit_edge142 ]
  %i.fw = getelementptr inbounds [2 x i8], ptr %.6, i64 %i.u
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.3115.pn = phi ptr [ %.3115, %bb.g ], [ %.6118, %bb.l ]
  %.7 = phi ptr [ %i.cw, %bb.g ], [ %i.fw, %bb.l ]
  %.7119 = getelementptr inbounds [2 x i8], ptr %.3115.pn, i64 %i.v
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %._crit_edge151, label %bb.b, !llvm.loop !64

._crit_edge151:                                   ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !3, !4, !5}
!19 = distinct !{!19, !3, !4}
!20 = distinct !{!20, !3}
!21 = !{!15}
!22 = !{!16}
!23 = !{!17}
!24 = !{!16, !15}
!25 = distinct !{!25, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !3, !4, !5}
!31 = distinct !{!31, !3, !4}
!32 = distinct !{!32, !3}
!33 = !{!26}
!34 = !{!27}
!35 = !{!28}
!36 = !{!29}
!37 = !{!28, !26, !27}
!38 = distinct !{!38, !3}
!39 = distinct !{!39, !3}
!40 = distinct !{!40, !3}
!41 = distinct !{!41, !3}
!42 = distinct !{!42, !3}
!43 = distinct !{!43, !3}
!44 = distinct !{!44, !3}
!45 = distinct !{!45, !3}
!46 = distinct !{!46, !3}
!47 = distinct !{!47, !3}
!48 = distinct !{!48, !3}
!49 = distinct !{!49, !3}
!50 = distinct !{!50, !3}
!51 = distinct !{!51, !3}
!52 = distinct !{!52, !3}
!53 = distinct !{!53, !3}
!54 = distinct !{!54, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !3, !4, !5}
!58 = distinct !{!58, !3, !4}
!59 = distinct !{!59, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !3, !4, !5}
!63 = distinct !{!63, !3, !4}
!64 = distinct !{!64, !3}
!65 = !{!55}
!66 = !{!56}
!67 = !{!60}
!68 = !{!61}
end_hunk_0
