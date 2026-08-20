inline.NumInlined: 17
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@decompress_68:bb.a
  %i.aj = load i32, ptr %i.ad, align 1, !tbaa !38
  br label %fill_bits32.exit

fill_bits32.exit:                                 ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ 0, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.32.val, i64 64 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.thread45

.lr.ph:                                           ; preds = %fill_bits32.exit
  %.not = icmp eq i32 %1, 0
  %i.as = getelementptr inbounds nuw i8, ptr %.32.val, i64 72
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bytestream2_put_byte.exit179.thread21
  %i.at = phi ptr [ %i.al, %.lr.ph ], [ %i.nn, %bytestream2_put_byte.exit179.thread21 ] ; 2 uses
  %i.au = phi i64 [ %i.ao, %.lr.ph ], [ %i.nq, %bytestream2_put_byte.exit179.thread21 ] ; 3 uses
  %i.av = phi ptr [ %i.am, %.lr.ph ], [ %i.no, %bytestream2_put_byte.exit179.thread21 ] ; 4 uses
  %.sroa.0.061 = phi i32 [ %.0.i.i, %.lr.ph ], [ %.sroa.0.16, %bytestream2_put_byte.exit179.thread21 ] ; 2 uses
  %.sroa.30.060 = phi i8 [ 32, %.lr.ph ], [ %.sroa.30.16, %bytestream2_put_byte.exit179.thread21 ] ; 2 uses
  %i.aw = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 26 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 19 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %.thread45

bb.i:                                             ; preds = %bb.h
  %i.bd = lshr i32 %.sroa.0.061, 2                ; 2 uses
  %i.be = add i8 %.sroa.30.060, -2                ; 3 uses
  %i.bf = icmp ult i8 %i.be, 17
  br i1 %i.bf, label %bb.j, label %read_bits32.exit

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp slt i64 %i.ba, 2
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !53
  %i.bi = load i16, ptr %i.ax, align 1, !tbaa !38
  %i.bj = zext i16 %i.bi to i32
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.l, %bb.k
  %i.bk = phi ptr [ %i.aw, %bb.k ], [ %i.bh, %bb.l ]
  %.0.i.i180 = phi i32 [ 0, %bb.k ], [ %i.bj, %bb.l ]
  %i.bl = zext nneg i8 %i.be to i32
  %i.bm = shl nuw i32 %.0.i.i180, %i.bl
  %i.bn = or i32 %i.bm, %i.bd
  %i.bo = add nuw nsw i8 %.sroa.30.060, 14
  br label %read_bits32.exit

read_bits32.exit:                                 ; preds = %bb.i, %bytestream2_get_le16.exit.i
  %i.bp = phi ptr [ %i.bk, %bytestream2_get_le16.exit.i ], [ %i.ax, %bb.i ] ; 20 uses
  %.sroa.30.1 = phi i8 [ %i.bo, %bytestream2_get_le16.exit.i ], [ %i.be, %bb.i ] ; 14 uses
  %.sroa.0.1 = phi i32 [ %i.bn, %bytestream2_get_le16.exit.i ], [ %i.bd, %bb.i ] ; 13 uses
  %i.bq = and i32 %.sroa.0.061, 3
  switch i32 %i.bq, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.ae
    i32 2, label %bb.av
    i32 3, label %bb.bn
  ]

bb.m:                                             ; preds = %read_bits32.exit
  %i.br = lshr i32 %.sroa.0.1, 1                  ; 2 uses
  %i.bs = add i8 %.sroa.30.1, -1                  ; 2 uses
  %i.bt = icmp ult i8 %.sroa.30.1, 18
  br i1 %i.bt, label %bb.n, label %read_bits32.exit183

bb.n:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.ay, %i.bu
  %i.bw = icmp slt i64 %i.bv, 2
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i181

bb.p:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !53
  %i.by = load i16, ptr %i.bp, align 1, !tbaa !38
  %i.bz = zext i16 %i.by to i32
  br label %bytestream2_get_le16.exit.i181

