inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  %i.oe = zext nneg i32 %.046.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.od, i8 %.0.i43.i, i64 %i.oe, i1 false)
  %i.of = add nsw i32 %.046.i.i, %.051171.i.i
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bm
  %i.og = phi i32 [ %i.lm, %bb.bm ], [ %i.nz, %bb.cc ]
  %.354.i.i = phi i32 [ %i.lp, %bb.bm ], [ %i.of, %bb.cc ] ; 3 uses
  %i.oh = icmp slt i32 %.354.i.i, %i.jl
  br i1 %i.oh, label %bb.av, label %bb.ce, !llvm.loop !52

bb.ce:                                            ; preds = %bb.cd
  %.not58.i.i = icmp eq i32 %.354.i.i, %i.jl
  br i1 %.not58.i.i, label %bb.cf, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i

bb.cf:                                            ; preds = %bb.ce
  %i.oi = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ah, ptr noundef nonnull %i.a, i32 noundef %i.hc)
  %.not59.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not59.i.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i: ; preds = %bb.ce, %bb.cb, %_ZL14stbi__zreceiveP10stbi__zbufi.exit100.i.i, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i.i, %bb.bj, %bb.bi, %bb.bh, %bb.ax
  %i.oj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.39, ptr %i.oj, align 8
  br label %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i: ; preds = %bb.cf, %bb.au, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  br label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit

_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i: ; preds = %bb.cf
  %i.ok = zext nneg i32 %i.hc to i64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ok
  %i.om = call fastcc noundef i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr noundef %i.ai, ptr noundef nonnull %i.ol, i32 noundef %i.hu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %.not18.i = icmp eq i32 %i.om, 0
  br i1 %.not18.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i, %bb.af
  %i.on = load ptr, ptr %i.e, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.i.i, %bb.cg
  %.066.i.i = phi ptr [ %i.on, %bb.cg ], [ %.9.i.i, %.loopexit.i.i ] ; 9 uses
  %i.oo = load i32, ptr %i.y, align 8             ; 4 uses
  %i.op = icmp slt i32 %i.oo, 16
  br i1 %i.op, label %bb.ci, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i

bb.ci:                                            ; preds = %bb.ch
  %.val.i.i73.i = load ptr, ptr %0, align 8       ; 2 uses
  %.val20.i.i74.i = load ptr, ptr %i.ab, align 8  ; 3 uses
  %.not22.i.i75.i = icmp ult ptr %.val.i.i73.i, %.val20.i.i74.i
  br i1 %.not22.i.i75.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oq = load i32, ptr %i.aa, align 4
  %.not18.i.i76.i = icmp eq i32 %i.oq, 0
  br i1 %.not18.i.i76.i, label %bb.ck, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.ck:                                            ; preds = %bb.cj
  store i32 1, ptr %i.aa, align 4
  %i.or = add nsw i32 %i.oo, 16                   ; 2 uses
  store i32 %i.or, ptr %i.y, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i

bb.cl:                                            ; preds = %bb.ci
  %.promoted.i.i.i77.i = load i32, ptr %i.z, align 8
  br label %bb.cm

bb.cm:                                            ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i, %bb.cl
  %.val.i.i.i.i78.i = phi ptr [ %.val.i.i23.i.i83.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i ], [ %.val.i.i73.i, %bb.cl ] ; 4 uses
  %i.os = phi i32 [ %i.pa, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i ], [ %i.oo, %bb.cl ] ; 5 uses
  %i.ot = phi i32 [ %i.oz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i ], [ %.promoted.i.i.i77.i, %bb.cl ] ; 2 uses
  %.highbits.i.i.i79.i = lshr i32 %i.ot, %i.os
  %.not.i.i.i80.i = icmp eq i32 %.highbits.i.i.i79.i, 0
  br i1 %.not.i.i.i80.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store ptr %.val20.i.i74.i, ptr %0, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i

