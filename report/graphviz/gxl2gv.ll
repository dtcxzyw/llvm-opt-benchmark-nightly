Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gxl2gv?download=true
inline.NumInlined: 126
inline.NumDeleted: 29
begin_hunk_0_@startElementHandler:bb.a
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !29 ; 2 uses
  %.not.i201 = icmp eq ptr %i.en, null
  br i1 %.not.i201, label %get_xml_attr.exit203.thread, label %.lr.ph.i198, !llvm.loop !0

get_xml_attr.exit203:                             ; preds = %.lr.ph.i198.tail
  %i.eo = and i64 %indvars.iv.i199, 4294967294
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29
  br label %get_xml_attr.exit203.thread

get_xml_attr.exit203.thread:                      ; preds = %bb.x, %bb.v, %get_xml_attr.exit203
  %.0259 = phi ptr [ %.0, %get_xml_attr.exit203 ], [ @.str.4, %bb.v ], [ %.0, %bb.x ] ; 2 uses
  %.0132 = phi ptr [ %i.er, %get_xml_attr.exit203 ], [ @.str.4, %bb.v ], [ @.str.4, %bb.x ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !15 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !36
  %i.ev = tail call ptr %i.eu(ptr noundef nonnull %i.et, ptr noundef %.0259, i32 noundef 512) #22, !inline_history !57 ; 2 uses
  %.not.i204 = icmp eq ptr %i.ev, null
  br i1 %.not.i204, label %mapLookup.exit, label %bb.y

bb.y:                                             ; preds = %get_xml_attr.exit203.thread
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !39
  br label %mapLookup.exit

mapLookup.exit:                                   ; preds = %get_xml_attr.exit203.thread, %bb.y
  %.0.i205 = phi ptr [ %i.ex, %bb.y ], [ null, %get_xml_attr.exit203.thread ] ; 2 uses
  %.not = icmp eq ptr %.0.i205, null
  %spec.select = select i1 %.not, ptr %.0259, ptr %.0.i205 ; 2 uses
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !15 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !36
  %i.fa = tail call ptr %i.ez(ptr noundef nonnull %i.ey, ptr noundef %.0132, i32 noundef 512) #22, !inline_history !57 ; 2 uses
  %.not.i206 = icmp eq ptr %i.fa, null
  br i1 %.not.i206, label %mapLookup.exit208, label %bb.z

bb.z:                                             ; preds = %mapLookup.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !39
  br label %mapLookup.exit208

mapLookup.exit208:                                ; preds = %mapLookup.exit, %bb.z
  %.0.i207 = phi ptr [ %i.fc, %bb.z ], [ null, %mapLookup.exit ] ; 2 uses
  %.not153 = icmp eq ptr %.0.i207, null
  %.1133 = select i1 %.not153, ptr %.0132, ptr %.0.i207 ; 2 uses
  %i.fd = load ptr, ptr @G, align 8, !tbaa !18
  %i.fe = tail call ptr @agnode(ptr noundef %i.fd, ptr noundef %spec.select, i32 noundef 1) #22
  %i.ff = load ptr, ptr @G, align 8, !tbaa !18
  %i.fg = tail call ptr @agnode(ptr noundef %i.ff, ptr noundef %.1133, i32 noundef 1) #22
  %i.fh = load ptr, ptr @G, align 8, !tbaa !18
  %i.fi = tail call ptr @agedge(ptr noundef %i.fh, ptr noundef %i.fe, ptr noundef %i.fg, ptr noundef null, i32 noundef 1) #22 ; 3 uses
  store ptr %i.fi, ptr @E, align 8, !tbaa !41
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = and i32 %i.fj, 3
  %i.fl = icmp eq i32 %i.fk, 3
  %i.fm = select i1 %i.fl, i64 56, i64 120
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !63
  %i.fp = tail call ptr @agnameof(ptr noundef %i.fo) #22 ; 2 uses
  %i.fq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fp, ptr noundef nonnull readonly dereferenceable(1) %spec.select) #25
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %mapLookup.exit208
  %i.fs = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fp, ptr noundef nonnull readonly dereferenceable(1) %.1133) #25
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %.sink.split, label %bb.ab