bytestream2_get_le16.exit.i181:                   ; preds = %bb.p, %bb.o
  %i.ca = phi ptr [ %i.aw, %bb.o ], [ %i.bx, %bb.p ]
  %.0.i.i182 = phi i32 [ 0, %bb.o ], [ %i.bz, %bb.p ]
  %i.cb = zext nneg i8 %i.bs to i32
  %i.cc = shl nuw i32 %.0.i.i182, %i.cb
  %i.cd = or i32 %i.cc, %i.br
  %i.ce = add nuw nsw i8 %.sroa.30.1, 15
  br label %read_bits32.exit183

read_bits32.exit183:                              ; preds = %bb.m, %bytestream2_get_le16.exit.i181
  %i.cf = phi ptr [ %i.ca, %bytestream2_get_le16.exit.i181 ], [ %i.bp, %bb.m ] ; 4 uses
  %.sroa.30.2 = phi i8 [ %i.ce, %bytestream2_get_le16.exit.i181 ], [ %i.bs, %bb.m ] ; 3 uses
  %.sroa.0.2 = phi i32 [ %i.cd, %bytestream2_get_le16.exit.i181 ], [ %i.br, %bb.m ] ; 3 uses
  %i.cg = and i32 %.sroa.0.1, 1
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %.preheader50

bb.q:                                             ; preds = %read_bits32.exit183
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ay, %i.ci
  %i.ck = icmp slt i64 %i.cj, 1
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit169

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !53
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !38
  br label %bytestream2_get_byte.exit169

bytestream2_get_byte.exit169:                     ; preds = %bb.r, %bb.s
  %.0.i168 = phi i8 [ 0, %bb.r ], [ %i.cm, %bb.s ]
  %i.cn = load i32, ptr %i.n, align 8, !tbaa !52
  %.not.i178 = icmp eq i32 %i.cn, 0
  %i.co = ptrtoint ptr %i.at to i64
  %i.cp = sub i64 %i.co, %i.au
  %i.cq = icmp sgt i64 %i.cp, 0
  %or.cond105 = and i1 %.not.i178, %i.cq
  br i1 %or.cond105, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bytestream2_get_byte.exit169
  store i8 %.0.i168, ptr %i.av, align 1, !tbaa !38
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !49
  br label %bytestream2_put_byte.exit179.thread21

bb.u:                                             ; preds = %bytestream2_get_byte.exit169
  store i32 1, ptr %i.n, align 8, !tbaa !52
  br label %bytestream2_put_byte.exit179.thread21

.preheader50:                                     ; preds = %read_bits32.exit183, %read_bits32.exit186
  %i.ct = phi ptr [ %i.dk, %read_bits32.exit186 ], [ %i.cf, %read_bits32.exit183 ] ; 4 uses
  %.sroa.30.3 = phi i8 [ %.sroa.30.4, %read_bits32.exit186 ], [ %.sroa.30.2, %read_bits32.exit183 ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.4, %read_bits32.exit186 ], [ %.sroa.0.2, %read_bits32.exit183 ] ; 2 uses
  %.0136 = phi i32 [ %i.dn, %read_bits32.exit186 ], [ 2, %read_bits32.exit183 ]
  %.0135 = phi i32 [ %i.cu, %read_bits32.exit186 ], [ 0, %read_bits32.exit183 ] ; 4 uses
  %i.cu = add nuw nsw i32 %.0135, 1               ; 3 uses
  %i.cv = lshr i32 %.sroa.0.3, %i.cu              ; 2 uses
  %i.cw = trunc i32 %i.cu to i8
  %i.cx = sub i8 %.sroa.30.3, %i.cw               ; 4 uses
  %i.cy = icmp ult i8 %i.cx, 17
  br i1 %i.cy, label %bb.v, label %read_bits32.exit186

bb.v:                                             ; preds = %.preheader50
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = sub i64 %i.ay, %i.cz
  %i.db = icmp slt i64 %i.da, 2
  br i1 %i.db, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i184

bb.x:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 2 ; 2 uses
  store ptr %i.dc, ptr %i.a, align 8, !tbaa !53
  %i.dd = load i16, ptr %i.ct, align 1, !tbaa !38
  %i.de = zext i16 %i.dd to i32
  br label %bytestream2_get_le16.exit.i184