bb.co:                                            ; preds = %bb.cm
  %.not3.i.i.i.i81.i = icmp ult ptr %.val.i.i.i.i78.i, %.val20.i.i74.i
  br i1 %.not3.i.i.i.i81.i, label %bb.cp, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i

bb.cp:                                            ; preds = %bb.co
  %i.ou = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i78.i, i64 1 ; 2 uses
  store ptr %i.ou, ptr %0, align 8
  %i.ov = load i8, ptr %.val.i.i.i.i78.i, align 1
  %i.ow = zext i8 %i.ov to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i:     ; preds = %bb.cp, %bb.co
  %.val.i.i23.i.i83.i = phi ptr [ %i.ou, %bb.cp ], [ %.val.i.i.i.i78.i, %bb.co ]
  %i.ox = phi i32 [ %i.ow, %bb.cp ], [ 0, %bb.co ]
  %i.oy = shl i32 %i.ox, %i.os
  %i.oz = or i32 %i.oy, %i.ot                     ; 2 uses
  store i32 %i.oz, ptr %i.z, align 8
  %i.pa = add nsw i32 %i.os, 8                    ; 3 uses
  store i32 %i.pa, ptr %i.y, align 8
  %i.pb = icmp slt i32 %i.os, 17
  br i1 %i.pb, label %bb.cm, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i, !llvm.loop !44

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i:   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i, %bb.cn, %bb.ck, %bb.ch
  %i.pc = phi i32 [ %i.oo, %bb.ch ], [ %i.os, %bb.cn ], [ %i.or, %bb.ck ], [ %i.pa, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i82.i ] ; 2 uses
  %i.pd = load i32, ptr %i.z, align 8             ; 4 uses
  %i.pe = and i32 %i.pd, 511
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.pf
  %i.ph = load i16, ptr %i.pg, align 2            ; 2 uses
  %.not19.i.i52.i = icmp eq i16 %i.ph, 0
  br i1 %.not19.i.i52.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i
  %i.pi = zext i16 %i.ph to i32                   ; 2 uses
  %i.pj = lshr i32 %i.pi, 9                       ; 2 uses
  %i.pk = lshr i32 %i.pd, %i.pj                   ; 2 uses
  store i32 %i.pk, ptr %i.z, align 8
  %i.pl = sub nsw i32 %i.pc, %i.pj                ; 2 uses
  store i32 %i.pl, ptr %i.y, align 8
  %i.pm = and i32 %i.pi, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i53.i

bb.cr:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i.i51.i
  %trunc.i.i.i.i.i68.i = trunc i32 %i.pd to i16
  %rev.i.i.i.i.i69.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i.i68.i)
  %i.pn = zext i16 %rev.i.i.i.i.i69.i to i32      ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.i.i.i70.i = phi i64 [ %indvars.iv.next.i.i.i71.i, %bb.cs ], [ 10, %bb.cr ] ; 7 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i70.i
  %i.pp = load i32, ptr %i.po, align 4
  %i.pq = icmp sgt i32 %i.pp, %i.pn
  %indvars.iv.next.i.i.i71.i = add nuw nsw i64 %indvars.iv.i.i.i70.i, 1
  br i1 %i.pq, label %bb.ct, label %bb.cs, !llvm.loop !51

