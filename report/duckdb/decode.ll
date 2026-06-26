inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@_ZN13duckdb_brotliL15ProcessCommandsEPNS_24BrotliDecoderStateStructE:bb.a
_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i: ; preds = %bb.aj, %bb.ai
  %i.ld = phi i64 [ %i.lb, %bb.aj ], [ %i.kw, %bb.ai ] ; 2 uses
  %i.le = phi i64 [ %i.la, %bb.aj ], [ %.pre242, %bb.ai ] ; 3 uses
  %i.lf = and i64 %i.le, 255
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.lf ; 4 uses
  %i.lh = load i8, ptr %i.lg, align 2, !tbaa !73  ; 3 uses
  %i.li = icmp ugt i8 %i.lh, 8
  br i1 %i.li, label %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19, label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17

_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19:       ; preds = %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.lj = add i64 %i.ld, -8
  %i.lk = lshr i64 %i.le, 8                       ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !75
  %i.ln = zext i16 %i.lm to i64
  %i.lo = zext i8 %i.lh to i64
  %i.lp = add nuw nsw i64 %i.lo, 4294967288
  %i.lq = and i64 %i.lp, 4294967295
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !32
  %i.lt = and i64 %i.ls, %i.lk
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lt
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.ln ; 2 uses
  %.pre243 = load i8, ptr %i.lv, align 2, !tbaa !73
  br label %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17