bytestream2_get_le16.exit.i184:                   ; preds = %bb.x, %bb.w
  %i.df = phi ptr [ %i.aw, %bb.w ], [ %i.dc, %bb.x ]
  %.0.i.i185 = phi i32 [ 0, %bb.w ], [ %i.de, %bb.x ]
  %i.dg = zext nneg i8 %i.cx to i32
  %i.dh = shl nuw i32 %.0.i.i185, %i.dg
  %i.di = or i32 %i.dh, %i.cv
  %i.dj = add nuw nsw i8 %i.cx, 16
  br label %read_bits32.exit186

read_bits32.exit186:                              ; preds = %.preheader50, %bytestream2_get_le16.exit.i184
  %i.dk = phi ptr [ %i.df, %bytestream2_get_le16.exit.i184 ], [ %i.ct, %.preheader50 ]
  %.sroa.30.4 = phi i8 [ %i.dj, %bytestream2_get_le16.exit.i184 ], [ %i.cx, %.preheader50 ] ; 3 uses
  %.sroa.0.4 = phi i32 [ %i.di, %bytestream2_get_le16.exit.i184 ], [ %i.cv, %.preheader50 ] ; 3 uses
  %notmask.i = shl nsw i32 -2, %.0135
  %i.dl = xor i32 %notmask.i, -1
  %i.dm = and i32 %.sroa.0.3, %i.dl               ; 2 uses
  %i.dn = add i32 %i.dm, %.0136                   ; 2 uses
  %i.do = shl nuw i32 2, %.0135
  %i.dp = add nsw i32 %i.do, -1
  %.not144 = icmp eq i32 %i.dm, %i.dp
  %i.dq = icmp samesign ugt i32 %.0135, 14        ; 2 uses
  %. = zext i1 %i.dq to i32
  %.0128 = select i1 %.not144, i32 %., i32 5
  switch i32 %.0128, label %bytestream2_put_byte.exit179 [
    i32 0, label %.preheader50
    i32 5, label %.preheader
  ]

.preheader:                                       ; preds = %read_bits32.exit186
  %umax = tail call i32 @llvm.umax.i32(i32 %i.dn, i32 1)
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %bytestream2_put_byte.exit177
  %i.dr = phi ptr [ %i.av, %.preheader ], [ %i.ei, %bytestream2_put_byte.exit177 ] ; 3 uses
  %.013759 = phi i32 [ 0, %.preheader ], [ %i.ej, %bytestream2_put_byte.exit177 ]
  %i.ds = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp slt i64 %i.dw, 1
  br i1 %i.dx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr %i.ds, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit167

bb.aa:                                            ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store ptr %i.dy, ptr %i.a, align 8, !tbaa !53
  %i.dz = load i8, ptr %i.dt, align 1, !tbaa !38
  br label %bytestream2_get_byte.exit167

bytestream2_get_byte.exit167:                     ; preds = %bb.z, %bb.aa
  %.0.i166 = phi i8 [ 0, %bb.z ], [ %i.dz, %bb.aa ]
  %i.ea = load i32, ptr %i.n, align 8, !tbaa !52
  %.not.i176 = icmp eq i32 %i.ea, 0
  br i1 %.not.i176, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bytestream2_get_byte.exit167
  %i.eb = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dr to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 %.0.i166, ptr %i.dr, align 1, !tbaa !38
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1 ; 2 uses
  store ptr %i.eh, ptr %i.c, align 8, !tbaa !49
  br label %bytestream2_put_byte.exit177

bb.ad:                                            ; preds = %bb.ab, %bytestream2_get_byte.exit167
  store i32 1, ptr %i.n, align 8, !tbaa !52
  br label %bytestream2_put_byte.exit177

bytestream2_put_byte.exit177:                     ; preds = %bb.ac, %bb.ad
  %i.ei = phi ptr [ %i.eh, %bb.ac ], [ %i.dr, %bb.ad ]
  %i.ej = add nuw nsw i32 %.013759, 1             ; 2 uses
  %exitcond75.not = icmp eq i32 %i.ej, %umax
  br i1 %exitcond75.not, label %bytestream2_put_byte.exit179.thread21, label %bb.y, !llvm.loop !75

bytestream2_put_byte.exit179:                     ; preds = %read_bits32.exit186
  br i1 %i.dq, label %.thread45, label %bytestream2_put_byte.exit179.thread21

