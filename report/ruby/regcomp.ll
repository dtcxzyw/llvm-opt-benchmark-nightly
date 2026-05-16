inline.NumInlined: 213
inline.NumDeleted: 79
begin_hunk_0_@compile_tree:bb.a
  %i.dz = phi i32 [ %i.dy, %bb.ai ], [ %i.dv, %.lr.ph.split.us.split.i ] ; 2 uses
  %i.ea = add i32 %i.dz, %.05563.us.i             ; 2 uses
  %i.eb = sext i32 %i.dz to i64
  %i.ec = getelementptr i8, ptr %.05464.us.i, i64 %i.eb ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.cu
  br i1 %i.ed, label %.lr.ph.split.us.split.i, label %._crit_edge.i, !llvm.loop !187

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ao
  %.05166.i = phi i32 [ %.1.i, %bb.ao ], [ %i.dk, %.lr.ph.i ] ; 4 uses
  %.05265.i = phi ptr [ %.153.i, %bb.ao ], [ %i.dc, %.lr.ph.i ] ; 2 uses
  %.05464.i = phi ptr [ %i.en, %bb.ao ], [ %i.dm, %.lr.ph.i ] ; 3 uses
  %.05563.i = phi i32 [ %.156.i, %bb.ao ], [ %i.dk, %.lr.ph.i ] ; 2 uses
  %i.ee = load i32, ptr %i.de, align 8, !tbaa !155 ; 2 uses
  %i.ef = load i32, ptr %i.dg, align 4, !tbaa !156
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.i
  %i.eh = tail call i32 @onigenc_mbclen(ptr noundef %.05464.i, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.da) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.split.i
  %i.ei = phi i32 [ %i.eh, %bb.ak ], [ %i.ee, %.lr.ph.split.i ] ; 4 uses
  %i.ej = icmp eq i32 %i.ei, %.05166.i
  br i1 %i.ej, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ek = add i32 %.05563.i, %.05166.i
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.el = sext i32 %.05563.i to i64
  tail call fastcc void @add_compile_string(ptr noundef %.05265.i, i32 noundef %.05166.i, i64 noundef %i.el, ptr noundef %1, i32 noundef %.lobit.i)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.156.i = phi i32 [ %i.ek, %bb.am ], [ %i.ei, %bb.an ] ; 2 uses
  %.153.i = phi ptr [ %.05265.i, %bb.am ], [ %.05464.i, %bb.an ] ; 2 uses
  %.1.i = phi i32 [ %.05166.i, %bb.am ], [ %i.ei, %bb.an ] ; 2 uses
  %i.em = sext i32 %i.ei to i64
  %i.en = getelementptr i8, ptr %.05464.i, i64 %i.em ; 2 uses
  %i.eo = icmp ult ptr %i.en, %i.cu
  br i1 %i.eo, label %.lr.ph.split.i, label %._crit_edge.i, !llvm.loop !186

._crit_edge.i:                                    ; preds = %bb.aj, %bb.ah, %bb.ao, %bb.ag
  %.055.lcssa.i = phi i32 [ %i.dk, %bb.ag ], [ %.156.i, %bb.ao ], [ %i.ds, %bb.ah ], [ %i.ea, %bb.aj ]
  %.052.lcssa.i = phi ptr [ %i.dc, %bb.ag ], [ %.153.i, %bb.ao ], [ %i.dc, %bb.ah ], [ %i.dc, %bb.aj ]
  %.051.lcssa.i = phi i32 [ %i.dk, %bb.ag ], [ %.1.i, %bb.ao ], [ %i.dk, %bb.ah ], [ %i.dk, %bb.aj ]
  %i.ep = sext i32 %.055.lcssa.i to i64
  tail call fastcc void @add_compile_string(ptr noundef %.052.lcssa.i, i32 noundef %.051.lcssa.i, i64 noundef %i.ep, ptr noundef %1, i32 noundef %.lobit.i)
  br label %common.ret

bb.ap:                                            ; preds = %tailrecurse
  %i.eq = getelementptr i8, ptr %.tr, i64 40      ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !189
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.aq, label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  %i.et = getelementptr i8, ptr %.tr, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !192
  %i.ev = and i32 %i.eu, 1
  %.not28.i = icmp eq i32 %i.ev, 0
  %i.ew = load i32, ptr %i.c, align 8, !tbaa !111 ; 3 uses
  %i.ex = add i32 %i.ew, 1                        ; 7 uses
  %i.ey = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.ez = icmp ult i32 %i.ey, %i.ex               ; 2 uses
  br i1 %.not28.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ez, label %.preheader.i.i183, label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %bb.ar
  %.pre.i.i182 = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.au

.preheader.i.i183:                                ; preds = %bb.ar, %.preheader.i.i183
  %i.fa = phi i32 [ %i.fb, %.preheader.i.i183 ], [ %i.ey, %bb.ar ]
  %i.fb = shl i32 %i.fa, 1                        ; 4 uses
  %i.fc = icmp ult i32 %i.fb, %i.ex
  br i1 %i.fc, label %.preheader.i.i183, label %bb.as, !llvm.loop !183

bb.as:                                            ; preds = %.preheader.i.i183
  store i32 %i.fb, ptr %i.d, align 4, !tbaa !38
  %i.fd = load ptr, ptr %1, align 8, !tbaa !17
  %i.fe = zext i32 %i.fb to i64
  %i.ff = tail call ptr @realloc(ptr noundef %i.fd, i64 noundef %i.fe) #23 ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ff, null
  %.pre503 = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i.i184, label %add_opcode.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.ff, ptr %1, align 8, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i181
  %i.fg = phi i32 [ %i.ew, %._crit_edge.i.i181 ], [ %.pre503, %bb.at ]
  %i.fh = phi ptr [ %.pre.i.i182, %._crit_edge.i.i181 ], [ %i.ff, %bb.at ]
  %i.fi = zext i32 %i.fg to i64
  %i.fj = getelementptr i8, ptr %i.fh, i64 %i.fi
  store i8 19, ptr %i.fj, align 1, !tbaa !35
  %i.fk = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.fl = icmp ult i32 %i.fk, %i.ex
  br i1 %i.fl, label %add_opcode.exit.sink.split.i, label %add_opcode.exit.i

bb.av:                                            ; preds = %bb.aq
  br i1 %i.ez, label %.preheader.i31.i, label %._crit_edge.i29.i

._crit_edge.i29.i:                                ; preds = %bb.av
  %.pre.i30.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.ay

.preheader.i31.i:                                 ; preds = %bb.av, %.preheader.i31.i
  %i.fm = phi i32 [ %i.fn, %.preheader.i31.i ], [ %i.ey, %bb.av ]
  %i.fn = shl i32 %i.fm, 1                        ; 4 uses
  %i.fo = icmp ult i32 %i.fn, %i.ex
  br i1 %i.fo, label %.preheader.i31.i, label %bb.aw, !llvm.loop !183

bb.aw:                                            ; preds = %.preheader.i31.i
  store i32 %i.fn, ptr %i.d, align 4, !tbaa !38
  %i.fp = load ptr, ptr %1, align 8, !tbaa !17
  %i.fq = zext i32 %i.fn to i64
  %i.fr = tail call ptr @realloc(ptr noundef %i.fp, i64 noundef %i.fq) #23 ; 3 uses
  %.not.i32.i = icmp eq ptr %i.fr, null
  %.pre502 = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i32.i, label %add_opcode.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.fr, ptr %1, align 8, !tbaa !17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i29.i
  %i.fs = phi i32 [ %i.ew, %._crit_edge.i29.i ], [ %.pre502, %bb.ax ]
  %i.ft = phi ptr [ %.pre.i30.i, %._crit_edge.i29.i ], [ %i.fr, %bb.ax ]
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr i8, ptr %i.ft, i64 %i.fu
  store i8 16, ptr %i.fv, align 1, !tbaa !35
  %i.fw = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.fx = icmp ult i32 %i.fw, %i.ex
  br i1 %i.fx, label %add_opcode.exit.sink.split.i, label %add_opcode.exit.i

add_opcode.exit.sink.split.i:                     ; preds = %bb.ay, %bb.au
  store i32 %i.ex, ptr %i.c, align 8, !tbaa !111
  br label %add_opcode.exit.i

add_opcode.exit.i:                                ; preds = %add_opcode.exit.sink.split.i, %bb.ay, %bb.aw, %bb.au, %bb.as
  %i.fy = phi i32 [ %i.ex, %add_opcode.exit.sink.split.i ], [ %i.fw, %bb.ay ], [ %.pre502, %bb.aw ], [ %i.fk, %bb.au ], [ %.pre503, %bb.as ] ; 2 uses
  %i.fz = getelementptr i8, ptr %.tr, i64 8
  %i.ga = add i32 %i.fy, 32                       ; 4 uses
  %i.gb = load i32, ptr %i.d, align 4, !tbaa !38  ; 2 uses
  %i.gc = icmp ult i32 %i.gb, %i.ga
  br i1 %i.gc, label %.preheader.i37.i, label %._crit_edge.i35.i

._crit_edge.i35.i:                                ; preds = %add_opcode.exit.i
  %.pre.i36.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.bb

.preheader.i37.i:                                 ; preds = %add_opcode.exit.i, %.preheader.i37.i
  %i.gd = phi i32 [ %i.ge, %.preheader.i37.i ], [ %i.gb, %add_opcode.exit.i ]
  %i.ge = shl i32 %i.gd, 1                        ; 4 uses
  %i.gf = icmp ult i32 %i.ge, %i.ga
  br i1 %i.gf, label %.preheader.i37.i, label %bb.az, !llvm.loop !193

bb.az:                                            ; preds = %.preheader.i37.i
  store i32 %i.ge, ptr %i.d, align 4, !tbaa !38
  %i.gg = load ptr, ptr %1, align 8, !tbaa !17
  %i.gh = zext i32 %i.ge to i64
  %i.gi = tail call ptr @realloc(ptr noundef %i.gg, i64 noundef %i.gh) #23 ; 3 uses
  %.not.i38.i = icmp eq ptr %i.gi, null
  br i1 %.not.i38.i, label %common.ret, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.gi, ptr %1, align 8, !tbaa !17
  %.pre28.i39.i = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge.i35.i
  %i.gj = phi i32 [ %i.fy, %._crit_edge.i35.i ], [ %.pre28.i39.i, %bb.ba ]
  %i.gk = phi ptr [ %.pre.i36.i, %._crit_edge.i35.i ], [ %i.gi, %bb.ba ]
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr i8, ptr %i.gk, i64 %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.gm, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.fz, i64 noundef 32, i1 noundef false) #22
  %i.gn = load i32, ptr %i.c, align 8, !tbaa !111
  %i.go = icmp ult i32 %i.gn, %i.ga
  br i1 %i.go, label %bb.bc, label %common.ret

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.ga, ptr %i.c, align 8, !tbaa !111
  br label %common.ret

bb.bd:                                            ; preds = %bb.ap
  %i.gp = getelementptr i8, ptr %1, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !75
  %i.gr = getelementptr i8, ptr %i.gq, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !156
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gu = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !7
  %.not.i40.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i40.i, label %bb.bf, label %bitset_is_empty.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.gw = getelementptr i8, ptr %.tr, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !7
  %.not.1.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.1.i.i, label %bb.bg, label %bitset_is_empty.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.gy = getelementptr i8, ptr %.tr, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !7
  %.not.2.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not.2.i.i, label %bb.bh, label %bitset_is_empty.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ha = getelementptr i8, ptr %.tr, i64 20
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !7
  %.not.3.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.3.i.i, label %bb.bi, label %bitset_is_empty.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %i.hc = getelementptr i8, ptr %.tr, i64 24
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !7
  %.not.4.i.i = icmp eq i32 %i.hd, 0
  br i1 %.not.4.i.i, label %bb.bj, label %bitset_is_empty.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.he = getelementptr i8, ptr %.tr, i64 28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %.not.5.i.i = icmp eq i32 %i.hf, 0
  br i1 %.not.5.i.i, label %bb.bk, label %bitset_is_empty.exit.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.hg = getelementptr i8, ptr %.tr, i64 32
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !7
  %.not.6.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not.6.i.i, label %bitset_is_empty.exit.i, label %bitset_is_empty.exit.thread.i

bitset_is_empty.exit.i:                           ; preds = %bb.bk
  %i.hi = getelementptr i8, ptr %.tr, i64 36
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %.not.7.i.not.i = icmp eq i32 %i.hj, 0
  br i1 %.not.7.i.not.i, label %bb.bl, label %bitset_is_empty.exit.thread.i

bb.bl:                                            ; preds = %bitset_is_empty.exit.i, %bb.bd
  %i.hk = getelementptr i8, ptr %.tr, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !192
  %i.hm = and i32 %i.hl, 1
  %.not27.i = icmp eq i32 %i.hm, 0
  %i.hn = load i32, ptr %i.c, align 8, !tbaa !111 ; 3 uses
  %i.ho = add i32 %i.hn, 1                        ; 6 uses
  %i.hp = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.hq = icmp ult i32 %i.hp, %i.ho               ; 2 uses
  br i1 %.not27.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.hq, label %.preheader.i43.i, label %._crit_edge.i41.i

._crit_edge.i41.i:                                ; preds = %bb.bm
  %.pre.i42.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.bp

.preheader.i43.i:                                 ; preds = %bb.bm, %.preheader.i43.i
  %i.hr = phi i32 [ %i.hs, %.preheader.i43.i ], [ %i.hp, %bb.bm ]
  %i.hs = shl i32 %i.hr, 1                        ; 4 uses
  %i.ht = icmp ult i32 %i.hs, %i.ho
  br i1 %i.ht, label %.preheader.i43.i, label %bb.bn, !llvm.loop !183

bb.bn:                                            ; preds = %.preheader.i43.i
  store i32 %i.hs, ptr %i.d, align 4, !tbaa !38
  %i.hu = load ptr, ptr %1, align 8, !tbaa !17
  %i.hv = zext i32 %i.hs to i64
  %i.hw = tail call ptr @realloc(ptr noundef %i.hu, i64 noundef %i.hv) #23 ; 3 uses
  %.not.i44.i = icmp eq ptr %i.hw, null
  br i1 %.not.i44.i, label %add_opcode.exit46.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.hw, ptr %1, align 8, !tbaa !17
  %.pre28.i45.i = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i41.i
  %i.hx = phi i32 [ %i.hn, %._crit_edge.i41.i ], [ %.pre28.i45.i, %bb.bo ]
  %i.hy = phi ptr [ %.pre.i42.i, %._crit_edge.i41.i ], [ %i.hw, %bb.bo ]
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr i8, ptr %i.hy, i64 %i.hz
  store i8 20, ptr %i.ia, align 1, !tbaa !35
  %i.ib = load i32, ptr %i.c, align 8, !tbaa !111
  %i.ic = icmp ult i32 %i.ib, %i.ho
  br i1 %i.ic, label %add_opcode.exit46.sink.split.i, label %add_opcode.exit46.i

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.hq, label %.preheader.i49.i, label %._crit_edge.i47.i

._crit_edge.i47.i:                                ; preds = %bb.bq
  %.pre.i48.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.bt

.preheader.i49.i:                                 ; preds = %bb.bq, %.preheader.i49.i
  %i.id = phi i32 [ %i.ie, %.preheader.i49.i ], [ %i.hp, %bb.bq ]
  %i.ie = shl i32 %i.id, 1                        ; 4 uses
  %i.if = icmp ult i32 %i.ie, %i.ho
  br i1 %i.if, label %.preheader.i49.i, label %bb.br, !llvm.loop !183

bb.br:                                            ; preds = %.preheader.i49.i
  store i32 %i.ie, ptr %i.d, align 4, !tbaa !38
  %i.ig = load ptr, ptr %1, align 8, !tbaa !17
  %i.ih = zext i32 %i.ie to i64
  %i.ii = tail call ptr @realloc(ptr noundef %i.ig, i64 noundef %i.ih) #23 ; 3 uses
  %.not.i50.i = icmp eq ptr %i.ii, null
  br i1 %.not.i50.i, label %add_opcode.exit46.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store ptr %i.ii, ptr %1, align 8, !tbaa !17
  %.pre28.i51.i = load i32, ptr %i.c, align 8, !tbaa !111
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge.i47.i
  %i.ij = phi i32 [ %i.hn, %._crit_edge.i47.i ], [ %.pre28.i51.i, %bb.bs ]
  %i.ik = phi ptr [ %.pre.i48.i, %._crit_edge.i47.i ], [ %i.ii, %bb.bs ]
  %i.il = zext i32 %i.ij to i64
  %i.im = getelementptr i8, ptr %i.ik, i64 %i.il
  store i8 17, ptr %i.im, align 1, !tbaa !35
  %i.in = load i32, ptr %i.c, align 8, !tbaa !111
  %i.io = icmp ult i32 %i.in, %i.ho
  br i1 %i.io, label %add_opcode.exit46.sink.split.i, label %add_opcode.exit46.i

add_opcode.exit46.sink.split.i:                   ; preds = %bb.bt, %bb.bp
  store i32 %i.ho, ptr %i.c, align 8, !tbaa !111
  br label %add_opcode.exit46.i

add_opcode.exit46.i:                              ; preds = %add_opcode.exit46.sink.split.i, %bb.bt, %bb.br, %bb.bp, %bb.bn
  %i.ip = load ptr, ptr %i.eq, align 8, !tbaa !189
  %i.iq = tail call fastcc i32 @add_multi_byte_cclass(ptr noundef %i.ip, ptr noundef nonnull %1)
  br label %common.ret

bitset_is_empty.exit.thread.i:                    ; preds = %bitset_is_empty.exit.i, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %i.ir = getelementptr i8, ptr %.tr, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !192
  %i.it = and i32 %i.is, 1
  %.not25.i = icmp eq i32 %i.it, 0
  %i.iu = load i32, ptr %i.c, align 8, !tbaa !111 ; 3 uses
  %i.iv = add i32 %i.iu, 1                        ; 7 uses
  %i.iw = load i32, ptr %i.d, align 4, !tbaa !38  ; 3 uses
  %i.ix = icmp ult i32 %i.iw, %i.iv               ; 2 uses
  br i1 %.not25.i, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bitset_is_empty.exit.thread.i
  br i1 %i.ix, label %.preheader.i55.i, label %._crit_edge.i53.i

._crit_edge.i53.i:                                ; preds = %bb.bu
  %.pre.i54.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.bx

.preheader.i55.i:                                 ; preds = %bb.bu, %.preheader.i55.i
  %i.iy = phi i32 [ %i.iz, %.preheader.i55.i ], [ %i.iw, %bb.bu ]
  %i.iz = shl i32 %i.iy, 1                        ; 4 uses
  %i.ja = icmp ult i32 %i.iz, %i.iv
  br i1 %i.ja, label %.preheader.i55.i, label %bb.bv, !llvm.loop !183