_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17: ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i
  %i.lw = phi i64 [ %i.lk, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.le, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.lx = phi i64 [ %i.lj, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.ld, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.ly = phi i8 [ %.pre243, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.lh, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %.0.i.i27.i = phi ptr [ %i.lv, %_ZN13duckdb_brotliL7BitMaskEm.exit.i.i.i19 ], [ %i.lg, %_ZN13duckdb_brotliL23BrotliGet16BitsUnmaskedEPNS_15BrotliBitReaderE.exit.i ]
  %i.lz = zext i8 %i.ly to i64                    ; 2 uses
  %i.ma = sub i64 %i.lx, %i.lz                    ; 5 uses
  store i64 %i.ma, ptr %i.kv, align 8, !tbaa !53
  %i.mb = lshr i64 %i.lw, %i.lz                   ; 3 uses
  store i64 %i.mb, ptr %i.e, align 8, !tbaa !54
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i.i27.i, i64 2
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !75 ; 6 uses
  %i.me = zext i16 %i.md to i64                   ; 2 uses
  %i.mf = load i64, ptr %i.kk, align 8, !tbaa !32
  %i.mg = add i64 %i.mf, -1
  store i64 %i.mg, ptr %i.kk, align 8, !tbaa !32
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  store i32 0, ptr %i.mh, align 4, !tbaa !169
  %i.mi = icmp ult i16 %i.md, 16
  br i1 %i.mi, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17
  %i.mj = zext nneg i16 %i.md to i32              ; 3 uses
  store i32 %i.mj, ptr %i.jx, align 8, !tbaa !168
  %i.mk = icmp samesign ult i16 %i.md, 4
  br i1 %i.mk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.neg.i = xor i32 %i.mj, -1
  %i.ml = icmp eq i16 %i.md, 0
  %i.mm = zext i1 %i.ml to i32                    ; 3 uses
  store i32 %i.mm, ptr %i.mh, align 4, !tbaa !169
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !176 ; 2 uses
  %i.mq = add i32 %i.mp, %.neg.i
  %i.mr = and i32 %i.mq, 3
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3  ; 2 uses
  store i32 %i.mu, ptr %i.jx, align 8, !tbaa !168
  %i.mv = sub nsw i32 %i.mp, %i.mm
  store i32 %i.mv, ptr %i.mo, align 4, !tbaa !176
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.am:                                            ; preds = %bb.ak
  %i.mw = icmp samesign ult i16 %i.md, 10         ; 2 uses
  %.020.i = select i1 %i.mw, i32 3, i32 2
  %.0.i22.v = select i1 %i.mw, i32 -4, i32 -10
  %.0.i22 = add nsw i32 %.0.i22.v, %i.mj
  %i.mx = shl nsw i32 %.0.i22, 2
  %i.my = lshr i32 6312258, %i.mx
  %i.mz = and i32 %i.my, 7
  %i.na = add nsw i32 %i.mz, -3
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !176
  %i.ne = add nsw i32 %i.nd, %.020.i
  %i.nf = and i32 %i.ne, 3
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !3
  %i.nj = add nsw i32 %i.na, %i.ni                ; 2 uses
  %i.nk = icmp slt i32 %i.nj, 1
  %storemerge.i = select i1 %i.nk, i32 2147483647, i32 %i.nj ; 2 uses
  store i32 %storemerge.i, ptr %i.jx, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.an:                                            ; preds = %_ZN13duckdb_brotliL10ReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderE.exit.i17
  %i.nl = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.me
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !51
  %i.nn = zext i8 %i.nm to i64                    ; 3 uses
  %i.no = icmp ult i64 %i.ma, 33
  br i1 %i.no, label %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split, label %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit

_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split: ; preds = %bb.an
  %i.np = load ptr, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.nr = add nuw nsw i64 %i.ma, 32
  %.0.copyload.i4.i = load i32, ptr %i.np, align 1
  %i.ns = zext i32 %.0.copyload.i4.i to i64
  %.pn = shl i64 %i.ns, %i.ma
  %.ph373 = or i64 %.pn, %i.mb
  store ptr %i.nq, ptr %i.j, align 8, !tbaa !47
  br label %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit

_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit: ; preds = %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split, %bb.an
  %i.nt = phi i64 [ %i.nr, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split ], [ %i.ma, %bb.an ]
  %i.nu = phi i64 [ %.ph373, %_ZN13duckdb_brotliL19BrotliFillBitWindowEPNS_15BrotliBitReaderEm.exit.i.sink.split ], [ %i.mb, %bb.an ] ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.nn
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !32
  %i.nx = and i64 %i.nw, %i.nu
  %i.ny = sub i64 %i.nt, %i.nn
  store i64 %i.ny, ptr %i.kv, align 8, !tbaa !53
  %i.nz = lshr i64 %i.nu, %i.nn
  store i64 %i.nz, ptr %i.e, align 8, !tbaa !54
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.me
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !32
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !81
  %i.of = shl i64 %i.nx, %i.oe
  %i.og = add i64 %i.of, %i.oc
  %i.oh = trunc i64 %i.og to i32                  ; 2 uses
  store i32 %i.oh, ptr %i.jx, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit: ; preds = %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit, %bb.al, %bb.am, %bb.af
  %i.oi = phi i32 [ 0, %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit ], [ %i.mm, %bb.al ], [ 0, %bb.am ], [ %i.ka, %bb.af ]
  %i.oj = phi i32 [ %i.oh, %_ZN13duckdb_brotliL16BrotliReadBits32EPNS_15BrotliBitReaderEm.exit ], [ %i.mu, %bb.al ], [ %storemerge.i, %bb.am ], [ %i.kj, %bb.af ] ; 6 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !128 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.on = load i32, ptr %i.om, align 4, !tbaa !57 ; 2 uses
  %.not407.i = icmp eq i32 %i.ol, %i.on
  br i1 %.not407.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit
  %.7296..i = tail call i32 @llvm.smin.i32(i32 %.7296.i, i32 %i.on) ; 2 uses
  store i32 %.7296..i, ptr %i.ok, align 8, !tbaa !128
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit
  %i.oo = phi i32 [ %.7296..i, %bb.ao ], [ %i.ol, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit ] ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !172 ; 21 uses
  %i.or = icmp sgt i32 %i.oj, %i.oo
  br i1 %i.or, label %bb.aq, label %bb.bw

bb.aq:                                            ; preds = %bb.ap
  %i.os = icmp sgt i32 %i.oj, 2147483644
  br i1 %i.os, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ot = sub nsw i32 %i.oj, %i.oo                ; 2 uses
  %.not410.i = icmp sgt i32 %i.ot, %i.i
  br i1 %.not410.i, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ou = sub nsw i32 %i.i, %i.ot                 ; 4 uses
  %i.ov = load ptr, ptr %i.f, align 8, !tbaa !33  ; 11 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 216 ; 3 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ox, -1
  br i1 %.not.i.i, label %.preheader1.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

.preheader1.i.i:                                  ; preds = %bb.as
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !38 ; 2 uses
  %i.pa = add nsw i32 %i.oz, -1
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.preheader1.i.i
  %.020.i.i = phi i32 [ %i.pc, %bb.at ], [ 8, %.preheader1.i.i ] ; 3 uses
  %i.pb = ashr i32 %i.pa, %.020.i.i
  %.not21.i.i = icmp eq i32 %i.pb, 0
  %i.pc = add nuw nsw i32 %.020.i.i, 1
  br i1 %.not21.i.i, label %bb.au, label %bb.at, !llvm.loop !178

bb.au:                                            ; preds = %bb.at
  %i.pd = add nsw i32 %.020.i.i, -8               ; 4 uses
  store i32 %i.pd, ptr %i.ow, align 8, !tbaa !41
  %i.pe = icmp sgt i32 %i.oz, 0
  br i1 %i.pe, label %.preheader.lr.ph.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.au
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ov, i64 152
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ov, i64 220
  %i.ph = shl nuw i32 1, %i.pd
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aw, %.preheader.lr.ph.i.i
  %.03.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.i.i, %bb.aw ]
  %.0192.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.pp, %bb.aw ] ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %.03.i.i, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.av ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %indvars.iv.next.i.i
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !3
  %i.pk = icmp slt i32 %i.pj, %.0192.i.i
  br i1 %i.pk, label %bb.av, label %bb.aw, !llvm.loop !179

bb.aw:                                            ; preds = %bb.av
  %i.pl = trunc i64 %indvars.iv.i.i to i8
  %i.pm = ashr i32 %.0192.i.i, %i.pd
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds i8, ptr %i.pg, i64 %i.pn
  store i8 %i.pl, ptr %i.po, align 1, !tbaa !51
  %i.pp = add nsw i32 %.0192.i.i, %i.ph           ; 2 uses
  %i.pq = load i32, ptr %i.oy, align 4, !tbaa !38
  %i.pr = icmp slt i32 %i.pp, %i.pq
  br i1 %i.pr, label %.preheader.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i, !llvm.loop !180

_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i: ; preds = %bb.aw
  %.pre.i = load i32, ptr %i.ow, align 8, !tbaa !41
  br label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i: ; preds = %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i, %bb.au, %bb.as
  %i.ps = phi i32 [ %.pre.i, %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i ], [ %i.ox, %bb.as ], [ %i.pd, %bb.au ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ov, i64 220
  %i.pu = ashr i32 %i.ou, %i.ps
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds i8, ptr %i.pt, i64 %i.pv
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !51
  %i.py = getelementptr inbounds nuw i8, ptr %i.ov, i64 152 ; 2 uses
  %i.pz = zext i8 %i.px to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ax ], [ %i.pz, %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv.next.i
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !3
  %.not.i26 = icmp slt i32 %i.ou, %i.qb
  br i1 %.not.i26, label %bb.ay, label %bb.ax, !llvm.loop !181

bb.ay:                                            ; preds = %bb.ax
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !38
  %i.qe = add nsw i32 %i.ou, %i.oq
  %i.qf = icmp slt i32 %i.qd, %i.qe
  br i1 %i.qf, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.qh = load i32, ptr %i.jx, align 8, !tbaa !168
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !176 ; 2 uses
  %i.ql = and i32 %i.qk, 3
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qm
  store i32 %i.qh, ptr %i.qn, align 4, !tbaa !3
  %i.qo = add nsw i32 %i.qk, 1
  store i32 %i.qo, ptr %i.qj, align 4, !tbaa !176
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !62
  %i.qr = sub nsw i32 %i.qq, %i.oq
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !62
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store i32 %i.qg, ptr %i.qs, align 8, !tbaa !130
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv.i
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !3
  %i.qv = sub nsw i32 %i.ou, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !131
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store i32 %i.oq, ptr %i.qx, align 8, !tbaa !39
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  store i32 0, ptr %i.qy, align 4, !tbaa !40
  %i.qz = load ptr, ptr %i.f, align 8, !tbaa !33  ; 6 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 20 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 12 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qz, i64 152
  %.pre.i27 = load i32, ptr %i.rb, align 4, !tbaa !40
  %.pre244.pre = load i32, ptr %i.rg, align 4, !tbaa !127
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.az
  %.pre244 = phi i32 [ %.pre244.pre, %bb.az ], [ %i.sl, %bb.bd ] ; 2 uses
  %i.ri = phi i32 [ %.pre.i27, %bb.az ], [ %i.sh, %bb.bd ] ; 2 uses
  %.042.i = phi i32 [ %.7296.i, %bb.az ], [ %i.sd, %bb.bd ] ; 6 uses
  %i.rj = load i32, ptr %i.ra, align 8, !tbaa !39 ; 2 uses
  %.not.i28 = icmp eq i32 %i.rj, %i.ri
  br i1 %.not.i28, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rk = load ptr, ptr %i.rc, align 8, !tbaa !50
  %i.rl = sext i32 %.042.i to i64
  %i.rm = getelementptr inbounds i8, ptr %i.rk, i64 %i.rl
  %i.rn = load i32, ptr %i.re, align 8, !tbaa !130
  %i.ro = sext i32 %i.rn to i64                   ; 2 uses
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.rd, i64 %i.ro
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !31
  %i.rr = load i32, ptr %i.rf, align 4, !tbaa !131 ; 2 uses
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds i8, ptr %i.rq, i64 %i.rs
  %i.ru = sub nsw i32 %.pre244, %.042.i
  %i.rv = getelementptr [4 x i8], ptr %i.rh, i64 %i.ro ; 2 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !3
  %i.ry = load i32, ptr %i.rv, align 4, !tbaa !3
  %i.rz = add i32 %i.rr, %i.ry
  %i.sa = sub i32 %i.rx, %i.rz                    ; 2 uses
  %i.sb = sub nsw i32 %i.rj, %i.ri
  %spec.select.i29 = tail call i32 @llvm.smin.i32(i32 %i.sb, i32 %i.sa)
  %.1.i30 = tail call i32 @llvm.smin.i32(i32 %spec.select.i29, i32 %i.ru) ; 5 uses
  %i.sc = sext i32 %.1.i30 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rm, ptr align 1 %i.rt, i64 %i.sc, i1 false)
  %i.sd = add nsw i32 %.1.i30, %.042.i            ; 3 uses
  %i.se = load i32, ptr %i.rf, align 4, !tbaa !131
  %i.sf = add nsw i32 %.1.i30, %i.se
  store i32 %i.sf, ptr %i.rf, align 4, !tbaa !131
  %i.sg = load i32, ptr %i.rb, align 4, !tbaa !40
  %i.sh = add nsw i32 %i.sg, %.1.i30              ; 2 uses
  store i32 %i.sh, ptr %i.rb, align 4, !tbaa !40
  %i.si = icmp eq i32 %.1.i30, %i.sa
  br i1 %i.si, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.sj = load i32, ptr %i.re, align 8, !tbaa !130
  %i.sk = add nsw i32 %i.sj, 1
  store i32 %i.sk, ptr %i.re, align 8, !tbaa !130
  store i32 0, ptr %i.rf, align 4, !tbaa !131
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.sl = load i32, ptr %i.rg, align 4, !tbaa !127 ; 2 uses
  %i.sm = icmp eq i32 %i.sd, %i.sl
  br i1 %i.sm, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread, label %bb.ba

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit: ; preds = %bb.ba
  %.not419.i = icmp slt i32 %.042.i, %.pre244
  br i1 %.not419.i, label %.thread98, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread: ; preds = %bb.bd, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit
  %.143.i324 = phi i32 [ %.042.i, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit ], [ %i.sd, %bb.bd ]
  store i32 15, ptr %0, align 8, !tbaa !7
  br label %.thread

bb.be:                                            ; preds = %bb.ar
  %i.sn = add i32 %i.oq, -4
  %or.cond.i = icmp ult i32 %i.sn, 28
  br i1 %or.cond.i, label %bb.bf, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit

bb.bf:                                            ; preds = %bb.be
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !25 ; 5 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 248
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !182
  %.not411.i = icmp eq i32 %i.ss, 0
  br i1 %.not411.i, label %_ZN13duckdb_brotliL7BitMaskEm.exit430.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.st = load ptr, ptr %i.so, align 8, !tbaa !50 ; 2 uses
  %i.su = add nsw i32 %.7296.i, -2
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !135 ; 2 uses
  %i.sx = and i32 %i.sw, %i.su
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds i8, ptr %i.st, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !51
  %i.tb = add nsw i32 %.7296.i, -1
  %i.tc = and i32 %i.sw, %i.tb
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds i8, ptr %i.st, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !51
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sq, i64 252
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !102 ; 2 uses
  %i.tj = zext i8 %i.tf to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !51
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 256
  %i.tn = zext i8 %i.ta to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !51
  %i.tq = or i8 %i.tp, %i.tl
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !51
  %i.tu = zext i8 %i.tt to i64
  br label %_ZN13duckdb_brotliL7BitMaskEm.exit430.i

_ZN13duckdb_brotliL7BitMaskEm.exit430.i:          ; preds = %bb.bg, %bb.bf
  %i.tv = phi i64 [ %i.tu, %bb.bg ], [ 0, %bb.bf ] ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sq, i64 320 ; 2 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.tv
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !183 ; 5 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sq, i64 832 ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.tv
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !184 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %i.ud = zext nneg i32 %i.oq to i64              ; 6 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ud
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.ud ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !51  ; 2 uses
  %i.ui = xor i32 %i.oo, -1
  %i.uj = sub i32 %i.oj, %i.i
  %i.uk = add i32 %i.uj, %i.ui                    ; 3 uses
  %i.ul = zext i8 %i.uh to i64
  %i.um = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !32
  %i.uo = trunc i64 %i.un to i32
  %i.up = and i32 %i.uk, %i.uo
  %i.uq = zext i8 %i.uh to i32                    ; 2 uses
  %i.ur = ashr i32 %i.uk, %i.uq                   ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !176
  %i.uu = add nsw i32 %i.ut, %i.oi
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !176
  %i.uv = mul nsw i32 %i.up, %i.oq
  %i.uw = add nsw i32 %i.uv, %i.uf                ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !185 ; 2 uses
  %.not412.i = icmp slt i32 %i.ur, %i.uy
  br i1 %.not412.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit430.i
  %i.uz = load i8, ptr %i.ug, align 1, !tbaa !51
  %i.va = icmp eq i8 %i.uz, 0
  br i1 %i.va, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh, %_ZN13duckdb_brotliL7BitMaskEm.exit430.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.sq, i64 316
  %i.vc = load i8, ptr %i.vb, align 4, !tbaa !187 ; 2 uses
  %i.vd = icmp ugt i8 %i.vc, 1
  br i1 %i.vd, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %bb.bi
  %i.ve = shl nuw i32 1, %i.uq
  %i.vf = and i32 %i.ve, -2
  %i.vg = mul nsw i32 %i.uy, %i.vf
  %i.vh = sub nsw i32 %i.uk, %i.vg
  %wide.trip.count = zext i8 %i.vc to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread103
  %indvars.iv234 = phi i64 [ 0, %bb.bj ], [ %indvars.iv.next235, %.thread103 ] ; 4 uses
  %.0354.i197 = phi i32 [ %i.vh, %bb.bj ], [ %.3357.i112, %.thread103 ] ; 6 uses
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv234
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !183 ; 3 uses
  %.not413.i = icmp eq i64 %indvars.iv234, %i.tv
  br i1 %.not413.i, label %.thread103, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.ud
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !51  ; 3 uses
  %.not414.i = icmp eq i8 %i.vl, 0
  br i1 %.not414.i, label %.thread103, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv234
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !184 ; 2 uses
  %i.vo = zext i8 %i.vl to i32                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotliL19SafeProcessCommandsEPNS_24BrotliDecoderStateStructE:bb.a

bb.af:                                            ; preds = %bb.ae
  %.neg.i = xor i32 %i.oq, -1
  %i.os = icmp eq i32 %i.oq, 0
  %i.ot = zext i1 %i.os to i32                    ; 3 uses
  store i32 %i.ot, ptr %i.on, align 4, !tbaa !169
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !176 ; 2 uses
  %i.ox = add i32 %i.ow, %.neg.i
  %i.oy = and i32 %i.ox, 3
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !3  ; 2 uses
  store i32 %i.pb, ptr %i.lh, align 8, !tbaa !168
  %i.pc = sub nsw i32 %i.ow, %i.ot
  store i32 %i.pc, ptr %i.ov, align 4, !tbaa !176
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.ag:                                            ; preds = %bb.ae
  %i.pd = icmp samesign ult i32 %i.oq, 10         ; 2 uses
  %.020.i = select i1 %i.pd, i32 3, i32 10
  %.0.i44.v = select i1 %i.pd, i32 -4, i32 -10
  %.0.i44 = add nsw i32 %.0.i44.v, %i.oq
  %i.pe = shl nsw i32 %.0.i44, 2
  %i.pf = lshr i32 6312258, %i.pe
  %i.pg = and i32 %i.pf, 7
  %i.ph = add nsw i32 %i.pg, -3
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !176
  %i.pl = add i32 %i.pk, %.020.i
  %i.pm = and i32 %i.pl, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !3
  %i.pq = add nsw i32 %i.ph, %i.pp                ; 2 uses
  %i.pr = icmp slt i32 %i.pq, 1
  %storemerge.i = select i1 %i.pr, i32 2147483647, i32 %i.pq ; 2 uses
  store i32 %storemerge.i, ptr %i.lh, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

bb.ah:                                            ; preds = %bb.ad
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.ok
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !51  ; 2 uses
  %i.pu = zext i8 %i.pt to i64                    ; 5 uses
  %.not.i45 = icmp eq i8 %i.pt, 0
  br i1 %.not.i45, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %.promoted413 = load i64, ptr %i.mh, align 8, !tbaa !53 ; 3 uses
  %i.pv = icmp ult i64 %.promoted413, %i.pu
  br i1 %i.pv, label %.lr.ph414, label %.preheader.._crit_edge415_crit_edge

.preheader.._crit_edge415_crit_edge:              ; preds = %.preheader
  %.pre475 = load i64, ptr %i.i, align 8, !tbaa !54
  br label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47

.lr.ph414:                                        ; preds = %.preheader
  %i.pw = load ptr, ptr %i.ml, align 8, !tbaa !48
  %.promoted417 = load ptr, ptr %i.mj, align 8, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph414, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50
  %i.px = phi ptr [ %.promoted417, %.lr.ph414 ], [ %i.qg, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ] ; 3 uses
  %i.py = phi i64 [ %.promoted413, %.lr.ph414 ], [ %i.qf, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ] ; 2 uses
  %i.pz = icmp eq ptr %i.px, %i.pw
  br i1 %i.pz, label %_ZN13duckdb_brotliL14SafeReadBits32EPNS_15BrotliBitReaderEmPm.exit, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50: ; preds = %bb.ai
  %i.qa = load i64, ptr %i.i, align 8, !tbaa !54
  %i.qb = load i8, ptr %i.px, align 1, !tbaa !51
  %i.qc = zext i8 %i.qb to i64
  %i.qd = shl i64 %i.qc, %i.py
  %i.qe = or i64 %i.qd, %i.qa                     ; 2 uses
  store i64 %i.qe, ptr %i.i, align 8, !tbaa !54
  %i.qf = add nuw nsw i64 %i.py, 8                ; 4 uses
  store i64 %i.qf, ptr %i.mh, align 8, !tbaa !53
  %i.qg = getelementptr inbounds nuw i8, ptr %i.px, i64 1 ; 2 uses
  store ptr %i.qg, ptr %i.mj, align 8, !tbaa !47
  %i.qh = icmp ult i64 %i.qf, %i.pu
  br i1 %i.qh, label %bb.ai, label %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47, !llvm.loop !192

_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47: ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50, %.preheader.._crit_edge415_crit_edge
  %i.qi = phi i64 [ %.pre475, %.preheader.._crit_edge415_crit_edge ], [ %i.qe, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ] ; 2 uses
  %.lcssa360 = phi i64 [ %.promoted413, %.preheader.._crit_edge415_crit_edge ], [ %i.qf, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i50 ]
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.pu
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !32
  %i.ql = and i64 %i.qk, %i.qi
  %i.qm = sub i64 %.lcssa360, %i.pu
  store i64 %i.qm, ptr %i.mh, align 8, !tbaa !53
  %i.qn = lshr i64 %i.qi, %i.pu
  store i64 %i.qn, ptr %i.i, align 8, !tbaa !54
  br label %bb.aj

_ZN13duckdb_brotliL14SafeReadBits32EPNS_15BrotliBitReaderEmPm.exit: ; preds = %bb.ai
  store i64 %i.ol, ptr %i.lu, align 8, !tbaa !32
  store i64 %i.mg, ptr %i.i, align 8, !tbaa !54
  store i64 %i.mi, ptr %i.mh, align 8, !tbaa !53
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !47
  %i.qo = getelementptr i8, ptr %i.mk, i64 %i.mp  ; 2 uses
  store ptr %i.qo, ptr %i.ml, align 8, !tbaa !48
  %i.qp = add i64 %i.mp, -28
  %i.qq = icmp ult i64 %i.qp, -29
  %i.qr = getelementptr i8, ptr %i.qo, i64 -27
  %.sink595 = select i1 %i.qq, ptr %i.qr, ptr %i.mk
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink595, ptr %i.qs, align 8, !tbaa !49
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit.thread

bb.aj:                                            ; preds = %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47, %bb.ah
  %.6.ph = phi i64 [ 0, %bb.ah ], [ %i.ql, %_ZN13duckdb_brotliL14BrotliTakeBitsEPNS_15BrotliBitReaderEmPm.exit.i47 ]
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.ok
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !32
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !81
  %i.qy = shl i64 %.6.ph, %i.qx
  %i.qz = add i64 %i.qy, %i.qv
  %i.ra = trunc i64 %i.qz to i32                  ; 2 uses
  store i32 %i.ra, ptr %i.lh, align 8, !tbaa !168
  br label %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit.thread: ; preds = %_ZN13duckdb_brotliL14SafeReadBits32EPNS_15BrotliBitReaderEmPm.exit, %_ZN13duckdb_brotliL14SafeReadSymbolEPKNS_11HuffmanCodeEPNS_15BrotliBitReaderEPm.exit.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.thread179

_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit: ; preds = %bb.ag, %bb.af, %bb.aj
  %i.rb = phi i32 [ 0, %bb.ag ], [ %i.ot, %bb.af ], [ 0, %bb.aj ]
  %i.rc = phi i32 [ %storemerge.i, %bb.ag ], [ %i.pb, %bb.af ], [ %i.ra, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit, %bb.z
  %i.rd = phi i32 [ %i.rb, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit ], [ %i.lk, %bb.z ]
  %i.re = phi i32 [ %i.rc, %_ZN13duckdb_brotliL20ReadDistanceInternalEiPNS_24BrotliDecoderStateStructEPNS_15BrotliBitReaderE.exit ], [ %i.lt, %bb.z ] ; 6 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !128 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !57 ; 2 uses
  %.not407.i = icmp eq i32 %i.rg, %i.ri
  br i1 %.not407.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.7296..i = tail call i32 @llvm.smin.i32(i32 %.7296.i, i32 %i.ri) ; 2 uses
  store i32 %.7296..i, ptr %i.rf, align 8, !tbaa !128
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.rj = phi i32 [ %.7296..i, %bb.al ], [ %i.rg, %bb.ak ] ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !172 ; 21 uses
  %i.rm = icmp sgt i32 %i.re, %i.rj
  br i1 %i.rm, label %bb.an, label %bb.bt

bb.an:                                            ; preds = %bb.am
  %i.rn = icmp sgt i32 %i.re, 2147483644
  br i1 %i.rn, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ro = sub nsw i32 %i.re, %i.rj                ; 2 uses
  %.not410.i = icmp sgt i32 %i.ro, %i.m
  br i1 %.not410.i, label %bb.bb, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.rp = sub nsw i32 %i.m, %i.ro                 ; 4 uses
  %i.rq = load ptr, ptr %i.j, align 8, !tbaa !33  ; 11 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 216 ; 3 uses
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !41 ; 2 uses
  %.not.i.i54 = icmp eq i32 %i.rs, -1
  br i1 %.not.i.i54, label %.preheader1.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

.preheader1.i.i:                                  ; preds = %bb.ap
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 4 ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !38 ; 2 uses
  %i.rv = add nsw i32 %i.ru, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %.preheader1.i.i
  %.020.i.i = phi i32 [ %i.rx, %bb.aq ], [ 8, %.preheader1.i.i ] ; 3 uses
  %i.rw = ashr i32 %i.rv, %.020.i.i
  %.not21.i.i = icmp eq i32 %i.rw, 0
  %i.rx = add nuw nsw i32 %.020.i.i, 1
  br i1 %.not21.i.i, label %bb.ar, label %bb.aq, !llvm.loop !178

bb.ar:                                            ; preds = %bb.aq
  %i.ry = add nsw i32 %.020.i.i, -8               ; 4 uses
  store i32 %i.ry, ptr %i.rr, align 8, !tbaa !41
  %i.rz = icmp sgt i32 %i.ru, 0
  br i1 %i.rz, label %.preheader.lr.ph.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.ar
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rq, i64 152
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rq, i64 220
  %i.sc = shl nuw i32 1, %i.ry
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.at, %.preheader.lr.ph.i.i
  %.03.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.i.i, %bb.at ]
  %.0192.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.sk, %bb.at ] ; 3 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %.03.i.i, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.as ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %indvars.iv.next.i.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !3
  %i.sf = icmp slt i32 %i.se, %.0192.i.i
  br i1 %i.sf, label %bb.as, label %bb.at, !llvm.loop !179

