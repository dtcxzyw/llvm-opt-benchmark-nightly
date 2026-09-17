Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/services?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
begin_hunk_0_@__ockl_fprintf_append_string_n:bb.a
  %i.al = shl nuw nsw i64 %indvars.iv222.i.i, 3
  %i.am = shl nuw i64 %i.ak, %i.al
  %i.an = or i64 %i.am, %.0150187.i.i             ; 2 uses
  %indvars.iv.next223.i.i = add nuw nsw i64 %indvars.iv222.i.i, 1 ; 2 uses
  %.not165.i.i = icmp eq i64 %indvars.iv.next223.i.i, %i.ah
  br i1 %.not165.i.i, label %append_bytes.exit.i, label %.lr.ph189.i.i

.loopexit180.i.i:                                 ; preds = %.loopexit182.i.i
  %i.ao = load <8 x i8>, ptr %i.af, align 1, !tbaa !9 ; 2 uses
  %.v75 = shufflevector <8 x i8> %i.ao, <8 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 8, i32 8, i32 8>
  %i.ap = bitcast <8 x i8> %.v75 to i64
  %i.aq = shufflevector <8 x i8> %i.ao, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ar = zext <4 x i8> %i.aq to <4 x i64>
  %i.as = shl nuw <4 x i64> %i.ar, <i64 32, i64 40, i64 48, i64 56> ; 4 uses
  %i.at = extractelement <4 x i64> %i.as, i64 0
  %i.au = or disjoint i64 %i.at, %i.ap
  %i.av = extractelement <4 x i64> %i.as, i64 1
  %i.aw = or disjoint i64 %i.au, %i.av
  %i.ax = extractelement <4 x i64> %i.as, i64 2
  %i.ay = or disjoint i64 %i.aw, %i.ax
  %i.az = extractelement <4 x i64> %i.as, i64 3
  %i.ba = or i64 %i.ay, %i.az                     ; 11 uses
  %i.bb = add nsw i32 %.0.i, -16                  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %i.bd = icmp ugt i32 %i.bb, 7
  br i1 %i.bd, label %.loopexit178.i.i, label %.preheader177.i.i

.preheader177.i.i:                                ; preds = %.loopexit180.i.i
  %.not166191.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not166191.i.i, label %append_bytes.exit.i, label %.lr.ph194.preheader.i.i

.lr.ph194.preheader.i.i:                          ; preds = %.preheader177.i.i
  %i.be = zext nneg i32 %i.bb to i64
  br label %.lr.ph194.i.i