bb.ae:                                            ; preds = %read_bits32.exit
  %i.ek = lshr i32 %.sroa.0.1, 1                  ; 2 uses
  %i.el = add i8 %.sroa.30.1, -1                  ; 2 uses
  %i.em = icmp ult i8 %.sroa.30.1, 18
  br i1 %i.em, label %bb.af, label %read_bits32.exit189

bb.af:                                            ; preds = %bb.ae
  %i.en = ptrtoint ptr %i.bp to i64
  %i.eo = sub i64 %i.ay, %i.en
  %i.ep = icmp slt i64 %i.eo, 2
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i187

bb.ah:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !53
  %i.er = load i16, ptr %i.bp, align 1, !tbaa !38
  %i.es = zext i16 %i.er to i32
  br label %bytestream2_get_le16.exit.i187

bytestream2_get_le16.exit.i187:                   ; preds = %bb.ah, %bb.ag
  %i.et = phi ptr [ %i.aw, %bb.ag ], [ %i.eq, %bb.ah ]
  %.0.i.i188 = phi i32 [ 0, %bb.ag ], [ %i.es, %bb.ah ]
  %i.eu = zext nneg i8 %i.el to i32
  %i.ev = shl nuw i32 %.0.i.i188, %i.eu
  %i.ew = or i32 %i.ev, %i.ek
  %i.ex = add nuw nsw i8 %.sroa.30.1, 15
  br label %read_bits32.exit189

read_bits32.exit189:                              ; preds = %bb.ae, %bytestream2_get_le16.exit.i187
  %i.ey = phi ptr [ %i.et, %bytestream2_get_le16.exit.i187 ], [ %i.bp, %bb.ae ] ; 7 uses
  %.sroa.30.6 = phi i8 [ %i.ex, %bytestream2_get_le16.exit.i187 ], [ %i.el, %bb.ae ] ; 4 uses
  %.sroa.0.6 = phi i32 [ %i.ew, %bytestream2_get_le16.exit.i187 ], [ %i.ek, %bb.ae ] ; 4 uses
  %i.ez = and i32 %.sroa.0.1, 1
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %read_bits32.exit189
  %i.fb = lshr i32 %.sroa.0.6, 4                  ; 2 uses
  %i.fc = add i8 %.sroa.30.6, -4                  ; 3 uses
  %i.fd = icmp ult i8 %i.fc, 17
  br i1 %i.fd, label %bb.aj, label %read_bits32.exit192

bb.aj:                                            ; preds = %bb.ai
  %i.fe = ptrtoint ptr %i.ey to i64
  %i.ff = sub i64 %i.ay, %i.fe
  %i.fg = icmp slt i64 %i.ff, 2
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i190

bb.al:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store ptr %i.fh, ptr %i.a, align 8, !tbaa !53
  %i.fi = load i16, ptr %i.ey, align 1, !tbaa !38
  %i.fj = zext i16 %i.fi to i32
  br label %bytestream2_get_le16.exit.i190

bytestream2_get_le16.exit.i190:                   ; preds = %bb.al, %bb.ak
  %.0.i.i191 = phi i32 [ 0, %bb.ak ], [ %i.fj, %bb.al ]
  %i.fk = zext nneg i8 %i.fc to i32
  %i.fl = shl nuw i32 %.0.i.i191, %i.fk
  %i.fm = or i32 %i.fl, %i.fb
  %i.fn = add nuw nsw i8 %.sroa.30.6, 12
  br label %read_bits32.exit192

read_bits32.exit192:                              ; preds = %bb.ai, %bytestream2_get_le16.exit.i190
  %.sroa.30.7 = phi i8 [ %i.fn, %bytestream2_get_le16.exit.i190 ], [ %i.fc, %bb.ai ]
  %.sroa.0.7 = phi i32 [ %i.fm, %bytestream2_get_le16.exit.i190 ], [ %i.fb, %bb.ai ]
  %i.fo = and i32 %.sroa.0.6, 15
  %i.fp = add nuw nsw i32 %i.fo, 2
  br label %bb.ar