bb.at:                                            ; preds = %bb.as
  %i.sg = trunc i64 %indvars.iv.i.i to i8
  %i.sh = ashr i32 %.0192.i.i, %i.ry
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds i8, ptr %i.sb, i64 %i.si
  store i8 %i.sg, ptr %i.sj, align 1, !tbaa !51
  %i.sk = add nsw i32 %.0192.i.i, %i.sc           ; 2 uses
  %i.sl = load i32, ptr %i.rt, align 4, !tbaa !38
  %i.sm = icmp slt i32 %i.sk, %i.sl
  br i1 %i.sm, label %.preheader.i.i, label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i, !llvm.loop !180

_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i: ; preds = %bb.at
  %.pre.i = load i32, ptr %i.rr, align 8, !tbaa !41
  br label %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i

_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i: ; preds = %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i, %bb.ar, %bb.ap
  %i.sn = phi i32 [ %.pre.i, %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.loopexit.i ], [ %i.rs, %bb.ap ], [ %i.ry, %bb.ar ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.rq, i64 220
  %i.sp = ashr i32 %i.rp, %i.sn
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds i8, ptr %i.so, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !51
  %i.st = getelementptr inbounds nuw i8, ptr %i.rq, i64 152 ; 2 uses
  %i.su = zext i8 %i.ss to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.au ], [ %i.su, %_ZN13duckdb_brotliL36EnsureCoumpoundDictionaryInitializedEPNS_24BrotliDecoderStateStructE.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %indvars.iv.next.i
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3
  %.not.i55 = icmp slt i32 %i.rp, %i.sw
  br i1 %.not.i55, label %bb.av, label %bb.au, !llvm.loop !181

bb.av:                                            ; preds = %bb.au
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !38
  %i.sz = add nsw i32 %i.rp, %i.rl
  %i.ta = icmp slt i32 %i.sy, %i.sz
  br i1 %i.ta, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.tb = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.tc = load i32, ptr %i.lh, align 8, !tbaa !168
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !176 ; 2 uses
  %i.tg = and i32 %i.tf, 3
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.th
  store i32 %i.tc, ptr %i.ti, align 4, !tbaa !3
  %i.tj = add nsw i32 %i.tf, 1
  store i32 %i.tj, ptr %i.te, align 4, !tbaa !176
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !62
  %i.tm = sub nsw i32 %i.tl, %i.rl
  store i32 %i.tm, ptr %i.tk, align 4, !tbaa !62
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i32 %i.tb, ptr %i.tn, align 8, !tbaa !130
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %indvars.iv.i
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !3
  %i.tq = sub nsw i32 %i.rp, %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %i.rq, i64 12
  store i32 %i.tq, ptr %i.tr, align 4, !tbaa !131
  %i.ts = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store i32 %i.rl, ptr %i.ts, align 8, !tbaa !39
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rq, i64 20
  store i32 0, ptr %i.tt, align 4, !tbaa !40
  %i.tu = load ptr, ptr %i.j, align 8, !tbaa !33  ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 20 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 12 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tu, i64 152
  %.pre.i56 = load i32, ptr %i.tw, align 4, !tbaa !40
  %.pre476.pre = load i32, ptr %i.ub, align 4, !tbaa !127
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %bb.aw
  %.pre476 = phi i32 [ %.pre476.pre, %bb.aw ], [ %i.vg, %bb.ba ] ; 2 uses
  %i.ud = phi i32 [ %.pre.i56, %bb.aw ], [ %i.vc, %bb.ba ] ; 2 uses
  %.042.i = phi i32 [ %.7296.i, %bb.aw ], [ %i.uy, %bb.ba ] ; 6 uses
  %i.ue = load i32, ptr %i.tv, align 8, !tbaa !39 ; 2 uses
  %.not.i57 = icmp eq i32 %i.ue, %i.ud
  br i1 %.not.i57, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.uf = load ptr, ptr %i.tx, align 8, !tbaa !50
  %i.ug = sext i32 %.042.i to i64
  %i.uh = getelementptr inbounds i8, ptr %i.uf, i64 %i.ug
  %i.ui = load i32, ptr %i.tz, align 8, !tbaa !130
  %i.uj = sext i32 %i.ui to i64                   ; 2 uses
  %i.uk = getelementptr inbounds [8 x i8], ptr %i.ty, i64 %i.uj
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !31
  %i.um = load i32, ptr %i.ua, align 4, !tbaa !131 ; 2 uses
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds i8, ptr %i.ul, i64 %i.un
  %i.up = sub nsw i32 %.pre476, %.042.i
  %i.uq = getelementptr [4 x i8], ptr %i.uc, i64 %i.uj ; 2 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !3
  %i.ut = load i32, ptr %i.uq, align 4, !tbaa !3
  %i.uu = add i32 %i.um, %i.ut
  %i.uv = sub i32 %i.us, %i.uu                    ; 2 uses
  %i.uw = sub nsw i32 %i.ue, %i.ud
  %spec.select.i58 = tail call i32 @llvm.smin.i32(i32 %i.uw, i32 %i.uv)
  %.1.i59 = tail call i32 @llvm.smin.i32(i32 %spec.select.i58, i32 %i.up) ; 5 uses
  %i.ux = sext i32 %.1.i59 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uh, ptr align 1 %i.uo, i64 %i.ux, i1 false)
  %i.uy = add nsw i32 %.1.i59, %.042.i            ; 3 uses
  %i.uz = load i32, ptr %i.ua, align 4, !tbaa !131
  %i.va = add nsw i32 %.1.i59, %i.uz
  store i32 %i.va, ptr %i.ua, align 4, !tbaa !131
  %i.vb = load i32, ptr %i.tw, align 4, !tbaa !40
  %i.vc = add nsw i32 %i.vb, %.1.i59              ; 2 uses
  store i32 %i.vc, ptr %i.tw, align 4, !tbaa !40
  %i.vd = icmp eq i32 %.1.i59, %i.uv
  br i1 %i.vd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ve = load i32, ptr %i.tz, align 8, !tbaa !130
  %i.vf = add nsw i32 %i.ve, 1
  store i32 %i.vf, ptr %i.tz, align 8, !tbaa !130
  store i32 0, ptr %i.ua, align 4, !tbaa !131
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.vg = load i32, ptr %i.ub, align 4, !tbaa !127 ; 2 uses
  %i.vh = icmp eq i32 %i.uy, %i.vg
  br i1 %i.vh, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread, label %bb.ax

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit: ; preds = %bb.ax
  %.not419.i = icmp slt i32 %.042.i, %.pre476
  br i1 %.not419.i, label %.thread269, label %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread

_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit.thread: ; preds = %bb.ba, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit
  %.143.i543 = phi i32 [ %.042.i, %_ZN13duckdb_brotliL26CopyFromCompoundDictionaryEPNS_24BrotliDecoderStateStructEi.exit ], [ %i.uy, %bb.ba ]
  store i32 15, ptr %0, align 8, !tbaa !7
  br label %.thread179

bb.bb:                                            ; preds = %bb.ao
  %i.vi = add i32 %i.rl, -4
  %or.cond.i = icmp ult i32 %i.vi, 28
  br i1 %or.cond.i, label %bb.bc, label %_ZN13duckdb_brotliL23ProcessCommandsInternalEiPNS_24BrotliDecoderStateStructE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !25 ; 5 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 248
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !182
  %.not411.i = icmp eq i32 %i.vn, 0
  br i1 %.not411.i, label %_ZN13duckdb_brotliL7BitMaskEm.exit430.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vo = load ptr, ptr %i.vj, align 8, !tbaa !50 ; 2 uses
  %i.vp = add nsw i32 %.7296.i, -2
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.vr = load i32, ptr %i.vq, align 8, !tbaa !135 ; 2 uses
  %i.vs = and i32 %i.vr, %i.vp
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds i8, ptr %i.vo, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !51
  %i.vw = add nsw i32 %.7296.i, -1
  %i.vx = and i32 %i.vr, %i.vw
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds i8, ptr %i.vo, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !51
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vl, i64 252
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !102 ; 2 uses
  %i.we = zext i8 %i.wa to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !51
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 256
  %i.wi = zext i8 %i.vv to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !51
  %i.wl = or i8 %i.wk, %i.wg
  %i.wm = zext i8 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !51
  %i.wp = zext i8 %i.wo to i64
  br label %_ZN13duckdb_brotliL7BitMaskEm.exit430.i