bb.bv:                                            ; preds = %.preheader.i55.i
  store i32 %i.iz, ptr %i.d, align 4, !tbaa !38
  %i.jb = load ptr, ptr %1, align 8, !tbaa !17
  %i.jc = zext i32 %i.iz to i64
  %i.jd = tail call ptr @realloc(ptr noundef %i.jb, i64 noundef %i.jc) #23 ; 3 uses
  %.not.i56.i = icmp eq ptr %i.jd, null
  %.pre501 = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i56.i, label %add_opcode.exit58.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.jd, ptr %1, align 8, !tbaa !17
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge.i53.i
  %i.je = phi i32 [ %i.iu, %._crit_edge.i53.i ], [ %.pre501, %bb.bw ]
  %i.jf = phi ptr [ %.pre.i54.i, %._crit_edge.i53.i ], [ %i.jd, %bb.bw ]
  %i.jg = zext i32 %i.je to i64
  %i.jh = getelementptr i8, ptr %i.jf, i64 %i.jg
  store i8 21, ptr %i.jh, align 1, !tbaa !35
  %i.ji = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.jj = icmp ult i32 %i.ji, %i.iv
  br i1 %i.jj, label %add_opcode.exit58.sink.split.i, label %add_opcode.exit58.i

bb.by:                                            ; preds = %bitset_is_empty.exit.thread.i
  br i1 %i.ix, label %.preheader.i61.i, label %._crit_edge.i59.i

._crit_edge.i59.i:                                ; preds = %bb.by
  %.pre.i60.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.cb

.preheader.i61.i:                                 ; preds = %bb.by, %.preheader.i61.i
  %i.jk = phi i32 [ %i.jl, %.preheader.i61.i ], [ %i.iw, %bb.by ]
  %i.jl = shl i32 %i.jk, 1                        ; 4 uses
  %i.jm = icmp ult i32 %i.jl, %i.iv
  br i1 %i.jm, label %.preheader.i61.i, label %bb.bz, !llvm.loop !183

bb.bz:                                            ; preds = %.preheader.i61.i
  store i32 %i.jl, ptr %i.d, align 4, !tbaa !38
  %i.jn = load ptr, ptr %1, align 8, !tbaa !17
  %i.jo = zext i32 %i.jl to i64
  %i.jp = tail call ptr @realloc(ptr noundef %i.jn, i64 noundef %i.jo) #23 ; 3 uses
  %.not.i62.i = icmp eq ptr %i.jp, null
  %.pre500 = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  br i1 %.not.i62.i, label %add_opcode.exit58.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.jp, ptr %1, align 8, !tbaa !17
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i59.i
  %i.jq = phi i32 [ %i.iu, %._crit_edge.i59.i ], [ %.pre500, %bb.ca ]
  %i.jr = phi ptr [ %.pre.i60.i, %._crit_edge.i59.i ], [ %i.jp, %bb.ca ]
  %i.js = zext i32 %i.jq to i64
  %i.jt = getelementptr i8, ptr %i.jr, i64 %i.js
  store i8 18, ptr %i.jt, align 1, !tbaa !35
  %i.ju = load i32, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.jv = icmp ult i32 %i.ju, %i.iv
  br i1 %i.jv, label %add_opcode.exit58.sink.split.i, label %add_opcode.exit58.i

add_opcode.exit58.sink.split.i:                   ; preds = %bb.cb, %bb.bx
  store i32 %i.iv, ptr %i.c, align 8, !tbaa !111
  br label %add_opcode.exit58.i

add_opcode.exit58.i:                              ; preds = %add_opcode.exit58.sink.split.i, %bb.cb, %bb.bz, %bb.bx, %bb.bv
  %i.jw = phi i32 [ %i.iv, %add_opcode.exit58.sink.split.i ], [ %i.ju, %bb.cb ], [ %.pre500, %bb.bz ], [ %i.ji, %bb.bx ], [ %.pre501, %bb.bv ] ; 2 uses
  %i.jx = add i32 %i.jw, 32                       ; 4 uses
  %i.jy = load i32, ptr %i.d, align 4, !tbaa !38  ; 2 uses
  %i.jz = icmp ult i32 %i.jy, %i.jx
  br i1 %i.jz, label %.preheader.i67.i, label %._crit_edge.i65.i

._crit_edge.i65.i:                                ; preds = %add_opcode.exit58.i
  %.pre.i66.i = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.ce

.preheader.i67.i:                                 ; preds = %add_opcode.exit58.i, %.preheader.i67.i
end_hunk_0
begin_hunk_1_@optimize_node_left:bb.a
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %._crit_edge.i70.i, %bb.l, %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ai, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.ar, align 4, !tbaa !93
  store i32 0, ptr %i.aj, align 8, !tbaa !92
  store i8 0, ptr %i.as, align 4, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.q, %bb.h
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ai)
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ay)
  %i.ii = load i32, ptr %i.q, align 8, !tbaa !272 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ik = load i64, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %.not63.i = icmp eq i64 %i.ik, 0
  br i1 %.not63.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.il = trunc i64 %i.ik to i32                  ; 2 uses
  %i.im = icmp sgt i32 %i.ii, %i.il
  br i1 %i.im, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.il, ptr %i.q, align 8, !tbaa !272
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.in = load i64, ptr %i.w, align 8, !tbaa !273
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.t, ptr noundef nonnull %i.o)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  call fastcc void @select_opt_exact_info(ptr noundef %i.bx, ptr noundef nonnull %i.k, ptr noundef nonnull %i.o)
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  %i.ip = load i32, ptr %i.az, align 8, !tbaa !272
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ba, i64 64, i1 false), !tbaa.struct !274
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.z
  %i.ir = load i32, ptr %i.am, align 8, !tbaa !275 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %concat_left_node_opt_info.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = load i32, ptr %i.bc, align 8, !tbaa !275 ; 2 uses
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %comp_distance_value.exit.sink.split.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iv = sdiv i32 32768, %i.it                   ; 3 uses
  %i.iw = sdiv i32 32768, %i.ir                   ; 3 uses
  %i.ix = icmp slt i32 %i.iw, 1
  br i1 %i.ix, label %concat_left_node_opt_info.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iy = icmp slt i32 %i.iv, 1
  br i1 %i.iy, label %comp_distance_value.exit.sink.split.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.iz = load i64, ptr %i.x, align 8, !tbaa !94  ; 2 uses
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %distance_value.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jb = load i64, ptr %i.s, align 8, !tbaa !95
  %i.jc = sub i64 %i.iz, %i.jb                    ; 2 uses
  %i.jd = icmp ult i64 %i.jc, 100
  br i1 %i.jd, label %bb.an, label %distance_value.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.je = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.jc
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !96
  %i.jg = sext i16 %i.jf to i32
  %i.jh = mul nsw i32 %i.iv, %i.jg
  br label %distance_value.exit.i.i.i

distance_value.exit.i.i.i:                        ; preds = %bb.an, %bb.am, %bb.al
  %.0.i.i.i.i = phi i32 [ 0, %bb.al ], [ %i.jh, %bb.an ], [ %i.iv, %bb.am ] ; 2 uses
  %i.ji = load i64, ptr %i.an, align 8, !tbaa !94 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, -1
  br i1 %i.jj, label %distance_value.exit21.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %distance_value.exit.i.i.i
  %i.jk = load i64, ptr %i.bb, align 8, !tbaa !95
  %i.jl = sub i64 %i.ji, %i.jk                    ; 2 uses
  %i.jm = icmp ult i64 %i.jl, 100
  br i1 %i.jm, label %bb.ap, label %distance_value.exit21.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.jn = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.jl
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !96
  %i.jp = sext i16 %i.jo to i32
  %i.jq = mul nsw i32 %i.iw, %i.jp
  br label %distance_value.exit21.i.i.i

distance_value.exit21.i.i.i:                      ; preds = %bb.ap, %bb.ao, %distance_value.exit.i.i.i
  %.0.i20.i.i.i = phi i32 [ 0, %distance_value.exit.i.i.i ], [ %i.jq, %bb.ap ], [ %i.iw, %bb.ao ] ; 2 uses
  %i.jr = icmp sgt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.jr, label %comp_distance_value.exit.sink.split.i.i, label %bb.aq

bb.aq:                                            ; preds = %distance_value.exit21.i.i.i
  %i.js = icmp slt i32 %.0.i20.i.i.i, %.0.i.i.i.i
  br i1 %i.js, label %concat_left_node_opt_info.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jt = load i64, ptr %i.bb, align 8, !tbaa !95
  %i.ju = load i64, ptr %i.s, align 8, !tbaa !95
  %i.jv = icmp ult i64 %i.jt, %i.ju
  br i1 %i.jv, label %comp_distance_value.exit.sink.split.i.i, label %concat_left_node_opt_info.exit

comp_distance_value.exit.sink.split.i.i:          ; preds = %bb.ar, %distance_value.exit21.i.i.i, %bb.ak, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.bb, i64 288, i1 false)
  br label %concat_left_node_opt_info.exit

concat_left_node_opt_info.exit:                   ; preds = %bb.ah, %bb.aj, %bb.aq, %bb.ar, %comp_distance_value.exit.sink.split.i.i
  %.val.i324 = load i64, ptr %4, align 8, !tbaa !95 ; 3 uses
  %.val64.i = load i64, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.jw = load i64, ptr %1, align 8, !tbaa !95    ; 3 uses
  %i.jx = icmp eq i64 %i.jw, -1
  %i.jy = icmp eq i64 %.val.i324, -1
  %or.cond.i.i.i = or i1 %i.jy, %i.jx
  %i.jz = xor i64 %.val.i324, -1
  %.not.i.i.i = icmp ugt i64 %i.jw, %i.jz
  %or.cond10.i.i.i = or i1 %.not.i.i.i, %or.cond.i.i.i
  %i.ka = add i64 %i.jw, %.val.i324
  %.0.i.i.i = select i1 %or.cond10.i.i.i, i64 -1, i64 %i.ka
  store i64 %.0.i.i.i, ptr %1, align 8, !tbaa !95
  %i.kb = load i64, ptr %i.ae, align 8, !tbaa !94 ; 3 uses
  %i.kc = icmp eq i64 %i.kb, -1
  %i.kd = icmp eq i64 %.val64.i, -1
  %or.cond.i6.i.i = or i1 %i.kd, %i.kc
  %i.ke = xor i64 %.val64.i, -1
  %.not.i7.i.i = icmp ugt i64 %i.kb, %i.ke
  %or.cond10.i8.i.i = or i1 %.not.i7.i.i, %or.cond.i6.i.i
  %i.kf = add i64 %i.kb, %.val64.i
  %.0.i9.i.i = select i1 %or.cond10.i8.i.i, i64 -1, i64 %i.kf
  store i64 %.0.i9.i.i, ptr %i.ae, align 8, !tbaa !94
  %i.kg = getelementptr i8, ptr %.0253, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !35 ; 2 uses
  %.not315 = icmp eq ptr %i.kh, null
  br i1 %.not315, label %.critedge, label %bb.c, !llvm.loop !276

.critedge:                                        ; preds = %bb.c, %concat_left_node_opt_info.exit
  %.lcssa644 = phi i32 [ %i.bl, %bb.c ], [ 0, %concat_left_node_opt_info.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.ret1057

bb.as:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ki = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.kn = getelementptr i8, ptr %2, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.kp = getelementptr i8, ptr %1, i64 240       ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 244 ; 2 uses
  %i.kt = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.ku = getelementptr i8, ptr %1, i64 232       ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.kw = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.at

bb.at:                                            ; preds = %alt_merge_node_opt_info.exit, %bb.as
  %.0254 = phi ptr [ %.tr, %bb.as ], [ %i.mp, %alt_merge_node_opt_info.exit ] ; 3 uses
  %i.ky = getelementptr i8, ptr %.0254, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !35
  %i.la = call fastcc i32 @optimize_node_left(ptr noundef %i.kz, ptr noundef %5, ptr noundef %2) ; 2 uses
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.au, label %.critedge3

bb.au:                                            ; preds = %bb.at
  %i.lc = icmp eq ptr %.0254, %.tr
  br i1 %i.lc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %5, i64 504, i1 false), !tbaa.struct !277
  br label %alt_merge_node_opt_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.ld = load <2 x i32>, ptr %i.kj, align 8, !tbaa !7
  %i.le = load <2 x i32>, ptr %i.ki, align 8, !tbaa !7
  %i.lf = and <2 x i32> %i.le, %i.ld
  store <2 x i32> %i.lf, ptr %i.ki, align 8, !tbaa !7
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.t, ptr noundef nonnull readonly %i.kk, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.kl, ptr noundef nonnull readonly %2)
  call fastcc void @alt_merge_opt_exact_info(ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.km, ptr noundef nonnull readonly %2)
  %i.lg = load ptr, ptr %i.kn, align 8, !tbaa !76
  %i.lh = load i32, ptr %i.kp, align 8, !tbaa !275
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %alt_merge_opt_map_info.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lj = load i32, ptr %i.kq, align 8, !tbaa !275
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ll = load i64, ptr %i.x, align 8, !tbaa !278 ; 2 uses
  %i.lm = load i64, ptr %i.ko, align 8, !tbaa !104 ; 3 uses
  %i.ln = icmp ult i64 %i.ll, %i.lm
  br i1 %i.ln, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) @clear_opt_map_info.clean_info, i64 noundef 288, i1 noundef false) #22
  br label %alt_merge_opt_map_info.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.lo = load i64, ptr %i.s, align 8, !tbaa !95
  %i.lp = icmp ugt i64 %i.lo, %i.lm
  br i1 %i.lp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i64 %i.lm, ptr %i.s, align 8, !tbaa !95
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lq = load i64, ptr %i.kr, align 8, !tbaa !94 ; 2 uses
  %i.lr = icmp ult i64 %i.ll, %i.lq
  br i1 %i.lr, label %bb.bd, label %alt_merge_mml.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.lq, ptr %i.x, align 8, !tbaa !94
  br label %alt_merge_mml.exit.i.i

alt_merge_mml.exit.i.i:                           ; preds = %bb.bd, %bb.bc
  %i.ls = getelementptr i8, ptr %i.lg, i64 20
  %i.lt = load i8, ptr %i.ks, align 4, !tbaa !35
  %.not.peel.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.peel.i.i, label %bb.be, label %.thread.i.i

.thread.i.i:                                      ; preds = %alt_merge_mml.exit.i.i
  store i8 1, ptr %i.kt, align 4, !tbaa !35
  br label %bb.bf

bb.be:                                            ; preds = %alt_merge_mml.exit.i.i
  %.pre.i.i = load i8, ptr %i.kt, align 4, !tbaa !35
  %i.lu = icmp eq i8 %.pre.i.i, 0
  br i1 %i.lu, label %.peel.next.i.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.thread.i.i
  %i.lv = load i32, ptr %i.ls, align 4, !tbaa !156
  %i.lw = icmp sgt i32 %i.lv, 1
  %spec.select.i.i = select i1 %i.lw, i32 20, i32 5
  br label %.peel.next.i.i.preheader

.peel.next.i.i.preheader:                         ; preds = %bb.bf, %bb.be
  %.026.i.i.ph = phi i32 [ 0, %bb.be ], [ %spec.select.i.i, %bb.bf ]
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.preheader, %bb.bj
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bj ], [ 1, %.peel.next.i.i.preheader ] ; 5 uses
  %.026.i.i = phi i32 [ %.1.i.i, %bb.bj ], [ %.026.i.i.ph, %.peel.next.i.i.preheader ] ; 2 uses
  %i.lx = getelementptr i8, ptr %i.ks, i64 %indvars.iv.i.i
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !35
  %.not.i.i326 = icmp eq i8 %i.ly, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.kt, i64 %indvars.iv.i.i ; 2 uses
  br i1 %.not.i.i326, label %bb.bg, label %.thread36.i.i

.thread36.i.i:                                    ; preds = %.peel.next.i.i
  store i8 1, ptr %.phi.trans.insert.i.i, align 1, !tbaa !35
  br label %bb.bh

bb.bg:                                            ; preds = %.peel.next.i.i
  %.pre31.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !35
  %i.lz = icmp eq i8 %.pre31.i.i, 0
  br i1 %i.lz, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread36.i.i
  %i.ma = icmp samesign ult i64 %indvars.iv.i.i, 128
  br i1 %i.ma, label %bb.bi, label %map_position_value.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.mb = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv.i.i
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !96
  %i.md = sext i16 %i.mc to i32
  br label %map_position_value.exit.i.i