.sink.split:                                      ; preds = %bb.aa, %mapLookup.exit208
  %.sink353 = phi i8 [ 0, %mapLookup.exit208 ], [ 1, %bb.aa ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 %.sink353, ptr %i.fu, align 1, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.aa
  %i.fv = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %.not10.i209 = icmp eq ptr %i.fv, null
  br i1 %.not10.i209, label %get_xml_attr.exit189.thread, label %.lr.ph.i210

.lr.ph.i210:                                      ; preds = %bb.ab, %bb.ac
  %indvars.iv.i211 = phi i64 [ %indvars.iv.next.i212, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.fw = phi ptr [ %i.ga, %bb.ac ], [ %i.fv, %bb.ab ]
  %i.fx = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(10) @.str.22, ptr noundef nonnull readonly dereferenceable(1) %i.fw) #25
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %get_xml_attr.exit215, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i210
  %indvars.iv.next.i212 = add nuw nsw i64 %indvars.iv.i211, 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i212
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !29 ; 2 uses
  %.not.i213 = icmp eq ptr %i.ga, null
  br i1 %.not.i213, label %get_xml_attr.exit215.thread, label %.lr.ph.i210, !llvm.loop !0

get_xml_attr.exit215:                             ; preds = %.lr.ph.i210
  %i.gb = load ptr, ptr @E, align 8, !tbaa !41
  %i.gc = and i64 %indvars.iv.i211, 4294967294
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !29
  tail call fastcc void @setEdgeAttr(ptr noundef %i.gb, ptr noundef nonnull @.str.23, ptr noundef %i.gf, ptr noundef %0, i1 noundef zeroext false)
  %.pr261.pre = load ptr, ptr %2, align 8, !tbaa !29
  br label %get_xml_attr.exit215.thread

get_xml_attr.exit215.thread:                      ; preds = %bb.ac, %get_xml_attr.exit215
  %.pr261 = phi ptr [ %.pr261.pre, %get_xml_attr.exit215 ], [ %i.fv, %bb.ac ] ; 3 uses
  %.not10.i216 = icmp eq ptr %.pr261, null
  br i1 %.not10.i216, label %get_xml_attr.exit189.thread, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %get_xml_attr.exit215.thread, %bb.ad
  %indvars.iv.i218 = phi i64 [ %indvars.iv.next.i219, %bb.ad ], [ 0, %get_xml_attr.exit215.thread ] ; 2 uses
  %i.gg = phi ptr [ %i.gk, %bb.ad ], [ %.pr261, %get_xml_attr.exit215.thread ]
  %i.gh = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(8) @.str.24, ptr noundef nonnull readonly dereferenceable(1) %i.gg) #25
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %get_xml_attr.exit222, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i217
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i218, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i219
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !29 ; 2 uses
  %.not.i220 = icmp eq ptr %i.gk, null
  br i1 %.not.i220, label %get_xml_attr.exit222.thread, label %.lr.ph.i217, !llvm.loop !0

get_xml_attr.exit222:                             ; preds = %.lr.ph.i217
  %i.gl = load ptr, ptr @E, align 8, !tbaa !41
  %i.gm = and i64 %indvars.iv.i218, 4294967294
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !29
  tail call fastcc void @setEdgeAttr(ptr noundef %i.gl, ptr noundef nonnull @.str.25, ptr noundef %i.gp, ptr noundef %0, i1 noundef zeroext false)
  %.pr263.pre = load ptr, ptr %2, align 8, !tbaa !29
  br label %get_xml_attr.exit222.thread

get_xml_attr.exit222.thread:                      ; preds = %bb.ad, %get_xml_attr.exit222
  %.pr263 = phi ptr [ %.pr263.pre, %get_xml_attr.exit222 ], [ %.pr261, %bb.ad ] ; 2 uses
  %.not10.i223 = icmp eq ptr %.pr263, null
  br i1 %.not10.i223, label %get_xml_attr.exit189.thread, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %get_xml_attr.exit222.thread, %bb.ae
  %indvars.iv.i225 = phi i64 [ %indvars.iv.next.i226, %bb.ae ], [ 0, %get_xml_attr.exit222.thread ] ; 2 uses
  %i.gq = phi ptr [ %i.hf, %bb.ae ], [ %.pr263, %get_xml_attr.exit222.thread ] ; 3 uses
  %i.gr = load i8, ptr %i.gq, align 1             ; 2 uses
  %i.gs = zext i8 %i.gr to i32
  %i.gt = sub nsw i32 105, %i.gs
  %.not293 = icmp eq i8 %i.gr, 105
  br i1 %.not293, label %sub_1275, label %.lr.ph.i224.tail

sub_1275:                                         ; preds = %.lr.ph.i224
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gv = load i8, ptr %i.gu, align 1             ; 2 uses
  %i.gw = zext i8 %i.gv to i32
  %i.gx = sub nsw i32 100, %i.gw
  %.not294 = icmp eq i8 %i.gv, 100
  br i1 %.not294, label %sub_2276, label %.lr.ph.i224.tail