bb.ct:                                            ; preds = %bb.cs
  %i.pr = trunc nuw nsw i64 %indvars.iv.i.i.i70.i to i32 ; 3 uses
  %i.ps = icmp samesign ugt i64 %indvars.iv.i.i.i70.i, 15
  br i1 %i.ps, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pt = sub nuw nsw i32 16, %i.pr
  %i.pu = lshr i32 %i.pn, %i.pt
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.i.i.i70.i
  %i.pw = load i16, ptr %i.pv, align 2
  %i.px = zext i16 %i.pw to i32
  %i.py = sub nsw i32 %i.pu, %i.px
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i.i.i70.i
  %i.qa = load i16, ptr %i.pz, align 2
  %i.qb = zext i16 %i.qa to i32
  %i.qc = add nsw i32 %i.py, %i.qb                ; 2 uses
  %i.qd = icmp sgt i32 %i.qc, 287
  br i1 %i.qd, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qe = sext i32 %i.qc to i64                   ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %i.am, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = zext i8 %i.qg to i64
  %.not.i21.i.i72.i = icmp eq i64 %indvars.iv.i.i.i70.i, %i.qh
  br i1 %.not.i21.i.i72.i, label %bb.cw, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.cw:                                            ; preds = %bb.cv
  %i.qi = lshr i32 %i.pd, %i.pr                   ; 2 uses
  store i32 %i.qi, ptr %i.z, align 8
  %i.qj = sub nsw i32 %i.pc, %i.pr                ; 2 uses
  store i32 %i.qj, ptr %i.y, align 8
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.qe
  %i.ql = load i16, ptr %i.qk, align 2
  %i.qm = zext i16 %i.ql to i32
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i53.i

_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i53.i: ; preds = %bb.cw, %bb.cq
  %.promoted.i.i86.i54.i = phi i32 [ %i.qi, %bb.cw ], [ %i.pk, %bb.cq ] ; 3 uses
  %i.qn = phi i32 [ %i.qj, %bb.cw ], [ %i.pl, %bb.cq ] ; 5 uses
  %.0.i.i55.i = phi i32 [ %i.qm, %bb.cw ], [ %i.pm, %bb.cq ] ; 6 uses
  %i.qo = icmp samesign ult i32 %.0.i.i55.i, 256
  br i1 %i.qo, label %bb.cx, label %bb.dd

bb.cx:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i53.i
  %i.qp = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not83.i.i = icmp ult ptr %.066.i.i, %i.qp
  br i1 %.not83.i.i, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %.066.i.i, ptr %i.e, align 8
  %i.qq = load i32, ptr %i.i, align 8
  %.not.i.i62.i = icmp eq i32 %i.qq, 0
  br i1 %.not.i.i62.i, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qr = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.qs = ptrtoint ptr %.066.i.i to i64
  %i.qt = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.qu = sub i64 %i.qs, %i.qt                    ; 2 uses
  %i.qv = trunc i64 %i.qu to i32                  ; 2 uses
  %i.qw = icmp eq i32 %i.qv, -1
  br i1 %i.qw, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %.preheader.i.i63.i

.preheader.i.i63.i:                               ; preds = %bb.cz
  %i.qx = ptrtoint ptr %i.qp to i64
  %i.qy = sub i64 %i.qx, %i.qt
  %i.qz = trunc i64 %i.qy to i32                  ; 3 uses
  %6 = add nuw i32 %i.qv, 1                       ; 2 uses
  %7 = icmp ugt i32 %6, %i.qz
  br i1 %7, label %.lr.ph.i.i64.i, label %._crit_edge.i.i66.i

.lr.ph.i.i64.i:                                   ; preds = %.preheader.i.i63.i, %bb.da
  %.02528.i.i65.i = phi i32 [ %i.rb, %bb.da ], [ %i.qz, %.preheader.i.i63.i ] ; 2 uses
  %i.ra = icmp slt i32 %.02528.i.i65.i, 0
  br i1 %i.ra, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i64.i
  %i.rb = shl nuw i32 %.02528.i.i65.i, 1          ; 3 uses
  %.not262.i.i = icmp ugt i32 %6, %i.rb
  br i1 %.not262.i.i, label %.lr.ph.i.i64.i, label %._crit_edge.i.i66.i, !llvm.loop !49