map_position_value.exit.i.i:                      ; preds = %bb.bi, %bb.bh
  %.0.i.i.i327 = phi i32 [ 4, %bb.bh ], [ %i.md, %bb.bi ]
  %i.me = add i32 %.0.i.i.i327, %.026.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %map_position_value.exit.i.i, %bb.bg
  %.1.i.i = phi i32 [ %i.me, %map_position_value.exit.i.i ], [ %.026.i.i, %bb.bg ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %.loopexit.i.i328, label %.peel.next.i.i, !llvm.loop !279

.loopexit.i.i328:                                 ; preds = %bb.bj
  store i32 %.1.i.i, ptr %i.kp, align 8, !tbaa !275
  %i.mf = load <2 x i32>, ptr %i.kv, align 8, !tbaa !7
  %i.mg = load <2 x i32>, ptr %i.ku, align 8, !tbaa !7
  %i.mh = and <2 x i32> %i.mg, %i.mf
  store <2 x i32> %i.mh, ptr %i.ku, align 8, !tbaa !7
  br label %alt_merge_opt_map_info.exit.i

alt_merge_opt_map_info.exit.i:                    ; preds = %.loopexit.i.i328, %bb.az, %bb.aw
  %i.mi = load i64, ptr %1, align 8, !tbaa !95
  %i.mj = load i64, ptr %5, align 8, !tbaa !95    ; 2 uses
  %i.mk = icmp ugt i64 %i.mi, %i.mj
  br i1 %i.mk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %alt_merge_opt_map_info.exit.i
  store i64 %i.mj, ptr %1, align 8, !tbaa !95
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %alt_merge_opt_map_info.exit.i
  %i.ml = load i64, ptr %i.kw, align 8, !tbaa !94
  %i.mm = load i64, ptr %i.kx, align 8, !tbaa !94 ; 2 uses
  %i.mn = icmp ult i64 %i.ml, %i.mm
  br i1 %i.mn, label %bb.bm, label %alt_merge_node_opt_info.exit

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.mm, ptr %i.kw, align 8, !tbaa !94
  br label %alt_merge_node_opt_info.exit

alt_merge_node_opt_info.exit:                     ; preds = %bb.av, %bb.bl, %bb.bm
  %i.mo = getelementptr i8, ptr %.0254, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !35 ; 2 uses
  %.not314 = icmp eq ptr %i.mp, null
  br i1 %.not314, label %.critedge3, label %bb.at, !llvm.loop !281

.critedge3:                                       ; preds = %bb.at, %alt_merge_node_opt_info.exit
  %.lcssa645 = phi i32 [ %i.la, %bb.at ], [ 0, %alt_merge_node_opt_info.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.ret1057

bb.bn:                                            ; preds = %tailrecurse
  %i.mq = getelementptr i8, ptr %.tr, i64 16      ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !152 ; 13 uses
  %i.ms = ptrtoint ptr %i.mr to i64               ; 4 uses
  %i.mt = getelementptr i8, ptr %.tr, i64 8       ; 3 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !150 ; 6 uses
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 7 uses
  %i.my = getelementptr i8, ptr %.tr, i64 24
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !35 ; 2 uses
  %i.na = and i32 %i.mz, 2
  %.not309 = icmp eq i32 %i.na, 0
  br i1 %.not309, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.nb = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !76 ; 3 uses
  %i.nd = icmp ult ptr %i.mu, %i.mr
  br i1 %i.nd, label %.lr.ph35.i, label %concat_opt_exact_info_str.exit

.lr.ph35.i:                                       ; preds = %bb.bo
  %i.ne = getelementptr i8, ptr %i.nc, i64 16
  %i.nf = getelementptr i8, ptr %i.nc, i64 20
  %i.ng = add i64 %i.a, 60
  br label %bb.bp

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block905, %vec.epilog.middle.block922, %.preheader.i
  %.125.lcssa.i = phi i32 [ %.02433.i, %.preheader.i ], [ %i.ov, %vec.epilog.middle.block922 ], [ %i.ol, %middle.block905 ], [ %i.pd, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %i.ot, %vec.epilog.middle.block922 ], [ %i.oj, %middle.block905 ], [ %i.pb, %.lr.ph.i ] ; 2 uses
  %i.nh = icmp ult ptr %.1.lcssa.i, %i.mr
  %i.ni = icmp slt i32 %.125.lcssa.i, 24
  %i.nj = select i1 %i.nh, i1 %i.ni, i1 false
  br i1 %i.nj, label %bb.bp, label %concat_opt_exact_info_str.exit, !llvm.loop !282

bb.bp:                                            ; preds = %.loopexit.i, %.lr.ph35.i
  %.034.i = phi ptr [ %i.mu, %.lr.ph35.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 11 uses
  %.02433.i = phi i32 [ 0, %.lr.ph35.i ], [ %.125.lcssa.i, %.loopexit.i ] ; 13 uses
  %.034.i888 = ptrtoint ptr %.034.i to i64        ; 3 uses
  %i.nk = load i32, ptr %i.ne, align 8, !tbaa !155 ; 2 uses
  %i.nl = load i32, ptr %i.nf, align 4, !tbaa !156
  %i.nm = icmp eq i32 %i.nk, %i.nl
  br i1 %i.nm, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nn = tail call i32 @onigenc_mbclen(ptr noundef %.034.i, ptr noundef nonnull %i.mr, ptr noundef nonnull %i.nc) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.no = phi i32 [ %i.nn, %bb.bq ], [ %i.nk, %bb.bp ] ; 5 uses
  %i.np = add i32 %i.no, %.02433.i
  %i.nq = icmp sgt i32 %i.np, 24
  br i1 %i.nq, label %concat_opt_exact_info_str.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.br
  %i.nr = icmp sgt i32 %i.no, 0
  %i.ns = icmp ult ptr %.034.i, %i.mr
  %i.nt = and i1 %i.ns, %i.nr
  br i1 %i.nt, label %iter.check910, label %.loopexit.i

iter.check910:                                    ; preds = %.preheader.i
  %i.nu = xor i64 %.034.i888, -1
  %i.nv = add i64 %i.nu, %i.ms
  %i.nw = add nsw i32 %i.no, -1
  %i.nx = zext i32 %i.nw to i64
  %umin892 = call i64 @llvm.umin.i64(i64 %i.nv, i64 %i.nx) ; 3 uses
  %i.ny = add nuw nsw i64 %umin892, 1             ; 5 uses
  %min.iters.check893 = icmp samesign ult i64 %umin892, 3
  br i1 %min.iters.check893, label %.lr.ph.i.preheader, label %vector.scevcheck887

vector.scevcheck887:                              ; preds = %iter.check910
  %i.nz = xor i64 %.034.i888, -1
  %i.oa = add i64 %i.nz, %i.ms
  %i.ob = add nsw i32 %i.no, -1
  %i.oc = zext i32 %i.ob to i64
  %umin889 = call i64 @llvm.umin.i64(i64 %i.oa, i64 %i.oc)
  %i.od = trunc nuw i64 %umin889 to i32
  %i.oe = add i32 %.02433.i, %i.od
  %i.of = icmp slt i32 %i.oe, %.02433.i
  br i1 %i.of, label %.lr.ph.i.preheader, label %vector.memcheck890

vector.memcheck890:                               ; preds = %vector.scevcheck887
  %i.og = sext i32 %.02433.i to i64
  %i.oh = add i64 %i.ng, %i.og
  %i.oi = sub i64 %i.oh, %.034.i888
  %diff.check891 = icmp ult i64 %i.oi, 32
  br i1 %diff.check891, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check894

vector.main.loop.iter.check894:                   ; preds = %vector.memcheck890
  %min.iters.check895 = icmp samesign ult i64 %umin892, 31
  br i1 %min.iters.check895, label %vec.epilog.ph914, label %vector.ph896

vector.ph896:                                     ; preds = %vector.main.loop.iter.check894
  %n.mod.vf897 = and i64 %i.ny, 28
  %n.vec898 = and i64 %i.ny, 8589934560           ; 5 uses
  %i.oj = getelementptr i8, ptr %.034.i, i64 %n.vec898 ; 2 uses
  %i.ok = trunc i64 %n.vec898 to i32              ; 2 uses
  %i.ol = add i32 %.02433.i, %i.ok                ; 2 uses
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph896
  %index900 = phi i64 [ 0, %vector.ph896 ], [ %index.next904, %vector.body899 ] ; 3 uses
  %next.gep901 = getelementptr i8, ptr %.034.i, i64 %index900 ; 2 uses
  %i.om = trunc i64 %index900 to i32
  %i.on = add i32 %.02433.i, %i.om
  %i.oo = getelementptr i8, ptr %next.gep901, i64 16
  %wide.load902 = load <16 x i8>, ptr %next.gep901, align 1, !tbaa !35
  %wide.load903 = load <16 x i8>, ptr %i.oo, align 1, !tbaa !35
  %i.op = sext i32 %i.on to i64
end_hunk_1
begin_hunk_2_@optimize_node_left:bb.a
  br label %bb.ca

.loopexit.i335:                                   ; preds = %.lr.ph.i338, %middle.block865, %vec.epilog.middle.block882, %.preheader.i334
  %.125.lcssa.i336 = phi i32 [ %.02433.i333, %.preheader.i334 ], [ %i.sg, %vec.epilog.middle.block882 ], [ %i.rw, %middle.block865 ], [ %i.so, %.lr.ph.i338 ] ; 3 uses
  %.1.lcssa.i337 = phi ptr [ %.034.i332, %.preheader.i334 ], [ %i.se, %vec.epilog.middle.block882 ], [ %i.ru, %middle.block865 ], [ %i.sm, %.lr.ph.i338 ] ; 2 uses
  %i.qs = icmp ult ptr %.1.lcssa.i337, %i.mr
  %i.qt = icmp slt i32 %.125.lcssa.i336, 24
  %i.qu = select i1 %i.qs, i1 %i.qt, i1 false
  br i1 %i.qu, label %bb.ca, label %concat_opt_exact_info_str.exit342, !llvm.loop !282

bb.ca:                                            ; preds = %.loopexit.i335, %.lr.ph35.i331
  %.034.i332 = phi ptr [ %i.mu, %.lr.ph35.i331 ], [ %.1.lcssa.i337, %.loopexit.i335 ] ; 11 uses
  %.02433.i333 = phi i32 [ 0, %.lr.ph35.i331 ], [ %.125.lcssa.i336, %.loopexit.i335 ] ; 13 uses
  %.034.i332848 = ptrtoint ptr %.034.i332 to i64  ; 3 uses
  %i.qv = load i32, ptr %i.qp, align 8, !tbaa !155 ; 2 uses
  %i.qw = load i32, ptr %i.qq, align 4, !tbaa !156
  %i.qx = icmp eq i32 %i.qv, %i.qw
  br i1 %i.qx, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qy = tail call i32 @onigenc_mbclen(ptr noundef %.034.i332, ptr noundef nonnull %i.mr, ptr noundef nonnull %i.qg) #22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.qz = phi i32 [ %i.qy, %bb.cb ], [ %i.qv, %bb.ca ] ; 5 uses
  %i.ra = add i32 %i.qz, %.02433.i333
  %i.rb = icmp sgt i32 %i.ra, 24
  br i1 %i.rb, label %concat_opt_exact_info_str.exit342, label %.preheader.i334

.preheader.i334:                                  ; preds = %bb.cc
  %i.rc = icmp sgt i32 %i.qz, 0
  %i.rd = icmp ult ptr %.034.i332, %i.mr
  %i.re = and i1 %i.rd, %i.rc
  br i1 %i.re, label %iter.check870, label %.loopexit.i335

iter.check870:                                    ; preds = %.preheader.i334
  %i.rf = xor i64 %.034.i332848, -1
  %i.rg = add i64 %i.rf, %i.ms
  %i.rh = add nsw i32 %i.qz, -1
  %i.ri = zext i32 %i.rh to i64
  %umin852 = call i64 @llvm.umin.i64(i64 %i.rg, i64 %i.ri) ; 3 uses
  %i.rj = add nuw nsw i64 %umin852, 1             ; 5 uses
  %min.iters.check853 = icmp samesign ult i64 %umin852, 3
  br i1 %min.iters.check853, label %.lr.ph.i338.preheader, label %vector.scevcheck847

vector.scevcheck847:                              ; preds = %iter.check870
  %i.rk = xor i64 %.034.i332848, -1
  %i.rl = add i64 %i.rk, %i.ms
  %i.rm = add nsw i32 %i.qz, -1
  %i.rn = zext i32 %i.rm to i64
  %umin849 = call i64 @llvm.umin.i64(i64 %i.rl, i64 %i.rn)
  %i.ro = trunc nuw i64 %umin849 to i32
  %i.rp = add i32 %.02433.i333, %i.ro
  %i.rq = icmp slt i32 %i.rp, %.02433.i333
  br i1 %i.rq, label %.lr.ph.i338.preheader, label %vector.memcheck850

vector.memcheck850:                               ; preds = %vector.scevcheck847
  %i.rr = sext i32 %.02433.i333 to i64
  %i.rs = add i64 %i.qr, %i.rr
  %i.rt = sub i64 %i.rs, %.034.i332848
  %diff.check851 = icmp ult i64 %i.rt, 32
  br i1 %diff.check851, label %.lr.ph.i338.preheader, label %vector.main.loop.iter.check854

vector.main.loop.iter.check854:                   ; preds = %vector.memcheck850
  %min.iters.check855 = icmp samesign ult i64 %umin852, 31
  br i1 %min.iters.check855, label %vec.epilog.ph874, label %vector.ph856

vector.ph856:                                     ; preds = %vector.main.loop.iter.check854
  %n.mod.vf857 = and i64 %i.rj, 28
  %n.vec858 = and i64 %i.rj, 8589934560           ; 5 uses
  %i.ru = getelementptr i8, ptr %.034.i332, i64 %n.vec858 ; 2 uses
  %i.rv = trunc i64 %n.vec858 to i32              ; 2 uses
  %i.rw = add i32 %.02433.i333, %i.rv             ; 2 uses
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph856
  %index860 = phi i64 [ 0, %vector.ph856 ], [ %index.next864, %vector.body859 ] ; 3 uses
  %next.gep861 = getelementptr i8, ptr %.034.i332, i64 %index860 ; 2 uses
  %i.rx = trunc i64 %index860 to i32
  %i.ry = add i32 %.02433.i333, %i.rx
  %i.rz = getelementptr i8, ptr %next.gep861, i64 16
  %wide.load862 = load <16 x i8>, ptr %next.gep861, align 1, !tbaa !35
  %wide.load863 = load <16 x i8>, ptr %i.rz, align 1, !tbaa !35
  %i.sa = sext i32 %i.ry to i64
  %i.sb = getelementptr i8, ptr %i.j, i64 %i.sa   ; 2 uses
  %i.sc = getelementptr i8, ptr %i.sb, i64 16
  store <16 x i8> %wide.load862, ptr %i.sb, align 1, !tbaa !35
  store <16 x i8> %wide.load863, ptr %i.sc, align 1, !tbaa !35
  %index.next864 = add nuw i64 %index860, 32      ; 2 uses
  %i.sd = icmp eq i64 %index.next864, %n.vec858
  br i1 %i.sd, label %middle.block865, label %vector.body859, !llvm.loop !287

middle.block865:                                  ; preds = %vector.body859
  %cmp.n866 = icmp eq i64 %i.rj, %n.vec858
  br i1 %cmp.n866, label %.loopexit.i335, label %vec.epilog.iter.check872

vec.epilog.iter.check872:                         ; preds = %middle.block865
  %min.epilog.iters.check873 = icmp eq i64 %n.mod.vf857, 0
  br i1 %min.epilog.iters.check873, label %.lr.ph.i338.preheader, label %vec.epilog.ph874, !prof !265

vec.epilog.ph874:                                 ; preds = %vector.main.loop.iter.check854, %vec.epilog.iter.check872
  %vec.epilog.resume.val867 = phi i64 [ %n.vec858, %vec.epilog.iter.check872 ], [ 0, %vector.main.loop.iter.check854 ]
  %n.vec876 = and i64 %i.rj, 8589934588           ; 4 uses
  %i.se = getelementptr i8, ptr %.034.i332, i64 %n.vec876 ; 2 uses
  %i.sf = trunc i64 %n.vec876 to i32              ; 2 uses
  %i.sg = add i32 %.02433.i333, %i.sf             ; 2 uses
  br label %vec.epilog.vector.body877

vec.epilog.vector.body877:                        ; preds = %vec.epilog.vector.body877, %vec.epilog.ph874
  %index878 = phi i64 [ %vec.epilog.resume.val867, %vec.epilog.ph874 ], [ %index.next881, %vec.epilog.vector.body877 ] ; 3 uses
  %next.gep879 = getelementptr i8, ptr %.034.i332, i64 %index878
  %i.sh = trunc i64 %index878 to i32
  %i.si = add i32 %.02433.i333, %i.sh
  %wide.load880 = load <4 x i8>, ptr %next.gep879, align 1, !tbaa !35
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr i8, ptr %i.j, i64 %i.sj
  store <4 x i8> %wide.load880, ptr %i.sk, align 1, !tbaa !35
  %index.next881 = add nuw i64 %index878, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next881, %n.vec876
  br i1 %i.sl, label %vec.epilog.middle.block882, label %vec.epilog.vector.body877, !llvm.loop !288

vec.epilog.middle.block882:                       ; preds = %vec.epilog.vector.body877
  %cmp.n883 = icmp eq i64 %i.rj, %n.vec876
  br i1 %cmp.n883, label %.loopexit.i335, label %.lr.ph.i338.preheader

.lr.ph.i338.preheader:                            ; preds = %vector.memcheck850, %vector.scevcheck847, %iter.check870, %vec.epilog.iter.check872, %vec.epilog.middle.block882
  %.131.i339.ph = phi ptr [ %.034.i332, %iter.check870 ], [ %.034.i332, %vector.scevcheck847 ], [ %.034.i332, %vector.memcheck850 ], [ %i.ru, %vec.epilog.iter.check872 ], [ %i.se, %vec.epilog.middle.block882 ]
  %.12530.i340.ph = phi i32 [ %.02433.i333, %iter.check870 ], [ %.02433.i333, %vector.scevcheck847 ], [ %.02433.i333, %vector.memcheck850 ], [ %i.rw, %vec.epilog.iter.check872 ], [ %i.sg, %vec.epilog.middle.block882 ]
  %.02629.i341.ph = phi i32 [ 0, %iter.check870 ], [ 0, %vector.scevcheck847 ], [ 0, %vector.memcheck850 ], [ %i.rv, %vec.epilog.iter.check872 ], [ %i.sf, %vec.epilog.middle.block882 ]
  br label %.lr.ph.i338

.lr.ph.i338:                                      ; preds = %.lr.ph.i338.preheader, %.lr.ph.i338
  %.131.i339 = phi ptr [ %i.sm, %.lr.ph.i338 ], [ %.131.i339.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %.12530.i340 = phi i32 [ %i.so, %.lr.ph.i338 ], [ %.12530.i340.ph, %.lr.ph.i338.preheader ] ; 2 uses
  %.02629.i341 = phi i32 [ %i.sr, %.lr.ph.i338 ], [ %.02629.i341.ph, %.lr.ph.i338.preheader ]
  %i.sm = getelementptr i8, ptr %.131.i339, i64 1 ; 3 uses
  %i.sn = load i8, ptr %.131.i339, align 1, !tbaa !35
  %i.so = add i32 %.12530.i340, 1                 ; 2 uses
  %i.sp = sext i32 %.12530.i340 to i64
  %i.sq = getelementptr i8, ptr %i.j, i64 %i.sp
  store i8 %i.sn, ptr %i.sq, align 1, !tbaa !35
  %i.sr = add nuw nsw i32 %.02629.i341, 1         ; 2 uses
  %i.ss = icmp slt i32 %i.sr, %i.qz
  %i.st = icmp ult ptr %i.sm, %i.mr
  %i.su = and i1 %i.st, %i.ss
  br i1 %i.su, label %.lr.ph.i338, label %.loopexit.i335, !llvm.loop !289

concat_opt_exact_info_str.exit342:                ; preds = %.loopexit.i335, %bb.cc, %bb.bz
  %.024.lcssa.i330 = phi i32 [ 0, %bb.bz ], [ %.125.lcssa.i336, %.loopexit.i335 ], [ %.02433.i333, %bb.cc ]
  store i32 %.024.lcssa.i330, ptr %i.i, align 8, !tbaa !92
  store i32 1, ptr %i.h, align 4, !tbaa !286
  %.not312 = icmp eq i64 %i.mx, 0
  br i1 %.not312, label %.thread372, label %bb.cd

bb.cd:                                            ; preds = %concat_opt_exact_info_str.exit342
  %i.sv = load ptr, ptr %i.mt, align 8, !tbaa !150
  %i.sw = load ptr, ptr %i.mq, align 8, !tbaa !152
  %i.sx = load ptr, ptr %i.qf, align 8, !tbaa !76
  %i.sy = getelementptr i8, ptr %2, i64 28
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !81
  %i.ta = tail call fastcc i32 @add_char_amb_opt_map_info(ptr noundef nonnull %i.s, ptr noundef %i.sv, ptr noundef %i.sw, ptr noundef %i.sx, i32 noundef %i.sz) ; 2 uses
  %.not313 = icmp eq i32 %i.ta, 0
  br i1 %.not313, label %.thread372, label %common.ret1057

.thread372:                                       ; preds = %bb.by, %bb.cd, %concat_opt_exact_info_str.exit342
  %.0256 = phi i64 [ %i.qn, %bb.by ], [ %i.mx, %bb.cd ], [ 0, %concat_opt_exact_info_str.exit342 ]
  store i64 %i.mx, ptr %1, align 8, !tbaa !95
  %i.tb = getelementptr i8, ptr %1, i64 8
  store i64 %.0256, ptr %i.tb, align 8, !tbaa !94
  %.pre691 = load i32, ptr %i.i, align 8, !tbaa !90
  br label %bb.ce

bb.ce:                                            ; preds = %.thread372, %add_char_opt_map_info.exit
  %i.tc = phi i32 [ %.pre691, %.thread372 ], [ %.024.lcssa.i, %add_char_opt_map_info.exit ]
  %i.td = sext i32 %i.tc to i64
  %i.te = icmp eq i64 %i.mx, %i.td
  br i1 %i.te, label %bb.cf, label %common.ret1057

bb.cf:                                            ; preds = %bb.ce
  %i.tf = getelementptr i8, ptr %1, i64 48
  store i32 1, ptr %i.tf, align 8, !tbaa !259
  br label %common.ret1057

bb.cg:                                            ; preds = %tailrecurse
  %i.tg = getelementptr i8, ptr %.tr, i64 40
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !189
  %.not304 = icmp eq ptr %i.th, null
  br i1 %.not304, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.ti = getelementptr i8, ptr %.tr, i64 4       ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !192
  %i.tk = and i32 %i.tj, 1
  %.not305 = icmp eq i32 %i.tk, 0
  br i1 %.not305, label %.preheader, label %bb.cj

.preheader:                                       ; preds = %bb.ch
  %i.tl = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.tm = getelementptr i8, ptr %1, i64 244       ; 3 uses
  %i.tn = getelementptr i8, ptr %1, i64 240       ; 4 uses
  %i.to = load i32, ptr %i.tl, align 8, !tbaa !7
  %i.tp = and i32 %i.to, 1
  %.not306.peel = icmp eq i32 %i.tp, 0
  br i1 %.not306.peel, label %.peel.next676.preheader, label %bb.ci

.peel.next676.preheader:                          ; preds = %bb.ci, %map_position_value.exit.i343.peel, %.preheader
  br label %.peel.next676

bb.ci:                                            ; preds = %.preheader
  %i.tq = load i8, ptr %i.tm, align 4, !tbaa !35
  %i.tr = icmp eq i8 %i.tq, 0
  br i1 %i.tr, label %map_position_value.exit.i343.peel, label %.peel.next676.preheader

map_position_value.exit.i343.peel:                ; preds = %bb.ci
  %i.ts = getelementptr i8, ptr %2, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !76
  store i8 1, ptr %i.tm, align 4, !tbaa !35
  %i.tu = getelementptr i8, ptr %i.tt, i64 20
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !156
  %i.tw = icmp sgt i32 %i.tv, 1
  %spec.select = select i1 %i.tw, i32 20, i32 5
  %i.tx = load i32, ptr %i.tn, align 8, !tbaa !275
  %i.ty = add i32 %i.tx, %spec.select
  store i32 %i.ty, ptr %i.tn, align 8, !tbaa !275
  br label %.peel.next676.preheader

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.tz = getelementptr i8, ptr %2, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !76 ; 2 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 20
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !156
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr i8, ptr %i.ua, i64 16
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !155
  %i.ug = sext i32 %i.uf to i64
  store i64 %i.ud, ptr %1, align 8, !tbaa !95
  %i.uh = getelementptr i8, ptr %1, i64 8
  store i64 %i.ug, ptr %i.uh, align 8, !tbaa !94
  br label %common.ret1057

.peel.next676:                                    ; preds = %.peel.next676.preheader, %add_char_opt_map_info.exit345
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %add_char_opt_map_info.exit345 ], [ 1, %.peel.next676.preheader ] ; 6 uses
  %i.ui = trunc nuw nsw i64 %indvars.iv671 to i32
  %i.uj = lshr i64 %indvars.iv671, 5
  %i.uk = and i64 %i.uj, 134217727
  %i.ul = getelementptr [4 x i8], ptr %i.tl, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !7
  %i.un = and i32 %i.ui, 31
  %i.uo = shl nuw i32 1, %i.un
  %i.up = and i32 %i.um, %i.uo
  %.not306 = icmp eq i32 %i.up, 0
  %i.uq = load i32, ptr %i.ti, align 4, !tbaa !192
  %i.ur = and i32 %i.uq, 1
  %.not308 = icmp eq i32 %i.ur, 0
  %i.us = xor i1 %.not306, %.not308
  br i1 %i.us, label %bb.ck, label %add_char_opt_map_info.exit345

bb.ck:                                            ; preds = %.peel.next676
  %i.ut = getelementptr i8, ptr %i.tm, i64 %indvars.iv671 ; 2 uses
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !35
  %i.uv = icmp eq i8 %i.uu, 0
  br i1 %i.uv, label %bb.cl, label %add_char_opt_map_info.exit345

bb.cl:                                            ; preds = %bb.ck
  store i8 1, ptr %i.ut, align 1, !tbaa !35
  %i.uw = icmp samesign ult i64 %indvars.iv671, 128
  br i1 %i.uw, label %bb.cm, label %map_position_value.exit.i343

bb.cm:                                            ; preds = %bb.cl
  %i.ux = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv671
  %i.uy = load i16, ptr %i.ux, align 2, !tbaa !96
  %i.uz = sext i16 %i.uy to i32
  br label %map_position_value.exit.i343

map_position_value.exit.i343:                     ; preds = %bb.cm, %bb.cl
  %.0.i.i344 = phi i32 [ 4, %bb.cl ], [ %i.uz, %bb.cm ]
  %i.va = load i32, ptr %i.tn, align 8, !tbaa !275
  %i.vb = add i32 %i.va, %.0.i.i344
  store i32 %i.vb, ptr %i.tn, align 8, !tbaa !275
  br label %add_char_opt_map_info.exit345

add_char_opt_map_info.exit345:                    ; preds = %.peel.next676, %map_position_value.exit.i343, %bb.ck
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1 ; 2 uses
  %exitcond674.not = icmp eq i64 %indvars.iv.next672, 256
  br i1 %exitcond674.not, label %.loopexit678, label %.peel.next676, !llvm.loop !290

.loopexit678:                                     ; preds = %add_char_opt_map_info.exit345
  store i64 1, ptr %1, align 8, !tbaa !95
  %i.vc = getelementptr i8, ptr %1, i64 8
  store i64 1, ptr %i.vc, align 8, !tbaa !94
  br label %common.ret1057

bb.cn:                                            ; preds = %tailrecurse
  %i.vd = getelementptr i8, ptr %2, i64 16        ; 5 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !76 ; 4 uses
  %i.vf = getelementptr i8, ptr %i.ve, i64 16
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !155 ; 2 uses
  %i.vh = icmp eq i32 %i.vg, 1
  br i1 %i.vh, label %bb.co, label %bb.cz

bb.co:                                            ; preds = %bb.cn
  %i.vi = getelementptr i8, ptr %.tr, i64 12
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !35
  %.not299 = icmp eq i32 %i.vj, 0
  %i.vk = select i1 %.not299, i32 256, i32 128    ; 2 uses
  %i.vl = getelementptr i8, ptr %.tr, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !35
  %cond = icmp eq i32 %i.vm, 12
  br i1 %cond, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.vn = getelementptr i8, ptr %.tr, i64 8
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !35
  %.not300 = icmp eq i32 %i.vo, 0
  %i.vp = getelementptr i8, ptr %1, i64 244       ; 4 uses
  %i.vq = getelementptr i8, ptr %1, i64 240       ; 6 uses
  br i1 %.not300, label %.preheader385, label %.preheader386

.preheader386:                                    ; preds = %bb.cp
  %i.vr = zext nneg i32 %i.vk to i64
  %i.vs = getelementptr i8, ptr %i.ve, i64 88
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !242
  %i.vu = tail call i32 %i.vt(i32 noundef 0, i32 noundef 12, ptr noundef nonnull %i.ve) #22
  %.not302.peel.not = icmp eq i32 %i.vu, 0
  br i1 %.not302.peel.not, label %bb.cq, label %.peel.next.preheader

bb.cq:                                            ; preds = %.preheader386
  %i.vv = load i8, ptr %i.vp, align 4, !tbaa !35
  %i.vw = icmp eq i8 %i.vv, 0
  br i1 %i.vw, label %map_position_value.exit.i346.peel, label %.peel.next.preheader

map_position_value.exit.i346.peel:                ; preds = %bb.cq
  %i.vx = load ptr, ptr %i.vd, align 8, !tbaa !76
  store i8 1, ptr %i.vp, align 4, !tbaa !35
  %i.vy = getelementptr i8, ptr %i.vx, i64 20
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !156
  %i.wa = icmp sgt i32 %i.vz, 1
  %spec.select797 = select i1 %i.wa, i32 20, i32 5
  %i.wb = load i32, ptr %i.vq, align 8, !tbaa !275
  %i.wc = add i32 %i.wb, %spec.select797
  store i32 %i.wc, ptr %i.vq, align 8, !tbaa !275
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.preheader386, %bb.cq, %map_position_value.exit.i346.peel
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %add_char_opt_map_info.exit348
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %add_char_opt_map_info.exit348 ], [ 1, %.peel.next.preheader ] ; 6 uses
  %i.wd = load ptr, ptr %i.vd, align 8, !tbaa !76 ; 2 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 88
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !242
  %i.wg = trunc nuw nsw i64 %indvars.iv666 to i32
  %i.wh = tail call i32 %i.wf(i32 noundef %i.wg, i32 noundef 12, ptr noundef %i.wd) #22
  %.not302 = icmp ne i32 %i.wh, 0
  %.not303 = icmp samesign ult i64 %indvars.iv666, %i.vr
  %or.cond320 = select i1 %.not302, i1 %.not303, i1 false
  br i1 %or.cond320, label %add_char_opt_map_info.exit348, label %bb.cr

bb.cr:                                            ; preds = %.peel.next
  %i.wi = getelementptr i8, ptr %i.vp, i64 %indvars.iv666 ; 2 uses
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !35
  %i.wk = icmp eq i8 %i.wj, 0
  br i1 %i.wk, label %bb.cs, label %add_char_opt_map_info.exit348

bb.cs:                                            ; preds = %bb.cr
  store i8 1, ptr %i.wi, align 1, !tbaa !35
  %i.wl = icmp samesign ult i64 %indvars.iv666, 128
  br i1 %i.wl, label %bb.ct, label %map_position_value.exit.i346

bb.ct:                                            ; preds = %bb.cs
  %i.wm = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %indvars.iv666
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !96
  %i.wo = sext i16 %i.wn to i32
  br label %map_position_value.exit.i346

map_position_value.exit.i346:                     ; preds = %bb.ct, %bb.cs
  %.0.i.i347 = phi i32 [ 4, %bb.cs ], [ %i.wo, %bb.ct ]
  %i.wp = load i32, ptr %i.vq, align 8, !tbaa !275
  %i.wq = add i32 %i.wp, %.0.i.i347
  store i32 %i.wq, ptr %i.vq, align 8, !tbaa !275
  br label %add_char_opt_map_info.exit348

add_char_opt_map_info.exit348:                    ; preds = %map_position_value.exit.i346, %bb.cr, %.peel.next
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next667, 256
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !291

.preheader385:                                    ; preds = %bb.cp, %add_char_opt_map_info.exit351
  %.1261637 = phi i32 [ %i.xl, %add_char_opt_map_info.exit351 ], [ 0, %bb.cp ] ; 4 uses
  %i.wr = load ptr, ptr %i.vd, align 8, !tbaa !76 ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 88
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !242
  %i.wu = tail call i32 %i.wt(i32 noundef %.1261637, i32 noundef 12, ptr noundef %i.wr) #22
  %.not301 = icmp eq i32 %i.wu, 0
  br i1 %.not301, label %add_char_opt_map_info.exit351, label %bb.cu

bb.cu:                                            ; preds = %.preheader385
  %i.wv = trunc i32 %.1261637 to i8               ; 2 uses
  %i.ww = load ptr, ptr %i.vd, align 8, !tbaa !76
  %.mask = and i32 %.1261637, 255
  %i.wx = zext nneg i32 %.mask to i64             ; 2 uses
  %i.wy = getelementptr i8, ptr %i.vp, i64 %i.wx  ; 2 uses
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !35
  %i.xa = icmp eq i8 %i.wz, 0
  br i1 %i.xa, label %bb.cv, label %add_char_opt_map_info.exit351

bb.cv:                                            ; preds = %bb.cu
  store i8 1, ptr %i.wy, align 1, !tbaa !35
  %i.xb = icmp sgt i8 %i.wv, -1
  br i1 %i.xb, label %bb.cw, label %map_position_value.exit.i349

bb.cw:                                            ; preds = %bb.cv
  %i.xc = icmp eq i8 %i.wv, 0
  br i1 %i.xc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.xd = getelementptr i8, ptr %i.ww, i64 20
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !156
  %i.xf = icmp sgt i32 %i.xe, 1
  br i1 %i.xf, label %map_position_value.exit.i349, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.xg = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %i.wx
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !96
  %i.xi = sext i16 %i.xh to i32
  br label %map_position_value.exit.i349

map_position_value.exit.i349:                     ; preds = %bb.cy, %bb.cx, %bb.cv
  %.0.i.i350 = phi i32 [ 20, %bb.cx ], [ %i.xi, %bb.cy ], [ 4, %bb.cv ]
  %i.xj = load i32, ptr %i.vq, align 8, !tbaa !275
  %i.xk = add i32 %i.xj, %.0.i.i350
  store i32 %i.xk, ptr %i.vq, align 8, !tbaa !275
  br label %add_char_opt_map_info.exit351

add_char_opt_map_info.exit351:                    ; preds = %map_position_value.exit.i349, %bb.cu, %.preheader385
  %i.xl = add nuw nsw i32 %.1261637, 1            ; 2 uses
  %exitcond670.not = icmp eq i32 %i.xl, %i.vk
  br i1 %exitcond670.not, label %.loopexit, label %.preheader385, !llvm.loop !292

bb.cz:                                            ; preds = %bb.cn
  %i.xm = getelementptr i8, ptr %i.ve, i64 20
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !156
  %i.xo = sext i32 %i.xn to i64
  br label %.loopexit

.loopexit:                                        ; preds = %add_char_opt_map_info.exit348, %add_char_opt_map_info.exit351, %bb.co, %bb.cz
  %.0262 = phi i64 [ 1, %add_char_opt_map_info.exit351 ], [ %i.xo, %bb.cz ], [ 1, %bb.co ], [ 1, %add_char_opt_map_info.exit348 ]
  %i.xp = sext i32 %i.vg to i64
  store i64 %.0262, ptr %1, align 8, !tbaa !95
  %i.xq = getelementptr i8, ptr %1, i64 8
  store i64 %i.xp, ptr %i.xq, align 8, !tbaa !94
  br label %common.ret1057

bb.da:                                            ; preds = %tailrecurse
  %i.xr = getelementptr i8, ptr %2, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !76 ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 20
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !156
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr i8, ptr %i.xs, i64 16
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !155
  %i.xy = sext i32 %i.xx to i64
  store i64 %i.xv, ptr %1, align 8, !tbaa !95
  %i.xz = getelementptr i8, ptr %1, i64 8
  store i64 %i.xy, ptr %i.xz, align 8, !tbaa !94
  br label %common.ret1057

bb.db:                                            ; preds = %tailrecurse
  %i.ya = getelementptr i8, ptr %.tr, i64 4
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !35 ; 4 uses
  %i.yc = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.yb)
  %i.yd = icmp eq i32 %i.yc, 1
  br i1 %i.yd, label %.split, label %common.ret1057

.split:                                           ; preds = %bb.db
  %i.ye = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.yb, i1 true)
  switch i32 %i.ye, label %common.ret1057 [
    i32 10, label %bb.dd
    i32 11, label %bb.dc
    i32 5, label %bb.dc
    i32 4, label %bb.dc
    i32 3, label %bb.dc
    i32 0, label %is_left_anchor.exit.i
    i32 1, label %is_left_anchor.exit.i
    i32 2, label %is_left_anchor.exit.i
    i32 12, label %is_left_anchor.exit.i
  ]