sub_2276:                                         ; preds = %sub_1275
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i32
  %i.hb = sub nsw i32 0, %i.ha
  br label %.lr.ph.i224.tail

.lr.ph.i224.tail:                                 ; preds = %.lr.ph.i224, %sub_1275, %sub_2276
  %i.hc = phi i32 [ %i.gt, %.lr.ph.i224 ], [ %i.gx, %sub_1275 ], [ %i.hb, %sub_2276 ]
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %get_xml_attr.exit229, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i224.tail
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i225, 2 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i226
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !29 ; 2 uses
  %.not.i227 = icmp eq ptr %i.hf, null
  br i1 %.not.i227, label %get_xml_attr.exit189.thread, label %.lr.ph.i224, !llvm.loop !0

get_xml_attr.exit229:                             ; preds = %.lr.ph.i224.tail
  %i.hg = load ptr, ptr @E, align 8, !tbaa !41
  %i.hh = and i64 %indvars.iv.i225, 4294967294
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !29
  tail call fastcc void @setEdgeAttr(ptr noundef %i.hg, ptr noundef nonnull @.str.26, ptr noundef %i.hk, ptr noundef %0, i1 noundef zeroext false)
  br label %get_xml_attr.exit189.thread

bb.af:                                            ; preds = %bb.u
  %i.hl = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.27) #25
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.hn = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %.not10.i230 = icmp eq ptr %i.hn, null
  br i1 %.not10.i230, label %get_xml_attr.exit236, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.ag, %bb.ai
  %indvars.iv.i232 = phi i64 [ %indvars.iv.next.i233, %bb.ai ], [ 0, %bb.ag ] ; 2 uses
  %i.ho = phi ptr [ %i.ht, %bb.ai ], [ %i.hn, %bb.ag ]
  %i.hp = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(5) @.str.28, ptr noundef nonnull readonly dereferenceable(1) %i.ho) #25
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i231
  %3 = shl i64 %indvars.iv.i232, 32
  %sext = ashr exact i64 %3, 32
  %i.hr = or disjoint i64 %sext, 1
  br label %get_xml_attr.exit236

bb.ai:                                            ; preds = %.lr.ph.i231
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i232, 2 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i233
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !29 ; 2 uses
  %.not.i234 = icmp eq ptr %i.ht, null
  br i1 %.not.i234, label %get_xml_attr.exit236, label %.lr.ph.i231, !llvm.loop !0

get_xml_attr.exit236:                             ; preds = %bb.ai, %bb.ag, %bb.ah
  %.07.i235 = phi i64 [ %i.hr, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.ai ]
  %i.hu = getelementptr inbounds [8 x i8], ptr %2, i64 %.07.i235
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !29 ; 3 uses
  %i.hw = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hv) #25 ; 7 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %agxbput.exit, label %bb.aj

bb.aj:                                            ; preds = %get_xml_attr.exit236
  %i.hy = getelementptr i8, ptr %0, i64 31        ; 4 uses
  %.val.i.i.i = load i8, ptr %i.hy, align 1, !tbaa !26 ; 3 uses
  %.not.i.i.i = icmp eq i8 %.val.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.ak, label %agxbsizeof.exit.i.i

agxbsizeof.exit.i.i:                              ; preds = %bb.aj
  %i.hz = zext i8 %.val.i.i.i to i64
  br label %agxblen.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !26
  br label %agxblen.exit.i.i

agxblen.exit.i.i:                                 ; preds = %bb.ak, %agxbsizeof.exit.i.i
  %.0.i30.i.i = phi i64 [ 31, %agxbsizeof.exit.i.i ], [ %i.ib, %bb.ak ]
  %.0.i24.i.i = phi i64 [ %i.hz, %agxbsizeof.exit.i.i ], [ %i.id, %bb.ak ]
  %i.ie = sub i64 %.0.i30.i.i, %.0.i24.i.i
  %i.if = icmp ugt i64 %i.hw, %i.ie
  br i1 %i.if, label %bb.al, label %bb.am

bb.al:                                            ; preds = %agxblen.exit.i.i
  tail call fastcc void @agxbmore(ptr noundef nonnull %0, i64 noundef %i.hw)
  %.val.i25.pre.i.i = load i8, ptr %i.hy, align 1, !tbaa !26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %agxblen.exit.i.i
  %.val.i25.i.i = phi i8 [ %.val.i25.pre.i.i, %bb.al ], [ %.val.i.i.i, %agxblen.exit.i.i ] ; 2 uses
  %.not.i26.i.i = icmp eq i8 %.val.i25.i.i, -1
  br i1 %.not.i26.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ig = zext i8 %.val.i25.i.i to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ih, ptr nonnull readonly align 1 %i.hv, i64 %i.hw, i1 false)
  %i.ii = trunc i64 %i.hw to i8
  %i.ij = load i8, ptr %i.hy, align 1, !tbaa !26
  %i.ik = add i8 %i.ij, %i.ii
  store i8 %i.ik, ptr %i.hy, align 1, !tbaa !26
  br label %agxbput.exit

