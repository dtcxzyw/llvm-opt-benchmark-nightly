inline.NumInlined: 36
inline.NumDeleted: 20
begin_hunk_0_@EncodeContextMap:bb.a
  %.068.lcssa111.i = phi i32 [ %.088.i, %bb.e ], [ %.068.lcssa.i, %.critedge2.i ] ; 2 uses
  %.not.i = icmp eq i32 %.068.lcssa111.i, 0
  %i.cw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.068.lcssa111.i, i1 true)
  %i.cx = xor i32 %i.cw, 31
  %i.cy = tail call i32 @llvm.umin.i32(i32 range(i32 0, 32) %i.cx, i32 6)
  %i.cz = select i1 %.not.i, i32 0, i32 %i.cy
  %i.da = freeze i32 %i.cz                        ; 8 uses
  %i.db = shl nuw nsw i32 2, %i.da                ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.da
  %i.dc = xor i32 %notmask.i, -1
  %i.dd = shl nuw nsw i32 %i.dc, 9
  %i.de = add nuw nsw i32 %i.dd, %i.da
  %invariant.op = sub i32 1, %i.db
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.critedge2.thread.i
  %.071 = phi i64 [ 0, %.critedge2.thread.i ], [ %.172, %.loopexit.i ]
  %i.df = phi i64 [ 0, %.critedge2.thread.i ], [ %i.eh, %.loopexit.i ] ; 5 uses
  %.399.i = phi i64 [ 0, %.critedge2.thread.i ], [ %.4.i, %.loopexit.i ] ; 5 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.399.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !5, !alias.scope !480, !noalias !483 ; 2 uses
  %.not73.i = icmp eq i32 %i.dh, 0
  br i1 %.not73.i, label %.preheader.i62, label %bb.h

.preheader.i62:                                   ; preds = %bb.g
  %.06589.i = add nuw i64 %.399.i, 1              ; 3 uses
  %i.di = icmp ult i64 %.06589.i, %3
  br i1 %i.di, label %.lr.ph92.preheader.i, label %.lr.ph98.preheader.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i62
  %i.dj = trunc i64 %.399.i to i32
  %i.dk = sub i32 %i.ch, %i.dj
  br label %.lr.ph92.i

bb.h:                                             ; preds = %bb.g
  %i.dl = add i32 %i.dh, %i.da
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.df
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !5, !alias.scope !480, !noalias !483
  %i.dn = add nuw i64 %.399.i, 1
  br label %.loopexit.sink.split.i