bb.am:                                            ; preds = %read_bits32.exit189
  %i.fq = ptrtoint ptr %i.ey to i64
  %i.fr = sub i64 %i.ay, %i.fq
  %i.fs = icmp slt i64 %i.fr, 1
  br i1 %i.fs, label %bytestream2_get_byte.exit165.thread, label %bytestream2_get_byte.exit165

bytestream2_get_byte.exit165.thread:              ; preds = %bb.am
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bb.an

bytestream2_get_byte.exit165:                     ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 1 ; 3 uses
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !53
  %i.fu = load i8, ptr %i.ey, align 1, !tbaa !38  ; 2 uses
  %i.fv = zext i8 %i.fu to i32                    ; 2 uses
  %i.fw = icmp sgt i8 %i.fu, -1
  br i1 %i.fw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bytestream2_get_byte.exit165.thread, %bytestream2_get_byte.exit165
  %.0.i16425 = phi i32 [ 0, %bytestream2_get_byte.exit165.thread ], [ %i.fv, %bytestream2_get_byte.exit165 ]
  %i.fx = add nuw nsw i32 %.0.i16425, 18
  br label %bb.ar

bb.ao:                                            ; preds = %bytestream2_get_byte.exit165
  %i.fy = shl nuw nsw i32 %i.fv, 8
  %i.fz = and i32 %i.fy, 32512                    ; 2 uses
  %i.ga = ptrtoint ptr %i.ft to i64
  %i.gb = sub i64 %i.ay, %i.ga
  %i.gc = icmp slt i64 %i.gb, 1
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit163

bb.aq:                                            ; preds = %bb.ao
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store ptr %i.gd, ptr %i.a, align 8, !tbaa !53
  %i.ge = load i8, ptr %i.ft, align 1, !tbaa !38
  %i.gf = zext i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.fz, %i.gf
  br label %bytestream2_get_byte.exit163

bytestream2_get_byte.exit163:                     ; preds = %bb.ap, %bb.aq
  %.0.i162 = phi i32 [ %i.fz, %bb.ap ], [ %i.gg, %bb.aq ]
  %i.gh = add nuw nsw i32 %.0.i162, 146
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bytestream2_get_byte.exit163, %read_bits32.exit192
  %.sroa.30.8 = phi i8 [ %.sroa.30.7, %read_bits32.exit192 ], [ %.sroa.30.6, %bb.an ], [ %.sroa.30.6, %bytestream2_get_byte.exit163 ] ; 2 uses
  %.sroa.0.8 = phi i32 [ %.sroa.0.7, %read_bits32.exit192 ], [ %.sroa.0.6, %bb.an ], [ %.sroa.0.6, %bytestream2_get_byte.exit163 ] ; 2 uses
  %.1127 = phi i32 [ %i.fp, %read_bits32.exit192 ], [ %i.fx, %bb.an ], [ %i.gh, %bytestream2_get_byte.exit163 ] ; 2 uses
  %i.gi = load i32, ptr %i.n, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.gi, 0
  br i1 %.not.i, label %bb.as, label %bytestream2_put_byte.exit179.thread21

bb.as:                                            ; preds = %bb.ar
  %i.gj = ptrtoint ptr %i.at to i64
  %i.gk = sub i64 %i.gj, %i.au
  %i.gl = zext nneg i32 %.1127 to i64
  %i.gm = tail call i64 @llvm.smin.i64(i64 %i.gk, i64 %i.gl) ; 2 uses
  %i.gn = trunc i64 %i.gm to i32
  %.not12.i = icmp eq i32 %.1127, %i.gn
  br i1 %.not12.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 1, ptr %i.n, align 8, !tbaa !52
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.go = and i64 %i.gm, 4294967295
  %i.gp = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.go
  store ptr %i.gp, ptr %i.c, align 8, !tbaa !49
  br label %bytestream2_put_byte.exit179.thread21

bb.av:                                            ; preds = %read_bits32.exit
  %i.gq = lshr i32 %.sroa.0.1, 2                  ; 2 uses
  %i.gr = add i8 %.sroa.30.1, -2                  ; 3 uses
  %i.gs = icmp ult i8 %i.gr, 17
  br i1 %i.gs, label %bb.aw, label %read_bits32.exit195