._crit_edge.i.i66.i:                              ; preds = %bb.da, %.preheader.i.i63.i
  %.025.lcssa.i.i67.i = phi i32 [ %i.qz, %.preheader.i.i63.i ], [ %i.rb, %bb.da ]
  %i.rc = zext i32 %.025.lcssa.i.i67.i to i64     ; 2 uses
  %i.rd = tail call ptr @realloc(ptr noundef %i.qr, i64 noundef %i.rc) #51 ; 4 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.db

bb.db:                                            ; preds = %._crit_edge.i.i66.i
  store ptr %i.rd, ptr %i.d, align 8
  %i.rf = and i64 %i.qu, 4294967295
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rf ; 2 uses
  store ptr %i.rg, ptr %i.e, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rc
  store ptr %i.rh, ptr %i.h, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cx
  %.167.i.i = phi ptr [ %i.rg, %bb.db ], [ %.066.i.i, %bb.cx ] ; 2 uses
  %i.ri = trunc nuw i32 %.0.i.i55.i to i8
  %i.rj = getelementptr inbounds nuw i8, ptr %.167.i.i, i64 1
  store i8 %i.ri, ptr %.167.i.i, align 1
  br label %.loopexit.i.i

bb.dd:                                            ; preds = %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit.i53.i
  %i.rk = icmp eq i32 %.0.i.i55.i, 256
  br i1 %i.rk, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store ptr %.066.i.i, ptr %i.e, align 8
  %i.rl = load i32, ptr %i.aa, align 4
  %.not82.i.i = icmp ne i32 %i.rl, 0
  %i.rm = icmp slt i32 %i.qn, 16
  %or.cond310.i.i = select i1 %.not82.i.i, i1 %i.rm, i1 false
  br i1 %or.cond310.i.i, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i

bb.df:                                            ; preds = %bb.dd
  %i.rn = icmp samesign ugt i32 %.0.i.i55.i, 285
  br i1 %i.rn, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ro = add nsw i32 %.0.i.i55.i, -257
  %i.rp = zext nneg i32 %i.ro to i64              ; 2 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr @_ZL18stbi__zlength_base, i64 %i.rp
  %i.rr = load i32, ptr %i.rq, align 4            ; 2 uses
  %i.rs = add nsw i32 %.0.i.i55.i, -285
  %.not.i56.i = icmp ult i32 %i.rs, -20
  br i1 %.not.i56.i, label %thread-pre-split.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr @_ZL19stbi__zlength_extra, i64 %i.rp
  %i.ru = load i32, ptr %i.rt, align 4            ; 4 uses
  %i.rv = icmp slt i32 %i.qn, %i.ru
  br i1 %i.rv, label %.preheader195.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i

.preheader195.i.i:                                ; preds = %bb.dh, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i
  %i.rw = phi i32 [ %i.sf, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i ], [ %i.qn, %bb.dh ] ; 5 uses
  %i.rx = phi i32 [ %i.se, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i ], [ %.promoted.i.i86.i54.i, %bb.dh ] ; 3 uses
  %.highbits.i.i88.i59.i = lshr i32 %i.rx, %i.rw
  %.not.i.i89.i60.i = icmp eq i32 %.highbits.i.i88.i59.i, 0
  br i1 %.not.i.i89.i60.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.preheader195.i.i
  %i.ry = load ptr, ptr %i.ab, align 8
  store ptr %i.ry, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i