.lr.ph92.i:                                       ; preds = %bb.i, %.lr.ph92.preheader.i
  %.06591.i = phi i64 [ %.065.i, %bb.i ], [ %.06589.i, %.lr.ph92.preheader.i ] ; 2 uses
  %.06690.i = phi i32 [ %i.dr, %bb.i ], [ 1, %.lr.ph92.preheader.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.06591.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !5, !alias.scope !480, !noalias !483
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.i, label %.critedge4.i

bb.i:                                             ; preds = %.lr.ph92.i
  %i.dr = add i32 %.06690.i, 1
  %.065.i = add i64 %.06591.i, 1                  ; 2 uses
  %exitcond102.not.i = icmp eq i64 %.065.i, %3
  br i1 %exitcond102.not.i, label %.critedge4.i, label %.lr.ph92.i, !llvm.loop !489

.critedge4.i:                                     ; preds = %bb.i, %.lr.ph92.i
  %.066.lcssa.i = phi i32 [ %i.dk, %bb.i ], [ %.06690.i, %.lr.ph92.i ] ; 3 uses
  %i.ds = zext i32 %.066.lcssa.i to i64
  %i.dt = add i64 %.399.i, %i.ds                  ; 2 uses
  %.not7496.i = icmp eq i32 %.066.lcssa.i, 0
  br i1 %.not7496.i, label %.loopexit.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i62, %.critedge4.i
  %i.du = phi i64 [ %i.dt, %.critedge4.i ], [ %.06589.i, %.preheader.i62 ]
  %.066.lcssa114.i = phi i32 [ %.066.lcssa.i, %.critedge4.i ], [ 1, %.preheader.i62 ] ; 3 uses
  %i.dv = icmp ult i32 %.066.lcssa114.i, %i.db
  br i1 %i.dv, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.lr.ph98.i._crit_edge:                            ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i
  %.lcssa117 = phi i64 [ %i.df, %.lr.ph98.preheader.i ], [ %i.ee, %.lr.ph98.i ] ; 2 uses
  %.16797.i.lcssa = phi i32 [ %.066.lcssa114.i, %.lr.ph98.preheader.i ], [ %.reass.i.reass.reass.reass, %.lr.ph98.i ] ; 2 uses
  %i.dw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.16797.i.lcssa, i1 true) ; 2 uses
  %.neg.i63 = ashr exact i32 -2147483648, %i.dw
  %i.dx = add nsw i32 %.neg.i63, %.16797.i.lcssa
  %i.dy = shl i32 %i.dx, 9
  %i.dz = or disjoint i32 %i.dy, %i.dw
  %i.ea = xor i32 %i.dz, 31
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.lcssa117
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !5, !alias.scope !480, !noalias !483
  br label %.loopexit.sink.split.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.preheader.i, %.lr.ph98.i
  %.16797.i121 = phi i32 [ %.reass.i.reass.reass.reass, %.lr.ph98.i ], [ %.066.lcssa114.i, %.lr.ph98.preheader.i ]
  %i.ec = phi i64 [ %i.ee, %.lr.ph98.i ], [ %i.df, %.lr.ph98.preheader.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ec
  store i32 %i.de, ptr %i.ed, align 4, !tbaa !5, !alias.scope !480, !noalias !483
  %.reass.i.reass.reass.reass = add i32 %.16797.i121, %invariant.op ; 3 uses
  %i.ee = add i64 %i.ec, 1                        ; 2 uses
  %i.ef = icmp ult i32 %.reass.i.reass.reass.reass, %i.db
  br i1 %i.ef, label %.lr.ph98.i._crit_edge, label %.lr.ph98.i

.loopexit.sink.split.i:                           ; preds = %.lr.ph98.i._crit_edge, %bb.h
  %.lcssa.sink.i = phi i64 [ %.lcssa117, %.lr.ph98.i._crit_edge ], [ %i.df, %bb.h ]
  %.4.ph.i = phi i64 [ %i.du, %.lr.ph98.i._crit_edge ], [ %i.dn, %bb.h ]
  %i.eg = add i64 %.lcssa.sink.i, 1               ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %.critedge4.i
  %.172 = phi i64 [ %.071, %.critedge4.i ], [ %i.eg, %.loopexit.sink.split.i ] ; 7 uses
  %i.eh = phi i64 [ %i.df, %.critedge4.i ], [ %i.eg, %.loopexit.sink.split.i ]
  %.4.i = phi i64 [ %i.dt, %.critedge4.i ], [ %.4.ph.i, %.loopexit.sink.split.i ] ; 2 uses
  %i.ei = icmp ult i64 %.4.i, %3
  br i1 %i.ei, label %bb.g, label %RunLengthCodeZeros.exit, !llvm.loop !490

RunLengthCodeZeros.exit:                          ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1088) %1, i8 0, i64 1088, i1 false)
  %.not86 = icmp eq i64 %.172, 0                  ; 2 uses
  br i1 %.not86, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %RunLengthCodeZeros.exit
  %xtraiter = and i64 %.172, 1
  %i.ej = icmp eq i64 %.172, 1
  br i1 %i.ej, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.172, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.081 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ez, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !5
  %i.em = and i32 %i.el, 511
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !5
  %i.eq = add i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !5
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !5
  %i.eu = and i32 %i.et, 511
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !5
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !5
  %i.ez = add nuw i64 %.081, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !491

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.081.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ez, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i64 %.172 to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.081.epil.init
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !5
  %i.fc = and i32 %i.fb, 511
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !5
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !5
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %RunLengthCodeZeros.exit
  %.not = icmp ne i32 %i.da, 0                    ; 2 uses
  %i.fh = zext i1 %.not to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.fi = load i64, ptr %6, align 8, !tbaa !9, !alias.scope !492, !noalias !495 ; 4 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11, !alias.scope !495, !noalias !492
  %i.fm = zext i8 %i.fl to i64
  %i.fn = and i64 %i.fi, 7
  %i.fo = shl nuw nsw i64 %i.fh, %i.fn
  %i.fp = or i64 %i.fo, %i.fm
  store i64 %i.fp, ptr %i.fk, align 1, !noalias !492
  %i.fq = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fq, ptr %6, align 8, !tbaa !9, !alias.scope !492, !noalias !495
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.fr = add nsw i32 %i.da, -1
  %i.fs = zext i32 %i.fr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ft = lshr i64 %i.fq, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 %i.ft ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !11, !alias.scope !500, !noalias !497
  %i.fw = zext i8 %i.fv to i64
  %i.fx = and i64 %i.fq, 7
  %i.fy = shl nuw nsw i64 %i.fs, %i.fx
  %i.fz = or i64 %i.fy, %i.fw
  store i64 %i.fz, ptr %i.fu, align 1, !noalias !497
  %i.ga = add i64 %i.fi, 5
  store i64 %i.ga, ptr %6, align 8, !tbaa !9, !alias.scope !497, !noalias !500
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.gb = zext nneg i32 %i.da to i64
  %i.gc = add i64 %4, %i.gb                       ; 2 uses
  tail call fastcc void @BuildAndStoreHuffmanTree(ptr noundef nonnull %1, i64 noundef %i.gc, i64 noundef %i.gc, ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.pre98 = load i64, ptr %6, align 8, !tbaa !9, !alias.scope !502, !noalias !505 ; 2 uses
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.k, %bb.m
  %i.gd = phi i64 [ %i.hh, %bb.m ], [ %.pre98, %bb.k ] ; 3 uses
  %.182 = phi i64 [ %i.hi, %bb.m ], [ 0, %bb.k ]  ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.182
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !5  ; 2 uses
  %i.gg = and i32 %i.gf, 511                      ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !11
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gh
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !37
  %i.gn = zext i16 %i.gm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.go = lshr i64 %i.gd, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !11, !alias.scope !510, !noalias !507
  %i.gr = zext i8 %i.gq to i64
  %i.gs = and i64 %i.gd, 7
  %i.gt = shl nuw nsw i64 %i.gn, %i.gs
  %i.gu = or i64 %i.gt, %i.gr
  store i64 %i.gu, ptr %i.gp, align 1, !noalias !507
  %i.gv = add i64 %i.gd, %i.gk                    ; 5 uses
  store i64 %i.gv, ptr %6, align 8, !tbaa !9, !alias.scope !507, !noalias !510
  %i.gw = add nsw i32 %i.gg, -1
  %or.cond.not = icmp ult i32 %i.gw, %i.da
  br i1 %or.cond.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph84
  %i.gx = lshr i32 %i.gf, 9
  %i.gy = zext nneg i32 %i.gx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.gz = lshr i64 %i.gv, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 %i.gz ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !11, !alias.scope !515, !noalias !512
  %i.hc = zext i8 %i.hb to i64
  %i.hd = and i64 %i.gv, 7
  %i.he = shl nuw nsw i64 %i.gy, %i.hd
  %i.hf = or i64 %i.he, %i.hc
  store i64 %i.hf, ptr %i.ha, align 1, !noalias !512
  %i.hg = add i64 %i.gv, %i.gh                    ; 2 uses
  store i64 %i.hg, ptr %6, align 8, !tbaa !9, !alias.scope !512, !noalias !515
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph84
  %i.hh = phi i64 [ %i.hg, %bb.l ], [ %i.gv, %.lr.ph84 ] ; 2 uses
  %i.hi = add nuw i64 %.182, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.hi, %.172
  br i1 %exitcond97.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !517

._crit_edge85:                                    ; preds = %bb.m, %bb.k
  %i.hj = phi i64 [ %.pre98, %bb.k ], [ %i.hh, %bb.m ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 %i.hk ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !11, !alias.scope !505, !noalias !502
  %i.hn = zext i8 %i.hm to i64
  %i.ho = and i64 %i.hj, 7
  %i.hp = shl nuw nsw i64 1, %i.ho
  %i.hq = or i64 %i.hp, %i.hn
  store i64 %i.hq, ptr %i.hl, align 1, !noalias !502
  %i.hr = add i64 %i.hj, 1
  store i64 %i.hr, ptr %6, align 8, !tbaa !9, !alias.scope !502, !noalias !505
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.aq) #11
  br label %bb.n

bb.n:                                             ; preds = %StoreVarLenUint8.exit.thread, %._crit_edge85
  ret void
}