is_left_anchor.exit.i:                            ; preds = %.split, %.split, %.split, %.split
  %i.yf = getelementptr i8, ptr %1, i64 16
  store i32 %i.yb, ptr %i.yf, align 8, !tbaa !105
  br label %common.ret1057

bb.dc:                                            ; preds = %.split, %.split, %.split, %.split
  %i.yg = getelementptr i8, ptr %1, i64 20
  store i32 %i.yb, ptr %i.yg, align 4, !tbaa !106
  br label %common.ret1057

bb.dd:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.yh = getelementptr i8, ptr %.tr, i64 8
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !35
  %i.yj = call fastcc i32 @optimize_node_left(ptr noundef %i.yi, ptr noundef %6, ptr noundef %2) ; 2 uses
  %i.yk = icmp eq i32 %i.yj, 0
  br i1 %i.yk, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.yl = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !90
  %i.yn = icmp sgt i32 %i.ym, 0
  br i1 %i.yn, label %.sink.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !293
  %i.yq = icmp sgt i32 %i.yp, 0
  br i1 %i.yq, label %.sink.split, label %bb.dg

.sink.split:                                      ; preds = %bb.df, %bb.de
  %.sink798.sroa.phi = phi ptr [ %.sink798.sroa.gep, %bb.de ], [ %.sink798.sroa.gep1032, %bb.df ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sink798.sroa.phi, i64 64, i1 false)
  br label %bb.dg

bb.dg:                                            ; preds = %.sink.split, %bb.df
  %i.yr = getelementptr i8, ptr %1, i64 176
  store i32 0, ptr %i.yr, align 8, !tbaa !294
  %i.ys = getelementptr inbounds nuw i8, ptr %6, i64 240
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !91
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.yv = getelementptr inbounds nuw i8, ptr %6, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(288) %i.yv, i64 288, i1 false), !tbaa.struct !295
  br label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.ret1057

bb.dj:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.yw = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !82 ; 3 uses
  %i.yy = getelementptr i8, ptr %i.yx, i64 168
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !109 ; 2 uses
  %.not292 = icmp eq ptr %i.yz, null
  %i.za = getelementptr i8, ptr %i.yx, i64 104
  %i.zb = select i1 %.not292, ptr %i.za, ptr %i.yz ; 4 uses
  %i.zc = getelementptr i8, ptr %.tr, i64 4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !173
  %i.ze = and i32 %i.zd, 128
  %.not293 = icmp eq i32 %i.ze, 0
  br i1 %.not293, label %bb.dk, label %.thread375.sink.split

bb.dk:                                            ; preds = %bb.dj
  %i.zf = getelementptr i8, ptr %.tr, i64 40
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !169 ; 2 uses
  %.not294 = icmp eq ptr %i.zg, null
  %i.zh = getelementptr i8, ptr %.tr, i64 12
  %i.zi = select i1 %.not294, ptr %i.zh, ptr %i.zg ; 3 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !7
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr [8 x i8], ptr %i.zb, i64 %i.zk
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !61
  %i.zn = call fastcc i32 @get_min_match_length(ptr noundef %i.zm, ptr noundef %i.c, ptr noundef nonnull %i.yx) ; 2 uses
  %.not295 = icmp eq i32 %i.zn, 0
  br i1 %.not295, label %bb.dl, label %.thread375