bb.dj:                                            ; preds = %.preheader195.i.i
  %.val.i.i.i90.i.i = load ptr, ptr %0, align 8   ; 3 uses
  %.val2.i.i.i.i61.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i91.i.i = icmp ult ptr %.val.i.i.i90.i.i, %.val2.i.i.i.i61.i
  br i1 %.not3.i.i.i91.i.i, label %bb.dk, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.rz = getelementptr inbounds nuw i8, ptr %.val.i.i.i90.i.i, i64 1
  store ptr %i.rz, ptr %0, align 8
  %i.sa = load i8, ptr %.val.i.i.i90.i.i, align 1
  %i.sb = zext i8 %i.sa to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i:     ; preds = %bb.dk, %bb.dj
  %i.sc = phi i32 [ %i.sb, %bb.dk ], [ 0, %bb.dj ]
  %i.sd = shl i32 %i.sc, %i.rw
  %i.se = or i32 %i.sd, %i.rx                     ; 3 uses
  store i32 %i.se, ptr %i.z, align 8
  %i.sf = add nsw i32 %i.rw, 8                    ; 3 uses
  store i32 %i.sf, ptr %i.y, align 8
  %i.sg = icmp slt i32 %i.rw, 17
  br i1 %i.sg, label %.preheader195.i.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i, !llvm.loop !44

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i:     ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i, %bb.di, %bb.dh
  %i.sh = phi i32 [ %i.qn, %bb.dh ], [ %i.rw, %bb.di ], [ %i.sf, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i ]
  %i.si = phi i32 [ %.promoted.i.i86.i54.i, %bb.dh ], [ %i.rx, %bb.di ], [ %i.se, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i92.i.i ] ; 2 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.ru
  %i.sj = xor i32 %notmask.i.i.i, -1
  %i.sk = and i32 %i.si, %i.sj
  %i.sl = lshr i32 %i.si, %i.ru                   ; 2 uses
  store i32 %i.sl, ptr %i.z, align 8
  %i.sm = sub nsw i32 %i.sh, %i.ru                ; 2 uses
  store i32 %i.sm, ptr %i.y, align 8
  %i.sn = add i32 %i.sk, %i.rr
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i, %bb.dg
  %.promoted.i.i105.i.i = phi i32 [ %i.sl, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i ], [ %.promoted.i.i86.i54.i, %bb.dg ] ; 3 uses
  %i.so = phi i32 [ %i.sm, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i ], [ %i.qn, %bb.dg ] ; 4 uses
  %.060.i.i = phi i32 [ %i.sn, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i57.i ], [ %i.rr, %bb.dg ] ; 12 uses
  %i.sp = icmp slt i32 %i.so, 16
  br i1 %i.sp, label %bb.dl, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i

bb.dl:                                            ; preds = %thread-pre-split.i.i
  %.val.i101.i.i = load ptr, ptr %0, align 8      ; 2 uses
  %.val20.i102.i.i = load ptr, ptr %i.ab, align 8 ; 3 uses
  %.not22.i103.i.i = icmp ult ptr %.val.i101.i.i, %.val20.i102.i.i
  br i1 %.not22.i103.i.i, label %.preheader.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sq = load i32, ptr %i.aa, align 4
  %.not18.i104.i.i = icmp eq i32 %i.sq, 0
  br i1 %.not18.i104.i.i, label %bb.dn, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i

bb.dn:                                            ; preds = %bb.dm
  store i32 1, ptr %i.aa, align 4
  %i.sr = add nsw i32 %i.so, 16                   ; 2 uses
  store i32 %i.sr, ptr %i.y, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i

.preheader.i:                                     ; preds = %bb.dl, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i
  %.val.i.i.i106.i.i = phi ptr [ %.val.i.i23.i111.i.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ], [ %.val.i101.i.i, %bb.dl ] ; 4 uses
  %i.ss = phi i32 [ %i.ta, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ], [ %i.so, %bb.dl ] ; 5 uses
  %i.st = phi i32 [ %i.sz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ], [ %.promoted.i.i105.i.i, %bb.dl ] ; 3 uses
  %.highbits.i.i107.i.i = lshr i32 %i.st, %i.ss
  %.not.i.i108.i.i = icmp eq i32 %.highbits.i.i107.i.i, 0
  br i1 %.not.i.i108.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.preheader.i
  store ptr %.val20.i102.i.i, ptr %0, align 8
  br label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i

