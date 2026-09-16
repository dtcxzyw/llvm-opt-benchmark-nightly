Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_block_decoder_ssse3?download=true
inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ojph5localL8rev_initEPNS0_10rev_structEPhii:bb.a
  store ptr %i.ao, ptr %0, align 8, !tbaa !37
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl i32 %i.aq, %i.an
  %i.as = or i32 %i.ar, %i.al                     ; 3 uses
  %i.at = add nsw i32 %i.ag, -2                   ; 3 uses
  store i32 %i.at, ptr %i.e, align 4, !tbaa !30
  %i.au = add nsw i32 %.04446.i, -16              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !2

.loopexit.i.sink.split:                           ; preds = %bb.c, %.thread41
  %.sink = phi i32 [ %i.v, %.thread41 ], [ %i.ac, %bb.c ]
  %.ph = phi i64 [ %i.i, %.thread41 ], [ %.lcssa56, %bb.c ]
  %.ph46 = phi i1 [ %i.o, %.thread41 ], [ %.lcssa54, %bb.c ]
  %.ph47 = phi i32 [ %i.m, %.thread41 ], [ %.lcssa55, %bb.c ]
  %.1.i.ph = phi i32 [ 0, %.thread41 ], [ %i.aa, %bb.c ]
  store i32 %.sink, ptr %i.e, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.epil.init = phi ptr [ %.lcssa57, %.preheader.i.preheader ], [ %i.ao, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.047.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.as, %.loopexit.i.loopexit.unr-lcssa ]
  %.04446.i.epil.init = phi i32 [ 24, %.preheader.i.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init60 = phi i32 [ %i.w, %.preheader.i.preheader ], [ %i.at, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.av = getelementptr inbounds i8, ptr %.epil.init, i64 -1
  store ptr %i.av, ptr %0, align 8, !tbaa !37
  %i.aw = load i8, ptr %.epil.init, align 1, !tbaa !12
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl i32 %i.ax, %.04446.i.epil.init
  %i.az = or i32 %i.ay, %.047.i.epil.init
  %i.ba = add nsw i32 %.epil.init60, -1
  store i32 %i.ba, ptr %i.e, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.loopexit.i.sink.split, %bb.d
  %i.bb = phi i64 [ %.ph, %.loopexit.i.sink.split ], [ %.lcssa56, %bb.d ], [ %.lcssa56, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa56, %.preheader.i.epil.preheader ]
  %i.bc = phi i1 [ %.ph46, %.loopexit.i.sink.split ], [ %.lcssa54, %bb.d ], [ %.lcssa54, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa54, %.preheader.i.epil.preheader ]
  %i.bd = phi i32 [ %.ph47, %.loopexit.i.sink.split ], [ %.lcssa55, %bb.d ], [ %.lcssa55, %.loopexit.i.loopexit.unr-lcssa ], [ %.lcssa55, %.preheader.i.epil.preheader ] ; 2 uses
  %.1.i = phi i32 [ %.1.i.ph, %.loopexit.i.sink.split ], [ 0, %bb.d ], [ %i.as, %.loopexit.i.loopexit.unr-lcssa ], [ %i.az, %.preheader.i.epil.preheader ] ; 9 uses
  %i.be = lshr i32 %.1.i, 24
  %i.bf = and i32 %.1.i, 2130706432
  %i.bg = icmp eq i32 %i.bf, 2130706432
  %i.bh = select i1 %i.bc, i1 %i.bg, i1 false
  %i.bi = select i1 %i.bh, i32 7, i32 8           ; 2 uses
  %i.bj = icmp ugt i32 %.1.i, -1879048193
  %i.bk = lshr i32 %.1.i, 16
  %i.bl = and i32 %i.bk, 255                      ; 2 uses
  %i.bm = shl nuw nsw i32 %i.bl, %i.bi
  %i.bn = or i32 %i.bm, %i.be
  %i.bo = and i32 %.1.i, 8323072
  %i.bp = icmp eq i32 %i.bo, 8323072
  %i.bq = and i1 %i.bj, %i.bp
  %i.br = select i1 %i.bq, i32 7, i32 8
  %i.bs = add nuw nsw i32 %i.bi, %i.br            ; 2 uses
  %i.bt = icmp samesign ugt i32 %i.bl, 143
  %i.bu = lshr i32 %.1.i, 8
  %i.bv = and i32 %i.bu, 255                      ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, %i.bs
  %i.bx = or i32 %i.bn, %i.bw
  %i.by = and i32 %.1.i, 32512
  %i.bz = icmp eq i32 %i.by, 32512
  %i.ca = select i1 %i.bt, i1 %i.bz, i1 false
  %i.cb = select i1 %i.ca, i32 7, i32 8
  %i.cc = add nuw nsw i32 %i.bs, %i.cb            ; 2 uses
  %i.cd = icmp samesign ugt i32 %i.bv, 143
  %i.ce = and i32 %.1.i, 255                      ; 2 uses
  %i.cf = shl nuw i32 %i.ce, %i.cc
  %i.cg = or i32 %i.bx, %i.cf
  %i.ch = and i32 %.1.i, 127
  %i.ci = icmp eq i32 %i.ch, 127
  %i.cj = select i1 %i.cd, i1 %i.ci, i1 false
  %i.ck = select i1 %i.cj, i32 7, i32 8
  %i.cl = icmp samesign ugt i32 %i.ce, 143
  %i.cm = zext i1 %i.cl to i8
  %i.cn = zext i32 %i.cg to i64
  %i.co = zext nneg i32 %i.bd to i64
  %i.cp = shl nuw i64 %i.cn, %i.co
  %i.cq = or i64 %i.cp, %i.bb
  store i64 %i.cq, ptr %i.j, align 8, !tbaa !22
  %i.cr = add nuw nsw i32 %i.ck, %i.bd
  %i.cs = add nuw nsw i32 %i.cr, %i.cc
  store i32 %i.cs, ptr %i.n, align 8, !tbaa !23
  store i8 %i.cm, ptr %i.p, align 8, !tbaa !31
  br label %_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit

_ZN4ojph5localL8rev_readEPNS0_10rev_structE.exit: ; preds = %._crit_edge, %.loopexit.i
  ret void

.lr.ph:                                           ; preds = %bb.a
  %i.ct = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 4 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !37
  %i.cu = load i8, ptr %i.f, align 1, !tbaa !12   ; 2 uses
  %i.cv = zext i8 %i.cu to i64                    ; 2 uses
  %i.cw = and i64 %i.cv, 127
  %i.cx = icmp eq i64 %i.cw, 127
  %i.cy = select i1 %i.o, i1 %i.cx, i1 false
  %i.cz = select i1 %i.cy, i32 7, i32 8
  %i.da = zext nneg i32 %i.m to i64
  %i.db = shl nuw nsw i64 %i.cv, %i.da
  %i.dc = or i64 %i.db, %i.i                      ; 3 uses
  store i64 %i.dc, ptr %i.j, align 8, !tbaa !22
  %i.dd = add nuw nsw i32 %i.cz, %i.m             ; 4 uses
  store i32 %i.dd, ptr %i.n, align 8, !tbaa !23
  %i.de = icmp ugt i8 %i.cu, -113                 ; 3 uses
  %i.df = zext i1 %i.de to i8
  store i8 %i.df, ptr %i.p, align 8, !tbaa !31
  %exitcond.not = icmp eq i32 %., 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.dg = getelementptr inbounds i8, ptr %i.b, i64 -5 ; 4 uses
  store ptr %i.dg, ptr %0, align 8, !tbaa !37
  %i.dh = load i8, ptr %i.ct, align 1, !tbaa !12  ; 2 uses
  %i.di = zext i8 %i.dh to i64                    ; 2 uses
  %i.dj = and i64 %i.di, 127
  %i.dk = icmp eq i64 %i.dj, 127
  %i.dl = select i1 %i.de, i1 %i.dk, i1 false
  %i.dm = select i1 %i.dl, i32 7, i32 8
  %i.dn = zext nneg i32 %i.dd to i64
  %i.do = shl nuw nsw i64 %i.di, %i.dn
  %i.dp = or i64 %i.do, %i.dc                     ; 3 uses
  store i64 %i.dp, ptr %i.j, align 8, !tbaa !22
  %i.dq = add nuw nsw i32 %i.dm, %i.dd            ; 4 uses
  store i32 %i.dq, ptr %i.n, align 8, !tbaa !23
  %i.dr = icmp ugt i8 %i.dh, -113                 ; 3 uses
  %i.ds = zext i1 %i.dr to i8
  store i8 %i.ds, ptr %i.p, align 8, !tbaa !31
  %exitcond.not.1 = icmp eq i32 %., 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.dt = getelementptr inbounds i8, ptr %i.b, i64 -6 ; 4 uses
  store ptr %i.dt, ptr %0, align 8, !tbaa !37
  %i.du = load i8, ptr %i.dg, align 1, !tbaa !12  ; 2 uses
  %i.dv = zext i8 %i.du to i64                    ; 2 uses
  %i.dw = and i64 %i.dv, 127
  %i.dx = icmp eq i64 %i.dw, 127
  %i.dy = select i1 %i.dr, i1 %i.dx, i1 false
  %i.dz = select i1 %i.dy, i32 7, i32 8
  %i.ea = zext nneg i32 %i.dq to i64
  %i.eb = shl i64 %i.dv, %i.ea
  %i.ec = or i64 %i.eb, %i.dp                     ; 3 uses
  store i64 %i.ec, ptr %i.j, align 8, !tbaa !22
  %i.ed = add nuw nsw i32 %i.dz, %i.dq            ; 4 uses
  store i32 %i.ed, ptr %i.n, align 8, !tbaa !23
  %i.ee = icmp ugt i8 %i.du, -113                 ; 3 uses
  %i.ef = zext i1 %i.ee to i8
  store i8 %i.ef, ptr %i.p, align 8, !tbaa !31
  %exitcond.not.2 = icmp eq i32 %., 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.eg = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 2 uses
  store ptr %i.eg, ptr %0, align 8, !tbaa !37
  %i.eh = load i8, ptr %i.dt, align 1, !tbaa !12  ; 2 uses
  %i.ei = zext i8 %i.eh to i64                    ; 2 uses
  %i.ej = and i64 %i.ei, 127
  %i.ek = icmp eq i64 %i.ej, 127
  %i.el = select i1 %i.ee, i1 %i.ek, i1 false
  %i.em = select i1 %i.el, i32 7, i32 8
  %i.en = zext nneg i32 %i.ed to i64
  %i.eo = shl i64 %i.ei, %i.en
  %i.ep = or i64 %i.eo, %i.ec                     ; 2 uses
  store i64 %i.ep, ptr %i.j, align 8, !tbaa !22
  %i.eq = add nuw nsw i32 %i.em, %i.ed            ; 2 uses
  store i32 %i.eq, ptr %i.n, align 8, !tbaa !23
  %i.er = icmp ugt i8 %i.eh, -113                 ; 2 uses
  %i.es = zext i1 %i.er to i8
  store i8 %i.es, ptr %i.p, align 8, !tbaa !31
  br label %._crit_edge
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 128) i32 @_ZN4ojph5localL11mel_get_runEPNS0_10dec_mel_stE(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 3 uses
  %i.f = icmp slt i32 %i.e, 6
  br i1 %i.f, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !34
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = icmp sgt i32 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.l, ptr %0, align 8, !tbaa !32
  %i.m = add nsw i32 %i.h, -4
  br label %.sink.split.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %i.h, 0
  br i1 %i.n, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.h, 1
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.pre.i.i, %.preheader.i.i ] ; 2 uses
  %.05357.i.i.a = phi i32 [ %i.x, %.lr.ph.i.i ], [ -1, %.preheader.i.i ]
  %i.p = phi i32 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %niter = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.h, %.preheader.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !32
  %i.r = load i8, ptr %i.o, align 1, !tbaa !12
  %i.s = zext i8 %i.r to i32
  %i.t = shl i32 255, %i.p
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %.05357.i.i.a, %i.u
  %i.w = shl i32 %i.s, %i.p
  %i.x = or i32 %i.w, %i.v                        ; 2 uses
  %i.y = add nsw i32 %niter, -1                   ; 2 uses
  store i32 %i.y, ptr %i.g, align 4, !tbaa !36
  %niter.next.1 = add nuw nsw i32 %i.p, 8         ; 2 uses
  %1 = icmp samesign ugt i32 %niter, 2
  br i1 %1, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.z = phi ptr [ %.pre.i.i, %.preheader.i.i ], [ %i.q, %.lr.ph.i.i ] ; 2 uses
  %.053.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %niter.next.1, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i32 [ -1, %.preheader.i.i ], [ %i.x, %.lr.ph.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %0, align 8, !tbaa !32
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !12
  %i.ac = or i8 %i.ab, 15
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl i32 255, %.053.lcssa.i.i
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %.0.lcssa.i.i, %i.af
  %i.ah = shl i32 %i.ad, %.053.lcssa.i.i
  %i.ai = or i32 %i.ah, %i.ag
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i, %bb.d
  %.sink.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.m, %bb.d ]
  %.1.ph.i.i = phi i32 [ %i.ai, %._crit_edge.i.i ], [ %i.k, %bb.d ]
  store i32 %.sink.i.i, ptr %i.g, align 4, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i, %bb.e
  %.1.i.i = phi i32 [ -1, %bb.e ], [ %.1.ph.i.i, %.sink.split.i.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !35, !range !38, !noundef !39
  %narrow.i.i = sub nuw nsw i8 32, %i.ak
  %i.al = zext nneg i8 %narrow.i.i to i32
  %i.am = and i32 %.1.i.i, 255                    ; 2 uses
  %i.an = icmp eq i32 %i.am, 255                  ; 2 uses
  %.neg.i.i = sext i1 %i.an to i32
  %i.ao = select i1 %i.an, i32 7, i32 8
  %i.ap = shl nuw nsw i32 %i.am, %i.ao
  %i.aq = lshr i32 %.1.i.i, 8
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = or i32 %i.ap, %i.ar
  %i.at = icmp eq i32 %i.ar, 255                  ; 2 uses
  %.neg55.i.i = sext i1 %i.at to i32
  %i.au = select i1 %i.at, i32 7, i32 8
  %i.av = shl nuw nsw i32 %i.as, %i.au
  %i.aw = lshr i32 %.1.i.i, 16
  %i.ax = and i32 %i.aw, 255                      ; 2 uses
  %i.ay = or i32 %i.av, %i.ax
  %i.az = icmp eq i32 %i.ax, 255                  ; 2 uses
  %.neg56.i.i = sext i1 %i.az to i32
  %i.ba = select i1 %i.az, i32 7, i32 8
  %i.bb = shl nuw i32 %i.ay, %i.ba
  %i.bc = lshr i32 %.1.i.i, 24                    ; 2 uses
  %i.bd = or i32 %i.bb, %i.bc
  %i.be = icmp eq i32 %i.bc, 255
  %i.bf = zext i1 %i.be to i8
  store i8 %i.bf, ptr %i.aj, align 8, !tbaa !35
  %i.bg = zext i32 %i.bd to i64
  %i.bh = add nsw i32 %i.e, %i.al
  %i.bi = add nsw i32 %i.bh, %.neg.i.i
  %i.bj = add nsw i32 %i.bi, %.neg55.i.i
  %i.bk = add nsw i32 %i.bj, %.neg56.i.i          ; 4 uses
  %i.bl = sub i32 64, %i.bk
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl i64 %i.bg, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !34
  %i.bq = or i64 %i.bn, %i.bp                     ; 2 uses
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !34
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !33
  %i.br = icmp sgt i32 %i.bk, 5
  br i1 %i.br, label %.lr.ph.i, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %bb.f
  %i.bs = phi i64 [ %i.bq, %bb.f ], [ %.pre, %..lr.ph.i_crit_edge ] ; 3 uses
  %.promoted51.i = phi i32 [ %i.bk, %bb.f ], [ %i.e, %..lr.ph.i_crit_edge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !18 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25 ; 4 uses
  %.not.i = icmp sgt i64 %i.bs, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %notmask33.i = shl nsw i32 -1, %i.bz
  %i.ca = xor i32 %notmask33.i, -1
  %i.cb = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 11)
  %spec.select.i = add nsw i32 %i.cb, 1
  %i.cc = add nsw i32 %.promoted51.i, -1
  %i.cd = shl nuw i32 %i.ca, 1
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ce = sub nsw i32 63, %i.bz
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 %i.bs, %i.cf
  %i.ch = trunc i64 %i.cg to i32
  %notmask.i = shl nsw i32 -1, %i.bz
  %i.ci = xor i32 %notmask.i, -1
  %i.cj = and i32 %i.ch, %i.ci
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %spec.select34.i = add nsw i32 %i.ck, -1
  %i.cl = add nsw i32 %i.bz, 1                    ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = sub nsw i32 %.promoted51.i, %i.cl
  %i.co = shl nuw i32 %i.cj, 1
  %i.cp = or disjoint i32 %i.co, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cq = phi i32 [ %spec.select34.i, %bb.h ], [ %spec.select.i, %bb.g ] ; 4 uses
  %.pn.i = phi i64 [ %i.cm, %bb.h ], [ 1, %bb.g ]
  %.sink.i = phi i32 [ %i.cn, %bb.h ], [ %i.cc, %bb.g ] ; 4 uses
  %.0.i = phi i32 [ %i.cp, %bb.h ], [ %i.cd, %bb.g ]
  %.sink41.i = shl i64 %i.bs, %.pn.i              ; 4 uses
  store i32 %i.cq, ptr %i.bt, align 4, !tbaa !18
  store i64 %.sink41.i, ptr %i.bu, align 8, !tbaa !34
  store i32 %.sink.i, ptr %i.d, align 8, !tbaa !33
  %i.cr = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.cs = and i64 %i.cr, -64
  %i.ct = sext i32 %.0.i to i64
  %i.cu = or i64 %i.cs, %i.ct                     ; 2 uses
  store i64 %i.cu, ptr %i.bv, align 8, !tbaa !20
  %i.cv = icmp sgt i32 %.sink.i, 5
  br i1 %i.cv, label %bb.j, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.j:                                             ; preds = %bb.i
  %i.cw = sext i32 %i.cq to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !25 ; 4 uses
  %.not.i.1 = icmp sgt i64 %.sink41.i, -1
  br i1 %.not.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %notmask33.i.1 = shl nsw i32 -1, %i.cy
  %i.cz = xor i32 %notmask33.i.1, -1
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 11)
  %spec.select.i.1 = add nsw i32 %i.da, 1
  %i.db = add nsw i32 %.sink.i, -1
  %i.dc = shl nuw i32 %i.cz, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dd = sub nsw i32 63, %i.cy
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = lshr i64 %.sink41.i, %i.de
  %i.dg = trunc i64 %i.df to i32
  %notmask.i.1 = shl nsw i32 -1, %i.cy
  %i.dh = xor i32 %notmask.i.1, -1
  %i.di = and i32 %i.dg, %i.dh
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %spec.select34.i.1 = add nsw i32 %i.dj, -1
  %i.dk = add nsw i32 %i.cy, 1                    ; 2 uses
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = sub nsw i32 %.sink.i, %i.dk
  %i.dn = shl nuw i32 %i.di, 1
  %i.do = or disjoint i32 %i.dn, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dp = phi i32 [ %spec.select34.i.1, %bb.l ], [ %spec.select.i.1, %bb.k ] ; 4 uses
  %.pn.i.1 = phi i64 [ %i.dl, %bb.l ], [ 1, %bb.k ]
  %.sink.i.1 = phi i32 [ %i.dm, %bb.l ], [ %i.db, %bb.k ] ; 4 uses
  %.0.i.1 = phi i32 [ %i.do, %bb.l ], [ %i.dc, %bb.k ]
  %.sink41.i.1 = shl i64 %.sink41.i, %.pn.i.1     ; 4 uses
  store i32 %i.dp, ptr %i.bt, align 4, !tbaa !18
  store i64 %.sink41.i.1, ptr %i.bu, align 8, !tbaa !34
  store i32 %.sink.i.1, ptr %i.d, align 8, !tbaa !33
  %i.dq = and i64 %i.cu, -8065
  %i.dr = sext i32 %.0.i.1 to i64
  %i.ds = shl nsw i64 %i.dr, 7
  %i.dt = or i64 %i.dq, %i.ds                     ; 2 uses
  store i64 %i.dt, ptr %i.bv, align 8, !tbaa !20
  %i.du = icmp sgt i32 %.sink.i.1, 5
  br i1 %i.du, label %bb.n, label %_ZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stE.exit

bb.n:                                             ; preds = %bb.m
  %i.dv = sext i32 %i.dp to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr @_ZZN4ojph5localL10mel_decodeEPNS0_10dec_mel_stEE7mel_exp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !25 ; 4 uses
  %.not.i.2 = icmp sgt i64 %.sink41.i.1, -1
  br i1 %.not.i.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %notmask33.i.2 = shl nsw i32 -1, %i.dx
  %i.dy = xor i32 %notmask33.i.2, -1
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 11)
  %spec.select.i.2 = add nsw i32 %i.dz, 1
  %i.ea = add nsw i32 %.sink.i.1, -1
  %i.eb = shl nuw i32 %i.dy, 1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ec = sub nsw i32 63, %i.dx
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %.sink41.i.1, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %notmask.i.2 = shl nsw i32 -1, %i.dx
  %i.eg = xor i32 %notmask.i.2, -1
  %i.eh = and i32 %i.ef, %i.eg
  %i.ei = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1)
  %spec.select34.i.2 = add nsw i32 %i.ei, -1
  %i.ej = add nsw i32 %i.dx, 1                    ; 2 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = sub nsw i32 %.sink.i.1, %i.ej
  %i.em = shl nuw i32 %i.eh, 1
  %i.en = or disjoint i32 %i.em, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eo = phi i32 [ %spec.select34.i.2, %bb.p ], [ %spec.select.i.2, %bb.o ] ; 4 uses
  %.pn.i.2 = phi i64 [ %i.ek, %bb.p ], [ 1, %bb.o ]
  %.sink.i.2 = phi i32 [ %i.el, %bb.p ], [ %i.ea, %bb.o ] ; 4 uses
  %.0.i.2 = phi i32 [ %i.en, %bb.p ], [ %i.eb, %bb.o ]
  %.sink41.i.2 = shl i64 %.sink41.i.1, %.pn.i.2   ; 4 uses
end_hunk_0