bb.ao:                                            ; preds = %bb.am
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !26
  %i.in = load ptr, ptr %0, align 8, !tbaa !26
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.im
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr nonnull readonly align 1 %i.hv, i64 %i.hw, i1 false)
  %i.ip = load i64, ptr %i.il, align 8, !tbaa !26
  %i.iq = add i64 %i.ip, %i.hw
  store i64 %i.iq, ptr %i.il, align 8, !tbaa !26
  br label %agxbput.exit

agxbput.exit:                                     ; preds = %get_xml_attr.exit236, %bb.an, %bb.ao
  %i.ir = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %.not10.i237 = icmp eq ptr %i.ir, null
  br i1 %.not10.i237, label %get_xml_attr.exit243.thread, label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %agxbput.exit, %bb.ap
  %indvars.iv.i239 = phi i64 [ %indvars.iv.next.i240, %bb.ap ], [ 0, %agxbput.exit ] ; 2 uses
  %i.is = phi ptr [ %i.iw, %bb.ap ], [ %i.ir, %agxbput.exit ]
  %i.it = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(5) @.str.29, ptr noundef nonnull readonly dereferenceable(1) %i.is) #25
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %get_xml_attr.exit243, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i238
  %indvars.iv.next.i240 = add nuw nsw i64 %indvars.iv.i239, 2 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i240
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !29 ; 2 uses
  %.not.i241 = icmp eq ptr %i.iw, null
  br i1 %.not.i241, label %get_xml_attr.exit243.thread, label %.lr.ph.i238, !llvm.loop !0

get_xml_attr.exit243:                             ; preds = %.lr.ph.i238
  %i.ix = and i64 %indvars.iv.i239, 4294967294
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29 ; 4 uses
  %i.jb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.18, ptr noundef nonnull readonly dereferenceable(1) %i.ja) #25
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %get_xml_attr.exit243
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 2, ptr %i.jd, align 8, !tbaa !43
  br label %get_xml_attr.exit189.thread

bb.ar:                                            ; preds = %get_xml_attr.exit243
  %i.je = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.19, ptr noundef nonnull readonly dereferenceable(1) %i.ja) #25
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 3, ptr %i.jg, align 8, !tbaa !43
  br label %get_xml_attr.exit189.thread

bb.at:                                            ; preds = %bb.ar
  %i.jh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.3, ptr noundef nonnull readonly dereferenceable(1) %i.ja) #25
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.jj, align 8, !tbaa !43
  br label %get_xml_attr.exit189.thread

bb.av:                                            ; preds = %bb.at
  %i.jk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(17) @.str.30, ptr noundef nonnull readonly dereferenceable(1) %i.ja) #25
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.aw, label %get_xml_attr.exit189.thread

bb.aw:                                            ; preds = %bb.av
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 4, ptr %i.jm, align 8, !tbaa !43
  br label %get_xml_attr.exit189.thread

get_xml_attr.exit243.thread:                      ; preds = %bb.ap, %agxbput.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.jn, align 8, !tbaa !43
  br label %get_xml_attr.exit189.thread

bb.ax:                                            ; preds = %bb.af
  %i.jo = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.31) #25
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.32) #25
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.js = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.33) #25
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ju = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.34) #25
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.jw, align 8, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.jy = load i8, ptr %i.jx, align 4, !tbaa !45, !range !46, !noundef !47
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.bc, label %get_xml_attr.exit189.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void (ptr, ptr, ...) @agxbprint(ptr noundef nonnull %i.ka, ptr noundef nonnull @.str.35, ptr noundef nonnull %1)
  br label %get_xml_attr.exit189.thread

bb.bd:                                            ; preds = %bb.ba
  %i.kb = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.36) #25
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kd = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.37) #25
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.kg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.38, ptr noundef nonnull %1) #23 ; 0 uses
  br label %get_xml_attr.exit189.thread

bb.bg:                                            ; preds = %bb.be
  %i.kh = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.39) #25
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.kj = tail call fastcc i32 @get_xml_attr(ptr noundef nonnull @.str.40, ptr noundef %2) ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %bb.bi, label %get_xml_attr.exit189.thread

bb.bi:                                            ; preds = %bb.bh
  %i.kl = zext nneg i32 %i.kj to i64
end_hunk_0