bb.dp:                                            ; preds = %.preheader.i
  %.not3.i.i.i109.i.i = icmp ult ptr %.val.i.i.i106.i.i, %.val20.i102.i.i
  br i1 %.not3.i.i.i109.i.i, label %bb.dq, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.su = getelementptr inbounds nuw i8, ptr %.val.i.i.i106.i.i, i64 1 ; 2 uses
  store ptr %i.su, ptr %0, align 8
  %i.sv = load i8, ptr %.val.i.i.i106.i.i, align 1
  %i.sw = zext i8 %i.sv to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i:    ; preds = %bb.dq, %bb.dp
  %.val.i.i23.i111.i.i = phi ptr [ %i.su, %bb.dq ], [ %.val.i.i.i106.i.i, %bb.dp ]
  %i.sx = phi i32 [ %i.sw, %bb.dq ], [ 0, %bb.dp ]
  %i.sy = shl i32 %i.sx, %i.ss
  %i.sz = or i32 %i.sy, %i.st                     ; 3 uses
  store i32 %i.sz, ptr %i.z, align 8
  %i.ta = add nsw i32 %i.ss, 8                    ; 3 uses
  store i32 %i.ta, ptr %i.y, align 8
  %i.tb = icmp slt i32 %i.ss, 17
  br i1 %i.tb, label %.preheader.i, label %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i, !llvm.loop !44

_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i:   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i, %bb.do, %bb.dn, %thread-pre-split.i.i
  %i.tc = phi i32 [ %.promoted.i.i105.i.i, %thread-pre-split.i.i ], [ %i.st, %bb.do ], [ %.promoted.i.i105.i.i, %bb.dn ], [ %i.sz, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ] ; 4 uses
  %i.td = phi i32 [ %i.so, %thread-pre-split.i.i ], [ %i.ss, %bb.do ], [ %i.sr, %bb.dn ], [ %i.ta, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i110.i.i ] ; 2 uses
  %i.te = and i32 %i.tc, 511
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.tf
  %i.th = load i16, ptr %i.tg, align 2            ; 2 uses
  %.not19.i94.i.i = icmp eq i16 %i.th, 0
  br i1 %.not19.i94.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i
  %i.ti = zext i16 %i.th to i32                   ; 2 uses
  %i.tj = lshr i32 %i.ti, 9                       ; 2 uses
  %i.tk = lshr i32 %i.tc, %i.tj                   ; 2 uses
  store i32 %i.tk, ptr %i.z, align 8
  %i.tl = sub nsw i32 %i.td, %i.tj                ; 2 uses
  store i32 %i.tl, ptr %i.y, align 8
  %i.tm = and i32 %i.ti, 511
  br label %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit112.i.i

bb.ds:                                            ; preds = %_ZL15stbi__fill_bitsP10stbi__zbuf.exit.i93.i.i
  %trunc.i.i.i.i96.i.i = trunc i32 %i.tc to i16
  %rev.i.i.i.i97.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i96.i.i)
  %i.tn = zext i16 %rev.i.i.i.i97.i.i to i32      ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dt, %bb.ds
  %indvars.iv.i.i98.i.i = phi i64 [ %indvars.iv.next.i.i99.i.i, %bb.dt ], [ 10, %bb.ds ] ; 7 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i98.i.i
  %i.tp = load i32, ptr %i.to, align 4
  %i.tq = icmp sgt i32 %i.tp, %i.tn
  %indvars.iv.next.i.i99.i.i = add nuw nsw i64 %indvars.iv.i.i98.i.i, 1
  br i1 %i.tq, label %bb.du, label %bb.dt, !llvm.loop !51

bb.du:                                            ; preds = %bb.dt
  %i.tr = trunc nuw nsw i64 %indvars.iv.i.i98.i.i to i32 ; 3 uses
  %i.ts = icmp samesign ugt i64 %indvars.iv.i.i98.i.i, 15
  br i1 %i.ts, label %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.thread.i, label %bb.dv

end_hunk_0