bb.dl:                                            ; preds = %bb.dk
  %i.zo = load i32, ptr %i.zi, align 4, !tbaa !7
  %i.zp = sext i32 %i.zo to i64
  %i.zq = getelementptr [8 x i8], ptr %i.zb, i64 %i.zp
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !61
  %i.zs = load ptr, ptr %i.yw, align 8, !tbaa !82
  %i.zt = call fastcc i32 @get_max_match_length(ptr noundef %i.zr, ptr noundef %i.d, ptr noundef %i.zs) ; 2 uses
  %.not296 = icmp eq i32 %i.zt, 0
  br i1 %.not296, label %.preheader388, label %.thread375

.preheader388:                                    ; preds = %bb.dl
  %i.zu = getelementptr i8, ptr %.tr, i64 8       ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 8, !tbaa !171
  %i.zw = icmp sgt i32 %i.zv, 1
  br i1 %i.zw, label %.lr.ph634, label %.preheader388.._crit_edge_crit_edge

.preheader388.._crit_edge_crit_edge:              ; preds = %.preheader388
  %.pre685 = load i64, ptr %i.c, align 8, !tbaa !34
  %.pre686 = load i64, ptr %i.d, align 8, !tbaa !34
  br label %.thread375.sink.split

.lr.ph634:                                        ; preds = %.preheader388, %bb.dr
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dr ], [ 1, %.preheader388 ] ; 2 uses
  %i.zx = getelementptr [4 x i8], ptr %i.zi, i64 %indvars.iv ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !7
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = getelementptr [8 x i8], ptr %i.zb, i64 %i.zz
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !61
  %i.aac = load ptr, ptr %i.yw, align 8, !tbaa !82
  %i.aad = call fastcc i32 @get_min_match_length(ptr noundef %i.aab, ptr noundef %i.e, ptr noundef %i.aac) ; 2 uses
  %.not297 = icmp eq i32 %i.aad, 0
  br i1 %.not297, label %bb.dm, label %.thread375

bb.dm:                                            ; preds = %.lr.ph634
  %i.aae = load i32, ptr %i.zx, align 4, !tbaa !7
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr [8 x i8], ptr %i.zb, i64 %i.aaf
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !61
  %i.aai = load ptr, ptr %i.yw, align 8, !tbaa !82
  %i.aaj = call fastcc i32 @get_max_match_length(ptr noundef %i.aah, ptr noundef %i.f, ptr noundef %i.aai) ; 2 uses
  %.not298 = icmp eq i32 %i.aaj, 0
  br i1 %.not298, label %bb.dn, label %.thread375

bb.dn:                                            ; preds = %bb.dm
  %i.aak = load i64, ptr %i.c, align 8, !tbaa !34 ; 2 uses
  %i.aal = load i64, ptr %i.e, align 8, !tbaa !34 ; 3 uses
  %i.aam = icmp ugt i64 %i.aak, %i.aal
  br i1 %i.aam, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i64 %i.aal, ptr %i.c, align 8, !tbaa !34
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.aan = phi i64 [ %i.aal, %bb.do ], [ %i.aak, %bb.dn ]
  %i.aao = load i64, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  %i.aap = load i64, ptr %i.f, align 8, !tbaa !34 ; 3 uses
  %i.aaq = icmp ult i64 %i.aao, %i.aap
  br i1 %i.aaq, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i64 %i.aap, ptr %i.d, align 8, !tbaa !34
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dp, %bb.dq
  %i.aar = phi i64 [ %i.aao, %bb.dp ], [ %i.aap, %bb.dq ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aas = load i32, ptr %i.zu, align 8, !tbaa !171
  %i.aat = sext i32 %i.aas to i64
  %i.aau = icmp slt i64 %indvars.iv.next, %i.aat
  br i1 %i.aau, label %.lr.ph634, label %.thread375.sink.split, !llvm.loop !296

.thread375.sink.split:                            ; preds = %bb.dr, %.preheader388.._crit_edge_crit_edge, %bb.dj
  %.sink800 = phi i64 [ 0, %bb.dj ], [ %.pre685, %.preheader388.._crit_edge_crit_edge ], [ %i.aan, %bb.dr ]
  %.sink = phi i64 [ -1, %bb.dj ], [ %.pre686, %.preheader388.._crit_edge_crit_edge ], [ %i.aar, %bb.dr ]
  store i64 %.sink800, ptr %1, align 8, !tbaa !95
  %i.aav = getelementptr i8, ptr %1, i64 8
  store i64 %.sink, ptr %i.aav, align 8, !tbaa !94
  br label %.thread375

.thread375:                                       ; preds = %bb.dm, %.lr.ph634, %.thread375.sink.split, %bb.dl, %bb.dk
  %.7 = phi i32 [ 0, %.thread375.sink.split ], [ %i.zt, %bb.dl ], [ %i.zn, %bb.dk ], [ %i.aad, %.lr.ph634 ], [ %i.aaj, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %common.ret1057

bb.ds:                                            ; preds = %tailrecurse
  %i.aaw = getelementptr i8, ptr %.tr, i64 4
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !35
  %i.aay = and i32 %i.aax, 128
  %.not291 = icmp eq i32 %i.aay, 0
  br i1 %.not291, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i64 0, ptr %1, align 8, !tbaa !95
  %i.aaz = getelementptr i8, ptr %1, i64 8
  store i64 -1, ptr %i.aaz, align 8, !tbaa !94
  br label %common.ret1057

common.ret1057:                                   ; preds = %.split, %bb.dc, %is_left_anchor.exit.i, %bb.cd, %bb.fd, %is_set_opt_anc_info.exit, %bb.fb, %bb.fa, %bb.ez, %bb.ex, %bb.cj, %.loopexit678, %bb.cf, %bb.ce, %bb.ep, %.thread375, %bb.dt, %bb.di, %bb.db, %bb.da, %.loopexit, %.critedge3, %.critedge, %tailrecurse, %.split6, %bb.eq, %bb.er, %bb.du
  %common.ret1057.op = phi i32 [ %i.ahh, %bb.er ], [ %i.abh, %bb.du ], [ %i.ahx, %bb.fb ], [ %i.ahx, %bb.ez ], [ %i.ahx, %bb.fa ], [ %.lcssa644, %.critedge ], [ %.lcssa645, %.critedge3 ], [ 0, %bb.cj ], [ 0, %bb.ce ], [ 0, %.loopexit ], [ 0, %bb.da ], [ 0, %.split ], [ %i.ta, %bb.cd ], [ %i.yj, %bb.di ], [ 0, %bb.db ], [ %.7, %.thread375 ], [ 0, %bb.dt ], [ 0, %bb.dc ], [ %i.abk, %bb.ep ], [ %i.ahx, %is_set_opt_anc_info.exit ], [ 0, %bb.cf ], [ 0, %.loopexit678 ], [ 0, %bb.fd ], [ 0, %is_left_anchor.exit.i ], [ 0, %bb.ex ], [ 0, %.split6 ], [ -6, %tailrecurse ], [ 0, %bb.eq ]
  ret i32 %common.ret1057.op

bb.du:                                            ; preds = %bb.ds
  %i.aba = getelementptr i8, ptr %2, i64 24       ; 3 uses
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !79
  %i.abc = getelementptr i8, ptr %.tr, i64 32     ; 2 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !35
  %i.abe = getelementptr i8, ptr %i.abd, i64 16
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !35
  store i32 %i.abf, ptr %i.aba, align 8, !tbaa !79
  %i.abg = load ptr, ptr %i.abc, align 8, !tbaa !35
  %i.abh = tail call fastcc i32 @optimize_node_left(ptr noundef %i.abg, ptr noundef %1, ptr noundef %2)
  store i32 %i.abb, ptr %i.aba, align 8, !tbaa !79
  br label %common.ret1057

bb.dv:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.abi = getelementptr i8, ptr %.tr, i64 8      ; 2 uses
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !146
  %i.abk = call fastcc i32 @optimize_node_left(ptr noundef %i.abj, ptr noundef %7, ptr noundef %2) ; 2 uses
  %.not284 = icmp eq i32 %i.abk, 0
  br i1 %.not284, label %bb.dw, label %bb.ep

bb.dw:                                            ; preds = %bb.dv
  %i.abl = getelementptr i8, ptr %.tr, i64 16     ; 3 uses
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !145 ; 3 uses
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  %i.abo = getelementptr i8, ptr %.tr, i64 20
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !143 ; 2 uses
  %i.abq = icmp eq i32 %i.abp, -1
  br i1 %i.abq, label %bb.dy, label %distance_multiply.exit

bb.dy:                                            ; preds = %bb.dx
  %i.abr = load i64, ptr %i.u, align 8, !tbaa !297
  %i.abs = icmp eq i64 %i.abr, 0
  br i1 %i.abs, label %bb.dz, label %distance_multiply.exit.thread

bb.dz:                                            ; preds = %bb.dy
  %i.abt = load ptr, ptr %i.abi, align 8, !tbaa !146
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !35
  %i.abv = icmp eq i32 %i.abu, 3
  br i1 %i.abv, label %bb.ea, label %distance_multiply.exit.thread

bb.ea:                                            ; preds = %bb.dz
  %i.abw = getelementptr i8, ptr %.tr, i64 24
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !141
  %.not288 = icmp eq i32 %i.abx, 0
  br i1 %.not288, label %distance_multiply.exit.thread, label %distance_multiply.exit.thread.sink.split

distance_multiply.exit.thread.sink.split:         ; preds = %bb.ea
  %i.aby = getelementptr i8, ptr %2, i64 24
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !79
  %i.aca = and i32 %i.abz, 4
  %.not289 = icmp eq i32 %i.aca, 0
  %i.acb = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !105
  %. = select i1 %.not289, i32 16384, i32 32768
  %i.acd = or i32 %i.acc, %.
  store i32 %i.acd, ptr %i.acb, align 8, !tbaa !105
  br label %distance_multiply.exit.thread

bb.eb:                                            ; preds = %bb.dw
  %i.ace = icmp sgt i32 %i.abm, 0
  br i1 %i.ace, label %bb.ec, label %..thread378_crit_edge

..thread378_crit_edge:                            ; preds = %bb.eb
  %.phi.trans.insert.phi.trans.insert = getelementptr i8, ptr %.tr, i64 20
  %.pre684.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !143
  br label %.thread378

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %1, ptr noundef nonnull readonly align 8 dereferenceable(504) %7, i64 504, i1 false), !tbaa.struct !277
  %i.acf = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !90
  %i.ach = icmp slt i32 %i.acg, 1
  %i.aci = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 8          ; 2 uses
  %i.ack = icmp eq i32 %i.acj, 0
  %or.cond.not805 = select i1 %i.ach, i1 true, i1 %i.ack
  %.pre682 = load i32, ptr %i.abl, align 8, !tbaa !145 ; 3 uses
  %.not285627 = icmp slt i32 %.pre682, 2
  %or.cond801 = select i1 %or.cond.not805, i1 true, i1 %.not285627
  br i1 %or.cond801, label %.critedge5.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ec
  %i.acl = getelementptr i8, ptr %2, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %7, i64 52
  %i.acn = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 4 uses
  %i.aco = getelementptr i8, ptr %1, i64 48
  %i.acp = getelementptr i8, ptr %1, i64 40       ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.acr = getelementptr i8, ptr %1, i64 44
  %.val322.pre = load i32, ptr %i.i, align 8, !tbaa !92
  %i.acs = add i64 %i.g, 59
  %i.act = add i64 %i.a, 60
  %i.acu = add i64 %i.g, 59
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph, %concat_opt_exact_info.exit
  %i.acv = phi i32 [ %.pre682, %.lr.ph ], [ %i.afr, %concat_opt_exact_info.exit ] ; 2 uses
  %i.acw = phi i32 [ %i.acj, %.lr.ph ], [ %i.afs, %concat_opt_exact_info.exit ] ; 2 uses
  %.val322 = phi i32 [ %.val322.pre, %.lr.ph ], [ %.val322679, %concat_opt_exact_info.exit ] ; 4 uses
  %.0257628 = phi i32 [ 2, %.lr.ph ], [ %i.aft, %concat_opt_exact_info.exit ] ; 2 uses
  %i.acx = icmp slt i32 %.val322, 24
  br i1 %i.acx, label %bb.ee, label %.critedge5

bb.ee:                                            ; preds = %bb.ed
  %i.acy = load ptr, ptr %i.acl, align 8, !tbaa !76 ; 3 uses
  %i.acz = load i32, ptr %i.h, align 4, !tbaa !93 ; 2 uses
  %i.ada = icmp slt i32 %i.acz, 0
  %i.adb = load i32, ptr %i.acm, align 4, !tbaa !93 ; 2 uses
  br i1 %i.ada, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 %i.adb, ptr %i.h, align 4, !tbaa !93
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %.not.i356 = icmp eq i32 %i.acz, %i.adb
  br i1 %.not.i356, label %bb.eh, label %concat_opt_exact_info.exit

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.adc = load i32, ptr %i.acf, align 8, !tbaa !92
  %i.add = sext i32 %i.adc to i64                 ; 3 uses
  %i.ade = getelementptr i8, ptr %i.acn, i64 %i.add ; 6 uses
  %i.adf = icmp ult ptr %i.acn, %i.ade
  br i1 %i.adf, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %bb.eh
  %i.adg = getelementptr i8, ptr %i.acy, i64 16
  %i.adh = getelementptr i8, ptr %i.acy, i64 20
  %i.adi = add i64 %i.acs, %i.add
  %i.adj = add i64 %i.acu, %i.add
  br label %bb.ei

.loopexit.i362:                                   ; preds = %.lr.ph.i364, %middle.block, %vec.epilog.middle.block, %.preheader.i361
  %.139.lcssa.i = phi ptr [ %.03849.i, %.preheader.i361 ], [ %i.aeu, %vec.epilog.middle.block ], [ %i.aek, %middle.block ], [ %i.afa, %.lr.ph.i364 ] ; 3 uses
  %.1.lcssa.i363 = phi i32 [ %.050.i, %.preheader.i361 ], [ %i.aet, %vec.epilog.middle.block ], [ %i.aej, %middle.block ], [ %i.afc, %.lr.ph.i364 ] ; 2 uses
  %i.adk = icmp ult ptr %.139.lcssa.i, %i.ade
  br i1 %i.adk, label %bb.ei, label %._crit_edge.i.loopexit, !llvm.loop !261

bb.ei:                                            ; preds = %.loopexit.i362, %.lr.ph51.i
  %.050.i = phi i32 [ %.val322, %.lr.ph51.i ], [ %.1.lcssa.i363, %.loopexit.i362 ] ; 13 uses
  %.03849.i = phi ptr [ %i.acn, %.lr.ph51.i ], [ %.139.lcssa.i, %.loopexit.i362 ] ; 12 uses
  %.03849.i831 = ptrtoint ptr %.03849.i to i64    ; 3 uses
  %i.adl = load i32, ptr %i.adg, align 8, !tbaa !155 ; 2 uses
  %i.adm = load i32, ptr %i.adh, align 4, !tbaa !156
  %i.adn = icmp eq i32 %i.adl, %i.adm
  br i1 %i.adn, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ado = call i32 @onigenc_mbclen(ptr noundef %.03849.i, ptr noundef nonnull %i.ade, ptr noundef nonnull %i.acy) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.adp = phi i32 [ %i.ado, %bb.ej ], [ %i.adl, %bb.ei ] ; 5 uses
  %i.adq = add i32 %i.adp, %.050.i
  %i.adr = icmp sgt i32 %i.adq, 24
  br i1 %i.adr, label %._crit_edge.i.loopexit, label %.preheader.i361

.preheader.i361:                                  ; preds = %bb.ek
  %i.ads = icmp sgt i32 %i.adp, 0
  %i.adt = icmp ult ptr %.03849.i, %i.ade
  %i.adu = and i1 %i.adt, %i.ads
  br i1 %i.adu, label %iter.check, label %.loopexit.i362

iter.check:                                       ; preds = %.preheader.i361
  %i.adv = sub i64 %i.adj, %.03849.i831
  %i.adw = add nsw i32 %i.adp, -1
  %i.adx = zext i32 %i.adw to i64
  %umin832 = call i64 @llvm.umin.i64(i64 %i.adv, i64 %i.adx) ; 3 uses
  %i.ady = add nuw nsw i64 %umin832, 1            ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin832, 3
  br i1 %min.iters.check, label %.lr.ph.i364.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.adz = sub i64 %i.adi, %.03849.i831
  %i.aea = add nsw i32 %i.adp, -1
  %i.aeb = zext i32 %i.aea to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.adz, i64 %i.aeb)
  %i.aec = trunc nuw i64 %umin to i32
  %i.aed = add i32 %.050.i, %i.aec
  %i.aee = icmp slt i32 %i.aed, %.050.i
  br i1 %i.aee, label %.lr.ph.i364.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aef = sext i32 %.050.i to i64
  %i.aeg = add i64 %i.act, %i.aef
  %i.aeh = sub i64 %i.aeg, %.03849.i831
  %diff.check = icmp ult i64 %i.aeh, 32
  br i1 %diff.check, label %.lr.ph.i364.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check833 = icmp samesign ult i64 %umin832, 31
  br i1 %min.iters.check833, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ady, 28
  %n.vec = and i64 %i.ady, 8589934560             ; 5 uses
  %i.aei = trunc i64 %n.vec to i32                ; 2 uses
  %i.aej = add i32 %.050.i, %i.aei                ; 2 uses
  %i.aek = getelementptr i8, ptr %.03849.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ael = trunc i64 %index to i32
  %i.aem = add i32 %.050.i, %i.ael
  %next.gep = getelementptr i8, ptr %.03849.i, i64 %index ; 2 uses
  %i.aen = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !35
  %wide.load834 = load <16 x i8>, ptr %i.aen, align 1, !tbaa !35
  %i.aeo = sext i32 %i.aem to i64
  %i.aep = getelementptr i8, ptr %i.j, i64 %i.aeo ; 2 uses
  %i.aeq = getelementptr i8, ptr %i.aep, i64 16
  store <16 x i8> %wide.load, ptr %i.aep, align 1, !tbaa !35
  store <16 x i8> %wide.load834, ptr %i.aeq, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aer = icmp eq i64 %index.next, %n.vec
  br i1 %i.aer, label %middle.block, label %vector.body, !llvm.loop !298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ady, %n.vec
  br i1 %cmp.n, label %.loopexit.i362, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i364.preheader, label %vec.epilog.ph, !prof !265

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec838 = and i64 %i.ady, 8589934588          ; 4 uses
  %i.aes = trunc i64 %n.vec838 to i32             ; 2 uses
  %i.aet = add i32 %.050.i, %i.aes                ; 2 uses
  %i.aeu = getelementptr i8, ptr %.03849.i, i64 %n.vec838 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index839 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next842, %vec.epilog.vector.body ] ; 3 uses
  %i.aev = trunc i64 %index839 to i32
  %i.aew = add i32 %.050.i, %i.aev
  %next.gep840 = getelementptr i8, ptr %.03849.i, i64 %index839
  %wide.load841 = load <4 x i8>, ptr %next.gep840, align 1, !tbaa !35
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr i8, ptr %i.j, i64 %i.aex
  store <4 x i8> %wide.load841, ptr %i.aey, align 1, !tbaa !35
  %index.next842 = add nuw i64 %index839, 4       ; 2 uses
  %i.aez = icmp eq i64 %index.next842, %n.vec838
  br i1 %i.aez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !299

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n843 = icmp eq i64 %i.ady, %n.vec838
  br i1 %cmp.n843, label %.loopexit.i362, label %.lr.ph.i364.preheader