bb.aw:                                            ; preds = %bb.av
  %i.gt = ptrtoint ptr %i.bp to i64
  %i.gu = sub i64 %i.ay, %i.gt
  %i.gv = icmp slt i64 %i.gu, 2
  br i1 %i.gv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !46
  br label %bytestream2_get_le16.exit.i193

bb.ay:                                            ; preds = %bb.aw
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  store ptr %i.gw, ptr %i.a, align 8, !tbaa !53
  %i.gx = load i16, ptr %i.bp, align 1, !tbaa !38
  %i.gy = zext i16 %i.gx to i32
  br label %bytestream2_get_le16.exit.i193

bytestream2_get_le16.exit.i193:                   ; preds = %bb.ay, %bb.ax
  %i.gz = phi ptr [ %i.aw, %bb.ax ], [ %i.gw, %bb.ay ]
  %.0.i.i194 = phi i32 [ 0, %bb.ax ], [ %i.gy, %bb.ay ]
  %i.ha = zext nneg i8 %i.gr to i32
  %i.hb = shl nuw i32 %.0.i.i194, %i.ha
  %i.hc = or i32 %i.hb, %i.gq
  %i.hd = add nuw nsw i8 %.sroa.30.1, 14
  br label %read_bits32.exit195

read_bits32.exit195:                              ; preds = %bb.av, %bytestream2_get_le16.exit.i193
  %i.he = phi ptr [ %i.gz, %bytestream2_get_le16.exit.i193 ], [ %i.bp, %bb.av ] ; 7 uses
  %.sroa.30.9 = phi i8 [ %i.hd, %bytestream2_get_le16.exit.i193 ], [ %i.gr, %bb.av ] ; 3 uses
  %.sroa.0.9 = phi i32 [ %i.hc, %bytestream2_get_le16.exit.i193 ], [ %i.gq, %bb.av ] ; 3 uses
  %i.hf = and i32 %.sroa.0.1, 3                   ; 3 uses
  %.not142 = icmp eq i32 %i.hf, 3
  br i1 %.not142, label %bb.bl, label %bb.az

bb.az:                                            ; preds = %read_bits32.exit195
  %i.hg = lshr i32 %.sroa.0.9, 4                  ; 2 uses
end_hunk_0
begin_hunk_1_@lz_copy:bb.a
  br label %bytestream2_get_byte.exit31

bytestream2_get_byte.exit31:                      ; preds = %bb.c, %bb.d
  %.0.i30 = phi i8 [ 0, %bb.c ], [ %i.x, %bb.d ]
  %.not49 = icmp eq i32 %3, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bytestream2_get_byte.exit31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph47, %bytestream2_put_byte.exit35
  %.046 = phi i32 [ 0, %.lr.ph47 ], [ %i.aj, %bytestream2_put_byte.exit35 ]
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !52
  %.not.i34 = icmp eq i32 %i.aa, 0
  br i1 %.not.i34, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ac = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 %.0.i30, ptr %i.ac, align 1, !tbaa !38
  %i.ah = load ptr, ptr %0, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %0, align 8, !tbaa !49
  br label %bytestream2_put_byte.exit35

bb.h:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.y, align 8, !tbaa !52
  br label %bytestream2_put_byte.exit35

bytestream2_put_byte.exit35:                      ; preds = %bb.g, %bb.h
  %i.aj = add nuw nsw i32 %.046, 1                ; 2 uses
  %exitcond53.not = icmp eq i32 %i.aj, %3
  br i1 %exitcond53.not, label %.loopexit, label %bb.e, !llvm.loop !78

bb.i:                                             ; preds = %bb.a
  %i.ak = icmp slt i32 %2, 0
  %i.al = load ptr, ptr %0, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add nsw i32 %2, %i.ar                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp slt i32 %i.as, 0
  %..i37 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ba)
  %.0.i38 = select i1 %i.bb, i32 0, i32 %..i37
  %i.bc = sext i32 %.0.i38 to i64
  %i.bd = getelementptr inbounds i8, ptr %i.aw, i64 %i.bc
  store ptr %i.bd, ptr %1, align 8, !tbaa !46
  %.not48 = icmp eq i32 %3, 0                     ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  br i1 %.not48, label %.loopexit, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph45, %bytestream2_put_byte.exit33
  %.144 = phi i32 [ 0, %.lr.ph45 ], [ %i.bx, %bytestream2_put_byte.exit33 ]
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !46    ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp slt i64 %i.bk, 1
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.bg, ptr %1, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit29

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bm, ptr %1, align 8, !tbaa !53
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !38
  br label %bytestream2_get_byte.exit29