.lr.ph194.i.i:                                    ; preds = %.lr.ph194.i.i, %.lr.ph194.preheader.i.i
  %indvars.iv224.i.i = phi i64 [ 0, %.lr.ph194.preheader.i.i ], [ %indvars.iv.next225.i.i, %.lr.ph194.i.i ] ; 3 uses
  %.0147192.i.i = phi i64 [ 0, %.lr.ph194.preheader.i.i ], [ %i.bk, %.lr.ph194.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv224.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %indvars.iv224.i.i, 3
  %i.bj = shl nuw i64 %i.bh, %i.bi
  %i.bk = or i64 %i.bj, %.0147192.i.i             ; 2 uses
  %indvars.iv.next225.i.i = add nuw nsw i64 %indvars.iv224.i.i, 1 ; 2 uses
  %.not166.i.i = icmp eq i64 %indvars.iv.next225.i.i, %i.be
  br i1 %.not166.i.i, label %append_bytes.exit.i, label %.lr.ph194.i.i

.loopexit178.i.i:                                 ; preds = %.loopexit180.i.i
  %i.bl = load <8 x i8>, ptr %i.bc, align 1, !tbaa !9 ; 2 uses
  %.v78 = shufflevector <8 x i8> %i.bl, <8 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 8, i32 8, i32 8>
  %i.bm = bitcast <8 x i8> %.v78 to i64
  %i.bn = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bo = zext <4 x i8> %i.bn to <4 x i64>
  %i.bp = shl nuw <4 x i64> %i.bo, <i64 32, i64 40, i64 48, i64 56> ; 4 uses
  %i.bq = extractelement <4 x i64> %i.bp, i64 0
  %i.br = or disjoint i64 %i.bq, %i.bm
  %i.bs = extractelement <4 x i64> %i.bp, i64 1
  %i.bt = or disjoint i64 %i.br, %i.bs
  %i.bu = extractelement <4 x i64> %i.bp, i64 2
  %i.bv = or disjoint i64 %i.bt, %i.bu
  %i.bw = extractelement <4 x i64> %i.bp, i64 3
  %i.bx = or i64 %i.bv, %i.bw                     ; 9 uses
  %i.by = add nsw i32 %.0.i, -24                  ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.019.i, i64 24 ; 2 uses
  %i.ca = icmp ugt i32 %i.by, 7
  br i1 %i.ca, label %.loopexit176.i.i, label %.preheader175.i.i

.preheader175.i.i:                                ; preds = %.loopexit178.i.i
  %.not167196.i.i = icmp eq i32 %i.by, 0
  br i1 %.not167196.i.i, label %append_bytes.exit.i, label %.lr.ph199.preheader.i.i

.lr.ph199.preheader.i.i:                          ; preds = %.preheader175.i.i
  %i.cb = zext nneg i32 %i.by to i64
  br label %.lr.ph199.i.i

.lr.ph199.i.i:                                    ; preds = %.lr.ph199.i.i, %.lr.ph199.preheader.i.i
  %indvars.iv226.i.i = phi i64 [ 0, %.lr.ph199.preheader.i.i ], [ %indvars.iv.next227.i.i, %.lr.ph199.i.i ] ; 3 uses
  %.0144197.i.i = phi i64 [ 0, %.lr.ph199.preheader.i.i ], [ %i.ch, %.lr.ph199.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv226.i.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %indvars.iv226.i.i, 3
  %i.cg = shl nuw i64 %i.ce, %i.cf
  %i.ch = or i64 %i.cg, %.0144197.i.i             ; 2 uses
  %indvars.iv.next227.i.i = add nuw nsw i64 %indvars.iv226.i.i, 1 ; 2 uses
  %.not167.i.i = icmp eq i64 %indvars.iv.next227.i.i, %i.cb
  br i1 %.not167.i.i, label %append_bytes.exit.i, label %.lr.ph199.i.i

.loopexit176.i.i:                                 ; preds = %.loopexit178.i.i
  %i.ci = load <8 x i8>, ptr %i.bz, align 1, !tbaa !9 ; 2 uses
  %.v81 = shufflevector <8 x i8> %i.ci, <8 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 8, i32 8, i32 8>
  %i.cj = bitcast <8 x i8> %.v81 to i64
  %i.ck = shufflevector <8 x i8> %i.ci, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cl = zext <4 x i8> %i.ck to <4 x i64>
  %i.cm = shl nuw <4 x i64> %i.cl, <i64 32, i64 40, i64 48, i64 56> ; 4 uses
  %i.cn = extractelement <4 x i64> %i.cm, i64 0
  %i.co = or disjoint i64 %i.cn, %i.cj
  %i.cp = extractelement <4 x i64> %i.cm, i64 1
  %i.cq = or disjoint i64 %i.co, %i.cp
  %i.cr = extractelement <4 x i64> %i.cm, i64 2
  %i.cs = or disjoint i64 %i.cq, %i.cr
  %i.ct = extractelement <4 x i64> %i.cm, i64 3
  %i.cu = or i64 %i.cs, %i.ct                     ; 7 uses
  %i.cv = add nsw i32 %.0.i, -32                  ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.019.i, i64 32 ; 2 uses
  %i.cx = icmp ugt i32 %i.cv, 7
  br i1 %i.cx, label %.loopexit174.i.i, label %.preheader173.i.i

.preheader173.i.i:                                ; preds = %.loopexit176.i.i
  %.not168201.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not168201.i.i, label %append_bytes.exit.i, label %.lr.ph204.preheader.i.i

.lr.ph204.preheader.i.i:                          ; preds = %.preheader173.i.i
  %i.cy = zext nneg i32 %i.cv to i64
  br label %.lr.ph204.i.i

.lr.ph204.i.i:                                    ; preds = %.lr.ph204.i.i, %.lr.ph204.preheader.i.i
  %indvars.iv228.i.i = phi i64 [ 0, %.lr.ph204.preheader.i.i ], [ %indvars.iv.next229.i.i, %.lr.ph204.i.i ] ; 3 uses
  %.0141202.i.i = phi i64 [ 0, %.lr.ph204.preheader.i.i ], [ %i.de, %.lr.ph204.i.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv228.i.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %indvars.iv228.i.i, 3
  %i.dd = shl nuw i64 %i.db, %i.dc
  %i.de = or i64 %i.dd, %.0141202.i.i             ; 2 uses
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1 ; 2 uses
  %.not168.i.i = icmp eq i64 %indvars.iv.next229.i.i, %i.cy
  br i1 %.not168.i.i, label %append_bytes.exit.i, label %.lr.ph204.i.i

.loopexit174.i.i:                                 ; preds = %.loopexit176.i.i
  %i.df = load <8 x i8>, ptr %i.cw, align 1, !tbaa !9 ; 2 uses
  %.v84 = shufflevector <8 x i8> %i.df, <8 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 8, i32 8, i32 8>
  %i.dg = bitcast <8 x i8> %.v84 to i64
  %i.dh = shufflevector <8 x i8> %i.df, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.di = zext <4 x i8> %i.dh to <4 x i64>
  %i.dj = shl nuw <4 x i64> %i.di, <i64 32, i64 40, i64 48, i64 56> ; 4 uses
  %i.dk = extractelement <4 x i64> %i.dj, i64 0
  %i.dl = or disjoint i64 %i.dk, %i.dg
  %i.dm = extractelement <4 x i64> %i.dj, i64 1
  %i.dn = or disjoint i64 %i.dl, %i.dm
  %i.do = extractelement <4 x i64> %i.dj, i64 2
  %i.dp = or disjoint i64 %i.dn, %i.do
  %i.dq = extractelement <4 x i64> %i.dj, i64 3
  %i.dr = or i64 %i.dp, %i.dq                     ; 5 uses
  %i.ds = add nsw i32 %.0.i, -40                  ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.019.i, i64 40 ; 2 uses
  %i.du = icmp ugt i32 %i.ds, 7
  br i1 %i.du, label %.loopexit172.i.i, label %.preheader171.i.i

.preheader171.i.i:                                ; preds = %.loopexit174.i.i
  %.not169206.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not169206.i.i, label %append_bytes.exit.i, label %.lr.ph209.preheader.i.i

.lr.ph209.preheader.i.i:                          ; preds = %.preheader171.i.i
  %i.dv = zext nneg i32 %i.ds to i64
  br label %.lr.ph209.i.i

.lr.ph209.i.i:                                    ; preds = %.lr.ph209.i.i, %.lr.ph209.preheader.i.i
  %indvars.iv230.i.i = phi i64 [ 0, %.lr.ph209.preheader.i.i ], [ %indvars.iv.next231.i.i, %.lr.ph209.i.i ] ; 3 uses
  %.0138207.i.i = phi i64 [ 0, %.lr.ph209.preheader.i.i ], [ %i.eb, %.lr.ph209.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv230.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  %i.dy = zext i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %indvars.iv230.i.i, 3
  %i.ea = shl nuw i64 %i.dy, %i.dz
  %i.eb = or i64 %i.ea, %.0138207.i.i             ; 2 uses
  %indvars.iv.next231.i.i = add nuw nsw i64 %indvars.iv230.i.i, 1 ; 2 uses
  %.not169.i.i = icmp eq i64 %indvars.iv.next231.i.i, %i.dv
  br i1 %.not169.i.i, label %append_bytes.exit.i, label %.lr.ph209.i.i

.loopexit172.i.i:                                 ; preds = %.loopexit174.i.i
  %i.ec = load <8 x i8>, ptr %i.dt, align 1, !tbaa !9 ; 2 uses
  %.v87 = shufflevector <8 x i8> %i.ec, <8 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 8, i32 8, i32 8>
  %i.ed = bitcast <8 x i8> %.v87 to i64
  %i.ee = shufflevector <8 x i8> %i.ec, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ef = zext <4 x i8> %i.ee to <4 x i64>
  %i.eg = shl nuw <4 x i64> %i.ef, <i64 32, i64 40, i64 48, i64 56> ; 4 uses
  %i.eh = extractelement <4 x i64> %i.eg, i64 0
  %i.ei = or disjoint i64 %i.eh, %i.ed
  %i.ej = extractelement <4 x i64> %i.eg, i64 1
  %i.ek = or disjoint i64 %i.ei, %i.ej
  %i.el = extractelement <4 x i64> %i.eg, i64 2
  %i.em = or disjoint i64 %i.ek, %i.el
  %i.en = extractelement <4 x i64> %i.eg, i64 3
  %i.eo = or i64 %i.em, %i.en                     ; 3 uses
  %i.ep = add nsw i32 %.0.i, -48                  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.019.i, i64 48 ; 2 uses
  %i.er = icmp ugt i32 %i.ep, 7
  br i1 %i.er, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit172.i.i
  %.not170211.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not170211.i.i, label %append_bytes.exit.i, label %.lr.ph214.preheader.i.i

.lr.ph214.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.es = zext nneg i32 %i.ep to i64
  br label %.lr.ph214.i.i

bb.e:                                             ; preds = %.loopexit172.i.i
  %4 = load i64, ptr %i.eq, align 1, !tbaa !9
  br label %append_bytes.exit.i

.lr.ph214.i.i:                                    ; preds = %.lr.ph214.i.i, %.lr.ph214.preheader.i.i
  %indvars.iv232.i.i = phi i64 [ 0, %.lr.ph214.preheader.i.i ], [ %indvars.iv.next233.i.i, %.lr.ph214.i.i ] ; 3 uses
  %.0136212.i.i = phi i64 [ 0, %.lr.ph214.preheader.i.i ], [ %i.ey, %.lr.ph214.i.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %indvars.iv232.i.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !9
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw nsw i64 %indvars.iv232.i.i, 3
  %i.ex = shl nuw i64 %i.ev, %i.ew
  %i.ey = or i64 %i.ex, %.0136212.i.i             ; 2 uses
  %indvars.iv.next233.i.i = add nuw nsw i64 %indvars.iv232.i.i, 1 ; 2 uses
  %.not170.i.i = icmp eq i64 %indvars.iv.next233.i.i, %i.es
  br i1 %.not170.i.i, label %append_bytes.exit.i, label %.lr.ph214.i.i

append_bytes.exit.i:                              ; preds = %.lr.ph.i.i, %.lr.ph189.i.i, %.lr.ph194.i.i, %.lr.ph199.i.i, %.lr.ph204.i.i, %.lr.ph209.i.i, %.lr.ph214.i.i, %bb.e, %.preheader.i.i, %.preheader171.i.i, %.preheader173.i.i, %.preheader175.i.i, %.preheader177.i.i, %.preheader179.i.i, %.preheader181.i.i
  %.1139350.i.i = phi i64 [ %i.eo, %bb.e ], [ %i.eo, %.preheader.i.i ], [ 0, %.preheader173.i.i ], [ %i.eb, %.lr.ph209.i.i ], [ 0, %.preheader171.i.i ], [ 0, %.preheader175.i.i ], [ 0, %.lr.ph199.i.i ], [ 0, %.preheader179.i.i ], [ 0, %.lr.ph189.i.i ], [ %i.eo, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ 0, %.lr.ph194.i.i ], [ 0, %.preheader177.i.i ], [ 0, %.lr.ph204.i.i ], [ 0, %.lr.ph.i.i ]
  %.1145294310346.i.i = phi i64 [ %i.cu, %bb.e ], [ %i.cu, %.preheader.i.i ], [ %i.cu, %.preheader173.i.i ], [ %i.cu, %.lr.ph209.i.i ], [ %i.cu, %.preheader171.i.i ], [ 0, %.preheader175.i.i ], [ %i.ch, %.lr.ph199.i.i ], [ 0, %.preheader179.i.i ], [ 0, %.lr.ph189.i.i ], [ %i.cu, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ 0, %.lr.ph194.i.i ], [ 0, %.preheader177.i.i ], [ %i.cu, %.lr.ph204.i.i ], [ 0, %.lr.ph.i.i ]
  %.1151254266290312344.i.i = phi i64 [ %i.ba, %bb.e ], [ %i.ba, %.preheader.i.i ], [ %i.ba, %.preheader173.i.i ], [ %i.ba, %.lr.ph209.i.i ], [ %i.ba, %.preheader171.i.i ], [ %i.ba, %.preheader175.i.i ], [ %i.ba, %.lr.ph199.i.i ], [ 0, %.preheader179.i.i ], [ %i.an, %.lr.ph189.i.i ], [ %i.ba, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ %i.ba, %.lr.ph194.i.i ], [ %i.ba, %.preheader177.i.i ], [ %i.ba, %.lr.ph204.i.i ], [ 0, %.lr.ph.i.i ]
  %.1154240250268288314342.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.ad, %.preheader.i.i ], [ %i.ad, %.preheader173.i.i ], [ %i.ad, %.lr.ph209.i.i ], [ %i.ad, %.preheader171.i.i ], [ %i.ad, %.preheader175.i.i ], [ %i.ad, %.lr.ph199.i.i ], [ %i.ad, %.preheader179.i.i ], [ %i.ad, %.lr.ph189.i.i ], [ %i.ad, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ %i.ad, %.lr.ph194.i.i ], [ %i.ad, %.preheader177.i.i ], [ %i.ad, %.lr.ph204.i.i ], [ %i.q, %.lr.ph.i.i ]
  %.1148272286316340.i.i = phi i64 [ %i.bx, %bb.e ], [ %i.bx, %.preheader.i.i ], [ %i.bx, %.preheader173.i.i ], [ %i.bx, %.lr.ph209.i.i ], [ %i.bx, %.preheader171.i.i ], [ %i.bx, %.preheader175.i.i ], [ %i.bx, %.lr.ph199.i.i ], [ 0, %.preheader179.i.i ], [ 0, %.lr.ph189.i.i ], [ %i.bx, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ %i.bk, %.lr.ph194.i.i ], [ 0, %.preheader177.i.i ], [ %i.bx, %.lr.ph204.i.i ], [ 0, %.lr.ph.i.i ]
  %.1142320338.i.i = phi i64 [ %i.dr, %bb.e ], [ %i.dr, %.preheader.i.i ], [ 0, %.preheader173.i.i ], [ %i.dr, %.lr.ph209.i.i ], [ %i.dr, %.preheader171.i.i ], [ 0, %.preheader175.i.i ], [ 0, %.lr.ph199.i.i ], [ 0, %.preheader179.i.i ], [ 0, %.lr.ph189.i.i ], [ %i.dr, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ 0, %.lr.ph194.i.i ], [ 0, %.preheader177.i.i ], [ %i.de, %.lr.ph204.i.i ], [ 0, %.lr.ph.i.i ]
  %.1.i.i = phi i64 [ %4, %bb.e ], [ 0, %.preheader.i.i ], [ 0, %.preheader173.i.i ], [ 0, %.lr.ph209.i.i ], [ 0, %.preheader171.i.i ], [ 0, %.preheader175.i.i ], [ 0, %.lr.ph199.i.i ], [ 0, %.preheader179.i.i ], [ 0, %.lr.ph189.i.i ], [ %i.ey, %.lr.ph214.i.i ], [ 0, %.preheader181.i.i ], [ 0, %.lr.ph194.i.i ], [ 0, %.preheader177.i.i ], [ 0, %.lr.ph204.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ez = shl nuw nsw i64 %.021.i, 2
  %i.fa = add nuw nsw i64 %i.ez, 28
  %i.fb = and i64 %i.fa, 480
  %.masked.i = and i64 %i.i, -225
  %i.fc = or i64 %.masked.i, %i.j
  %i.fd = or i64 %i.fc, %i.fb
  %i.fe = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %i.fd, i64 noundef %.1154240250268288314342.i.i, i64 noundef %.1151254266290312344.i.i, i64 noundef %.1148272286316340.i.i, i64 noundef %.1145294310346.i.i, i64 noundef %.1142320338.i.i, i64 noundef %.1139350.i.i, i64 noundef %.1.i.i) #3 ; 2 uses
  %i.ff = sub nuw i64 %.018.i, %.021.i            ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.019.i, i64 %.021.i
  %.not.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i, label %message_append_bytes.exit, label %bb.d

message_append_bytes.exit:                        ; preds = %append_bytes.exit.i, %bb.b
  %.lcssa58.sink = phi <2 x i64> [ %i.d, %bb.b ], [ %i.fe, %append_bytes.exit.i ]
  %i.fh = extractelement <2 x i64> %.lcssa58.sink, i64 0
  ret i64 %i.fh
}

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define hidden i64 @__ockl_printf_begin(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef 33, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #3
  %i.b = extractelement <2 x i64> %i.a, i64 0
  ret i64 %i.b
}

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define hidden i64 @__ockl_printf_append_args(i64 noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq i32 %9, 0
  %i.a = or i64 %0, 2
  %spec.select.i = select i1 %.not.i, i64 %0, i64 %i.a
  %i.b = and i64 %spec.select.i, -225
  %i.c = zext i32 %1 to i64
  %i.d = shl nuw nsw i64 %i.c, 5
  %i.e = or i64 %i.b, %i.d
  %i.f = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 2, i64 noundef %i.e, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #3
  %i.g = extractelement <2 x i64> %i.f, i64 0
  ret i64 %i.g
}

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define hidden i64 @__ockl_printf_append_string_n(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @__ockl_fprintf_append_string_n(i64 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #3
  ret i64 %i.a
}

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define weak hidden void @__ockl_sanitizer_report(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 4, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) #3 ; 0 uses
  ret void
}

; Function Attrs: convergent norecurse nounwind denormal_fpenv(dynamic) uwtable
define weak hidden i64 @__ockl_devmem_request(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call <2 x i64> @__ockl_hostcall_preview(i32 noundef 3, i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #3
  %i.b = extractelement <2 x i64> %i.a, i64 0
  ret i64 %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { convergent norecurse nounwind denormal_fpenv(dynamic) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { convergent nounwind denormal_fpenv(dynamic) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { convergent nounwind }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
end_hunk_0