.lr.ph.i364.preheader:                            ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.147.i.ph = phi i32 [ %.050.i, %iter.check ], [ %.050.i, %vector.scevcheck ], [ %.050.i, %vector.memcheck ], [ %i.aej, %vec.epilog.iter.check ], [ %i.aet, %vec.epilog.middle.block ]
  %.13946.i.ph = phi ptr [ %.03849.i, %iter.check ], [ %.03849.i, %vector.scevcheck ], [ %.03849.i, %vector.memcheck ], [ %i.aek, %vec.epilog.iter.check ], [ %i.aeu, %vec.epilog.middle.block ]
  %.04045.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.aei, %vec.epilog.iter.check ], [ %i.aes, %vec.epilog.middle.block ]
  br label %.lr.ph.i364
end_hunk_2
begin_hunk_3_@optimize_node_left:bb.a
  %i.afi = and i1 %i.afh, %i.afg
  br i1 %i.afi, label %.lr.ph.i364, label %.loopexit.i362, !llvm.loop !300

._crit_edge.i.loopexit:                           ; preds = %.loopexit.i362, %bb.ek
  %.038.lcssa.i.ph = phi ptr [ %.03849.i, %bb.ek ], [ %.139.lcssa.i, %.loopexit.i362 ]
  %.0.lcssa.i.ph = phi i32 [ %.050.i, %bb.ek ], [ %.1.lcssa.i363, %.loopexit.i362 ]
  %.pre = load i32, ptr %i.aci, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.eh
  %i.afj = phi i32 [ %i.acw, %bb.eh ], [ %.pre, %._crit_edge.i.loopexit ]
  %.038.lcssa.i = phi ptr [ %i.acn, %bb.eh ], [ %.038.lcssa.i.ph, %._crit_edge.i.loopexit ]
  %.0.lcssa.i = phi i32 [ %.val322, %bb.eh ], [ %.0.lcssa.i.ph, %._crit_edge.i.loopexit ] ; 2 uses
  %i.afk = freeze i32 %i.afj                      ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.i, align 8, !tbaa !92
  %i.afl = icmp eq ptr %.038.lcssa.i, %i.ade
  %.fr.i = select i1 %i.afl, i32 %i.afk, i32 0    ; 2 uses
  store i32 %.fr.i, ptr %i.aco, align 8, !tbaa !268
  %i.afm = load i32, ptr %i.acp, align 8, !tbaa !105
  %i.afn = load i32, ptr %i.acq, align 4, !tbaa !106
  %i.afo = load i32, ptr %i.acr, align 4, !tbaa !106
  %i.afp = and i32 %i.afo, 2048
  %storemerge.i.i357 = or i32 %i.afp, %i.afn
  %.not44.i = icmp eq i32 %.fr.i, 0
  %i.afq = select i1 %.not44.i, i32 0, i32 %storemerge.i.i357
  %.sroa.5.0.insert.ext.i = zext i32 %i.afq to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i359 = zext i32 %i.afm to i64
  %.sroa.0.0.insert.insert.i360 = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.0.0.insert.ext.i359
  store i64 %.sroa.0.0.insert.insert.i360, ptr %i.acp, align 8
  %.pre681 = load i32, ptr %i.abl, align 8, !tbaa !145
  br label %concat_opt_exact_info.exit

concat_opt_exact_info.exit:                       ; preds = %bb.eg, %._crit_edge.i
  %i.afr = phi i32 [ %i.acv, %bb.eg ], [ %.pre681, %._crit_edge.i ] ; 3 uses
  %i.afs = phi i32 [ %i.acw, %bb.eg ], [ %i.afk, %._crit_edge.i ]
  %.val322679 = phi i32 [ %.val322, %bb.eg ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.aft = add i32 %.0257628, 1                   ; 3 uses
  %.not285 = icmp sgt i32 %i.aft, %i.afr
  br i1 %.not285, label %.critedge5, label %bb.ed, !llvm.loop !301

.critedge5:                                       ; preds = %bb.ed, %concat_opt_exact_info.exit
  %i.afu = phi i32 [ %i.acv, %bb.ed ], [ %i.afr, %concat_opt_exact_info.exit ] ; 3 uses
  %.0257.lcssa.ph = phi i32 [ %.0257628, %bb.ed ], [ %i.aft, %concat_opt_exact_info.exit ]
  %i.afv = icmp slt i32 %.0257.lcssa.ph, %i.afu
  br i1 %i.afv, label %bb.el, label %.critedge5.thread

bb.el:                                            ; preds = %.critedge5
  %i.afw = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.afw, align 8, !tbaa !259
  br label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.el, %.critedge5, %bb.ec
  %i.afx = phi i32 [ %i.afu, %bb.el ], [ %i.afu, %.critedge5 ], [ %.pre682, %bb.ec ] ; 5 uses
  %i.afy = getelementptr i8, ptr %.tr, i64 20
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !143 ; 4 uses
  %.not287 = icmp eq i32 %i.afx, %i.afz
  br i1 %.not287, label %bb.en, label %bb.em

bb.em:                                            ; preds = %.critedge5.thread
  %i.aga = getelementptr i8, ptr %1, i64 48
  store i32 0, ptr %i.aga, align 8, !tbaa !259
  %i.agb = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.agb, align 8, !tbaa !260
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.critedge5.thread
  %i.agc = icmp sgt i32 %i.afx, 1
  br i1 %i.agc, label %.thread377.thread766, label %.thread377

.thread377.thread766:                             ; preds = %bb.en
  %i.agd = getelementptr i8, ptr %1, i64 112
  store i32 0, ptr %i.agd, align 8, !tbaa !260
  br label %.thread378

.thread377:                                       ; preds = %bb.en
  %i.age = icmp eq i32 %i.afx, 0
  br i1 %i.age, label %distance_multiply.exit, label %.thread378

.thread378:                                       ; preds = %.thread377.thread766, %..thread378_crit_edge, %.thread377
  %.pre684 = phi i32 [ %i.afz, %.thread377 ], [ %.pre684.pre, %..thread378_crit_edge ], [ %i.afz, %.thread377.thread766 ]
  %i.agf = phi i32 [ %i.afx, %.thread377 ], [ %i.abm, %..thread378_crit_edge ], [ %i.afx, %.thread377.thread766 ]
  %i.agg = load i64, ptr %7, align 8, !tbaa !302  ; 2 uses
  %i.agh = sext i32 %i.agf to i64                 ; 2 uses
  %i.agi = udiv i64 -1, %i.agh
  %i.agj = icmp ult i64 %i.agg, %i.agi
  %i.agk = mul i64 %i.agg, %i.agh
  %spec.select.i365 = select i1 %i.agj, i64 %i.agk, i64 -1
  br label %distance_multiply.exit

distance_multiply.exit:                           ; preds = %bb.dx, %.thread377, %.thread378
  %i.agl = phi i32 [ %i.afz, %.thread377 ], [ %.pre684, %.thread378 ], [ %i.abp, %bb.dx ] ; 2 uses
  %.0.i = phi i64 [ 0, %.thread377 ], [ %spec.select.i365, %.thread378 ], [ 0, %bb.dx ] ; 3 uses
  switch i32 %i.agl, label %bb.eo [
    i32 -1, label %distance_multiply.exit.thread
    i32 0, label %distance_multiply.exit368
  ]

distance_multiply.exit.thread:                    ; preds = %distance_multiply.exit.thread.sink.split, %bb.dy, %bb.dz, %bb.ea, %distance_multiply.exit
  %.0.i771 = phi i64 [ %.0.i, %distance_multiply.exit ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ 0, %bb.ea ], [ 0, %distance_multiply.exit.thread.sink.split ]
  %i.agm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !108
  %.not290 = icmp ne i64 %i.agn, 0
  %i.ago = sext i1 %.not290 to i64
  br label %distance_multiply.exit368

bb.eo:                                            ; preds = %distance_multiply.exit
  %i.agp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !108 ; 2 uses
  %i.agr = sext i32 %i.agl to i64                 ; 2 uses
  %i.ags = udiv i64 -1, %i.agr
  %i.agt = icmp ult i64 %i.agq, %i.ags
  %i.agu = mul i64 %i.agq, %i.agr
  %spec.select.i366 = select i1 %i.agt, i64 %i.agu, i64 -1
  br label %distance_multiply.exit368

distance_multiply.exit368:                        ; preds = %distance_multiply.exit, %bb.eo, %distance_multiply.exit.thread
  %.0.i770 = phi i64 [ %.0.i771, %distance_multiply.exit.thread ], [ %.0.i, %distance_multiply.exit ], [ %.0.i, %bb.eo ]
  %.0255 = phi i64 [ %i.ago, %distance_multiply.exit.thread ], [ 0, %distance_multiply.exit ], [ %spec.select.i366, %bb.eo ]
  store i64 %.0.i770, ptr %1, align 8, !tbaa !95
  %i.agv = getelementptr i8, ptr %1, i64 8
  store i64 %.0255, ptr %i.agv, align 8, !tbaa !94
  br label %bb.ep

bb.ep:                                            ; preds = %bb.dv, %distance_multiply.exit368
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.ret1057

bb.eq:                                            ; preds = %tailrecurse
  %i.agw = getelementptr i8, ptr %.tr, i64 8
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !147 ; 2 uses
  %i.agy = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.agx)
  %i.agz = icmp eq i32 %i.agy, 1
  br i1 %i.agz, label %.split6, label %common.ret1057

.split6:                                          ; preds = %bb.eq
  %i.aha = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.agx, i1 true)
  switch i32 %i.aha, label %common.ret1057 [
    i32 1, label %bb.er
    i32 0, label %bb.es
    i32 2, label %bb.fc
    i32 3, label %bb.fc
    i32 4, label %bb.fd
  ]

bb.er:                                            ; preds = %.split6
  %i.ahb = getelementptr i8, ptr %2, i64 24       ; 3 uses
  %i.ahc = load i32, ptr %i.ahb, align 8, !tbaa !79
  %i.ahd = getelementptr i8, ptr %.tr, i64 16
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !207
  store i32 %i.ahe, ptr %i.ahb, align 8, !tbaa !79
  %i.ahf = getelementptr i8, ptr %.tr, i64 24
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !139
  %i.ahh = tail call fastcc i32 @optimize_node_left(ptr noundef %i.ahg, ptr noundef %1, ptr noundef %2)
  store i32 %i.ahc, ptr %i.ahb, align 8, !tbaa !79
  br label %common.ret1057

bb.es:                                            ; preds = %.split6
  %i.ahi = getelementptr i8, ptr %.tr, i64 52     ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !303
  %i.ahk = add i32 %i.ahj, 1                      ; 2 uses
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !303
  %i.ahl = icmp sgt i32 %i.ahk, 5
  br i1 %i.ahl, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.ahm = getelementptr i8, ptr %.tr, i64 4
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !137 ; 2 uses
  %i.aho = and i32 %i.ahn, 1
  %.not282 = icmp eq i32 %i.aho, 0
  br i1 %.not282, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahp = getelementptr i8, ptr %.tr, i64 32
  %i.ahq = load i64, ptr %i.ahp, align 8, !tbaa !235
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.0251 = phi i64 [ %i.ahq, %bb.eu ], [ 0, %bb.et ]
  %i.ahr = and i32 %i.ahn, 2
  %.not283 = icmp eq i32 %i.ahr, 0
  br i1 %.not283, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ahs = getelementptr i8, ptr %.tr, i64 40
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !304
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0 = phi i64 [ %i.aht, %bb.ew ], [ -1, %bb.ev ]
  store i64 %.0251, ptr %1, align 8, !tbaa !95
  %i.ahu = getelementptr i8, ptr %1, i64 8
  store i64 %.0, ptr %i.ahu, align 8, !tbaa !94
  br label %common.ret1057

bb.ey:                                            ; preds = %bb.es
  %i.ahv = getelementptr i8, ptr %.tr, i64 24
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !139
  %i.ahx = tail call fastcc i32 @optimize_node_left(ptr noundef %i.ahw, ptr noundef %1, ptr noundef %2) ; 4 uses
  %i.ahy = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !105 ; 2 uses
  %i.aia = and i32 %i.ahz, 49152
  %.not.i369 = icmp eq i32 %i.aia, 0
  br i1 %.not.i369, label %is_set_opt_anc_info.exit, label %is_set_opt_anc_info.exit.thread

is_set_opt_anc_info.exit:                         ; preds = %bb.ey
  %i.aib = getelementptr i8, ptr %1, i64 20
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !106
  %i.aid = and i32 %i.aic, 49152
  %.not4.i.not = icmp eq i32 %i.aid, 0
  br i1 %.not4.i.not, label %common.ret1057, label %is_set_opt_anc_info.exit.thread

is_set_opt_anc_info.exit.thread:                  ; preds = %bb.ey, %is_set_opt_anc_info.exit
  %i.aie = getelementptr i8, ptr %.tr, i64 12
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !180 ; 2 uses
  %i.aig = icmp slt i32 %i.aif, 32
  %i.aih = getelementptr i8, ptr %2, i64 32
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !82
  %i.aij = getelementptr i8, ptr %i.aii, i64 36
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !172 ; 2 uses
  br i1 %i.aig, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %is_set_opt_anc_info.exit.thread
  %i.ail = shl nuw i32 1, %i.aif
  %i.aim = and i32 %i.aik, %i.ail
  %.not281 = icmp eq i32 %i.aim, 0
  br i1 %.not281, label %common.ret1057, label %bb.fb

bb.fa:                                            ; preds = %is_set_opt_anc_info.exit.thread
  %i.ain = and i32 %i.aik, 1
  %.not280 = icmp eq i32 %i.ain, 0
  br i1 %.not280, label %common.ret1057, label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.aio = and i32 %i.ahz, -49153
  store i32 %i.aio, ptr %i.ahy, align 8, !tbaa !105
  br label %common.ret1057

bb.fc:                                            ; preds = %.split6, %.split6
  %i.aip = getelementptr i8, ptr %.tr, i64 24
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !139
  br label %tailrecurse

bb.fd:                                            ; preds = %.split6
  store i64 0, ptr %1, align 8, !tbaa !95
  %i.air = getelementptr i8, ptr %1, i64 8
  store i64 -1, ptr %i.air, align 8, !tbaa !94
  br label %common.ret1057
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @select_opt_exact_info(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92   ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !92   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %comp_distance_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %comp_distance_value.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.b, 3
  %i.h = icmp slt i32 %i.d, 3
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 36
  %i.j = load i8, ptr %i.i, align 4, !tbaa !35    ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %map_position_value.exit

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i8 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !156
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %map_position_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = zext nneg i8 %i.j to i64
  %i.q = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !96
  %i.s = sext i16 %i.r to i32
  br label %map_position_value.exit

map_position_value.exit:                          ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ 20, %bb.f ], [ %i.s, %bb.g ], [ 4, %bb.d ] ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 36
  %i.u = load i8, ptr %i.t, align 4, !tbaa !35    ; 3 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.h, label %map_position_value.exit33

bb.h:                                             ; preds = %map_position_value.exit
  %i.w = icmp eq i8 %i.u, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !156
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %map_position_value.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aa = zext nneg i8 %i.u to i64
  %i.ab = getelementptr [2 x i8], ptr @map_position_value.ByteValTable, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !96
  %i.ad = sext i16 %i.ac to i32
  br label %map_position_value.exit33

map_position_value.exit33:                        ; preds = %map_position_value.exit, %bb.i, %bb.j
  %.0.i32 = phi i32 [ 20, %bb.i ], [ %i.ad, %bb.j ], [ 4, %map_position_value.exit ] ; 2 uses
  %i.ae = icmp sgt i32 %i.b, 1
  %i.af = add nsw i32 %.0.i32, 5
  %spec.select = select i1 %i.ae, i32 %i.af, i32 %.0.i32
  %i.ag = icmp sgt i32 %i.d, 1
  %i.ah = add nsw i32 %.0.i, 5
  %spec.select31 = select i1 %i.ag, i32 %i.ah, i32 %.0.i
  br label %bb.k

bb.k:                                             ; preds = %map_position_value.exit33, %bb.c
  %.127 = phi i32 [ %i.b, %bb.c ], [ %spec.select, %map_position_value.exit33 ]
  %.0 = phi i32 [ %i.d, %bb.c ], [ %spec.select31, %map_position_value.exit33 ]
  %i.ai = getelementptr i8, ptr %1, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ak = icmp slt i32 %i.aj, 1
  %i.al = zext i1 %i.ak to i32
  %spec.select30 = shl i32 %.127, %i.al           ; 3 uses
  %i.am = getelementptr i8, ptr %2, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !93
  %i.ao = icmp slt i32 %i.an, 1
  %i.ap = zext i1 %i.ao to i32
  %.1 = shl i32 %.0, %i.ap                        ; 3 uses
  %i.aq = icmp slt i32 %.1, 1
  br i1 %i.aq, label %comp_distance_value.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp slt i32 %spec.select30, 1
  br i1 %i.ar, label %comp_distance_value.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !94 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %distance_value.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = load i64, ptr %1, align 8, !tbaa !95
  %i.aw = sub i64 %i.at, %i.av                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 100
  br i1 %i.ax, label %bb.o, label %distance_value.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.aw
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !96
  %i.ba = sext i16 %i.az to i32
  %i.bb = mul i32 %spec.select30, %i.ba
  br label %distance_value.exit.i

distance_value.exit.i:                            ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ 0, %bb.m ], [ %i.bb, %bb.o ], [ %spec.select30, %bb.n ] ; 2 uses
  %i.bc = getelementptr i8, ptr %2, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !94 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %distance_value.exit21.i, label %bb.p

bb.p:                                             ; preds = %distance_value.exit.i
  %i.bf = load i64, ptr %2, align 8, !tbaa !95
  %i.bg = sub i64 %i.bd, %i.bf                    ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 100
  br i1 %i.bh, label %bb.q, label %distance_value.exit21.i

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr [2 x i8], ptr @distance_value.dist_vals, i64 %i.bg
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !96
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul i32 %.1, %i.bk
  br label %distance_value.exit21.i