_ZN13duckdb_brotliL7BitMaskEm.exit430.i:          ; preds = %bb.bd, %bb.bc
  %i.wq = phi i64 [ %i.wp, %bb.bd ], [ 0, %bb.bc ] ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vl, i64 320 ; 2 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wq
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !183 ; 5 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vl, i64 832 ; 2 uses
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %i.wq
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !184 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 32
  %i.wy = zext nneg i32 %i.rl to i64              ; 6 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !3
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wy ; 2 uses
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !51  ; 2 uses
  %i.xd = xor i32 %i.rj, -1
  %i.xe = sub i32 %i.re, %i.m
  %i.xf = add i32 %i.xe, %i.xd                    ; 3 uses
  %i.xg = zext i8 %i.xc to i64
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.xg
  %i.xi = load i64, ptr %i.xh, align 8, !tbaa !32
  %i.xj = trunc i64 %i.xi to i32
  %i.xk = and i32 %i.xf, %i.xj
  %i.xl = zext i8 %i.xc to i32                    ; 2 uses
  %i.xm = ashr i32 %i.xf, %i.xl                   ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !176
  %i.xp = add nsw i32 %i.xo, %i.rd
  store i32 %i.xp, ptr %i.xn, align 4, !tbaa !176
  %i.xq = mul nsw i32 %i.xk, %i.rl
  %i.xr = add nsw i32 %i.xq, %i.xa                ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !185 ; 2 uses
  %.not412.i = icmp slt i32 %i.xm, %i.xt
  br i1 %.not412.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN13duckdb_brotliL7BitMaskEm.exit430.i
  %i.xu = load i8, ptr %i.xb, align 1, !tbaa !51
  %i.xv = icmp eq i8 %i.xu, 0
  br i1 %i.xv, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %bb.be, %_ZN13duckdb_brotliL7BitMaskEm.exit430.i
  %i.xw = getelementptr inbounds nuw i8, ptr %i.vl, i64 316
  %i.xx = load i8, ptr %i.xw, align 4, !tbaa !187 ; 2 uses
  %i.xy = icmp ugt i8 %i.xx, 1
  br i1 %i.xy, label %bb.bg, label %.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.xz = shl nuw i32 1, %i.xl
  %i.ya = and i32 %i.xz, -2
  %i.yb = mul nsw i32 %i.xt, %i.ya
  %i.yc = sub nsw i32 %i.xf, %i.yb
  %wide.trip.count = zext i8 %i.xx to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread274
  %indvars.iv460 = phi i64 [ 0, %bb.bg ], [ %indvars.iv.next461, %.thread274 ] ; 4 uses
  %.0354.i419 = phi i32 [ %i.yc, %bb.bg ], [ %.3357.i283, %.thread274 ] ; 6 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv460
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !183 ; 3 uses
  %.not413.i = icmp eq i64 %indvars.iv460, %i.wq
  br i1 %.not413.i, label %.thread274, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.wy
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !51  ; 3 uses
  %.not414.i = icmp eq i8 %i.yg, 0
  br i1 %.not414.i, label %.thread274, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %indvars.iv460
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !184 ; 2 uses
  %i.yj = zext i8 %i.yg to i32                    ; 2 uses
end_hunk_1