declare hidden void @BrotliFree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @StoreSymbol(ptr noundef captures(none) %0, i64 noundef range(i64 0, 65536) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !194
  %i.f = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !5    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11
  %i.o = zext i32 %i.j to i64
  store i64 %i.o, ptr %i.a, align 8, !tbaa !195
  %i.p = zext i8 %i.n to i64                      ; 5 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !184
  %i.r = mul i64 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %i.r, ptr %i.s, align 8, !tbaa !242
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !192  ; 2 uses
  %i.v = add i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, %i.p
  br i1 %i.w, label %StoreBlockSwitch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !193
  %i.z = icmp eq i64 %i.y, %i.p
  %i.aa = add nuw nsw i64 %i.p, 2
  %i.ab = select i1 %i.z, i64 0, i64 %i.aa
  br label %StoreBlockSwitch.exit

StoreBlockSwitch.exit:                            ; preds = %bb.b, %bb.c
  %i.ac = phi i64 [ %i.ab, %bb.c ], [ 1, %bb.b ]  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.u, ptr %i.ad, align 8, !tbaa !193
  store i64 %i.p, ptr %i.t, align 8, !tbaa !192
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 314
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !37
  %i.al = zext i16 %i.ak to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.am = load i64, ptr %2, align 8, !tbaa !9, !alias.scope !518, !noalias !521 ; 3 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11, !alias.scope !521, !noalias !518
  %i.aq = zext i8 %i.ap to i64
  %i.ar = and i64 %i.am, 7
  %i.as = shl nuw nsw i64 %i.al, %i.ar
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ao, align 1, !noalias !518
  %i.au = add i64 %i.am, %i.ah                    ; 4 uses
  store i64 %i.au, ptr %2, align 8, !tbaa !9, !alias.scope !518, !noalias !521
  %i.av = icmp ugt i32 %i.j, 176
  %i.aw = icmp ugt i32 %i.j, 752
  %i.ax = select i1 %i.aw, i64 20, i64 14
  %i.ay = icmp ugt i32 %i.j, 40
  %i.az = select i1 %i.ay, i64 7, i64 0
  %i.ba = select i1 %i.av, i64 %i.ax, i64 %i.az
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %GetBlockLengthPrefixCode.exit, label %bb.e, !llvm.loop !248

bb.e:                                             ; preds = %StoreBlockSwitch.exit, %bb.d
  %indvars.iv28 = phi i64 [ %i.ba, %StoreBlockSwitch.exit ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv28, 1 ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_kBrotliPrefixCodeRanges, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !249
  %i.bd = zext i16 %i.bc to i32
  %.not.i.i = icmp ult i32 %i.j, %i.bd
  br i1 %.not.i.i, label %GetBlockLengthPrefixCode.exit, label %bb.d, !llvm.loop !248

GetBlockLengthPrefixCode.exit:                    ; preds = %bb.d, %bb.e
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv28, %bb.e ]
  %i.be = and i64 %indvars.iv.lcssa, 4294967295   ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @_kBrotliPrefixCodeRanges, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !251
  %i.bi = load i16, ptr %i.bf, align 4, !tbaa !249
  %i.bj = zext i16 %i.bi to i32
  %i.bk = sub i32 %i.j, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.be
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.be
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !37
  %i.bs = zext i16 %i.br to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.bt = lshr i64 %i.au, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11, !alias.scope !526, !noalias !523
  %i.bw = zext i8 %i.bv to i64
  %i.bx = and i64 %i.au, 7
  %i.by = shl nuw nsw i64 %i.bs, %i.bx
  %i.bz = or i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bu, align 1, !noalias !523
  %i.ca = add i64 %i.au, %i.bo                    ; 4 uses
  store i64 %i.ca, ptr %2, align 8, !tbaa !9, !alias.scope !523, !noalias !526
  %i.cb = zext i8 %i.bh to i64
  %i.cc = zext i32 %i.bk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.cd = lshr i64 %i.ca, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11, !alias.scope !531, !noalias !528
  %i.cg = zext i8 %i.cf to i64
  %i.ch = and i64 %i.ca, 7
  %i.ci = shl nuw nsw i64 %i.cc, %i.ch
  %i.cj = or i64 %i.ci, %i.cg
  store i64 %i.cj, ptr %i.ce, align 1, !noalias !528
  %i.ck = add i64 %i.ca, %i.cb
  store i64 %i.ck, ptr %2, align 8, !tbaa !9, !alias.scope !528, !noalias !531
  %.pre = load i64, ptr %i.a, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %GetBlockLengthPrefixCode.exit, %bb.a
  %i.cl = phi i64 [ %.pre, %GetBlockLengthPrefixCode.exit ], [ %i.b, %bb.a ]
  %i.cm = add i64 %i.cl, -1
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !195
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !242
  %i.cp = add i64 %i.co, %1                       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !227
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !228
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cp
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !37
  %i.cz = zext i16 %i.cy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.da = load i64, ptr %2, align 8, !tbaa !9, !alias.scope !533, !noalias !536 ; 3 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !11, !alias.scope !536, !noalias !533
  %i.de = zext i8 %i.dd to i64
  %i.df = and i64 %i.da, 7
  %i.dg = shl nuw nsw i64 %i.cz, %i.df
  %i.dh = or i64 %i.dg, %i.de
  store i64 %i.dh, ptr %i.dc, align 1, !noalias !533
  %i.di = add i64 %i.da, %i.cu
  store i64 %i.di, ptr %2, align 8, !tbaa !9, !alias.scope !533, !noalias !536
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @BrotliStoreMetaBlockTrivial(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, i64 noundef %8, ptr noundef captures(none) %9, ptr noundef captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 20640) #11 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !157
  tail call fastcc void @StoreCompressedMetaBlockHeader(i32 noundef %5, i64 noundef %3, ptr noundef %9, ptr noundef %10)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.a, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.e, align 8, !tbaa !538
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3856
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.f, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.h, align 8, !tbaa !541
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3872 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6048
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.i, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.k, align 8, !tbaa !543
  %.not32.i = icmp eq i64 %8, 0
  br i1 %.not32.i, label %BuildHistograms.exit, label %.lr.ph29.i
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umax.v4i32
!312 = !{!313}
!313 = distinct !{!313, !311, !"BrotliWriteBits: argument 1"}
!314 = distinct !{!314, !15}
!315 = !{!316}
!316 = distinct !{!316, !317, !"BrotliWriteBits: argument 0"}
!317 = distinct !{!317, !"BrotliWriteBits"}
!318 = !{!319}
!319 = distinct !{!319, !317, !"BrotliWriteBits: argument 1"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"BrotliWriteBits: argument 0"}
!322 = distinct !{!322, !"BrotliWriteBits"}
!323 = !{!324}
!324 = distinct !{!324, !322, !"BrotliWriteBits: argument 1"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"BrotliWriteBits: argument 0"}
!327 = distinct !{!327, !"BrotliWriteBits"}
!328 = !{!329}
!329 = distinct !{!329, !327, !"BrotliWriteBits: argument 1"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"BrotliWriteBits: argument 1"}
!332 = distinct !{!332, !"BrotliWriteBits"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"BrotliWriteBits: argument 0"}
!335 = !{!336}
!336 = distinct !{!336, !337, !"BrotliWriteBits: argument 0"}
!337 = distinct !{!337, !"BrotliWriteBits"}
!338 = !{!339}
!339 = distinct !{!339, !337, !"BrotliWriteBits: argument 1"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"BrotliWriteBits: argument 0"}
!342 = distinct !{!342, !"BrotliWriteBits"}
!343 = !{!344}
!344 = distinct !{!344, !342, !"BrotliWriteBits: argument 1"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"BrotliWriteBits: argument 1"}
!347 = distinct !{!347, !"BrotliWriteBits"}
!348 = !{!349}
!349 = distinct !{!349, !347, !"BrotliWriteBits: argument 0"}
!350 = distinct !{!350, !15}
!351 = !{!352}
!352 = distinct !{!352, !353, !"BrotliWriteBits: argument 0"}
!353 = distinct !{!353, !"BrotliWriteBits"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"BrotliWriteBits: argument 1"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"BrotliWriteBits: argument 0"}
!358 = distinct !{!358, !"BrotliWriteBits"}
!359 = !{!360}
!360 = distinct !{!360, !358, !"BrotliWriteBits: argument 1"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"BrotliWriteBits: argument 0"}
!363 = distinct !{!363, !"BrotliWriteBits"}
!364 = !{!365}
!365 = distinct !{!365, !363, !"BrotliWriteBits: argument 1"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"BrotliWriteBits: argument 1"}
!368 = distinct !{!368, !"BrotliWriteBits"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"BrotliWriteBits: argument 0"}
!371 = !{!372}
!372 = distinct !{!372, !373, !"BrotliWriteBits: argument 0"}
!373 = distinct !{!373, !"BrotliWriteBits"}
!374 = !{!375}
!375 = distinct !{!375, !373, !"BrotliWriteBits: argument 1"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"BrotliWriteBits: argument 1"}
!378 = distinct !{!378, !"BrotliWriteBits"}
!379 = !{!380}
!380 = distinct !{!380, !378, !"BrotliWriteBits: argument 0"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"BrotliWriteBits: argument 0"}
!383 = distinct !{!383, !"BrotliWriteBits"}
!384 = !{!385}
!385 = distinct !{!385, !383, !"BrotliWriteBits: argument 1"}
!386 = !{!387}
!387 = distinct !{!387, !388, !"BrotliWriteBits: argument 0"}
!388 = distinct !{!388, !"BrotliWriteBits"}
!389 = !{!390}
!390 = distinct !{!390, !388, !"BrotliWriteBits: argument 1"}
!391 = !{!392}
!392 = distinct !{!392, !393, !"BrotliWriteBits: argument 0"}
!393 = distinct !{!393, !"BrotliWriteBits"}
!394 = !{!395}
!395 = distinct !{!395, !393, !"BrotliWriteBits: argument 1"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"BrotliWriteBits: argument 1"}
!398 = distinct !{!398, !"BrotliWriteBits"}
!399 = !{!400}
!400 = distinct !{!400, !398, !"BrotliWriteBits: argument 0"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"BrotliWriteBits: argument 0"}
!403 = distinct !{!403, !"BrotliWriteBits"}
!404 = !{!405}
!405 = distinct !{!405, !403, !"BrotliWriteBits: argument 1"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"BrotliWriteBits: argument 0"}
!408 = distinct !{!408, !"BrotliWriteBits"}
!409 = !{!410}
!410 = distinct !{!410, !408, !"BrotliWriteBits: argument 1"}
!411 = distinct !{!411, !15, !412, !413}
!412 = !{!"llvm.loop.isvectorized", i32 1}
!413 = !{!"llvm.loop.unroll.runtime.disable"}
!414 = distinct !{!414, !15, !413, !412}
!415 = !{!416}
!416 = distinct !{!416, !417, !"BrotliWriteBits: argument 0:Peel0"}
!417 = distinct !{!417, !"BrotliWriteBits"}
!418 = !{!419}
!419 = distinct !{!419, !417, !"BrotliWriteBits: argument 1:Peel0"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"BrotliWriteBits: argument 0:Peel0"}
!422 = distinct !{!422, !"BrotliWriteBits"}
!423 = !{!424}
!424 = distinct !{!424, !422, !"BrotliWriteBits: argument 1:Peel0"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"BrotliWriteBits: argument 0:Peel0"}
!427 = distinct !{!427, !"BrotliWriteBits"}
!428 = !{!429}
!429 = distinct !{!429, !427, !"BrotliWriteBits: argument 1:Peel0"}
!430 = !{!431}
!431 = distinct !{!431, !417, !"BrotliWriteBits: argument 0"}
!432 = !{!433}
!433 = distinct !{!433, !417, !"BrotliWriteBits: argument 1"}
!434 = !{!435}
!435 = distinct !{!435, !422, !"BrotliWriteBits: argument 0"}
!436 = !{!437}
!437 = distinct !{!437, !422, !"BrotliWriteBits: argument 1"}
!438 = !{!439}
!439 = distinct !{!439, !427, !"BrotliWriteBits: argument 0"}
!440 = !{!441}
!441 = distinct !{!441, !427, !"BrotliWriteBits: argument 1"}
!442 = distinct !{!442, !15, !443}
!443 = !{!"llvm.loop.peeled.count", i32 1}
!444 = !{!445}
!445 = distinct !{!445, !446, !"BrotliWriteBits: argument 1"}
!446 = distinct !{!446, !"BrotliWriteBits"}
!447 = !{!448}
!448 = distinct !{!448, !446, !"BrotliWriteBits: argument 0"}
!449 = !{!450}
!450 = distinct !{!450, !451, !"BrotliWriteBits: argument 0"}
!451 = distinct !{!451, !"BrotliWriteBits"}
!452 = !{!453}
!453 = distinct !{!453, !451, !"BrotliWriteBits: argument 1"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"BrotliWriteBits: argument 0"}
!456 = distinct !{!456, !"BrotliWriteBits"}
!457 = !{!458}
!458 = distinct !{!458, !456, !"BrotliWriteBits: argument 1"}
!459 = !{!460}
!460 = distinct !{!460, !461, !"BrotliWriteBits: argument 0"}
!461 = distinct !{!461, !"BrotliWriteBits"}
!462 = !{!463}
!463 = distinct !{!463, !461, !"BrotliWriteBits: argument 1"}
!464 = !{!465}
!465 = distinct !{!465, !466, !"BrotliWriteBits: argument 1"}
!466 = distinct !{!466, !"BrotliWriteBits"}
!467 = !{!468}
!468 = distinct !{!468, !466, !"BrotliWriteBits: argument 0"}
!469 = !{!470}
!470 = distinct !{!470, !471, !"MoveToFrontTransform: argument 0"}
!471 = distinct !{!471, !"MoveToFrontTransform"}
!472 = distinct !{!472, !15, !412, !413}
!473 = distinct !{!473, !15, !412, !413}
!474 = !{!"branch_weights", i32 4, i32 28}
!475 = distinct !{!475, !15, !412, !413}
!476 = distinct !{!476, !15, !413, !412}
!477 = distinct !{!477, !15, !413, !412}
!478 = distinct !{!478, !15}
!479 = distinct !{!479, !15}
!480 = !{!481}
!481 = distinct !{!481, !482, !"RunLengthCodeZeros: argument 0"}
!482 = distinct !{!482, !"RunLengthCodeZeros"}
!483 = !{!484, !485}
!484 = distinct !{!484, !482, !"RunLengthCodeZeros: argument 1"}
!485 = distinct !{!485, !482, !"RunLengthCodeZeros: argument 2"}
!486 = distinct !{!486, !15}
!487 = distinct !{!487, !15}
!488 = distinct !{!488, !15}
!489 = distinct !{!489, !15}
!490 = distinct !{!490, !15}
!491 = distinct !{!491, !15}
!492 = !{!493}
!493 = distinct !{!493, !494, !"BrotliWriteBits: argument 0"}
!494 = distinct !{!494, !"BrotliWriteBits"}
!495 = !{!496}
!496 = distinct !{!496, !494, !"BrotliWriteBits: argument 1"}
!497 = !{!498}
!498 = distinct !{!498, !499, !"BrotliWriteBits: argument 0"}
!499 = distinct !{!499, !"BrotliWriteBits"}
!500 = !{!501}
!501 = distinct !{!501, !499, !"BrotliWriteBits: argument 1"}
!502 = !{!503}
!503 = distinct !{!503, !504, !"BrotliWriteBits: argument 0"}
!504 = distinct !{!504, !"BrotliWriteBits"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"BrotliWriteBits: argument 1"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"BrotliWriteBits: argument 0"}
!509 = distinct !{!509, !"BrotliWriteBits"}
!510 = !{!511}
!511 = distinct !{!511, !509, !"BrotliWriteBits: argument 1"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"BrotliWriteBits: argument 0"}
!514 = distinct !{!514, !"BrotliWriteBits"}
!515 = !{!516}
!516 = distinct !{!516, !514, !"BrotliWriteBits: argument 1"}
!517 = distinct !{!517, !15}
!518 = !{!519}
!519 = distinct !{!519, !520, !"BrotliWriteBits: argument 0"}
!520 = distinct !{!520, !"BrotliWriteBits"}
!521 = !{!522}
!522 = distinct !{!522, !520, !"BrotliWriteBits: argument 1"}
!523 = !{!524}
!524 = distinct !{!524, !525, !"BrotliWriteBits: argument 0"}
!525 = distinct !{!525, !"BrotliWriteBits"}
!526 = !{!527}
!527 = distinct !{!527, !525, !"BrotliWriteBits: argument 1"}
!528 = !{!529}
!529 = distinct !{!529, !530, !"BrotliWriteBits: argument 0"}
!530 = distinct !{!530, !"BrotliWriteBits"}
!531 = !{!532}
!532 = distinct !{!532, !530, !"BrotliWriteBits: argument 1"}
!533 = !{!534}
!534 = distinct !{!534, !535, !"BrotliWriteBits: argument 0"}
!535 = distinct !{!535, !"BrotliWriteBits"}
!536 = !{!537}
!537 = distinct !{!537, !535, !"BrotliWriteBits: argument 1"}
!538 = !{!539, !540, i64 1032}
!539 = !{!"HistogramLiteral", !7, i64 0, !10, i64 1024, !540, i64 1032}
!540 = !{!"double", !7, i64 0}
!541 = !{!542, !540, i64 2824}
!542 = !{!"HistogramCommand", !7, i64 0, !10, i64 2816, !540, i64 2824}
!543 = !{!544, !540, i64 2184}
!544 = !{!"HistogramDistance", !7, i64 0, !10, i64 2176, !540, i64 2184}
!545 = !{!542, !10, i64 2816}
!546 = !{!539, !10, i64 1024}
!547 = distinct !{!547, !15}
!548 = !{!544, !10, i64 2176}
!549 = distinct !{!549, !15}
!550 = !{!551}
!551 = distinct !{!551, !552, !"BrotliWriteBits: argument 0"}
!552 = distinct !{!552, !"BrotliWriteBits"}
!553 = !{!554}
!554 = distinct !{!554, !552, !"BrotliWriteBits: argument 1"}
!555 = distinct !{!555, !15}
!556 = !{!557}
!557 = distinct !{!557, !558, !"BrotliWriteBits: argument 0"}
!558 = distinct !{!558, !"BrotliWriteBits"}
!559 = !{!560}
!560 = distinct !{!560, !558, !"BrotliWriteBits: argument 1"}
!561 = !{!562}
!562 = distinct !{!562, !563, !"BrotliWriteBits: argument 0"}
!563 = distinct !{!563, !"BrotliWriteBits"}
!564 = !{!565}
!565 = distinct !{!565, !563, !"BrotliWriteBits: argument 1"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"BrotliWriteBits: argument 0"}
!568 = distinct !{!568, !"BrotliWriteBits"}
!569 = !{!570}
!570 = distinct !{!570, !568, !"BrotliWriteBits: argument 1"}
!571 = !{!572}
!572 = distinct !{!572, !573, !"BrotliWriteBits: argument 0"}
!573 = distinct !{!573, !"BrotliWriteBits"}
!574 = !{!575}
!575 = distinct !{!575, !573, !"BrotliWriteBits: argument 1"}
!576 = distinct !{!576, !15}
!577 = !{!578}
!578 = distinct !{!578, !579, !"BrotliWriteBits: argument 0"}
!579 = distinct !{!579, !"BrotliWriteBits"}
!580 = !{!581}
!581 = distinct !{!581, !579, !"BrotliWriteBits: argument 1"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"BrotliWriteBits: argument 1"}
!584 = distinct !{!584, !"BrotliWriteBits"}
!585 = !{!586}
!586 = distinct !{!586, !584, !"BrotliWriteBits: argument 0"}
!587 = !{!588}
!588 = distinct !{!588, !589, !"BrotliWriteBits: argument 0"}
!589 = distinct !{!589, !"BrotliWriteBits"}
!590 = !{!591}
!591 = distinct !{!591, !589, !"BrotliWriteBits: argument 1"}
!592 = !{!593}
!593 = distinct !{!593, !594, !"BrotliWriteBits: argument 0"}
!594 = distinct !{!594, !"BrotliWriteBits"}
!595 = !{!596}
!596 = distinct !{!596, !594, !"BrotliWriteBits: argument 1"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"BrotliWriteBits: argument 1"}
!599 = distinct !{!599, !"BrotliWriteBits"}
!600 = !{!601}
!601 = distinct !{!601, !599, !"BrotliWriteBits: argument 0"}
!602 = !{!603}
!603 = distinct !{!603, !604, !"BrotliWriteBits: argument 0"}
!604 = distinct !{!604, !"BrotliWriteBits"}
!605 = !{!606}
!606 = distinct !{!606, !604, !"BrotliWriteBits: argument 1"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"BrotliWriteBits: argument 0"}
!609 = distinct !{!609, !"BrotliWriteBits"}
!610 = !{!611}
!611 = distinct !{!611, !609, !"BrotliWriteBits: argument 1"}
!612 = !{!613}
!613 = distinct !{!613, !614, !"BrotliWriteBits: argument 0"}
!614 = distinct !{!614, !"BrotliWriteBits"}
!615 = !{!616}
!616 = distinct !{!616, !614, !"BrotliWriteBits: argument 1"}
!617 = !{!618}
!618 = distinct !{!618, !619, !"BrotliWriteBits: argument 0"}
!619 = distinct !{!619, !"BrotliWriteBits"}
!620 = !{!621}
!621 = distinct !{!621, !619, !"BrotliWriteBits: argument 1"}
!622 = !{!623}
!623 = distinct !{!623, !624, !"BrotliWriteBits: argument 1"}
!624 = distinct !{!624, !"BrotliWriteBits"}
!625 = !{!626}
!626 = distinct !{!626, !624, !"BrotliWriteBits: argument 0"}
!627 = !{!628}
!628 = distinct !{!628, !629, !"BrotliWriteBits: argument 0"}
!629 = distinct !{!629, !"BrotliWriteBits"}
!630 = !{!631}
!631 = distinct !{!631, !629, !"BrotliWriteBits: argument 1"}
!632 = !{!633}
!633 = distinct !{!633, !634, !"BrotliWriteBits: argument 0"}
!634 = distinct !{!634, !"BrotliWriteBits"}
!635 = !{!636}
!636 = distinct !{!636, !634, !"BrotliWriteBits: argument 1"}
!637 = !{!638}
!638 = distinct !{!638, !639, !"BrotliWriteBits: argument 0"}
!639 = distinct !{!639, !"BrotliWriteBits"}
!640 = !{!641}
!641 = distinct !{!641, !639, !"BrotliWriteBits: argument 1"}
!642 = distinct !{!642, !15}
!643 = !{!644}
!644 = distinct !{!644, !645, !"BrotliWriteBits: argument 0"}
!645 = distinct !{!645, !"BrotliWriteBits"}
!646 = !{!647}
!647 = distinct !{!647, !645, !"BrotliWriteBits: argument 1"}
!648 = !{!649}
!649 = distinct !{!649, !650, !"BrotliWriteBits: argument 0"}
!650 = distinct !{!650, !"BrotliWriteBits"}
!651 = !{!652}
!652 = distinct !{!652, !650, !"BrotliWriteBits: argument 1"}
!653 = distinct !{!653, !15}
!654 = !{!655}
!655 = distinct !{!655, !656, !"BrotliWriteBits: argument 0"}
!656 = distinct !{!656, !"BrotliWriteBits"}
!657 = !{!658}
!658 = distinct !{!658, !656, !"BrotliWriteBits: argument 1"}
!659 = distinct !{!659, !15}
!660 = distinct !{!660, !15}
!661 = !{!662}
!662 = distinct !{!662, !663, !"BrotliWriteBits: argument 0"}
!663 = distinct !{!663, !"BrotliWriteBits"}
!664 = !{!665}
!665 = distinct !{!665, !663, !"BrotliWriteBits: argument 1"}
!666 = !{!667}
!667 = distinct !{!667, !668, !"BrotliWriteBits: argument 0"}
!668 = distinct !{!668, !"BrotliWriteBits"}
!669 = !{!670}
!670 = distinct !{!670, !668, !"BrotliWriteBits: argument 1"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"BrotliWriteBits: argument 0"}
!673 = distinct !{!673, !"BrotliWriteBits"}
!674 = !{!675}
!675 = distinct !{!675, !673, !"BrotliWriteBits: argument 1"}
!676 = !{!677, !10, i64 3856}
!677 = !{!"MetablockArena", !539, i64 0, !542, i64 1040, !544, i64 3872, !7, i64 6064, !7, i64 6320, !7, i64 6832, !7, i64 7536, !7, i64 8944, !7, i64 9084, !7, i64 9364}
!678 = !{!677, !10, i64 6048}
!679 = !{!680}
!680 = distinct !{!680, !681, !"BrotliWriteBits: argument 0"}
!681 = distinct !{!681, !"BrotliWriteBits"}
!682 = !{!683}
!683 = distinct !{!683, !681, !"BrotliWriteBits: argument 1"}
!684 = !{!685}
!685 = distinct !{!685, !686, !"BrotliWriteBits: argument 1"}
!686 = distinct !{!686, !"BrotliWriteBits"}
!687 = !{!688}
!688 = distinct !{!688, !686, !"BrotliWriteBits: argument 0"}
!689 = !{!690}
!690 = distinct !{!690, !691, !"BrotliWriteBits: argument 1"}
!691 = distinct !{!691, !"BrotliWriteBits"}
!692 = !{!693}
!693 = distinct !{!693, !691, !"BrotliWriteBits: argument 0"}
!694 = !{!695}
!695 = distinct !{!695, !696, !"BrotliWriteBits: argument 1"}
!696 = distinct !{!696, !"BrotliWriteBits"}
!697 = !{!698}
!698 = distinct !{!698, !696, !"BrotliWriteBits: argument 0"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"BrotliWriteBits: argument 0"}
!701 = distinct !{!701, !"BrotliWriteBits"}
!702 = !{!703}
!703 = distinct !{!703, !704, !"BrotliWriteBits: argument 1"}
!704 = distinct !{!704, !"BrotliWriteBits"}
!705 = !{!706}
!706 = distinct !{!706, !704, !"BrotliWriteBits: argument 0"}
end_hunk_1