distance_value.exit21.i:                          ; preds = %bb.q, %bb.p, %distance_value.exit.i
  %.0.i20.i = phi i32 [ 0, %distance_value.exit.i ], [ %i.bl, %bb.q ], [ %.1, %bb.p ] ; 2 uses
  %i.bm = icmp sgt i32 %.0.i20.i, %.0.i.i
  br i1 %i.bm, label %comp_distance_value.exit.sink.split, label %bb.r

bb.r:                                             ; preds = %distance_value.exit21.i
  %i.bn = icmp slt i32 %.0.i20.i, %.0.i.i
  br i1 %i.bn, label %comp_distance_value.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i64, ptr %2, align 8, !tbaa !95
  %i.bp = load i64, ptr %1, align 8, !tbaa !95
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %comp_distance_value.exit.sink.split, label %comp_distance_value.exit

comp_distance_value.exit.sink.split:              ; preds = %distance_value.exit21.i, %bb.l, %bb.s, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 64, i1 false)
  br label %comp_distance_value.exit

comp_distance_value.exit:                         ; preds = %comp_distance_value.exit.sink.split, %bb.s, %bb.r, %bb.k, %bb.a
  ret void
}

declare i32 @onigenc_strlen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @add_char_amb_opt_map_info(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %5 = alloca [13 x %struct.OnigCaseFoldCodeItem], align 16 ; 4 uses
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = load i8, ptr %1, align 1, !tbaa !35      ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.d = zext i8 %i.b to i64                      ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 %i.d     ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %add_char_opt_map_info.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 1, !tbaa !35
  %i.h = icmp sgt i8 %i.b, -1
  br i1 %i.h, label %bb.c, label %map_position_value.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@get_max_match_length:bb.a
  %i.cu = or disjoint i32 %i.cp, 8
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !35
  %i.cv = getelementptr i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139
  %i.cx = tail call fastcc i32 @get_max_match_length(ptr noundef %i.cw, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !35
  %i.cz = and i32 %i.cy, -9                       ; 2 uses
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !35
  %i.da = icmp eq i32 %i.cx, 0
  br i1 %i.da, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.db = load i64, ptr %1, align 8, !tbaa !34
  %i.dc = getelementptr i8, ptr %0, i64 40
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !304
  %i.dd = or i32 %i.cz, 2
  store i32 %i.dd, ptr %i.co, align 4, !tbaa !35
  br label %.critedge

bb.ag:                                            ; preds = %.split, %.split, %.split
  %i.de = getelementptr i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dg = tail call fastcc i32 @get_max_match_length(ptr noundef %i.df, ptr noundef %1, ptr noundef %2)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.p, %bb.e, %.preheader127, %bb.b, %.preheader, %bb.k, %bb.j, %bb.f, %bb.g, %bb.h, %bb.s, %bb.r, %bb.a, %bb.u, %bb.v, %bb.y, %distance_multiply.exit, %bb.t, %bb.ab, %bb.ae, %bb.af, %bb.ad, %bb.z, %bb.ag, %.split
  %.1 = phi i32 [ %i.dg, %bb.ag ], [ 0, %bb.a ], [ 0, %bb.af ], [ %i.cx, %bb.ae ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.s ], [ %i.bw, %bb.r ], [ 0, %bb.j ], [ 0, %bb.t ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %distance_multiply.exit ], [ 0, %bb.v ], [ %i.cb, %bb.u ], [ 0, %.split ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.e ], [ %i.e, %.preheader ], [ %i.q, %.preheader127 ], [ 0, %bb.p ], [ %i.bk, %bb.m ], [ -208, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @alt_merge_opt_exact_info(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !92
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !93
  %i.h = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !92
  br label %.sink.split92

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !95
  %i.j = load i64, ptr %1, align 8, !tbaa !95
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %is_equal_mml.exit, label %is_equal_mml.exit.thread

is_equal_mml.exit:                                ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !94
  %.not = icmp eq i64 %i.m, %i.o
  br i1 %.not, label %.preheader, label %is_equal_mml.exit.thread

.preheader:                                       ; preds = %is_equal_mml.exit
  %i.p = icmp sgt i32 %i.e, 0
  br i1 %i.p, label %.lr.ph76, label %.critedge

.lr.ph76:                                         ; preds = %.preheader
  %i.q = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 16
  br label %bb.e

is_equal_mml.exit.thread:                         ; preds = %bb.d, %is_equal_mml.exit
  %i.t = getelementptr i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  store i32 -1, ptr %i.t, align 4, !tbaa !93
  store i32 0, ptr %i.d, align 8, !tbaa !92
  br label %.sink.split92

bb.e:                                             ; preds = %.lr.ph76, %.critedge67
  %i.u = phi i32 [ %i.e, %.lr.ph76 ], [ %i.ax, %.critedge67 ]
  %.075 = phi i32 [ 0, %.lr.ph76 ], [ %i.aw, %.critedge67 ] ; 7 uses
  %i.v = load i32, ptr %i.a, align 8, !tbaa !92
  %i.w = icmp slt i32 %.075, %i.v
  br i1 %i.w, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.x = sext i32 %.075 to i64                    ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 %i.x     ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.x
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %.not62 = icmp eq i8 %i.z, %i.ab
  br i1 %.not62, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !76  ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !155 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !156
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = sext i32 %i.u to i64
  %i.aj = getelementptr i8, ptr %i.q, i64 %i.ai   ; 2 uses
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ult ptr %i.y, %i.aj
  br i1 %i.ak, label %select.unfold, label %.critedge67

bb.i:                                             ; preds = %bb.g
  %i.al = tail call i32 @onigenc_mbclen(ptr noundef nonnull %i.y, ptr noundef %i.aj, ptr noundef nonnull %i.ac) #22
  br label %select.unfold

select.unfold:                                    ; preds = %bb.h, %bb.i
  %i.am = phi i32 [ %i.al, %bb.i ], [ %i.ae, %bb.h ] ; 4 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge67

.lr.ph.preheader:                                 ; preds = %select.unfold
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge67, label %.lr.ph, !llvm.loop !309

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = add i32 %.075, %i.ao
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.q, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.at = getelementptr i8, ptr %i.r, i64 %i.aq
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  %.not63 = icmp eq i8 %i.as, %i.au
  br i1 %.not63, label %bb.j, label %.critedge

.critedge67:                                      ; preds = %bb.j, %bb.h, %select.unfold
  %i.av = phi i32 [ 0, %bb.h ], [ %i.am, %select.unfold ], [ %i.am, %bb.j ]
  %i.aw = add i32 %i.av, %.075                    ; 3 uses
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !92  ; 2 uses
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %.critedge, !llvm.loop !310

.critedge:                                        ; preds = %bb.e, %bb.f, %.critedge67, %.lr.ph, %.preheader
  %.072 = phi i32 [ %.075, %.lr.ph ], [ 0, %.preheader ], [ %.075, %bb.e ], [ %.075, %bb.f ], [ %i.aw, %.critedge67 ] ; 3 uses
  %i.az = getelementptr i8, ptr %1, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !268
  %.not64 = icmp eq i32 %i.ba, 0
  br i1 %.not64, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !92
  %i.bc = icmp slt i32 %.072, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !92
  %i.be = icmp slt i32 %.072, %i.bd
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %.critedge
  %i.bf = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.bf, align 8, !tbaa !268
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %.072, ptr %i.d, align 8, !tbaa !92
  %i.bg = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !93 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  %i.bj = getelementptr i8, ptr %1, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !93 ; 3 uses
  br i1 %i.bi, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = or i32 %i.bk, %i.bh
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.p
  %.sink = phi i32 [ %i.bm, %bb.p ], [ %i.bk, %bb.n ]
  store i32 %.sink, ptr %i.bg, align 4, !tbaa !93
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.o
  %i.bn = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 16
  %i.bp = getelementptr i8, ptr %0, i64 20
  %i.bq = load <2 x i32>, ptr %i.bo, align 8, !tbaa !7
  %i.br = load <2 x i32>, ptr %i.bn, align 8, !tbaa !7
  %i.bs = and <2 x i32> %i.br, %i.bq              ; 2 uses
  store <2 x i32> %i.bs, ptr %i.bn, align 8, !tbaa !7
  %i.bt = getelementptr i8, ptr %0, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !268
  %.not65 = icmp eq i32 %i.bu, 0
  %i.bv = extractelement <2 x i32> %i.bs, i64 1
  %spec.store.select = select i1 %.not65, i32 0, i32 %i.bv
  store i32 %spec.store.select, ptr %i.bp, align 4
  br label %bb.r

.sink.split92:                                    ; preds = %bb.c, %is_equal_mml.exit.thread
  %i.bw = getelementptr i8, ptr %0, i64 36
  store i8 0, ptr %i.bw, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.sink.split92
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @set_bm_skip(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 5 uses
  %5 = alloca [13 x %struct.OnigCaseFoldCodeItem], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.b = getelementptr i8, ptr %2, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75   ; 14 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i32 %4, 0                       ; 2 uses
  %i.h = icmp ne ptr %1, %0
  %or.cond = and i1 %.not, %i.h
  br i1 %or.cond, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 72
  %i.j = getelementptr i8, ptr %2, i64 96
  %i.k = getelementptr i8, ptr %i.c, i64 16
  %i.l = getelementptr i8, ptr %i.c, i64 20
  %i.m = getelementptr i8, ptr %i.c, i64 48
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph6, %._crit_edge
  %.01035 = phi i64 [ 0, %.lr.ph6 ], [ %i.an, %._crit_edge ] ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %.01035    ; 8 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.p = load i32, ptr %i.j, align 8, !tbaa !80
  %i.q = call i32 %i.o(i32 noundef %i.p, ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %i.c) #22 ; 2 uses
  %i.r = load i32, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.s = load i32, ptr %i.l, align 4, !tbaa !156
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult ptr %i.n, %1
  %spec.select = select i1 %i.u, i32 %i.r, i32 0
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = call i32 @onigenc_mbclen(ptr noundef %i.n, ptr noundef %1, ptr noundef nonnull %i.c) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.v, %bb.e ], [ %spec.select, %bb.d ] ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr i8, ptr %i.n, i64 %i.x
  %i.z = icmp ugt ptr %i.y, %1
  %i.aa = ptrtoint ptr %i.n to i64                ; 4 uses
  %i.ab = sub i64 %i.d, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %.0101 = select i1 %i.z, i32 %i.ac, i32 %i.w    ; 3 uses
  %i.ad = icmp sgt i32 %i.q, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !311

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.ae = getelementptr [20 x i8], ptr %5, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !160
  %.not110 = icmp eq i32 %i.ag, 1
  br i1 %.not110, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !158
  %.not111 = icmp eq i32 %i.ah, %.0101
  br i1 %.not111, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !163
  %i.aj = getelementptr i8, ptr %i.ae, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = call i32 %i.ai(i32 noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #22
  %.not112 = icmp eq i32 %i.al, %.0101
  br i1 %.not112, label %bb.g, label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.am = sext i32 %.0101 to i64
  %i.an = add nsw i64 %.01035, %i.am              ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.f
  br i1 %i.ao, label %bb.c, label %.loopexit, !llvm.loop !312

.loopexit:                                        ; preds = %._crit_edge, %bb.i, %.lr.ph, %bb.h, %bb.b
  %.pre-phi40 = phi i64 [ %.01035, %bb.i ], [ %i.f, %bb.b ], [ %.01035, %bb.h ], [ %.01035, %.lr.ph ], [ %i.f, %._crit_edge ] ; 4 uses
  %.pre-phi = phi i64 [ %i.aa, %bb.i ], [ %i.d, %bb.b ], [ %i.aa, %bb.h ], [ %i.aa, %.lr.ph ], [ %i.d, %._crit_edge ]
  %.0100 = phi ptr [ %i.n, %bb.i ], [ %1, %bb.b ], [ %i.n, %bb.h ], [ %i.n, %.lr.ph ], [ %1, %._crit_edge ] ; 5 uses
  %i.ap = trunc i64 %.pre-phi40 to i8
  %i.aq = add i8 %i.ap, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 %i.aq, i64 256, i1 false), !tbaa !35
  %.not20 = icmp eq ptr %.0100, %0
  br i1 %.not20, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %.loopexit
  %i.ar = getelementptr i8, ptr %i.c, i64 72
  %i.as = getelementptr i8, ptr %2, i64 96
  %i.at = getelementptr i8, ptr %i.c, i64 16
  %i.au = getelementptr i8, ptr %i.c, i64 20
  %i.av = getelementptr i8, ptr %i.c, i64 48
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph18, %._crit_edge15
  %.09817 = phi i32 [ 0, %.lr.ph18 ], [ %.199, %._crit_edge15 ]
  %.216 = phi i64 [ 0, %.lr.ph18 ], [ %i.dj, %._crit_edge15 ] ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 %.216     ; 11 uses
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !153
  %i.ay = load i32, ptr %i.as, align 8, !tbaa !80
  %i.az = call i32 %i.ax(i32 noundef %i.ay, ptr noundef %i.aw, ptr noundef %.0100, ptr noundef nonnull %5, ptr noundef %i.c) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.199 = phi i32 [ %i.az, %bb.k ], [ %.09817, %bb.j ] ; 3 uses
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !155 ; 2 uses
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !156
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = icmp ult ptr %i.aw, %.0100
  %spec.select113 = select i1 %i.bd, i32 %i.ba, i32 0
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.be = call i32 @onigenc_mbclen(ptr noundef %i.aw, ptr noundef %.0100, ptr noundef nonnull %i.c) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bf = phi i32 [ %i.be, %bb.n ], [ %spec.select113, %bb.m ] ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bg
  %i.bi = icmp ugt ptr %i.bh, %.0100
  %i.bj = ptrtoint ptr %i.aw to i64
  %i.bk = sub i64 %.pre-phi, %i.bj
  %i.bl = trunc i64 %i.bk to i32
  %.1102 = select i1 %i.bi, i32 %i.bl, i32 %i.bf  ; 4 uses
  %i.bm = icmp sgt i32 %.1102, 0
  br i1 %i.bm, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %bb.o
  %.neg1 = sub i64 %.pre-phi40, %.216             ; 6 uses
  %i.bn = icmp sgt i32 %.199, 0
  %wide.trip.count38 = zext nneg i32 %.1102 to i64 ; 3 uses
  br i1 %i.bn, label %.lr.ph10.us.preheader, label %.lr.ph14.split.preheader

.lr.ph14.split.preheader:                         ; preds = %.lr.ph14
  %xtraiter = and i64 %wide.trip.count38, 3       ; 3 uses
  %i.bo = icmp ult i32 %.1102, 4
  br i1 %i.bo, label %.lr.ph14.split.epil.preheader, label %.lr.ph14.split.preheader.new

.lr.ph14.split.preheader.new:                     ; preds = %.lr.ph14.split.preheader
  %unroll_iter = and i64 %wide.trip.count38, 2147483644
  br label %.lr.ph14.split

.lr.ph10.us.preheader:                            ; preds = %.lr.ph14
  %wide.trip.count33 = zext nneg i32 %.199 to i64
  br label %.lr.ph10.us

.lr.ph10.us:                                      ; preds = %.lr.ph10.us.preheader, %._crit_edge11.us
  %indvars.iv35 = phi i64 [ 0, %.lr.ph10.us.preheader ], [ %indvars.iv.next36, %._crit_edge11.us ] ; 4 uses
  %i.bp = sub i64 %.neg1, %indvars.iv35
  %i.bq = trunc i64 %i.bp to i8                   ; 2 uses
  %i.br = getelementptr i8, ptr %i.aw, i64 %indvars.iv35
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %3, i64 %i.bt
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !35
end_hunk_4
begin_hunk_5_@compile_length_tree:bb.a

bb.p:                                             ; preds = %.lr.ph.split.split.us.i
  %i.cd = shl i32 %i.aq, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %add_compile_string_length.exit.us.i.peel
  %.158.us14.i.peel = phi i32 [ %i.cd, %bb.p ], [ %i.au, %add_compile_string_length.exit.us.i.peel ] ; 2 uses
  %.156.us15.i.peel = phi i32 [ 0, %bb.p ], [ %i.cc, %add_compile_string_length.exit.us.i.peel ]
  %i.ce = getelementptr i8, ptr %i.as, i64 %i.bq  ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.ap
  br i1 %i.cf, label %.peel.next, label %._crit_edge.i.thread

.peel.next:                                       ; preds = %bb.q, %.peel.next
  %.0544.us9.i = phi ptr [ %i.ch, %.peel.next ], [ %i.ce, %bb.q ]
  %.0572.us11.i = phi i32 [ %i.cg, %.peel.next ], [ %.158.us14.i.peel, %bb.q ]
  %i.cg = add i32 %.0572.us11.i, %i.au            ; 2 uses
  %i.ch = getelementptr i8, ptr %.0544.us9.i, i64 %i.bq ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.ap
  br i1 %i.ci, label %.peel.next, label %._crit_edge.i.thread, !llvm.loop !322

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %bb.x
  %i.cj = phi ptr [ %i.di, %bb.x ], [ %i.ap, %.lr.ph.split.i ]
  %.0544.i = phi ptr [ %i.dh, %bb.x ], [ %i.as, %.lr.ph.split.i ] ; 2 uses
  %.0553.i = phi i32 [ %.156.i, %bb.x ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.0572.i = phi i32 [ %.158.i, %bb.x ], [ %i.aq, %.lr.ph.split.i ] ; 3 uses
  %.0591.i = phi i32 [ %.160.i, %bb.x ], [ %i.aq, %.lr.ph.split.i ] ; 5 uses
  %i.ck = load i32, ptr %i.aj, align 8, !tbaa !155 ; 2 uses
  %i.cl = load i32, ptr %i.al, align 4, !tbaa !156
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split.i
  %i.cn = tail call i32 @onigenc_mbclen(ptr noundef %.0544.i, ptr noundef nonnull %i.cj, ptr noundef nonnull %.val62) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.split.split.i
  %i.co = phi i32 [ %i.cn, %bb.r ], [ %i.ck, %.lr.ph.split.split.i ] ; 4 uses
  %i.cp = icmp eq i32 %i.co, %.0591.i
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = add i32 %.0591.i, %.0572.i
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.cr = sext i32 %.0572.i to i64
  %i.cs = sext i32 %.0591.i to i64                ; 2 uses
  %i.ct = add nsw i64 %i.cr, -1
  %i.cu = add nsw i64 %i.ct, %i.cs
  %i.cv = udiv i64 %i.cu, %i.cs                   ; 2 uses
  switch i32 %.0591.i, label %add_compile_string_length.exit.i65 [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %select_str_opcode.exit.thread.i.i
  ]

bb.v:                                             ; preds = %bb.u
  %switch.tableidx.i.i.i = add i64 %i.cv, -1      ; 2 uses
  %i.cw = icmp ult i64 %switch.tableidx.i.i.i, 5
  br i1 %i.cw, label %switch.lookup.i.i.i, label %add_compile_string_length.exit.i65

bb.w:                                             ; preds = %bb.u
  %switch.tableidx9.i.i.i = add i64 %i.cv, -1     ; 2 uses
  %i.cx = icmp ult i64 %switch.tableidx9.i.i.i, 3
  br i1 %i.cx, label %switch.lookup10.i.i.i, label %add_compile_string_length.exit.i65

switch.lookup.i.i.i:                              ; preds = %bb.v
  %switch.idx.cast.i.i.i = trunc nuw nsw i64 %switch.tableidx.i.i.i to i32
  %switch.offset.i.i.i = add nuw nsw i32 %switch.idx.cast.i.i.i, 2
  br label %add_compile_string_length.exit.i65

switch.lookup10.i.i.i:                            ; preds = %bb.w
  %switch.idx.cast11.i.i.i = trunc nuw nsw i64 %switch.tableidx9.i.i.i to i32
  %switch.offset12.i.i.i = or disjoint i32 %switch.idx.cast11.i.i.i, 8
  br label %add_compile_string_length.exit.i65

select_str_opcode.exit.thread.i.i:                ; preds = %bb.u
  br label %add_compile_string_length.exit.i65

add_compile_string_length.exit.i65:               ; preds = %select_str_opcode.exit.thread.i.i, %switch.lookup10.i.i.i, %switch.lookup.i.i.i, %bb.w, %bb.v, %bb.u
  %.0.i3.i.i = phi i32 [ 13, %bb.u ], [ 11, %bb.w ], [ %switch.offset.i.i.i, %switch.lookup.i.i.i ], [ 7, %bb.v ], [ %switch.offset12.i.i.i, %switch.lookup10.i.i.i ], [ 12, %select_str_opcode.exit.thread.i.i ] ; 2 uses
  %i.cy = phi i32 [ 5, %bb.u ], [ 1, %bb.w ], [ 1, %switch.lookup.i.i.i ], [ 1, %bb.v ], [ 1, %switch.lookup10.i.i.i ], [ 1, %select_str_opcode.exit.thread.i.i ] ; 2 uses
  %i.cz = add nsw i32 %.0.i3.i.i, -11
  %i.da = icmp ult i32 %i.cz, 3
  %i.db = and i32 %.0.i3.i.i, 7
  %i.dc = icmp eq i32 %i.db, 7
  %or.cond7.i.i = or i1 %i.dc, %i.da
  %i.dd = add nuw nsw i32 %i.cy, 4
  %.1.i.i66 = select i1 %or.cond7.i.i, i32 %i.dd, i32 %i.cy
  %i.de = add i32 %.0572.i, %.0553.i
  %i.df = add i32 %i.de, %.1.i.i66
  br label %bb.x

bb.x:                                             ; preds = %add_compile_string_length.exit.i65, %bb.t
  %.160.i = phi i32 [ %.0591.i, %bb.t ], [ %i.co, %add_compile_string_length.exit.i65 ] ; 3 uses
  %.158.i = phi i32 [ %i.cq, %bb.t ], [ %i.co, %add_compile_string_length.exit.i65 ] ; 2 uses
  %.156.i = phi i32 [ %.0553.i, %bb.t ], [ %i.df, %add_compile_string_length.exit.i65 ] ; 2 uses
  %i.dg = sext i32 %i.co to i64
  %i.dh = getelementptr i8, ptr %.0544.i, i64 %i.dg ; 2 uses
  %i.di = load ptr, ptr %i.v, align 8, !tbaa !152 ; 2 uses
  %i.dj = icmp ult ptr %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph.split.split.i, label %._crit_edge.loopexit27.i, !llvm.loop !323

._crit_edge.loopexit27.i:                         ; preds = %bb.x
  %.pre32.i = sext i32 %.160.i to i64
  br label %._crit_edge.i

._crit_edge.i.thread:                             ; preds = %.peel.next, %bb.q
  %.057.lcssa.i.ph = phi i32 [ %.158.us14.i.peel, %bb.q ], [ %i.cg, %.peel.next ] ; 2 uses
  %i.dk = sext i32 %.057.lcssa.i.ph to i64
  %i.dl = add nsw i64 %i.bq, -1
  %i.dm = add nsw i64 %i.dl, %i.dk
  %i.dn = udiv i64 %i.dm, %i.bq
  br label %bb.z

._crit_edge.i:                                    ; preds = %bb.l, %._crit_edge.loopexit27.i, %bb.i
  %.pre-phi.i = phi i64 [ %.pre32.i, %._crit_edge.loopexit27.i ], [ %i.ar, %bb.i ], [ %i.ar, %bb.l ] ; 2 uses
  %.059.lcssa.i = phi i32 [ %.160.i, %._crit_edge.loopexit27.i ], [ %i.aq, %bb.i ], [ %i.aq, %bb.l ]
  %.057.lcssa.i = phi i32 [ %.158.i, %._crit_edge.loopexit27.i ], [ %i.aq, %bb.i ], [ %i.bm, %bb.l ] ; 3 uses
  %.055.lcssa.i = phi i32 [ %.156.i, %._crit_edge.loopexit27.i ], [ 0, %bb.i ], [ 0, %bb.l ] ; 2 uses
  %i.do = sext i32 %.057.lcssa.i to i64
  %i.dp = add nsw i64 %.pre-phi.i, -1
  %i.dq = add nsw i64 %i.dp, %i.do
  %i.dr = udiv i64 %i.dq, %.pre-phi.i             ; 2 uses
  br i1 %.not26.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.ds = phi i64 [ %i.be, %._crit_edge.thread.i ], [ %i.dr, %._crit_edge.i ]
  %.055.lcssa55.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.055.lcssa.i, %._crit_edge.i ]
  %.057.lcssa53.i = phi i32 [ %i.ay, %._crit_edge.thread.i ], [ %.057.lcssa.i, %._crit_edge.i ]
  %cond.i.i68.i = icmp eq i64 %i.ds, 1
  %..i.i69.i = select i1 %cond.i.i68.i, i32 14, i32 15
  br label %add_compile_string_length.exit82.i

bb.z:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.dt = phi i64 [ %i.dn, %._crit_edge.i.thread ], [ %i.dr, %._crit_edge.i ] ; 2 uses
  %.055.lcssa.i151 = phi i32 [ %.156.us15.i.peel, %._crit_edge.i.thread ], [ %.055.lcssa.i, %._crit_edge.i ] ; 6 uses
  %.057.lcssa.i150 = phi i32 [ %.057.lcssa.i.ph, %._crit_edge.i.thread ], [ %.057.lcssa.i, %._crit_edge.i ] ; 6 uses
  %.059.lcssa.i149 = phi i32 [ %i.au, %._crit_edge.i.thread ], [ %.059.lcssa.i, %._crit_edge.i ]
  switch i32 %.059.lcssa.i149, label %add_compile_string_length.exit82.i [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %select_str_opcode.exit.thread.i73.i
  ]

bb.aa:                                            ; preds = %bb.z
  %switch.tableidx.i.i78.i = add i64 %i.dt, -1    ; 2 uses
  %i.du = icmp ult i64 %switch.tableidx.i.i78.i, 5
  br i1 %i.du, label %switch.lookup.i.i79.i, label %add_compile_string_length.exit82.i

bb.ab:                                            ; preds = %bb.z
  %switch.tableidx9.i.i74.i = add i64 %i.dt, -1   ; 2 uses
  %i.dv = icmp ult i64 %switch.tableidx9.i.i74.i, 3
  br i1 %i.dv, label %switch.lookup10.i.i75.i, label %add_compile_string_length.exit82.i

switch.lookup.i.i79.i:                            ; preds = %bb.aa
  %switch.idx.cast.i.i80.i = trunc nuw nsw i64 %switch.tableidx.i.i78.i to i32
  %switch.offset.i.i81.i = add nuw nsw i32 %switch.idx.cast.i.i80.i, 2
  br label %add_compile_string_length.exit82.i

switch.lookup10.i.i75.i:                          ; preds = %bb.ab
  %switch.idx.cast11.i.i76.i = trunc nuw nsw i64 %switch.tableidx9.i.i74.i to i32
  %switch.offset12.i.i77.i = or disjoint i32 %switch.idx.cast11.i.i76.i, 8
  br label %add_compile_string_length.exit82.i

select_str_opcode.exit.thread.i73.i:              ; preds = %bb.z
  br label %add_compile_string_length.exit82.i

add_compile_string_length.exit82.i:               ; preds = %select_str_opcode.exit.thread.i73.i, %switch.lookup10.i.i75.i, %switch.lookup.i.i79.i, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.055.lcssa54.i = phi i32 [ %.055.lcssa.i151, %bb.z ], [ %.055.lcssa.i151, %bb.ab ], [ %.055.lcssa.i151, %switch.lookup.i.i79.i ], [ %.055.lcssa.i151, %bb.aa ], [ %.055.lcssa.i151, %switch.lookup10.i.i75.i ], [ %.055.lcssa55.i, %bb.y ], [ %.055.lcssa.i151, %select_str_opcode.exit.thread.i73.i ]
  %.057.lcssa52.i = phi i32 [ %.057.lcssa.i150, %bb.z ], [ %.057.lcssa.i150, %bb.ab ], [ %.057.lcssa.i150, %switch.lookup.i.i79.i ], [ %.057.lcssa.i150, %bb.aa ], [ %.057.lcssa.i150, %switch.lookup10.i.i75.i ], [ %.057.lcssa53.i, %bb.y ], [ %.057.lcssa.i150, %select_str_opcode.exit.thread.i73.i ]
  %.0.i3.i70.i = phi i32 [ 13, %bb.z ], [ 11, %bb.ab ], [ %switch.offset.i.i81.i, %switch.lookup.i.i79.i ], [ 7, %bb.aa ], [ %switch.offset12.i.i77.i, %switch.lookup10.i.i75.i ], [ %..i.i69.i, %bb.y ], [ 12, %select_str_opcode.exit.thread.i73.i ] ; 2 uses
  %i.dw = phi i32 [ 5, %bb.z ], [ 1, %bb.ab ], [ 1, %switch.lookup.i.i79.i ], [ 1, %bb.aa ], [ 1, %switch.lookup10.i.i75.i ], [ 1, %bb.y ], [ 1, %select_str_opcode.exit.thread.i73.i ] ; 2 uses
  %i.dx = add nsw i32 %.0.i3.i70.i, -11
  %i.dy = icmp ult i32 %i.dx, 3
  %i.dz = and i32 %.0.i3.i70.i, 7
  %i.ea = icmp eq i32 %i.dz, 7
  %or.cond7.i71.i = or i1 %i.ea, %i.dy
  %i.eb = add nuw nsw i32 %i.dw, 4
  %.1.i72.i = select i1 %or.cond7.i71.i, i32 %i.eb, i32 %i.dw
  %i.ec = add i32 %.057.lcssa52.i, %.055.lcssa54.i
  %i.ed = add i32 %i.ec, %.1.i72.i
  br label %common.ret184

bb.ac:                                            ; preds = %bb.a
  %i.ee = getelementptr i8, ptr %0, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !189 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %common.ret184, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr i8, ptr %1, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !75
  %i.ej = getelementptr i8, ptr %i.ei, i64 20
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !156
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr i8, ptr %0, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !7
  %.not.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i, label %bb.af, label %bitset_is_empty.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.eo = getelementptr i8, ptr %0, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %.not.1.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not.1.i.i, label %bb.ag, label %bitset_is_empty.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr i8, ptr %0, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !7
  %.not.2.i.i = icmp eq i32 %i.er, 0
  br i1 %.not.2.i.i, label %bb.ah, label %bitset_is_empty.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr i8, ptr %0, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7
  %.not.3.i.i = icmp eq i32 %i.et, 0
  br i1 %.not.3.i.i, label %bb.ai, label %bitset_is_empty.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr i8, ptr %0, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !7
  %.not.4.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.4.i.i, label %bb.aj, label %bitset_is_empty.exit.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.ew = getelementptr i8, ptr %0, i64 28
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7
  %.not.5.i.i = icmp eq i32 %i.ex, 0
  br i1 %.not.5.i.i, label %bb.ak, label %bitset_is_empty.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr i8, ptr %0, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !7
  %.not.6.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.6.i.i, label %bitset_is_empty.exit.i, label %bitset_is_empty.exit.thread.i

bitset_is_empty.exit.i:                           ; preds = %bb.ak
  %i.fa = getelementptr i8, ptr %0, i64 36
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %.fr.i68 = freeze i32 %i.fb
  %.not.7.i.not.i = icmp eq i32 %.fr.i68, 0
  br i1 %.not.7.i.not.i, label %bb.al, label %bitset_is_empty.exit.thread.i

bitset_is_empty.exit.thread.i:                    ; preds = %bitset_is_empty.exit.i, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  br label %bb.al

bb.al:                                            ; preds = %bitset_is_empty.exit.thread.i, %bitset_is_empty.exit.i, %bb.ad
  %.0.i67 = phi i32 [ 5, %bb.ad ], [ 37, %bitset_is_empty.exit.thread.i ], [ 5, %bitset_is_empty.exit.i ]
  %i.fc = getelementptr i8, ptr %i.ef, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !16
  %i.fe = add i32 %i.fd, %.0.i67
  br label %common.ret184

bb.am:                                            ; preds = %bb.a
  %i.ff = getelementptr i8, ptr %0, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !173
  %i.fh = and i32 %i.fg, 8192
  %.not = icmp eq i32 %i.fh, 0
  %i.fi = getelementptr i8, ptr %0, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !171 ; 3 uses
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = shl i32 %i.fj, 1
  %i.fl = add i32 %i.fk, 13
  br label %common.ret184

bb.ao:                                            ; preds = %bb.am
  %i.fm = icmp eq i32 %i.fj, 1
  br i1 %i.fm, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fn = getelementptr i8, ptr %1, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !59
  %i.fp = and i32 %i.fo, 1
  %.not57 = icmp eq i32 %i.fp, 0
  br i1 %.not57, label %bb.aq, label %common.ret184

bb.aq:                                            ; preds = %bb.ap
  %i.fq = getelementptr i8, ptr %0, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = icmp slt i32 %i.fr, 3
  %i.ft = select i1 %i.fs, i32 1, i32 3
  br label %common.ret184

bb.ar:                                            ; preds = %bb.ao
  %i.fu = shl i32 %i.fj, 1
  %i.fv = add i32 %i.fu, 5
  br label %common.ret184

bb.as:                                            ; preds = %bb.a
  br label %common.ret184

bb.at:                                            ; preds = %bb.a
  %i.fw = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !143
  %i.fy = icmp eq i32 %i.fx, -1                   ; 4 uses
  %i.fz = getelementptr i8, ptr %0, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !177
  %i.gb = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !146
  %i.gd = tail call fastcc i32 @compile_length_tree(ptr noundef %i.gc, ptr noundef %1), !inline_history !324 ; 11 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %common.ret184, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !146
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !35
  %i.gh = icmp eq i32 %i.gg, 3
  br i1 %i.gh, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.gi = getelementptr i8, ptr %0, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !141
  %i.gk = icmp ne i32 %i.gj, 0
  %or.cond.i = select i1 %i.gk, i1 %i.fy, i1 false
  br i1 %or.cond.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gl = getelementptr i8, ptr %0, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !144
  %.not67.i = icmp eq ptr %i.gm, null
  %i.gn = getelementptr i8, ptr %0, i64 16
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !145
  %i.gp = mul i32 %i.go, %i.gd                    ; 2 uses
  br i1 %.not67.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gq = add i32 %i.gp, 2
  br label %common.ret184

bb.ay:                                            ; preds = %bb.aw
  %i.gr = add i32 %i.gp, 1
  br label %common.ret184

bb.az:                                            ; preds = %bb.av, %bb.au
  %.not.i69 = icmp eq i32 %i.ga, 0
  %i.gs = add nuw i32 %i.gd, 6
  %.057.i = select i1 %.not.i69, i32 %i.gd, i32 %i.gs ; 4 uses
  br i1 %i.fy, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.gt = getelementptr i8, ptr %0, i64 16
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !145 ; 3 uses
  %i.gv = icmp slt i32 %i.gu, 2
  %i.gw = mul i32 %i.gu, %i.gd                    ; 2 uses
  %i.gx = icmp slt i32 %i.gw, 51
  %or.cond69.i = or i1 %i.gv, %i.gx
  br i1 %or.cond69.i, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.gy = icmp eq i32 %i.gu, 1
  %i.gz = icmp samesign ugt i32 %i.gd, 50
  %or.cond3.i = and i1 %i.gz, %i.gy
  %.056.i = select i1 %or.cond3.i, i32 5, i32 %i.gw ; 3 uses
  %i.ha = getelementptr i8, ptr %0, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !141
  %.not65.i = icmp eq i32 %i.hb, 0
  br i1 %.not65.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = getelementptr i8, ptr %0, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !144
  %.not66.i = icmp eq ptr %i.hd, null
  br i1 %.not66.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.he = add nuw i32 %.057.i, 11
  %i.hf = add i32 %i.he, %.056.i
  br label %common.ret184

bb.be:                                            ; preds = %bb.bc
  %i.hg = add nuw i32 %.057.i, 10
  %i.hh = add i32 %i.hg, %.056.i
  br label %common.ret184

bb.bf:                                            ; preds = %bb.bb
  %i.hi = add nuw i32 %.057.i, 10
  %i.hj = add i32 %i.hi, %.056.i
  br label %common.ret184

bb.bg:                                            ; preds = %bb.ba, %bb.az
  %i.hk = load i32, ptr %i.fw, align 4, !tbaa !143 ; 4 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hm = getelementptr i8, ptr %0, i64 48
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !204
  %.not62.i = icmp eq i32 %i.hn, 0
  br i1 %.not62.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ho = add nuw i32 %i.gd, 5
  br label %common.ret184

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre101 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !141
  %i.hp = icmp eq i32 %.pre101, 0                 ; 2 uses
  %brmerge = select i1 %i.fy, i1 true, i1 %i.hp
  %i.hq = icmp eq i32 %i.hk, 1                    ; 2 uses
  br i1 %brmerge, label %._crit_edge100, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.pre103 = add nuw i32 %i.gd, 5                 ; 2 uses
  %i.hr = mul i32 %i.hk, %.pre103
  %i.hs = icmp slt i32 %i.hr, 51
  %or.cond163 = select i1 %i.hq, i1 true, i1 %i.hs
  br i1 %or.cond163, label %._crit_edge102, label %.thread152

._crit_edge102:                                   ; preds = %bb.bk
  %i.ht = getelementptr i8, ptr %0, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !145 ; 2 uses
  %i.hv = mul i32 %i.hu, %i.gd
  %i.hw = sub i32 %i.hk, %i.hu
  %i.hx = mul i32 %i.hw, %.pre103
  %i.hy = add i32 %i.hx, %i.hv
  br label %common.ret184

._crit_edge100:                                   ; preds = %bb.bj
  %not. = xor i1 %i.fy, true
  %.mux = select i1 %not., i1 true, i1 %i.hp
  %or.cond = and i1 %i.hq, %.mux
  br i1 %or.cond, label %bb.bl, label %.thread152

bb.bl:                                            ; preds = %._crit_edge100
  %i.hz = getelementptr i8, ptr %0, i64 16
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !145
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.bm, label %.thread152

bb.bm:                                            ; preds = %bb.bl
end_hunk_5