bytestream2_get_byte.exit29:                      ; preds = %bb.l, %bb.m
  %.0.i28 = phi i8 [ 0, %bb.l ], [ %i.bn, %bb.m ]
  %i.bo = load i32, ptr %i.be, align 8, !tbaa !52
  %.not.i32 = icmp eq i32 %i.bo, 0
  br i1 %.not.i32, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bytestream2_get_byte.exit29
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !51
  %i.bq = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i8 %.0.i28, ptr %i.bq, align 1, !tbaa !38
  %i.bv = load ptr, ptr %0, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.bw, ptr %0, align 8, !tbaa !49
  br label %bytestream2_put_byte.exit33

bb.p:                                             ; preds = %bb.n, %bytestream2_get_byte.exit29
  store i32 1, ptr %i.be, align 8, !tbaa !52
  br label %bytestream2_put_byte.exit33

bytestream2_put_byte.exit33:                      ; preds = %bb.o, %bb.p
  %i.bx = add nuw nsw i32 %.144, 1                ; 2 uses
  %exitcond52.not = icmp eq i32 %i.bx, %3
  br i1 %exitcond52.not, label %.loopexit, label %bb.k, !llvm.loop !79

bb.q:                                             ; preds = %bb.i
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bytestream2_put_byte.exit
  %.243 = phi i32 [ 0, %.lr.ph ], [ %i.cr, %bytestream2_put_byte.exit ]
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !46    ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp slt i64 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.ca, ptr %1, align 8, !tbaa !46
  br label %bytestream2_get_byte.exit

bb.t:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cg, ptr %1, align 8, !tbaa !53
  %i.ch = load i8, ptr %i.cb, align 1, !tbaa !38
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.s, %bb.t
  %.0.i = phi i8 [ 0, %bb.s ], [ %i.ch, %bb.t ]
  %i.ci = load i32, ptr %i.by, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bytestream2_get_byte.exit
  %i.cj = load ptr, ptr %i.bz, align 8, !tbaa !51
  %i.ck = load ptr, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 %.0.i, ptr %i.ck, align 1, !tbaa !38
  %i.cp = load ptr, ptr %0, align 8, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %0, align 8, !tbaa !49
  br label %bytestream2_put_byte.exit

bb.w:                                             ; preds = %bb.u, %bytestream2_get_byte.exit
  store i32 1, ptr %i.by, align 8, !tbaa !52
  br label %bytestream2_put_byte.exit

bytestream2_put_byte.exit:                        ; preds = %bb.v, %bb.w
  %i.cr = add nuw nsw i32 %.243, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !80

.loopexit:                                        ; preds = %bytestream2_put_byte.exit, %bytestream2_put_byte.exit33, %bytestream2_put_byte.exit35, %bb.q, %bb.j, %bytestream2_get_byte.exit31
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 136}
!30 = !{!10, !6, i64 112}
!31 = !{!10, !6, i64 116}
!32 = !{!33, !6, i64 1120}
!33 = !{!"GDVContext", !34, i64 0, !35, i64 8, !35, i64 32, !36, i64 56, !7, i64 88, !16, i64 1112, !6, i64 1120, !6, i64 1124, !6, i64 1128}
!34 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!35 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!36 = !{!"PutByteContext", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24}
!37 = !{!33, !16, i64 1112}
!38 = !{!7, !7, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !40}
!43 = !{!44, !16, i64 24}
!44 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!45 = !{!44, !6, i64 32}
!46 = !{!35, !16, i64 0}
!47 = !{!35, !16, i64 16}
!48 = !{!35, !16, i64 8}
!49 = !{!36, !16, i64 0}
!50 = !{!36, !16, i64 16}
!51 = !{!36, !16, i64 8}
!52 = !{!36, !6, i64 24}
!53 = !{!16, !16, i64 0}
!54 = !{!33, !6, i64 1128}
!55 = !{!33, !6, i64 1124}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = !{!6, !6, i64 0}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !60}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
end_hunk_1
