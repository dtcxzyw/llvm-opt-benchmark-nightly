Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ResetReuse?download=true
inline.NumInlined: 2564
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_S_go:bb.a
  br label %lean_dec.exit1607

bb.af:                                            ; preds = %lean_inc.exit2021
  %.not.i1609 = icmp eq i32 %i.ba, 0
  br i1 %.not.i1609, label %lean_dec.exit1607, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #7
  br label %lean_dec.exit1607

lean_dec.exit1607:                                ; preds = %bb.ae, %bb.af, %bb.ag, %bb.m, %bb.o, %bb.p, %bb.q
  %.01237 = phi ptr [ %i.h, %bb.m ], [ %i.h, %bb.q ], [ %i.h, %bb.p ], [ %i.h, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10 ; 17 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !10 ; 15 uses
  %.val2053 = load i32, ptr %i.n, align 8, !tbaa !14
  %i.bh = icmp eq i32 %.val2053, 1                ; 2 uses
  br i1 %i.bh, label %lean_dec.exit1603, label %bb.ah

bb.ah:                                            ; preds = %lean_dec.exit1607
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i2018 = icmp eq i64 %i.bj, 0
  br i1 %.not.i2018, label %bb.ai, label %lean_inc.exit2019

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i2075 = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.bk = icmp sgt i32 %.val.i.i2075, 0
  br i1 %i.bk, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.bl = add nuw i32 %.val.i.i2075, 1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit2019

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i2076 = icmp eq i32 %.val.i.i2075, 0
  br i1 %.not.i.i2076, label %lean_inc.exit2019, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bm = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2019

lean_inc.exit2019:                                ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %i.bn = ptrtoint ptr %i.be to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i2016 = icmp eq i64 %i.bo, 0
  br i1 %.not.i2016, label %bb.am, label %lean_inc.exit2017

bb.am:                                            ; preds = %lean_inc.exit2019
  %.val.i.i2078 = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.bp = icmp sgt i32 %.val.i.i2078, 0
  br i1 %i.bp, label %bb.an, label %bb.ao, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.bq = add nuw i32 %.val.i.i2078, 1
  store i32 %i.bq, ptr %i.be, align 4, !tbaa !14
  br label %lean_inc.exit2017

bb.ao:                                            ; preds = %bb.am
  %.not.i.i2079 = icmp eq i32 %.val.i.i2078, 0
  br i1 %.not.i.i2079, label %lean_inc.exit2017, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.br = atomicrmw sub ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2017

lean_inc.exit2017:                                ; preds = %bb.ap, %bb.ao, %bb.an, %lean_inc.exit2019
  br i1 %.not.i2026, label %bb.aq, label %lean_dec.exit1603

bb.aq:                                            ; preds = %lean_inc.exit2017
  %i.bs = load i32, ptr %i.n, align 8, !tbaa !14  ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ar, label %bb.as, !prof !15

bb.ar:                                            ; preds = %bb.aq
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.n, align 8, !tbaa !14
  br label %lean_dec.exit1603

bb.as:                                            ; preds = %bb.aq
  %.not.i1611 = icmp eq i32 %i.bs, 0
  br i1 %.not.i1611, label %lean_dec.exit1603, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #7
  br label %lean_dec.exit1603

lean_dec.exit1603:                                ; preds = %lean_inc.exit2017, %bb.ar, %bb.as, %bb.at, %lean_dec.exit1607
  %.01274 = phi ptr [ %i.n, %lean_dec.exit1607 ], [ inttoptr (i64 1 to ptr), %bb.at ], [ inttoptr (i64 1 to ptr), %bb.as ], [ inttoptr (i64 1 to ptr), %bb.ar ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2017 ] ; 5 uses
  %i.bv = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_mayReuse___redArg(ptr noundef %0, ptr noundef %i.be, ptr noundef %3) ; 13 uses
  %i.bw = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 1
  %.not.i2081 = icmp eq i64 %i.bx, 0              ; 2 uses
  br i1 %.not.i2081, label %bb.av, label %bb.au

bb.au:                                            ; preds = %lean_dec.exit1603
  %i.by = lshr i64 %i.bw, 1
  %i.bz = trunc i64 %i.by to i32
  br label %lean_obj_tag.exit2084

bb.av:                                            ; preds = %lean_dec.exit1603
  %i.ca = getelementptr i8, ptr %i.bv, i64 4
  %.val.i2083 = load i32, ptr %i.ca, align 4
  %i.cb = lshr i32 %.val.i2083, 24
  br label %lean_obj_tag.exit2084

lean_obj_tag.exit2084:                            ; preds = %bb.au, %bb.av
  %.0.i2082 = phi i32 [ %i.bz, %bb.au ], [ %i.cb, %bb.av ]
  %i.cc = icmp eq i32 %.0.i2082, 0
  br i1 %i.cc, label %bb.aw, label %bb.fa

bb.aw:                                            ; preds = %lean_obj_tag.exit2084
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !10 ; 11 uses
  %i.cf = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cg = and i64 %i.cf, 1
  %.not.i2014 = icmp eq i64 %i.cg, 0              ; 3 uses
  br i1 %.not.i2014, label %bb.ax, label %lean_inc.exit2015

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i2085 = load i32, ptr %i.ce, align 4, !tbaa !14 ; 3 uses
  %i.ch = icmp sgt i32 %.val.i.i2085, 0
  br i1 %i.ch, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.ci = add nuw i32 %.val.i.i2085, 1
  store i32 %i.ci, ptr %i.ce, align 4, !tbaa !14
  br label %lean_inc.exit2015

bb.az:                                            ; preds = %bb.ax
  %.not.i.i2086 = icmp eq i32 %.val.i.i2085, 0
  br i1 %.not.i.i2086, label %lean_inc.exit2015, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cj = atomicrmw sub ptr %i.ce, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2015

lean_inc.exit2015:                                ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.val.i2088 = load i32, ptr %i.bv, align 8, !tbaa !14 ; 4 uses
  %i.ck = icmp eq i32 %.val.i2088, 1
  br i1 %i.ck, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %lean_inc.exit2015
  %i.cl = load ptr, ptr %i.cd, align 8, !tbaa !10 ; 4 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = and i64 %i.cm, 1
  %.not.i.i2089 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i2089, label %bb.bb, label %lean_dec.exit.i

bb.bb:                                            ; preds = %.preheader.i
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.not.i7.i = icmp eq i32 %i.co, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref_known.exit

bb.bf:                                            ; preds = %lean_inc.exit2015
  %i.cr = icmp sgt i32 %.val.i2088, 1
  br i1 %i.cr, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.cs = add nsw i32 %.val.i2088, -1
  store i32 %i.cs, ptr %i.bv, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i8.i = icmp eq i32 %.val.i2088, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bg, %bb.bh, %bb.bi
  %i.ct = lshr i64 %i.cf, 1
  %i.cu = and i64 %i.cf, 510
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.bj, label %bb.ck

bb.bj:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i2014, label %bb.bk, label %lean_dec.exit1601

bb.bk:                                            ; preds = %bb.bj
  %i.cw = load i32, ptr %i.ce, align 512, !tbaa !14 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %bb.bl, label %bb.bm, !prof !15

bb.bl:                                            ; preds = %bb.bk
  %i.cy = add nsw i32 %i.cw, -1
  store i32 %i.cy, ptr %i.ce, align 512, !tbaa !14
  br label %lean_dec.exit1601

bb.bm:                                            ; preds = %bb.bk
  %.not.i1613 = icmp eq i32 %i.cw, 0
  br i1 %.not.i1613, label %lean_dec.exit1601, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #7
  br label %lean_dec.exit1601

lean_dec.exit1601:                                ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  %i.cz = ptrtoint ptr %.01274 to i64
  %i.da = and i64 %i.cz, 1
  %.not.i2090 = icmp eq i64 %i.da, 0
  br i1 %.not.i2090, label %bb.bo, label %lean_del_object.exit

bb.bo:                                            ; preds = %lean_dec.exit1601
  tail call void @lean_free_object(ptr noundef nonnull %.01274) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit1601, %bb.bo
  %i.db = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %lean_del_object.exit
  %i.dd = add nsw i32 %i.db, -1
  store i32 %i.dd, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec_ref.exit1900

bb.bq:                                            ; preds = %lean_del_object.exit
  %.not.i1899 = icmp eq i32 %i.db, 0
  br i1 %.not.i1899, label %lean_dec_ref.exit1900, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec_ref.exit1900

lean_dec_ref.exit1900:                            ; preds = %bb.bp, %bb.bq, %bb.br
  %i.de = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.bs, label %bb.bt, !prof !15

bb.bs:                                            ; preds = %lean_dec_ref.exit1900
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.be, align 4, !tbaa !14
  br label %lean_dec_ref.exit1898

bb.bt:                                            ; preds = %lean_dec_ref.exit1900
  %.not.i1897 = icmp eq i32 %i.de, 0
  br i1 %.not.i1897, label %lean_dec_ref.exit1898, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #7
  br label %lean_dec_ref.exit1898

lean_dec_ref.exit1898:                            ; preds = %bb.bs, %bb.bt, %bb.bu
  %i.dh = ptrtoint ptr %.01237 to i64
  %i.di = and i64 %i.dh, 1
  %.not.i2091 = icmp eq i64 %i.di, 0
  br i1 %.not.i2091, label %bb.bv, label %lean_del_object.exit2092

bb.bv:                                            ; preds = %lean_dec_ref.exit1898
  tail call void @lean_free_object(ptr noundef nonnull %.01237) #7
  br label %lean_del_object.exit2092

lean_del_object.exit2092:                         ; preds = %lean_dec_ref.exit1898, %bb.bv
  %i.dj = load i32, ptr %i.ad, align 4, !tbaa !14 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %lean_del_object.exit2092
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %i.ad, align 4, !tbaa !14
  br label %lean_dec_ref.exit1896

bb.bx:                                            ; preds = %lean_del_object.exit2092
  %.not.i1895 = icmp eq i32 %i.dj, 0
  br i1 %.not.i1895, label %lean_dec_ref.exit1896, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #7
  br label %lean_dec_ref.exit1896

lean_dec_ref.exit1896:                            ; preds = %bb.bw, %bb.bx, %bb.by
  %i.dm = ptrtoint ptr %i.ab to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i1598 = icmp eq i64 %i.dn, 0
  br i1 %.not.i1598, label %bb.bz, label %lean_dec.exit1599

bb.bz:                                            ; preds = %lean_dec_ref.exit1896
  %i.do = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit1599

bb.cb:                                            ; preds = %bb.bz
  %.not.i1615 = icmp eq i32 %i.do, 0
  br i1 %.not.i1615, label %lean_dec.exit1599, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #7
  br label %lean_dec.exit1599

lean_dec.exit1599:                                ; preds = %bb.cc, %bb.cb, %bb.ca, %lean_dec_ref.exit1896
  %i.dr = ptrtoint ptr %i.z to i64
  %i.ds = and i64 %i.dr, 1
  %.not.i1596 = icmp eq i64 %i.ds, 0
  br i1 %.not.i1596, label %bb.cd, label %lean_dec.exit1597

bb.cd:                                            ; preds = %lean_dec.exit1599
  %i.dt = load i32, ptr %i.z, align 4, !tbaa !14  ; 3 uses
  %i.du = icmp sgt i32 %i.dt, 1
  br i1 %i.du, label %bb.ce, label %bb.cf, !prof !15

bb.ce:                                            ; preds = %bb.cd
  %i.dv = add nsw i32 %i.dt, -1
  store i32 %i.dv, ptr %i.z, align 4, !tbaa !14
  br label %lean_dec.exit1597

bb.cf:                                            ; preds = %bb.cd
  %.not.i1617 = icmp eq i32 %i.dt, 0
  br i1 %.not.i1617, label %lean_dec.exit1597, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #7
  br label %lean_dec.exit1597

lean_dec.exit1597:                                ; preds = %bb.cg, %bb.cf, %bb.ce, %lean_dec.exit1599
  %.val.i.i2093 = load i32, ptr %i.y, align 4, !tbaa !14 ; 3 uses
  %i.dw = icmp sgt i32 %.val.i.i2093, 0
  br i1 %i.dw, label %bb.ch, label %bb.ci, !prof !15

bb.ch:                                            ; preds = %lean_dec.exit1597
  %i.dx = add nuw i32 %.val.i.i2093, 1
  store i32 %i.dx, ptr %i.y, align 4, !tbaa !14
  br label %lean_inc_ref.exit2168

bb.ci:                                            ; preds = %lean_dec.exit1597
  %.not.i.i2094 = icmp eq i32 %.val.i.i2093, 0
  br i1 %.not.i.i2094, label %lean_inc_ref.exit2168, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dy = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2168

bb.ck:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i2096 = load i32, ptr %i.y, align 4, !tbaa !14 ; 3 uses
  %i.dz = icmp sgt i32 %.val.i.i2096, 0
  br i1 %i.dz, label %bb.cl, label %bb.cm, !prof !15

bb.cl:                                            ; preds = %bb.ck
  %i.ea = add nuw i32 %.val.i.i2096, 1
  store i32 %i.ea, ptr %i.y, align 4, !tbaa !14
  br label %lean_inc_ref.exit2098

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i2097 = icmp eq i32 %.val.i.i2096, 0
  br i1 %.not.i.i2097, label %lean_inc_ref.exit2098, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.eb = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2098

lean_inc_ref.exit2098:                            ; preds = %bb.cl, %bb.cm, %bb.cn
  %.val2052 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.ec = icmp eq i32 %.val2052, 1                ; 2 uses
  br i1 %i.ec, label %bb.co, label %bb.cx

bb.co:                                            ; preds = %lean_inc_ref.exit2098
  %i.ed = load ptr, ptr %i.x, align 8, !tbaa !10  ; 4 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i1594 = icmp eq i64 %i.ef, 0
  br i1 %.not.i1594, label %bb.cp, label %lean_dec.exit1595

bb.cp:                                            ; preds = %bb.co
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.cq, label %bb.cr, !prof !15

bb.cq:                                            ; preds = %bb.cp
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !14
  br label %lean_dec.exit1595

bb.cr:                                            ; preds = %bb.cp
  %.not.i1619 = icmp eq i32 %i.eg, 0
  br i1 %.not.i1619, label %lean_dec.exit1595, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ed) #7
  br label %lean_dec.exit1595

lean_dec.exit1595:                                ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.co
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !10  ; 4 uses
end_hunk_0
begin_hunk_1_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_S_go:bb.a
  br label %lean_inc_ref.exit2168

bb.hc:                                            ; preds = %lean_dec_ref.exit1886
  %.not.i.i2138 = icmp eq i32 %.val.i.i2137, 0
  br i1 %.not.i.i2138, label %lean_inc_ref.exit2168, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.kk = atomicrmw sub ptr %i.kh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2168

bb.he:                                            ; preds = %lean_obj_tag.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !10 ; 8 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !10 ; 10 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !10 ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !10 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !10 ; 4 uses
  %.val.i.i2140 = load i32, ptr %i.ku, align 4, !tbaa !14 ; 3 uses
  %i.kv = icmp sgt i32 %.val.i.i2140, 0
  br i1 %i.kv, label %bb.hf, label %bb.hg, !prof !15

bb.hf:                                            ; preds = %bb.he
  %i.kw = add nuw i32 %.val.i.i2140, 1
  store i32 %i.kw, ptr %i.ku, align 4, !tbaa !14
  br label %lean_inc_ref.exit2142

bb.hg:                                            ; preds = %bb.he
  %.not.i.i2141 = icmp eq i32 %.val.i.i2140, 0
  br i1 %.not.i.i2141, label %lean_inc_ref.exit2142, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.kx = atomicrmw sub ptr %i.ku, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2142

lean_inc_ref.exit2142:                            ; preds = %bb.hf, %bb.hg, %bb.hh
  %i.ky = ptrtoint ptr %1 to i64
  %i.kz = and i64 %i.ky, 1
  %.not.i2006 = icmp eq i64 %i.kz, 0              ; 3 uses
  br i1 %.not.i2006, label %bb.hi, label %lean_inc.exit2007

bb.hi:                                            ; preds = %lean_inc_ref.exit2142
  %.val.i.i2143 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.la = icmp sgt i32 %.val.i.i2143, 0
  br i1 %i.la, label %bb.hj, label %bb.hk, !prof !15

bb.hj:                                            ; preds = %bb.hi
  %i.lb = add nuw i32 %.val.i.i2143, 1
  store i32 %i.lb, ptr %1, align 4, !tbaa !14
  br label %lean_inc.exit2007

bb.hk:                                            ; preds = %bb.hi
  %.not.i.i2144 = icmp eq i32 %.val.i.i2143, 0
  br i1 %.not.i.i2144, label %lean_inc.exit2007, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.lc = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2007

lean_inc.exit2007:                                ; preds = %bb.hl, %bb.hk, %bb.hj, %lean_inc_ref.exit2142
  %i.ld = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_S_go(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ku, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 11 uses
  %i.le = ptrtoint ptr %i.ld to i64               ; 2 uses
  %i.lf = and i64 %i.le, 1
  %.not.i2146 = icmp eq i64 %i.lf, 0
  br i1 %.not.i2146, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %lean_inc.exit2007
  %i.lg = lshr i64 %i.le, 1
  %i.lh = trunc i64 %i.lg to i32
  br label %lean_obj_tag.exit2149

bb.hn:                                            ; preds = %lean_inc.exit2007
  %i.li = getelementptr i8, ptr %i.ld, i64 4
  %.val.i2148 = load i32, ptr %i.li, align 4
  %i.lj = lshr i32 %.val.i2148, 24
  br label %lean_obj_tag.exit2149

lean_obj_tag.exit2149:                            ; preds = %bb.hm, %bb.hn
  %.0.i2147 = phi i32 [ %i.lh, %bb.hm ], [ %i.lj, %bb.hn ]
  %i.lk = icmp eq i32 %.0.i2147, 0
  br i1 %i.lk, label %bb.ho, label %bb.lv

bb.ho:                                            ; preds = %lean_obj_tag.exit2149
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !10 ; 17 uses
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = and i64 %i.ln, 1
  %.not.i2004 = icmp eq i64 %i.lo, 0              ; 3 uses
  br i1 %.not.i2004, label %bb.hp, label %lean_inc.exit2005

bb.hp:                                            ; preds = %bb.ho
  %.val.i.i2150 = load i32, ptr %i.lm, align 4, !tbaa !14 ; 3 uses
  %i.lp = icmp sgt i32 %.val.i.i2150, 0
  br i1 %i.lp, label %bb.hq, label %bb.hr, !prof !15

bb.hq:                                            ; preds = %bb.hp
  %i.lq = add nuw i32 %.val.i.i2150, 1
  store i32 %i.lq, ptr %i.lm, align 4, !tbaa !14
  br label %lean_inc.exit2005

bb.hr:                                            ; preds = %bb.hp
  %.not.i.i2151 = icmp eq i32 %.val.i.i2150, 0
  br i1 %.not.i.i2151, label %lean_inc.exit2005, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.lr = atomicrmw sub ptr %i.lm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2005

lean_inc.exit2005:                                ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.ho
  %.val.i2153 = load i32, ptr %i.ld, align 8, !tbaa !14 ; 4 uses
  %i.ls = icmp eq i32 %.val.i2153, 1
  br i1 %i.ls, label %.preheader.i2155, label %bb.hx

.preheader.i2155:                                 ; preds = %lean_inc.exit2005
  %i.lt = load ptr, ptr %i.ll, align 8, !tbaa !10 ; 4 uses
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = and i64 %i.lu, 1
  %.not.i.i2157 = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i2157, label %bb.ht, label %lean_dec.exit.i2158

bb.ht:                                            ; preds = %.preheader.i2155
  %i.lw = load i32, ptr %i.lt, align 4, !tbaa !14 ; 3 uses
  %i.lx = icmp sgt i32 %i.lw, 1
  br i1 %i.lx, label %bb.hu, label %bb.hv, !prof !15

bb.hu:                                            ; preds = %bb.ht
  %i.ly = add nsw i32 %i.lw, -1
  store i32 %i.ly, ptr %i.lt, align 4, !tbaa !14
  br label %lean_dec.exit.i2158

bb.hv:                                            ; preds = %bb.ht
  %.not.i7.i2161 = icmp eq i32 %i.lw, 0
  br i1 %.not.i7.i2161, label %lean_dec.exit.i2158, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lt) #7
  br label %lean_dec.exit.i2158

lean_dec.exit.i2158:                              ; preds = %bb.hw, %bb.hv, %bb.hu, %.preheader.i2155
  tail call void @lean_free_object(ptr noundef nonnull %i.ld) #7
  br label %lean_dec_ref_known.exit2162

bb.hx:                                            ; preds = %lean_inc.exit2005
  %i.lz = icmp sgt i32 %.val.i2153, 1
  br i1 %i.lz, label %bb.hy, label %bb.hz, !prof !15

bb.hy:                                            ; preds = %bb.hx
  %i.ma = add nsw i32 %.val.i2153, -1
  store i32 %i.ma, ptr %i.ld, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2162

bb.hz:                                            ; preds = %bb.hx
  %.not.i8.i2154 = icmp eq i32 %.val.i2153, 0
  br i1 %.not.i8.i2154, label %lean_dec_ref_known.exit2162, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ld) #7
  br label %lean_dec_ref_known.exit2162

lean_dec_ref_known.exit2162:                      ; preds = %lean_dec.exit.i2158, %bb.hy, %bb.hz, %bb.ia
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lm, i64 16 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !10 ; 11 uses
  %i.me = ptrtoint ptr %i.md to i64               ; 3 uses
  %i.mf = and i64 %i.me, 1
  %.not.i2002 = icmp eq i64 %i.mf, 0              ; 2 uses
  br i1 %.not.i2002, label %bb.ib, label %lean_inc.exit2003.thread

bb.ib:                                            ; preds = %lean_dec_ref_known.exit2162
  %.val.i.i2163 = load i32, ptr %i.md, align 4, !tbaa !14 ; 3 uses
  %i.mg = icmp sgt i32 %.val.i.i2163, 0
  br i1 %i.mg, label %bb.ic, label %bb.id, !prof !15

bb.ic:                                            ; preds = %bb.ib
  %i.mh = add nuw i32 %.val.i.i2163, 1
  store i32 %i.mh, ptr %i.md, align 4, !tbaa !14
  br label %lean_inc.exit2003

bb.id:                                            ; preds = %bb.ib
  %.not.i.i2164 = icmp eq i32 %.val.i.i2163, 0
  br i1 %.not.i.i2164, label %lean_inc.exit2003, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.mi = atomicrmw sub ptr %i.md, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2003

lean_inc.exit2003:                                ; preds = %bb.ie, %bb.id, %bb.ic
  %i.mj = and i64 %i.me, 510
  %i.mk = icmp eq i64 %i.mj, 0
  br i1 %i.mk, label %bb.if, label %bb.iq

lean_inc.exit2003.thread:                         ; preds = %lean_dec_ref_known.exit2162
  %i.ml = and i64 %i.me, 510
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %lean_dec.exit1573, label %bb.iq

bb.if:                                            ; preds = %lean_inc.exit2003
  %i.mn = load i32, ptr %i.md, align 512, !tbaa !14 ; 3 uses
  %i.mo = icmp sgt i32 %i.mn, 1
  br i1 %i.mo, label %bb.ig, label %bb.ih, !prof !15

bb.ig:                                            ; preds = %bb.if
  %i.mp = add nsw i32 %i.mn, -1
  store i32 %i.mp, ptr %i.md, align 512, !tbaa !14
  br label %lean_dec.exit1573

bb.ih:                                            ; preds = %bb.if
  %.not.i1641 = icmp eq i32 %i.mn, 0
  br i1 %.not.i1641, label %lean_dec.exit1573, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.md) #7
  br label %lean_dec.exit1573

lean_dec.exit1573:                                ; preds = %lean_inc.exit2003.thread, %bb.ii, %bb.ih, %bb.ig
  br i1 %.not.i2004, label %bb.ij, label %lean_dec.exit1571

bb.ij:                                            ; preds = %lean_dec.exit1573
  %i.mq = load i32, ptr %i.lm, align 8, !tbaa !14 ; 3 uses
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.ik, label %bb.il, !prof !15

bb.ik:                                            ; preds = %bb.ij
  %i.ms = add nsw i32 %i.mq, -1
  store i32 %i.ms, ptr %i.lm, align 8, !tbaa !14
  br label %lean_dec.exit1571

bb.il:                                            ; preds = %bb.ij
  %.not.i1643 = icmp eq i32 %i.mq, 0
  br i1 %.not.i1643, label %lean_dec.exit1571, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lm) #7
  br label %lean_dec.exit1571

lean_dec.exit1571:                                ; preds = %bb.im, %bb.il, %bb.ik, %lean_dec.exit1573
  %.val.i.i2166 = load i32, ptr %i.ko, align 4, !tbaa !14 ; 3 uses
  %i.mt = icmp sgt i32 %.val.i.i2166, 0
  br i1 %i.mt, label %bb.in, label %bb.io, !prof !15

bb.in:                                            ; preds = %lean_dec.exit1571
  %i.mu = add nuw i32 %.val.i.i2166, 1
  store i32 %i.mu, ptr %i.ko, align 4, !tbaa !14
  br label %lean_inc_ref.exit2168

bb.io:                                            ; preds = %lean_dec.exit1571
  %.not.i.i2167 = icmp eq i32 %.val.i.i2166, 0
  br i1 %.not.i.i2167, label %lean_inc_ref.exit2168, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.mv = atomicrmw sub ptr %i.ko, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2168

bb.iq:                                            ; preds = %lean_inc.exit2003.thread, %lean_inc.exit2003
  br i1 %.not.i2006, label %bb.ir, label %lean_dec.exit1569

bb.ir:                                            ; preds = %bb.iq
  %i.mw = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.is, label %bb.it, !prof !15

bb.is:                                            ; preds = %bb.ir
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit1569

bb.it:                                            ; preds = %bb.ir
  %.not.i1645 = icmp eq i32 %i.mw, 0
  br i1 %.not.i1645, label %lean_dec.exit1569, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit1569

lean_dec.exit1569:                                ; preds = %bb.iu, %bb.it, %bb.is, %bb.iq
  %i.mz = load ptr, ptr %i.mb, align 8, !tbaa !10 ; 5 uses
  %.val2048 = load i32, ptr %i.lm, align 8, !tbaa !14
  %i.na = icmp eq i32 %.val2048, 1                ; 2 uses
  br i1 %i.na, label %bb.iv, label %bb.ja

bb.iv:                                            ; preds = %lean_dec.exit1569
  %i.nb = load ptr, ptr %i.mc, align 8, !tbaa !10 ; 4 uses
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = and i64 %i.nc, 1
  %.not.i1566 = icmp eq i64 %i.nd, 0
  br i1 %.not.i1566, label %bb.iw, label %lean_dec.exit1567

bb.iw:                                            ; preds = %bb.iv
  %i.ne = load i32, ptr %i.nb, align 4, !tbaa !14 ; 3 uses
  %i.nf = icmp sgt i32 %i.ne, 1
  br i1 %i.nf, label %bb.ix, label %bb.iy, !prof !15

bb.ix:                                            ; preds = %bb.iw
  %i.ng = add nsw i32 %i.ne, -1
  store i32 %i.ng, ptr %i.nb, align 4, !tbaa !14
  br label %lean_dec.exit1567

bb.iy:                                            ; preds = %bb.iw
  %.not.i1647 = icmp eq i32 %i.ne, 0
  br i1 %.not.i1647, label %lean_dec.exit1567, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nb) #7
  br label %lean_dec.exit1567

bb.ja:                                            ; preds = %lean_dec.exit1569
  %i.nh = ptrtoint ptr %i.mz to i64
  %i.ni = and i64 %i.nh, 1
  %.not.i2000 = icmp eq i64 %i.ni, 0
  br i1 %.not.i2000, label %bb.jb, label %lean_inc.exit2001

bb.jb:                                            ; preds = %bb.ja
  %.val.i.i2169 = load i32, ptr %i.mz, align 4, !tbaa !14 ; 3 uses
  %i.nj = icmp sgt i32 %.val.i.i2169, 0
  br i1 %i.nj, label %bb.jc, label %bb.jd, !prof !15

bb.jc:                                            ; preds = %bb.jb
  %i.nk = add nuw i32 %.val.i.i2169, 1
  store i32 %i.nk, ptr %i.mz, align 4, !tbaa !14
  br label %lean_inc.exit2001

bb.jd:                                            ; preds = %bb.jb
  %.not.i.i2170 = icmp eq i32 %.val.i.i2169, 0
  br i1 %.not.i.i2170, label %lean_inc.exit2001, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.nl = atomicrmw sub ptr %i.mz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2001

lean_inc.exit2001:                                ; preds = %bb.je, %bb.jd, %bb.jc, %bb.ja
  br i1 %.not.i2004, label %bb.jf, label %lean_dec.exit1567

bb.jf:                                            ; preds = %lean_inc.exit2001
  %i.nm = load i32, ptr %i.lm, align 8, !tbaa !14 ; 3 uses
  %i.nn = icmp sgt i32 %i.nm, 1
  br i1 %i.nn, label %bb.jg, label %bb.jh, !prof !15

bb.jg:                                            ; preds = %bb.jf
  %i.no = add nsw i32 %i.nm, -1
  store i32 %i.no, ptr %i.lm, align 8, !tbaa !14
  br label %lean_dec.exit1567

bb.jh:                                            ; preds = %bb.jf
  %.not.i1649 = icmp eq i32 %i.nm, 0
  br i1 %.not.i1649, label %lean_dec.exit1567, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lm) #7
  br label %lean_dec.exit1567

lean_dec.exit1567:                                ; preds = %lean_inc.exit2001, %bb.jg, %bb.jh, %bb.ji, %bb.iv, %bb.ix, %bb.iy, %bb.iz
  %.01314 = phi ptr [ %i.lm, %bb.iv ], [ %i.lm, %bb.iz ], [ %i.lm, %bb.iy ], [ %i.lm, %bb.ix ], [ inttoptr (i64 1 to ptr), %bb.ji ], [ inttoptr (i64 1 to ptr), %bb.jh ], [ inttoptr (i64 1 to ptr), %bb.jg ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2001 ] ; 4 uses
  %.val.i.i2172 = load i32, ptr %i.kq, align 4, !tbaa !14 ; 3 uses
  %i.np = icmp sgt i32 %.val.i.i2172, 0
  br i1 %i.np, label %bb.jj, label %bb.jk, !prof !15

bb.jj:                                            ; preds = %lean_dec.exit1567
  %i.nq = add nuw i32 %.val.i.i2172, 1
  store i32 %i.nq, ptr %i.kq, align 4, !tbaa !14
  br label %lean_inc_ref.exit2174

bb.jk:                                            ; preds = %lean_dec.exit1567
  %.not.i.i2173 = icmp eq i32 %.val.i.i2172, 0
  br i1 %.not.i.i2173, label %lean_inc_ref.exit2174, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.nr = atomicrmw sub ptr %i.kq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2174

lean_inc_ref.exit2174:                            ; preds = %bb.jj, %bb.jk, %bb.jl
  %.val.i.i2175 = load i32, ptr %i.ks, align 4, !tbaa !14 ; 3 uses
  %i.ns = icmp sgt i32 %.val.i.i2175, 0
  br i1 %i.ns, label %bb.jm, label %bb.jn, !prof !15

bb.jm:                                            ; preds = %lean_inc_ref.exit2174
  %i.nt = add nuw i32 %.val.i.i2175, 1
  store i32 %i.nt, ptr %i.ks, align 4, !tbaa !14
  br label %lean_inc_ref.exit2177

bb.jn:                                            ; preds = %lean_inc_ref.exit2174
  %.not.i.i2176 = icmp eq i32 %.val.i.i2175, 0
  br i1 %.not.i.i2176, label %lean_inc_ref.exit2177, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.nu = atomicrmw sub ptr %i.ks, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2177

lean_inc_ref.exit2177:                            ; preds = %bb.jm, %bb.jn, %bb.jo
  %.val.i.i2178 = load i32, ptr %i.km, align 8, !tbaa !14 ; 3 uses
  %i.nv = icmp sgt i32 %.val.i.i2178, 0
  br i1 %i.nv, label %bb.jp, label %bb.jq, !prof !15

bb.jp:                                            ; preds = %lean_inc_ref.exit2177
  %i.nw = add nuw i32 %.val.i.i2178, 1
  store i32 %i.nw, ptr %i.km, align 8, !tbaa !14
  br label %lean_inc_ref.exit2180

bb.jq:                                            ; preds = %lean_inc_ref.exit2177
  %.not.i.i2179 = icmp eq i32 %.val.i.i2178, 0
  br i1 %.not.i.i2179, label %lean_inc_ref.exit2180, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.nx = atomicrmw sub ptr %i.km, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2180
end_hunk_1
begin_hunk_2_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %bb.bja [
    i32 0, label %bb.d
    i32 2, label %bb.kw
    i32 3, label %bb.rm
    i32 4, label %bb.th
    i32 5, label %bb.zu
    i32 6, label %bb.abl
    i32 8, label %bb.adc
    i32 9, label %bb.art
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 8 uses
  %i.k = tail call ptr @l_Lean_Compiler_LCNF_Code_toCodeDecl_x21(i8 noundef zeroext 1, ptr noundef %2) #7 ; 11 uses
  %i.l = ptrtoint ptr %0 to i64
  %i.m = and i64 %i.l, 1
  %.not.i2799 = icmp eq i64 %i.m, 0               ; 9 uses
  br i1 %.not.i2799, label %bb.e, label %lean_inc.exit2800

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2800

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit2800, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2800

lean_inc.exit2800:                                ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.q = tail call zeroext i8 @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_isCtorUsing(ptr noundef %i.k, ptr noundef %0)
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.kj

bb.i:                                             ; preds = %lean_inc.exit2800
  %.val.i.i2847 = load i32, ptr %i.j, align 4, !tbaa !14 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i2847, 0
  br i1 %i.s, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.t = add nuw i32 %.val.i.i2847, 1
  store i32 %i.t, ptr %i.j, align 4, !tbaa !14
  br label %lean_inc_ref.exit2849

bb.k:                                             ; preds = %bb.i
  %.not.i.i2848 = icmp eq i32 %.val.i.i2847, 0
  br i1 %.not.i.i2848, label %lean_inc_ref.exit2849, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2849

lean_inc_ref.exit2849:                            ; preds = %bb.j, %bb.k, %bb.l
  %.val.i.i2850 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.v = icmp sgt i32 %.val.i.i2850, 0
  br i1 %i.v, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_inc_ref.exit2849
  %i.w = add nuw i32 %.val.i.i2850, 1
  store i32 %i.w, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit2852

bb.n:                                             ; preds = %lean_inc_ref.exit2849
  %.not.i.i2851 = icmp eq i32 %.val.i.i2850, 0
  br i1 %.not.i.i2851, label %lean_inc_ref.exit2852, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2852

lean_inc_ref.exit2852:                            ; preds = %bb.m, %bb.n, %bb.o
  br i1 %.not.i2799, label %bb.p, label %lean_inc.exit2798

bb.p:                                             ; preds = %lean_inc_ref.exit2852
  %.val.i.i2853 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i2853, 0
  br i1 %i.y, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.z = add nuw i32 %.val.i.i2853, 1
  store i32 %i.z, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2798

bb.r:                                             ; preds = %bb.p
  %.not.i.i2854 = icmp eq i32 %.val.i.i2853, 0
  br i1 %.not.i.i2854, label %lean_inc.exit2798, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aa = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2798

lean_inc.exit2798:                                ; preds = %bb.s, %bb.r, %bb.q, %lean_inc_ref.exit2852
  %i.ab = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.j, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 12 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i2856 = icmp eq i64 %i.ad, 0              ; 2 uses
  br i1 %.not.i2856, label %bb.u, label %bb.t

bb.t:                                             ; preds = %lean_inc.exit2798
  %i.ae = lshr i64 %i.ac, 1
  %i.af = trunc i64 %i.ae to i32
  br label %lean_obj_tag.exit2859

bb.u:                                             ; preds = %lean_inc.exit2798
  %i.ag = getelementptr i8, ptr %i.ab, i64 4
  %.val.i2858 = load i32, ptr %i.ag, align 4
  %i.ah = lshr i32 %.val.i2858, 24
  br label %lean_obj_tag.exit2859

lean_obj_tag.exit2859:                            ; preds = %bb.t, %bb.u
  %.0.i2857 = phi i32 [ %i.af, %bb.t ], [ %i.ah, %bb.u ]
  %i.ai = icmp eq i32 %.0.i2857, 0
  br i1 %i.ai, label %bb.v, label %bb.jm

bb.v:                                             ; preds = %lean_obj_tag.exit2859
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !10 ; 17 uses
  %.val2845 = load i32, ptr %i.ab, align 8, !tbaa !14
  %i.al = icmp eq i32 %.val2845, 1                ; 2 uses
  br i1 %i.al, label %lean_dec.exit2214, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = and i64 %i.am, 1
  %.not.i2795 = icmp eq i64 %i.an, 0
  br i1 %.not.i2795, label %bb.x, label %lean_inc.exit2796

bb.x:                                             ; preds = %bb.w
  %.val.i.i2860 = load i32, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i2860, 0
  br i1 %i.ao, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.ap = add nuw i32 %.val.i.i2860, 1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !14
  br label %lean_inc.exit2796

bb.z:                                             ; preds = %bb.x
  %.not.i.i2861 = icmp eq i32 %.val.i.i2860, 0
  br i1 %.not.i.i2861, label %lean_inc.exit2796, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2796

lean_inc.exit2796:                                ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  br i1 %.not.i2856, label %bb.ab, label %lean_dec.exit2214

bb.ab:                                            ; preds = %lean_inc.exit2796
  %i.ar = load i32, ptr %i.ab, align 8, !tbaa !14 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.ab, align 8, !tbaa !14
  br label %lean_dec.exit2214

bb.ad:                                            ; preds = %bb.ab
  %.not.i2215 = icmp eq i32 %i.ar, 0
  br i1 %.not.i2215, label %lean_dec.exit2214, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #7
  br label %lean_dec.exit2214

lean_dec.exit2214:                                ; preds = %lean_inc.exit2796, %bb.ac, %bb.ad, %bb.ae, %bb.v
  %.01669 = phi ptr [ %i.ab, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2796 ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !10 ; 14 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 510
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.af, label %bb.hu

bb.af:                                            ; preds = %lean_dec.exit2214
  %i.ba = and i64 %i.ax, 1
  %.not.i2793 = icmp eq i64 %i.ba, 0              ; 4 uses
  br i1 %.not.i2793, label %bb.ag, label %lean_inc.exit2794

bb.ag:                                            ; preds = %bb.af
  %.val.i.i2863 = load i32, ptr %i.aw, align 512, !tbaa !14 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i2863, 0
  br i1 %i.bb, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.bc = add nuw i32 %.val.i.i2863, 1
  store i32 %i.bc, ptr %i.aw, align 512, !tbaa !14
  br label %lean_inc.exit2794

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i2864 = icmp eq i32 %.val.i.i2863, 0
  br i1 %.not.i.i2864, label %lean_inc.exit2794, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = atomicrmw sub ptr %i.aw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2794

lean_inc.exit2794:                                ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.be = ptrtoint ptr %.01669 to i64
  %i.bf = and i64 %i.be, 1
  %.not.i2866 = icmp eq i64 %i.bf, 0
  br i1 %.not.i2866, label %bb.ak, label %lean_del_object.exit

bb.ak:                                            ; preds = %lean_inc.exit2794
  tail call void @lean_free_object(ptr noundef nonnull %.01669) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_inc.exit2794, %bb.ak
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !10 ; 21 uses
  %.val2844 = load i32, ptr %i.ak, align 8, !tbaa !14
  %i.bh = icmp eq i32 %.val2844, 1                ; 2 uses
  br i1 %i.bh, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %lean_del_object.exit
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !10 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i2211 = icmp eq i64 %i.bk, 0
  br i1 %.not.i2211, label %bb.am, label %lean_dec.exit2212

bb.am:                                            ; preds = %bb.al
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !14 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.an, label %bb.ao, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !14
  br label %lean_dec.exit2212

bb.ao:                                            ; preds = %bb.am
  %.not.i2216 = icmp eq i32 %i.bl, 0
  br i1 %.not.i2216, label %lean_dec.exit2212, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #7
  br label %lean_dec.exit2212

bb.aq:                                            ; preds = %lean_del_object.exit
  %i.bo = ptrtoint ptr %i.bg to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i2791 = icmp eq i64 %i.bp, 0
  br i1 %.not.i2791, label %bb.ar, label %lean_inc.exit2792

bb.ar:                                            ; preds = %bb.aq
  %.val.i.i2867 = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i2867, 0
  br i1 %i.bq, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.br = add nuw i32 %.val.i.i2867, 1
  store i32 %i.br, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit2792

bb.at:                                            ; preds = %bb.ar
  %.not.i.i2868 = icmp eq i32 %.val.i.i2867, 0
  br i1 %.not.i.i2868, label %lean_inc.exit2792, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bs = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2792

lean_inc.exit2792:                                ; preds = %bb.aq, %bb.as, %bb.at, %bb.au
  %i.bt = load i32, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.av, label %bb.aw, !prof !15

bb.av:                                            ; preds = %lean_inc.exit2792
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.ak, align 8, !tbaa !14
  br label %lean_dec.exit2212

bb.aw:                                            ; preds = %lean_inc.exit2792
  %.not.i2218 = icmp eq i32 %i.bt, 0
  br i1 %.not.i2218, label %lean_dec.exit2212, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #7
  br label %lean_dec.exit2212

lean_dec.exit2212:                                ; preds = %bb.av, %bb.aw, %bb.ax, %bb.al, %bb.an, %bb.ao, %bb.ap
  %.01679 = phi ptr [ %i.ak, %bb.al ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ao ], [ %i.ak, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.av ] ; 8 uses
  br i1 %.not.i2799, label %bb.ay, label %lean_inc.exit2790

bb.ay:                                            ; preds = %lean_dec.exit2212
  %.val.i.i2870 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i2870, 0
  br i1 %i.bw, label %bb.az, label %bb.ba, !prof !15

bb.az:                                            ; preds = %bb.ay
  %i.bx = add nuw i32 %.val.i.i2870, 1
  store i32 %i.bx, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2790

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i2871 = icmp eq i32 %.val.i.i2870, 0
  br i1 %.not.i.i2871, label %lean_inc.exit2790, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.by = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2790

lean_inc.exit2790:                                ; preds = %bb.bb, %bb.ba, %bb.az, %lean_dec.exit2212
  %i.bz = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_classifyUse(ptr noundef %i.k, ptr noundef %0, ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef %7) ; 14 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i2873 = icmp eq i64 %i.cb, 0              ; 3 uses
  br i1 %.not.i2873, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %lean_inc.exit2790
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = trunc i64 %i.cc to i32
  br label %lean_obj_tag.exit2876

bb.bd:                                            ; preds = %lean_inc.exit2790
  %i.ce = getelementptr i8, ptr %i.bz, i64 4
  %.val.i2875 = load i32, ptr %i.ce, align 4
  %i.cf = lshr i32 %.val.i2875, 24
  br label %lean_obj_tag.exit2876

lean_obj_tag.exit2876:                            ; preds = %bb.bc, %bb.bd
  %.0.i2874 = phi i32 [ %i.cd, %bb.bc ], [ %i.cf, %bb.bd ]
  %i.cg = icmp eq i32 %.0.i2874, 0
  br i1 %i.cg, label %bb.be, label %bb.gt

bb.be:                                            ; preds = %lean_obj_tag.exit2876
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 7 uses
  %.val2843 = load i32, ptr %i.bz, align 8, !tbaa !14
  %i.cj = icmp eq i32 %.val2843, 1                ; 2 uses
  %.pre = ptrtoint ptr %i.ci to i64               ; 2 uses
  %.pre3445 = and i64 %.pre, 1                    ; 2 uses
  br i1 %i.cj, label %lean_dec.exit2208, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not.i2787 = icmp eq i64 %.pre3445, 0
  br i1 %.not.i2787, label %bb.bg, label %lean_inc.exit2788

bb.bg:                                            ; preds = %bb.bf
  %.val.i.i2877 = load i32, ptr %i.ci, align 4, !tbaa !14 ; 3 uses
  %i.ck = icmp sgt i32 %.val.i.i2877, 0
  br i1 %i.ck, label %bb.bh, label %bb.bi, !prof !15

bb.bh:                                            ; preds = %bb.bg
  %i.cl = add nuw i32 %.val.i.i2877, 1
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !14
  br label %lean_inc.exit2788

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i2878 = icmp eq i32 %.val.i.i2877, 0
  br i1 %.not.i.i2878, label %lean_inc.exit2788, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cm = atomicrmw sub ptr %i.ci, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2788

lean_inc.exit2788:                                ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bf
  br i1 %.not.i2873, label %bb.bk, label %lean_dec.exit2208

bb.bk:                                            ; preds = %lean_inc.exit2788
  %i.cn = load i32, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.bl, label %bb.bm, !prof !15

bb.bl:                                            ; preds = %bb.bk
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.bz, align 8, !tbaa !14
  br label %lean_dec.exit2208

bb.bm:                                            ; preds = %bb.bk
  %.not.i2220 = icmp eq i32 %i.cn, 0
  br i1 %.not.i2220, label %lean_dec.exit2208, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #7
  br label %lean_dec.exit2208

lean_dec.exit2208:                                ; preds = %bb.be, %lean_inc.exit2788, %bb.bl, %bb.bm, %bb.bn
  %.01720 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bn ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2788 ], [ inttoptr (i64 1 to ptr), %bb.bl ], [ inttoptr (i64 1 to ptr), %bb.bm ], [ %i.bz, %bb.be ] ; 6 uses
  %i.cq = lshr i64 %.pre, 1
  %i.cr = trunc i64 %i.cq to i8
  %.not.i2205 = icmp eq i64 %.pre3445, 0
  br i1 %.not.i2205, label %bb.bo, label %lean_dec.exit2206

bb.bo:                                            ; preds = %lean_dec.exit2208
  %i.cs = load i32, ptr %i.ci, align 4, !tbaa !14 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %i.ci, align 4, !tbaa !14
  br label %lean_dec.exit2206

bb.bq:                                            ; preds = %bb.bo
  %.not.i2222 = icmp eq i32 %i.cs, 0
  br i1 %.not.i2222, label %lean_dec.exit2206, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #7
  br label %lean_dec.exit2206

lean_dec.exit2206:                                ; preds = %bb.br, %bb.bq, %bb.bp, %lean_dec.exit2208
  switch i8 %i.cr, label %bb.fj [
    i8 0, label %bb.bs
    i8 1, label %bb.dd
  ]

bb.bs:                                            ; preds = %lean_dec.exit2206
  %i.cv = ptrtoint ptr %.01720 to i64
  %i.cw = and i64 %i.cv, 1
  %.not.i2880 = icmp eq i64 %i.cw, 0
  br i1 %.not.i2880, label %bb.bt, label %lean_del_object.exit2881

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_free_object(ptr noundef nonnull %.01720) #7
  br label %lean_del_object.exit2881

lean_del_object.exit2881:                         ; preds = %bb.bs, %bb.bt
  %i.cx = ptrtoint ptr %.01679 to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i2882 = icmp eq i64 %i.cy, 0
  br i1 %.not.i2882, label %bb.bu, label %lean_del_object.exit2883

bb.bu:                                            ; preds = %lean_del_object.exit2881
  tail call void @lean_free_object(ptr noundef nonnull %.01679) #7
  br label %lean_del_object.exit2883

lean_del_object.exit2883:                         ; preds = %lean_del_object.exit2881, %bb.bu
  br i1 %.not.i2793, label %bb.bv, label %lean_dec.exit2204

bb.bv:                                            ; preds = %lean_del_object.exit2883
  %i.cz = load i32, ptr %i.aw, align 512, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %bb.bv
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %i.aw, align 512, !tbaa !14
  br label %lean_dec.exit2204

bb.bx:                                            ; preds = %bb.bv
  %.not.i2224 = icmp eq i32 %i.cz, 0
  br i1 %.not.i2224, label %lean_dec.exit2204, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aw) #7
  br label %lean_dec.exit2204

lean_dec.exit2204:                                ; preds = %bb.by, %bb.bx, %bb.bw, %lean_del_object.exit2883
  %i.dc = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.bz, label %bb.ca, !prof !15

bb.bz:                                            ; preds = %lean_dec.exit2204
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2633

bb.ca:                                            ; preds = %lean_dec.exit2204
  %.not.i2632 = icmp eq i32 %i.dc, 0
  br i1 %.not.i2632, label %lean_dec_ref.exit2633, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2633

lean_dec_ref.exit2633:                            ; preds = %bb.bz, %bb.ca, %bb.cb
  br i1 %.not.i2799, label %bb.cc, label %lean_dec.exit2202

bb.cc:                                            ; preds = %lean_dec_ref.exit2633
  %i.df = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %bb.cc
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit2202

bb.ce:                                            ; preds = %bb.cc
  %.not.i2226 = icmp eq i32 %i.df, 0
  br i1 %.not.i2226, label %lean_dec.exit2202, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2202

lean_dec.exit2202:                                ; preds = %bb.cf, %bb.ce, %bb.cd, %lean_dec_ref.exit2633
  %.not3443 = icmp eq ptr %i.j, %i.bg
  br i1 %.not3443, label %bb.cz, label %bb.cg

bb.cg:                                            ; preds = %lean_dec.exit2202
  %.val.i.i2884 = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.di = icmp sgt i32 %.val.i.i2884, 0
  br i1 %i.di, label %bb.ch, label %bb.ci, !prof !15

bb.ch:                                            ; preds = %bb.cg
  %i.dj = add nuw i32 %.val.i.i2884, 1
  store i32 %i.dj, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc_ref.exit2886

bb.ci:                                            ; preds = %bb.cg
  %.not.i.i2885 = icmp eq i32 %.val.i.i2884, 0
  br i1 %.not.i.i2885, label %lean_inc_ref.exit2886, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dk = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2886

lean_inc_ref.exit2886:                            ; preds = %bb.ch, %bb.ci, %bb.cj
  %.val2842 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.dl = icmp eq i32 %.val2842, 1
  br i1 %i.dl, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %lean_inc_ref.exit2886
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !10  ; 4 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, 1
  %.not.i2199 = icmp eq i64 %i.do, 0
  br i1 %.not.i2199, label %bb.cl, label %lean_dec.exit2200

bb.cl:                                            ; preds = %bb.ck
  %i.dp = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.cm, label %bb.cn, !prof !15

bb.cm:                                            ; preds = %bb.cl
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec.exit2200

bb.cn:                                            ; preds = %bb.cl
  %.not.i2228 = icmp eq i32 %i.dp, 0
  br i1 %.not.i2228, label %lean_dec.exit2200, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #7
  br label %lean_dec.exit2200

lean_dec.exit2200:                                ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !10  ; 4 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = and i64 %i.dt, 1
  %.not.i2197 = icmp eq i64 %i.du, 0
  br i1 %.not.i2197, label %bb.cp, label %bb.cy

bb.cp:                                            ; preds = %lean_dec.exit2200
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !14 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.cq, label %bb.cr, !prof !15

bb.cq:                                            ; preds = %bb.cp
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !14
  br label %bb.cy

bb.cr:                                            ; preds = %bb.cp
  %.not.i2230 = icmp eq i32 %i.dv, 0
  br i1 %.not.i2230, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ds) #7
  br label %bb.cy

bb.ct:                                            ; preds = %lean_inc_ref.exit2886
  br i1 %.not.i2846, label %bb.cu, label %lean_dec.exit2198

bb.cu:                                            ; preds = %bb.ct
  %i.dy = icmp sgt i32 %.val2842, 1
  br i1 %i.dy, label %bb.cv, label %bb.cw, !prof !15

bb.cv:                                            ; preds = %bb.cu
  %i.dz = add nsw i32 %.val2842, -1
  store i32 %i.dz, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit2198

bb.cw:                                            ; preds = %bb.cu
  %.not.i2232 = icmp eq i32 %.val2842, 0
  br i1 %.not.i2232, label %lean_dec.exit2198, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit2198

bb.cy:                                            ; preds = %lean_dec.exit2200, %bb.cq, %bb.cr, %bb.cs
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !10
  br label %lean_dec.exit2194

lean_dec.exit2198:                                ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  %i.ea = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.h, ptr %i.eb, align 8, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.bg, ptr %i.ec, align 8, !tbaa !10
  br label %lean_dec.exit2194

bb.cz:                                            ; preds = %lean_dec.exit2202
  %i.ed = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.ef = add nsw i32 %i.ed, -1
  store i32 %i.ef, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit2194

bb.db:                                            ; preds = %bb.cz
  %.not.i2234 = icmp eq i32 %i.ed, 0
  br i1 %.not.i2234, label %lean_dec.exit2194, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec.exit2194

bb.dd:                                            ; preds = %lean_dec.exit2206
  %i.eg = ptrtoint ptr %.01720 to i64
  %i.eh = and i64 %i.eg, 1
  %.not.i2887 = icmp eq i64 %i.eh, 0
  br i1 %.not.i2887, label %bb.de, label %lean_del_object.exit2888

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_free_object(ptr noundef nonnull %.01720) #7
  br label %lean_del_object.exit2888

lean_del_object.exit2888:                         ; preds = %bb.dd, %bb.de
  %i.ei = ptrtoint ptr %.01679 to i64
  %i.ej = and i64 %i.ei, 1
  %.not.i2889 = icmp eq i64 %i.ej, 0
  br i1 %.not.i2889, label %bb.df, label %lean_del_object.exit2890

bb.df:                                            ; preds = %lean_del_object.exit2888
  tail call void @lean_free_object(ptr noundef nonnull %.01679) #7
  br label %lean_del_object.exit2890

lean_del_object.exit2890:                         ; preds = %lean_del_object.exit2888, %bb.df
  br i1 %.not.i2793, label %bb.dg, label %lean_dec.exit2192

bb.dg:                                            ; preds = %lean_del_object.exit2890
  %i.ek = load i32, ptr %i.aw, align 512, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.dh, label %bb.di, !prof !15

bb.dh:                                            ; preds = %bb.dg
  %i.em = add nsw i32 %i.ek, -1
  store i32 %i.em, ptr %i.aw, align 512, !tbaa !14
  br label %lean_dec.exit2192

bb.di:                                            ; preds = %bb.dg
  %.not.i2236 = icmp eq i32 %i.ek, 0
  br i1 %.not.i2236, label %lean_dec.exit2192, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aw) #7
  br label %lean_dec.exit2192

lean_dec.exit2192:                                ; preds = %bb.dj, %bb.di, %bb.dh, %lean_del_object.exit2890
  %i.en = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_S(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.bg, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 14 uses
  %i.eo = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.dk, label %bb.dl, !prof !15

bb.dk:                                            ; preds = %lean_dec.exit2192
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2631

bb.dl:                                            ; preds = %lean_dec.exit2192
  %.not.i2630 = icmp eq i32 %i.eo, 0
  br i1 %.not.i2630, label %lean_dec_ref.exit2631, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2631

lean_dec_ref.exit2631:                            ; preds = %bb.dk, %bb.dl, %bb.dm
  %i.er = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.es = and i64 %i.er, 1
  %.not.i2891 = icmp eq i64 %i.es, 0              ; 3 uses
  br i1 %.not.i2891, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %lean_dec_ref.exit2631
  %i.et = lshr i64 %i.er, 1
  %i.eu = trunc i64 %i.et to i32
  br label %lean_obj_tag.exit2894

bb.do:                                            ; preds = %lean_dec_ref.exit2631
  %i.ev = getelementptr i8, ptr %i.en, i64 4
  %.val.i2893 = load i32, ptr %i.ev, align 4
  %i.ew = lshr i32 %.val.i2893, 24
  br label %lean_obj_tag.exit2894

lean_obj_tag.exit2894:                            ; preds = %bb.dn, %bb.do
  %.0.i2892 = phi i32 [ %i.eu, %bb.dn ], [ %i.ew, %bb.do ]
  %i.ex = icmp eq i32 %.0.i2892, 0
  br i1 %i.ex, label %bb.dp, label %bb.ey

bb.dp:                                            ; preds = %lean_obj_tag.exit2894
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !10 ; 10 uses
  %.val2841 = load i32, ptr %i.en, align 8, !tbaa !14
  %i.fa = icmp eq i32 %.val2841, 1                ; 2 uses
  br i1 %i.fa, label %lean_dec.exit2190, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = and i64 %i.fb, 1
  %.not.i2785 = icmp eq i64 %i.fc, 0
  br i1 %.not.i2785, label %bb.dr, label %lean_inc.exit2786

bb.dr:                                            ; preds = %bb.dq
  %.val.i.i2895 = load i32, ptr %i.ez, align 4, !tbaa !14 ; 3 uses
  %i.fd = icmp sgt i32 %.val.i.i2895, 0
  br i1 %i.fd, label %bb.ds, label %bb.dt, !prof !15

bb.ds:                                            ; preds = %bb.dr
  %i.fe = add nuw i32 %.val.i.i2895, 1
  store i32 %i.fe, ptr %i.ez, align 4, !tbaa !14
  br label %lean_inc.exit2786

bb.dt:                                            ; preds = %bb.dr
  %.not.i.i2896 = icmp eq i32 %.val.i.i2895, 0
  br i1 %.not.i.i2896, label %lean_inc.exit2786, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ff = atomicrmw sub ptr %i.ez, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2786

lean_inc.exit2786:                                ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dq
  br i1 %.not.i2891, label %bb.dv, label %lean_dec.exit2190

bb.dv:                                            ; preds = %lean_inc.exit2786
  %i.fg = load i32, ptr %i.en, align 8, !tbaa !14 ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.dw, label %bb.dx, !prof !15

bb.dw:                                            ; preds = %bb.dv
  %i.fi = add nsw i32 %i.fg, -1
  store i32 %i.fi, ptr %i.en, align 8, !tbaa !14
  br label %lean_dec.exit2190

bb.dx:                                            ; preds = %bb.dv
  %.not.i2238 = icmp eq i32 %i.fg, 0
  br i1 %.not.i2238, label %lean_dec.exit2190, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #7
  br label %lean_dec.exit2190

lean_dec.exit2190:                                ; preds = %lean_inc.exit2786, %bb.dw, %bb.dx, %bb.dy, %bb.dp
  %.01746 = phi ptr [ %i.en, %bb.dp ], [ inttoptr (i64 1 to ptr), %bb.dy ], [ inttoptr (i64 1 to ptr), %bb.dx ], [ inttoptr (i64 1 to ptr), %bb.dw ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2786 ] ; 2 uses
  %.not3442 = icmp eq ptr %i.j, %i.ez
  br i1 %.not3442, label %bb.es, label %bb.dz

bb.dz:                                            ; preds = %lean_dec.exit2190
  %.val.i.i2898 = load i32, ptr %i.h, align 4, !tbaa !14 ; 3 uses
  %i.fj = icmp sgt i32 %.val.i.i2898, 0
  br i1 %i.fj, label %bb.ea, label %bb.eb, !prof !15

bb.ea:                                            ; preds = %bb.dz
  %i.fk = add nuw i32 %.val.i.i2898, 1
  store i32 %i.fk, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc_ref.exit2900

bb.eb:                                            ; preds = %bb.dz
  %.not.i.i2899 = icmp eq i32 %.val.i.i2898, 0
  br i1 %.not.i.i2899, label %lean_inc_ref.exit2900, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.fl = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2900

lean_inc_ref.exit2900:                            ; preds = %bb.ea, %bb.eb, %bb.ec
  %.val2840 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.fm = icmp eq i32 %.val2840, 1
  br i1 %i.fm, label %bb.ed, label %bb.em

bb.ed:                                            ; preds = %lean_inc_ref.exit2900
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !10  ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i2187 = icmp eq i64 %i.fp, 0
  br i1 %.not.i2187, label %bb.ee, label %lean_dec.exit2188

bb.ee:                                            ; preds = %bb.ed
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !14 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.ef, label %bb.eg, !prof !15

bb.ef:                                            ; preds = %bb.ee
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !14
  br label %lean_dec.exit2188

bb.eg:                                            ; preds = %bb.ee
  %.not.i2240 = icmp eq i32 %i.fq, 0
  br i1 %.not.i2240, label %lean_dec.exit2188, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #7
  br label %lean_dec.exit2188

lean_dec.exit2188:                                ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ed
  %i.ft = load ptr, ptr %i.g, align 8, !tbaa !10  ; 4 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 1
  %.not.i2185 = icmp eq i64 %i.fv, 0
  br i1 %.not.i2185, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %lean_dec.exit2188
  %i.fw = load i32, ptr %i.ft, align 4, !tbaa !14 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %bb.ej, label %bb.ek, !prof !15

bb.ej:                                            ; preds = %bb.ei
  %i.fy = add nsw i32 %i.fw, -1
  store i32 %i.fy, ptr %i.ft, align 4, !tbaa !14
  br label %bb.er

bb.ek:                                            ; preds = %bb.ei
  %.not.i2242 = icmp eq i32 %i.fw, 0
  br i1 %.not.i2242, label %bb.er, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ft) #7
  br label %bb.er

bb.em:                                            ; preds = %lean_inc_ref.exit2900
  br i1 %.not.i2846, label %bb.en, label %lean_dec.exit2186

bb.en:                                            ; preds = %bb.em
  %i.fz = icmp sgt i32 %.val2840, 1
  br i1 %i.fz, label %bb.eo, label %bb.ep, !prof !15

bb.eo:                                            ; preds = %bb.en
  %i.ga = add nsw i32 %.val2840, -1
  store i32 %i.ga, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit2186

bb.ep:                                            ; preds = %bb.en
  %.not.i2244 = icmp eq i32 %.val2840, 0
  br i1 %.not.i2244, label %lean_dec.exit2186, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit2186
end_hunk_2
begin_hunk_3_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a
bb.fs:                                            ; preds = %bb.fr
  %i.hh = add nuw i32 %.val.i.i2904, 1
  store i32 %i.hh, ptr %i.h, align 4, !tbaa !14
  br label %lean_inc_ref.exit2906

bb.ft:                                            ; preds = %bb.fr
  %.not.i.i2905 = icmp eq i32 %.val.i.i2904, 0
  br i1 %.not.i.i2905, label %lean_inc_ref.exit2906, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.hi = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2906

lean_inc_ref.exit2906:                            ; preds = %bb.fs, %bb.ft, %bb.fu
  %.val2838 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.hj = icmp eq i32 %.val2838, 1
  br i1 %i.hj, label %bb.fv, label %bb.ge

bb.fv:                                            ; preds = %lean_inc_ref.exit2906
  %i.hk = load ptr, ptr %i.i, align 8, !tbaa !10  ; 4 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = and i64 %i.hl, 1
  %.not.i2175 = icmp eq i64 %i.hm, 0
  br i1 %.not.i2175, label %bb.fw, label %lean_dec.exit2176

bb.fw:                                            ; preds = %bb.fv
  %i.hn = load i32, ptr %i.hk, align 4, !tbaa !14 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 1
  br i1 %i.ho, label %bb.fx, label %bb.fy, !prof !15

bb.fx:                                            ; preds = %bb.fw
  %i.hp = add nsw i32 %i.hn, -1
  store i32 %i.hp, ptr %i.hk, align 4, !tbaa !14
  br label %lean_dec.exit2176

bb.fy:                                            ; preds = %bb.fw
  %.not.i2252 = icmp eq i32 %i.hn, 0
  br i1 %.not.i2252, label %lean_dec.exit2176, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hk) #7
  br label %lean_dec.exit2176

lean_dec.exit2176:                                ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv
  %i.hq = load ptr, ptr %i.g, align 8, !tbaa !10  ; 4 uses
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = and i64 %i.hr, 1
  %.not.i2173 = icmp eq i64 %i.hs, 0
  br i1 %.not.i2173, label %bb.ga, label %bb.gj

bb.ga:                                            ; preds = %lean_dec.exit2176
  %i.ht = load i32, ptr %i.hq, align 4, !tbaa !14 ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %bb.gb, label %bb.gc, !prof !15

bb.gb:                                            ; preds = %bb.ga
  %i.hv = add nsw i32 %i.ht, -1
  store i32 %i.hv, ptr %i.hq, align 4, !tbaa !14
  br label %bb.gj

bb.gc:                                            ; preds = %bb.ga
  %.not.i2254 = icmp eq i32 %i.ht, 0
  br i1 %.not.i2254, label %bb.gj, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hq) #7
  br label %bb.gj

bb.ge:                                            ; preds = %lean_inc_ref.exit2906
  br i1 %.not.i2846, label %bb.gf, label %lean_dec.exit2174

bb.gf:                                            ; preds = %bb.ge
  %i.hw = icmp sgt i32 %.val2838, 1
  br i1 %i.hw, label %bb.gg, label %bb.gh, !prof !15

bb.gg:                                            ; preds = %bb.gf
  %i.hx = add nsw i32 %.val2838, -1
  store i32 %i.hx, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit2174

bb.gh:                                            ; preds = %bb.gf
  %.not.i2256 = icmp eq i32 %.val2838, 0
  br i1 %.not.i2256, label %lean_dec.exit2174, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit2174

bb.gj:                                            ; preds = %lean_dec.exit2176, %bb.gb, %bb.gc, %bb.gd
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !10
  br label %lean_dec.exit2170

lean_dec.exit2174:                                ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.ge
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.h, ptr %i.hz, align 8, !tbaa !10
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store ptr %i.bg, ptr %i.ia, align 8, !tbaa !10
  br label %lean_dec.exit2170

bb.gk:                                            ; preds = %lean_dec.exit2178
  %i.ib = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.gl, label %bb.gm, !prof !15

bb.gl:                                            ; preds = %bb.gk
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit2170

bb.gm:                                            ; preds = %bb.gk
  %.not.i2258 = icmp eq i32 %i.ib, 0
  br i1 %.not.i2258, label %lean_dec.exit2170, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec.exit2170

lean_dec.exit2170:                                ; preds = %bb.gl, %bb.gm, %bb.gn, %lean_dec.exit2174, %bb.gj
  %.21724 = phi ptr [ %i.hy, %lean_dec.exit2174 ], [ %2, %bb.gj ], [ %2, %bb.gn ], [ %2, %bb.gm ], [ %2, %bb.gl ] ; 2 uses
  br i1 %i.bh, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %lean_dec.exit2170
  %i.ie = getelementptr inbounds nuw i8, ptr %.01679, i64 8
  store ptr %.21724, ptr %i.ie, align 8, !tbaa !10
  br label %bb.gq

bb.gp:                                            ; preds = %lean_dec.exit2170
  %i.if = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  store ptr %.21724, ptr %i.ig, align 8, !tbaa !10
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.aw, ptr %i.ih, align 8, !tbaa !10
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.01790 = phi ptr [ %.01679, %bb.go ], [ %i.if, %bb.gp ] ; 2 uses
  br i1 %i.cj, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.ii = getelementptr inbounds nuw i8, ptr %.01720, i64 8
  store ptr %.01790, ptr %i.ii, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.gs:                                            ; preds = %bb.gq
  %i.ij = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %.01790, ptr %i.ik, align 8, !tbaa !10
  br label %lean_dec.exit2180

lean_dec.exit2194:                                ; preds = %bb.da, %bb.db, %bb.dc, %lean_dec.exit2198, %bb.cy
  %.21729 = phi ptr [ %i.ea, %lean_dec.exit2198 ], [ %2, %bb.cy ], [ %2, %bb.dc ], [ %2, %bb.db ], [ %2, %bb.da ]
  %i.il = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %.21729, ptr %i.im, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.in, align 8, !tbaa !10
  %i.io = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  store ptr %i.il, ptr %i.ip, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.gt:                                            ; preds = %lean_obj_tag.exit2876
  %i.iq = ptrtoint ptr %.01679 to i64
  %i.ir = and i64 %i.iq, 1
  %.not.i2907 = icmp eq i64 %i.ir, 0
  br i1 %.not.i2907, label %bb.gu, label %lean_del_object.exit2908

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_free_object(ptr noundef nonnull %.01679) #7
  br label %lean_del_object.exit2908

lean_del_object.exit2908:                         ; preds = %bb.gt, %bb.gu
  %i.is = ptrtoint ptr %i.bg to i64
  %i.it = and i64 %i.is, 1
  %.not.i2167 = icmp eq i64 %i.it, 0
  br i1 %.not.i2167, label %bb.gv, label %lean_dec.exit2168

bb.gv:                                            ; preds = %lean_del_object.exit2908
  %i.iu = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.iv = icmp sgt i32 %i.iu, 1
  br i1 %i.iv, label %bb.gw, label %bb.gx, !prof !15

bb.gw:                                            ; preds = %bb.gv
  %i.iw = add nsw i32 %i.iu, -1
  store i32 %i.iw, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit2168

bb.gx:                                            ; preds = %bb.gv
  %.not.i2260 = icmp eq i32 %i.iu, 0
  br i1 %.not.i2260, label %lean_dec.exit2168, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec.exit2168

lean_dec.exit2168:                                ; preds = %bb.gy, %bb.gx, %bb.gw, %lean_del_object.exit2908
  br i1 %.not.i2793, label %bb.gz, label %lean_dec.exit2166

bb.gz:                                            ; preds = %lean_dec.exit2168
  %i.ix = load i32, ptr %i.aw, align 512, !tbaa !14 ; 3 uses
  %i.iy = icmp sgt i32 %i.ix, 1
  br i1 %i.iy, label %bb.ha, label %bb.hb, !prof !15

bb.ha:                                            ; preds = %bb.gz
  %i.iz = add nsw i32 %i.ix, -1
  store i32 %i.iz, ptr %i.aw, align 512, !tbaa !14
  br label %lean_dec.exit2166

bb.hb:                                            ; preds = %bb.gz
  %.not.i2262 = icmp eq i32 %i.ix, 0
  br i1 %.not.i2262, label %lean_dec.exit2166, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aw) #7
  br label %lean_dec.exit2166

lean_dec.exit2166:                                ; preds = %bb.hc, %bb.hb, %bb.ha, %lean_dec.exit2168
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %2, i32 noundef 2)
  %i.ja = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %bb.hd, label %bb.he, !prof !15

bb.hd:                                            ; preds = %lean_dec.exit2166
  %i.jc = add nsw i32 %i.ja, -1
  store i32 %i.jc, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2627

bb.he:                                            ; preds = %lean_dec.exit2166
  %.not.i2626 = icmp eq i32 %i.ja, 0
  br i1 %.not.i2626, label %lean_dec_ref.exit2627, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2627

lean_dec_ref.exit2627:                            ; preds = %bb.hd, %bb.he, %bb.hf
  br i1 %.not.i2799, label %bb.hg, label %lean_dec.exit2164

bb.hg:                                            ; preds = %lean_dec_ref.exit2627
  %i.jd = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.hh, label %bb.hi, !prof !15

bb.hh:                                            ; preds = %bb.hg
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit2164

bb.hi:                                            ; preds = %bb.hg
  %.not.i2264 = icmp eq i32 %i.jd, 0
  br i1 %.not.i2264, label %lean_dec.exit2164, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2164

lean_dec.exit2164:                                ; preds = %bb.hj, %bb.hi, %bb.hh, %lean_dec_ref.exit2627
  %i.jg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !10 ; 5 uses
  %.val2837 = load i32, ptr %i.bz, align 8, !tbaa !14
  %i.ji = icmp eq i32 %.val2837, 1
  br i1 %i.ji, label %lean_dec.exit2180, label %bb.hk

bb.hk:                                            ; preds = %lean_dec.exit2164
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = and i64 %i.jj, 1
  %.not.i2781 = icmp eq i64 %i.jk, 0
  br i1 %.not.i2781, label %bb.hl, label %lean_inc.exit2782

bb.hl:                                            ; preds = %bb.hk
  %.val.i.i2909 = load i32, ptr %i.jh, align 4, !tbaa !14 ; 3 uses
  %i.jl = icmp sgt i32 %.val.i.i2909, 0
  br i1 %i.jl, label %bb.hm, label %bb.hn, !prof !15

bb.hm:                                            ; preds = %bb.hl
  %i.jm = add nuw i32 %.val.i.i2909, 1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !14
  br label %lean_inc.exit2782

bb.hn:                                            ; preds = %bb.hl
  %.not.i.i2910 = icmp eq i32 %.val.i.i2909, 0
  br i1 %.not.i.i2910, label %lean_inc.exit2782, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.jn = atomicrmw sub ptr %i.jh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2782

lean_inc.exit2782:                                ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk
  br i1 %.not.i2873, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %lean_inc.exit2782
  %i.jo = load i32, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.hq, label %bb.hr, !prof !15

bb.hq:                                            ; preds = %bb.hp
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %i.bz, align 8, !tbaa !14
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hp
  %.not.i2266 = icmp eq i32 %i.jo, 0
  br i1 %.not.i2266, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #7
  br label %bb.ht

bb.ht:                                            ; preds = %lean_inc.exit2782, %bb.hq, %bb.hr, %bb.hs
  %i.jr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.jh, ptr %i.js, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.hu:                                            ; preds = %lean_dec.exit2214
  %i.jt = load i32, ptr %i.k, align 4, !tbaa !14  ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 1
  br i1 %i.ju, label %bb.hv, label %bb.hw, !prof !15

bb.hv:                                            ; preds = %bb.hu
  %i.jv = add nsw i32 %i.jt, -1
  store i32 %i.jv, ptr %i.k, align 4, !tbaa !14
  br label %lean_dec_ref.exit2625

bb.hw:                                            ; preds = %bb.hu
  %.not.i2624 = icmp eq i32 %i.jt, 0
  br i1 %.not.i2624, label %lean_dec_ref.exit2625, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #7
  br label %lean_dec_ref.exit2625

lean_dec_ref.exit2625:                            ; preds = %bb.hv, %bb.hw, %bb.hx
  %i.jw = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %bb.hy, label %bb.hz, !prof !15

bb.hy:                                            ; preds = %lean_dec_ref.exit2625
  %i.jy = add nsw i32 %i.jw, -1
  store i32 %i.jy, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2623

bb.hz:                                            ; preds = %lean_dec_ref.exit2625
  %.not.i2622 = icmp eq i32 %i.jw, 0
  br i1 %.not.i2622, label %lean_dec_ref.exit2623, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2623

lean_dec_ref.exit2623:                            ; preds = %bb.hy, %bb.hz, %bb.ia
  br i1 %.not.i2799, label %bb.ib, label %lean_dec.exit2160

bb.ib:                                            ; preds = %lean_dec_ref.exit2623
  %i.jz = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ka = icmp sgt i32 %i.jz, 1
  br i1 %i.ka, label %bb.ic, label %bb.id, !prof !15

bb.ic:                                            ; preds = %bb.ib
  %i.kb = add nsw i32 %i.jz, -1
  store i32 %i.kb, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit2160

bb.id:                                            ; preds = %bb.ib
  %.not.i2268 = icmp eq i32 %i.jz, 0
  br i1 %.not.i2268, label %lean_dec.exit2160, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2160

lean_dec.exit2160:                                ; preds = %bb.ie, %bb.id, %bb.ic, %lean_dec_ref.exit2623
  %i.kc = load ptr, ptr %i.au, align 8, !tbaa !10 ; 10 uses
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = and i64 %i.kd, 1
  %.not.i2779 = icmp eq i64 %i.ke, 0              ; 2 uses
  br i1 %.not.i2779, label %bb.if, label %lean_inc.exit2780

bb.if:                                            ; preds = %lean_dec.exit2160
  %.val.i.i2912 = load i32, ptr %i.kc, align 4, !tbaa !14 ; 3 uses
  %i.kf = icmp sgt i32 %.val.i.i2912, 0
  br i1 %i.kf, label %bb.ig, label %bb.ih, !prof !15

bb.ig:                                            ; preds = %bb.if
  %i.kg = add nuw i32 %.val.i.i2912, 1
  store i32 %i.kg, ptr %i.kc, align 4, !tbaa !14
  br label %lean_inc.exit2780

bb.ih:                                            ; preds = %bb.if
  %.not.i.i2913 = icmp eq i32 %.val.i.i2912, 0
  br i1 %.not.i.i2913, label %lean_inc.exit2780, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.kh = atomicrmw sub ptr %i.kc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2780

lean_inc.exit2780:                                ; preds = %lean_dec.exit2160, %bb.ig, %bb.ih, %bb.ii
  %i.ki = load i32, ptr %i.ak, align 8, !tbaa !14 ; 3 uses
  %i.kj = icmp sgt i32 %i.ki, 1
  br i1 %i.kj, label %bb.ij, label %bb.ik, !prof !15

bb.ij:                                            ; preds = %lean_inc.exit2780
  %i.kk = add nsw i32 %i.ki, -1
  store i32 %i.kk, ptr %i.ak, align 8, !tbaa !14
  br label %lean_dec.exit2158

end_hunk_3
begin_hunk_4_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a
  br i1 %i.alf, label %bb.adb, label %lean_alloc_ctor.exit3145

bb.adb:                                           ; preds = %bb.ada
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit3145:                         ; preds = %bb.ada
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  store i32 1, ptr %i.ale, align 4, !tbaa !14
  store i32 16842768, ptr %i.alg, align 4
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store ptr %i.aku, ptr %i.alh, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.adc:                                           ; preds = %lean_obj_tag.exit
  %i.ali = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !10 ; 20 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !10 ; 20 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !10 ; 20 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !10 ; 8 uses
  %i.alq = tail call ptr @l_Lean_Compiler_LCNF_Code_toCodeDecl_x21(i8 noundef zeroext 1, ptr noundef %2) #7 ; 11 uses
  %i.alr = ptrtoint ptr %0 to i64
  %i.als = and i64 %i.alr, 1
  %.not.i2731 = icmp eq i64 %i.als, 0             ; 9 uses
  br i1 %.not.i2731, label %bb.add, label %lean_inc.exit2732

bb.add:                                           ; preds = %bb.adc
  %.val.i.i3146 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.alt = icmp sgt i32 %.val.i.i3146, 0
  br i1 %i.alt, label %bb.ade, label %bb.adf, !prof !15

bb.ade:                                           ; preds = %bb.add
  %i.alu = add nuw i32 %.val.i.i3146, 1
  store i32 %i.alu, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2732

bb.adf:                                           ; preds = %bb.add
  %.not.i.i3147 = icmp eq i32 %.val.i.i3146, 0
  br i1 %.not.i.i3147, label %lean_inc.exit2732, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  %i.alv = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2732

lean_inc.exit2732:                                ; preds = %bb.adg, %bb.adf, %bb.ade, %bb.adc
  %i.alw = tail call zeroext i8 @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_isCtorUsing(ptr noundef %i.alq, ptr noundef %0)
  %i.alx = icmp eq i8 %i.alw, 0
  br i1 %i.alx, label %bb.adh, label %bb.arg

bb.adh:                                           ; preds = %lean_inc.exit2732
  %.val.i.i3149 = load i32, ptr %i.alp, align 4, !tbaa !14 ; 3 uses
  %i.aly = icmp sgt i32 %.val.i.i3149, 0
  br i1 %i.aly, label %bb.adi, label %bb.adj, !prof !15

bb.adi:                                           ; preds = %bb.adh
  %i.alz = add nuw i32 %.val.i.i3149, 1
  store i32 %i.alz, ptr %i.alp, align 4, !tbaa !14
  br label %lean_inc_ref.exit3151

bb.adj:                                           ; preds = %bb.adh
  %.not.i.i3150 = icmp eq i32 %.val.i.i3149, 0
  br i1 %.not.i.i3150, label %lean_inc_ref.exit3151, label %bb.adk

bb.adk:                                           ; preds = %bb.adj
  %i.ama = atomicrmw sub ptr %i.alp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3151

lean_inc_ref.exit3151:                            ; preds = %bb.adi, %bb.adj, %bb.adk
  %.val.i.i3152 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.amb = icmp sgt i32 %.val.i.i3152, 0
  br i1 %i.amb, label %bb.adl, label %bb.adm, !prof !15

bb.adl:                                           ; preds = %lean_inc_ref.exit3151
  %i.amc = add nuw i32 %.val.i.i3152, 1
  store i32 %i.amc, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit3154

bb.adm:                                           ; preds = %lean_inc_ref.exit3151
  %.not.i.i3153 = icmp eq i32 %.val.i.i3152, 0
  br i1 %.not.i.i3153, label %lean_inc_ref.exit3154, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  %i.amd = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3154

lean_inc_ref.exit3154:                            ; preds = %bb.adl, %bb.adm, %bb.adn
  br i1 %.not.i2731, label %bb.ado, label %lean_inc.exit2730

bb.ado:                                           ; preds = %lean_inc_ref.exit3154
  %.val.i.i3155 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.ame = icmp sgt i32 %.val.i.i3155, 0
  br i1 %i.ame, label %bb.adp, label %bb.adq, !prof !15

bb.adp:                                           ; preds = %bb.ado
  %i.amf = add nuw i32 %.val.i.i3155, 1
  store i32 %i.amf, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2730

bb.adq:                                           ; preds = %bb.ado
  %.not.i.i3156 = icmp eq i32 %.val.i.i3155, 0
  br i1 %.not.i.i3156, label %lean_inc.exit2730, label %bb.adr

bb.adr:                                           ; preds = %bb.adq
  %i.amg = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2730

lean_inc.exit2730:                                ; preds = %bb.adr, %bb.adq, %bb.adp, %lean_inc_ref.exit3154
  %i.amh = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.alp, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 12 uses
  %i.ami = ptrtoint ptr %i.amh to i64             ; 2 uses
  %i.amj = and i64 %i.ami, 1
  %.not.i3158 = icmp eq i64 %i.amj, 0             ; 2 uses
  br i1 %.not.i3158, label %bb.adt, label %bb.ads

bb.ads:                                           ; preds = %lean_inc.exit2730
  %i.amk = lshr i64 %i.ami, 1
  %i.aml = trunc i64 %i.amk to i32
  br label %lean_obj_tag.exit3161

bb.adt:                                           ; preds = %lean_inc.exit2730
  %i.amm = getelementptr i8, ptr %i.amh, i64 4
  %.val.i3160 = load i32, ptr %i.amm, align 4
  %i.amn = lshr i32 %.val.i3160, 24
  br label %lean_obj_tag.exit3161

lean_obj_tag.exit3161:                            ; preds = %bb.ads, %bb.adt
  %.0.i3159 = phi i32 [ %i.aml, %bb.ads ], [ %i.amn, %bb.adt ]
  %i.amo = icmp eq i32 %.0.i3159, 0
  br i1 %i.amo, label %bb.adu, label %bb.aqb

bb.adu:                                           ; preds = %lean_obj_tag.exit3161
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !10 ; 17 uses
  %.val2819 = load i32, ptr %i.amh, align 8, !tbaa !14
  %i.amr = icmp eq i32 %.val2819, 1               ; 2 uses
  br i1 %i.amr, label %lean_dec.exit2072, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  %i.ams = ptrtoint ptr %i.amq to i64
  %i.amt = and i64 %i.ams, 1
  %.not.i2727 = icmp eq i64 %i.amt, 0
  br i1 %.not.i2727, label %bb.adw, label %lean_inc.exit2728

bb.adw:                                           ; preds = %bb.adv
  %.val.i.i3162 = load i32, ptr %i.amq, align 4, !tbaa !14 ; 3 uses
  %i.amu = icmp sgt i32 %.val.i.i3162, 0
  br i1 %i.amu, label %bb.adx, label %bb.ady, !prof !15

bb.adx:                                           ; preds = %bb.adw
  %i.amv = add nuw i32 %.val.i.i3162, 1
  store i32 %i.amv, ptr %i.amq, align 4, !tbaa !14
  br label %lean_inc.exit2728

bb.ady:                                           ; preds = %bb.adw
  %.not.i.i3163 = icmp eq i32 %.val.i.i3162, 0
  br i1 %.not.i.i3163, label %lean_inc.exit2728, label %bb.adz

bb.adz:                                           ; preds = %bb.ady
  %i.amw = atomicrmw sub ptr %i.amq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2728

lean_inc.exit2728:                                ; preds = %bb.adz, %bb.ady, %bb.adx, %bb.adv
  br i1 %.not.i3158, label %bb.aea, label %lean_dec.exit2072

bb.aea:                                           ; preds = %lean_inc.exit2728
  %i.amx = load i32, ptr %i.amh, align 8, !tbaa !14 ; 3 uses
  %i.amy = icmp sgt i32 %i.amx, 1
  br i1 %i.amy, label %bb.aeb, label %bb.aec, !prof !15

bb.aeb:                                           ; preds = %bb.aea
  %i.amz = add nsw i32 %i.amx, -1
  store i32 %i.amz, ptr %i.amh, align 8, !tbaa !14
  br label %lean_dec.exit2072

bb.aec:                                           ; preds = %bb.aea
  %.not.i2356 = icmp eq i32 %i.amx, 0
  br i1 %.not.i2356, label %lean_dec.exit2072, label %bb.aed

bb.aed:                                           ; preds = %bb.aec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.amh) #7
  br label %lean_dec.exit2072

lean_dec.exit2072:                                ; preds = %lean_inc.exit2728, %bb.aeb, %bb.aec, %bb.aed, %bb.adu
  %.01826 = phi ptr [ %i.amh, %bb.adu ], [ inttoptr (i64 1 to ptr), %bb.aed ], [ inttoptr (i64 1 to ptr), %bb.aec ], [ inttoptr (i64 1 to ptr), %bb.aeb ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2728 ] ; 4 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amq, i64 8 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amq, i64 16 ; 2 uses
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !10 ; 14 uses
  %i.and = ptrtoint ptr %i.anc to i64             ; 2 uses
  %i.ane = and i64 %i.and, 510
  %i.anf = icmp eq i64 %i.ane, 0
  br i1 %i.anf, label %bb.aee, label %bb.ans

bb.aee:                                           ; preds = %lean_dec.exit2072
  %i.ang = and i64 %i.and, 1
  %.not.i2725 = icmp eq i64 %i.ang, 0             ; 4 uses
  br i1 %.not.i2725, label %bb.aef, label %lean_inc.exit2726

bb.aef:                                           ; preds = %bb.aee
  %.val.i.i3165 = load i32, ptr %i.anc, align 512, !tbaa !14 ; 3 uses
  %i.anh = icmp sgt i32 %.val.i.i3165, 0
  br i1 %i.anh, label %bb.aeg, label %bb.aeh, !prof !15

bb.aeg:                                           ; preds = %bb.aef
  %i.ani = add nuw i32 %.val.i.i3165, 1
  store i32 %i.ani, ptr %i.anc, align 512, !tbaa !14
  br label %lean_inc.exit2726

bb.aeh:                                           ; preds = %bb.aef
  %.not.i.i3166 = icmp eq i32 %.val.i.i3165, 0
  br i1 %.not.i.i3166, label %lean_inc.exit2726, label %bb.aei

bb.aei:                                           ; preds = %bb.aeh
  %i.anj = atomicrmw sub ptr %i.anc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2726

lean_inc.exit2726:                                ; preds = %bb.aei, %bb.aeh, %bb.aeg, %bb.aee
  %i.ank = ptrtoint ptr %.01826 to i64
  %i.anl = and i64 %i.ank, 1
  %.not.i3168 = icmp eq i64 %i.anl, 0
  br i1 %.not.i3168, label %bb.aej, label %lean_del_object.exit3169

bb.aej:                                           ; preds = %lean_inc.exit2726
  tail call void @lean_free_object(ptr noundef nonnull %.01826) #7
  br label %lean_del_object.exit3169

lean_del_object.exit3169:                         ; preds = %lean_inc.exit2726, %bb.aej
  %i.anm = load ptr, ptr %i.ana, align 8, !tbaa !10 ; 21 uses
  %.val2818 = load i32, ptr %i.amq, align 8, !tbaa !14
  %i.ann = icmp eq i32 %.val2818, 1               ; 2 uses
  br i1 %i.ann, label %bb.aek, label %bb.aep

bb.aek:                                           ; preds = %lean_del_object.exit3169
  %i.ano = load ptr, ptr %i.anb, align 8, !tbaa !10 ; 4 uses
  %i.anp = ptrtoint ptr %i.ano to i64
  %i.anq = and i64 %i.anp, 1
  %.not.i2069 = icmp eq i64 %i.anq, 0
  br i1 %.not.i2069, label %bb.ael, label %lean_dec.exit2070

bb.ael:                                           ; preds = %bb.aek
  %i.anr = load i32, ptr %i.ano, align 4, !tbaa !14 ; 3 uses
  %i.ans = icmp sgt i32 %i.anr, 1
  br i1 %i.ans, label %bb.aem, label %bb.aen, !prof !15

bb.aem:                                           ; preds = %bb.ael
  %i.ant = add nsw i32 %i.anr, -1
  store i32 %i.ant, ptr %i.ano, align 4, !tbaa !14
  br label %lean_dec.exit2070

bb.aen:                                           ; preds = %bb.ael
  %.not.i2358 = icmp eq i32 %i.anr, 0
  br i1 %.not.i2358, label %lean_dec.exit2070, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ano) #7
  br label %lean_dec.exit2070

bb.aep:                                           ; preds = %lean_del_object.exit3169
  %i.anu = ptrtoint ptr %i.anm to i64
  %i.anv = and i64 %i.anu, 1
  %.not.i2723 = icmp eq i64 %i.anv, 0
  br i1 %.not.i2723, label %bb.aeq, label %lean_inc.exit2724

bb.aeq:                                           ; preds = %bb.aep
  %.val.i.i3170 = load i32, ptr %i.anm, align 4, !tbaa !14 ; 3 uses
  %i.anw = icmp sgt i32 %.val.i.i3170, 0
  br i1 %i.anw, label %bb.aer, label %bb.aes, !prof !15

bb.aer:                                           ; preds = %bb.aeq
  %i.anx = add nuw i32 %.val.i.i3170, 1
  store i32 %i.anx, ptr %i.anm, align 4, !tbaa !14
  br label %lean_inc.exit2724

bb.aes:                                           ; preds = %bb.aeq
  %.not.i.i3171 = icmp eq i32 %.val.i.i3170, 0
  br i1 %.not.i.i3171, label %lean_inc.exit2724, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.any = atomicrmw sub ptr %i.anm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2724

lean_inc.exit2724:                                ; preds = %bb.aep, %bb.aer, %bb.aes, %bb.aet
  %i.anz = load i32, ptr %i.amq, align 8, !tbaa !14 ; 3 uses
  %i.aoa = icmp sgt i32 %i.anz, 1
  br i1 %i.aoa, label %bb.aeu, label %bb.aev, !prof !15

bb.aeu:                                           ; preds = %lean_inc.exit2724
  %i.aob = add nsw i32 %i.anz, -1
  store i32 %i.aob, ptr %i.amq, align 8, !tbaa !14
  br label %lean_dec.exit2070

bb.aev:                                           ; preds = %lean_inc.exit2724
  %.not.i2360 = icmp eq i32 %i.anz, 0
  br i1 %.not.i2360, label %lean_dec.exit2070, label %bb.aew

bb.aew:                                           ; preds = %bb.aev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.amq) #7
  br label %lean_dec.exit2070

lean_dec.exit2070:                                ; preds = %bb.aeu, %bb.aev, %bb.aew, %bb.aek, %bb.aem, %bb.aen, %bb.aeo
  %.01821 = phi ptr [ %i.amq, %bb.aek ], [ %i.amq, %bb.aeo ], [ %i.amq, %bb.aen ], [ %i.amq, %bb.aem ], [ inttoptr (i64 1 to ptr), %bb.aew ], [ inttoptr (i64 1 to ptr), %bb.aev ], [ inttoptr (i64 1 to ptr), %bb.aeu ] ; 8 uses
  br i1 %.not.i2731, label %bb.aex, label %lean_inc.exit2722

bb.aex:                                           ; preds = %lean_dec.exit2070
  %.val.i.i3173 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.aoc = icmp sgt i32 %.val.i.i3173, 0
  br i1 %i.aoc, label %bb.aey, label %bb.aez, !prof !15

bb.aey:                                           ; preds = %bb.aex
  %i.aod = add nuw i32 %.val.i.i3173, 1
  store i32 %i.aod, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2722

bb.aez:                                           ; preds = %bb.aex
  %.not.i.i3174 = icmp eq i32 %.val.i.i3173, 0
  br i1 %.not.i.i3174, label %lean_inc.exit2722, label %bb.afa

bb.afa:                                           ; preds = %bb.aez
  %i.aoe = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2722

lean_inc.exit2722:                                ; preds = %bb.afa, %bb.aez, %bb.aey, %lean_dec.exit2070
  %i.aof = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_classifyUse(ptr noundef %i.alq, ptr noundef %0, ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef %7) ; 14 uses
  %i.aog = ptrtoint ptr %i.aof to i64             ; 2 uses
  %i.aoh = and i64 %i.aog, 1
  %.not.i3176 = icmp eq i64 %i.aoh, 0             ; 3 uses
  br i1 %.not.i3176, label %bb.afc, label %bb.afb

bb.afb:                                           ; preds = %lean_inc.exit2722
  %i.aoi = lshr i64 %i.aog, 1
  %i.aoj = trunc i64 %i.aoi to i32
  br label %lean_obj_tag.exit3179

bb.afc:                                           ; preds = %lean_inc.exit2722
  %i.aok = getelementptr i8, ptr %i.aof, i64 4
  %.val.i3178 = load i32, ptr %i.aok, align 4
  %i.aol = lshr i32 %.val.i3178, 24
  br label %lean_obj_tag.exit3179

lean_obj_tag.exit3179:                            ; preds = %bb.afb, %bb.afc
  %.0.i3177 = phi i32 [ %i.aoj, %bb.afb ], [ %i.aol, %bb.afc ]
  %i.aom = icmp eq i32 %.0.i3177, 0
  br i1 %i.aom, label %bb.afd, label %bb.amr

bb.afd:                                           ; preds = %lean_obj_tag.exit3179
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !10 ; 7 uses
  %.val2817 = load i32, ptr %i.aof, align 8, !tbaa !14
  %i.aop = icmp eq i32 %.val2817, 1               ; 2 uses
  %.pre3449 = ptrtoint ptr %i.aoo to i64          ; 2 uses
  %.pre3451 = and i64 %.pre3449, 1                ; 2 uses
  br i1 %i.aop, label %lean_dec.exit2066, label %bb.afe

bb.afe:                                           ; preds = %bb.afd
  %.not.i2719 = icmp eq i64 %.pre3451, 0
  br i1 %.not.i2719, label %bb.aff, label %lean_inc.exit2720

bb.aff:                                           ; preds = %bb.afe
  %.val.i.i3180 = load i32, ptr %i.aoo, align 4, !tbaa !14 ; 3 uses
  %i.aoq = icmp sgt i32 %.val.i.i3180, 0
  br i1 %i.aoq, label %bb.afg, label %bb.afh, !prof !15

bb.afg:                                           ; preds = %bb.aff
  %i.aor = add nuw i32 %.val.i.i3180, 1
  store i32 %i.aor, ptr %i.aoo, align 4, !tbaa !14
  br label %lean_inc.exit2720

bb.afh:                                           ; preds = %bb.aff
  %.not.i.i3181 = icmp eq i32 %.val.i.i3180, 0
  br i1 %.not.i.i3181, label %lean_inc.exit2720, label %bb.afi

bb.afi:                                           ; preds = %bb.afh
  %i.aos = atomicrmw sub ptr %i.aoo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2720

lean_inc.exit2720:                                ; preds = %bb.afi, %bb.afh, %bb.afg, %bb.afe
  br i1 %.not.i3176, label %bb.afj, label %lean_dec.exit2066

bb.afj:                                           ; preds = %lean_inc.exit2720
  %i.aot = load i32, ptr %i.aof, align 8, !tbaa !14 ; 3 uses
  %i.aou = icmp sgt i32 %i.aot, 1
  br i1 %i.aou, label %bb.afk, label %bb.afl, !prof !15

bb.afk:                                           ; preds = %bb.afj
  %i.aov = add nsw i32 %i.aot, -1
  store i32 %i.aov, ptr %i.aof, align 8, !tbaa !14
  br label %lean_dec.exit2066

bb.afl:                                           ; preds = %bb.afj
  %.not.i2362 = icmp eq i32 %i.aot, 0
  br i1 %.not.i2362, label %lean_dec.exit2066, label %bb.afm

bb.afm:                                           ; preds = %bb.afl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aof) #7
  br label %lean_dec.exit2066

lean_dec.exit2066:                                ; preds = %bb.afd, %lean_inc.exit2720, %bb.afk, %bb.afl, %bb.afm
  %.01818 = phi ptr [ inttoptr (i64 1 to ptr), %bb.afm ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2720 ], [ inttoptr (i64 1 to ptr), %bb.afk ], [ inttoptr (i64 1 to ptr), %bb.afl ], [ %i.aof, %bb.afd ] ; 6 uses
  %i.aow = lshr i64 %.pre3449, 1
  %i.aox = trunc i64 %i.aow to i8
  %.not.i2063 = icmp eq i64 %.pre3451, 0
  br i1 %.not.i2063, label %bb.afn, label %lean_dec.exit2064

bb.afn:                                           ; preds = %lean_dec.exit2066
  %i.aoy = load i32, ptr %i.aoo, align 4, !tbaa !14 ; 3 uses
  %i.aoz = icmp sgt i32 %i.aoy, 1
  br i1 %i.aoz, label %bb.afo, label %bb.afp, !prof !15

bb.afo:                                           ; preds = %bb.afn
  %i.apa = add nsw i32 %i.aoy, -1
  store i32 %i.apa, ptr %i.aoo, align 4, !tbaa !14
  br label %lean_dec.exit2064

bb.afp:                                           ; preds = %bb.afn
  %.not.i2364 = icmp eq i32 %i.aoy, 0
  br i1 %.not.i2364, label %lean_dec.exit2064, label %bb.afq

bb.afq:                                           ; preds = %bb.afp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aoo) #7
  br label %lean_dec.exit2064

lean_dec.exit2064:                                ; preds = %bb.afq, %bb.afp, %bb.afo, %lean_dec.exit2066
  switch i8 %i.aox, label %bb.akq [
    i8 0, label %bb.afr
    i8 1, label %bb.aht
  ]

bb.afr:                                           ; preds = %lean_dec.exit2064
  %i.apb = ptrtoint ptr %.01818 to i64
  %i.apc = and i64 %i.apb, 1
  %.not.i3183 = icmp eq i64 %i.apc, 0
  br i1 %.not.i3183, label %bb.afs, label %lean_del_object.exit3184

bb.afs:                                           ; preds = %bb.afr
  tail call void @lean_free_object(ptr noundef nonnull %.01818) #7
  br label %lean_del_object.exit3184

lean_del_object.exit3184:                         ; preds = %bb.afr, %bb.afs
  %i.apd = ptrtoint ptr %.01821 to i64
  %i.ape = and i64 %i.apd, 1
  %.not.i3185 = icmp eq i64 %i.ape, 0
  br i1 %.not.i3185, label %bb.aft, label %lean_del_object.exit3186

bb.aft:                                           ; preds = %lean_del_object.exit3184
  tail call void @lean_free_object(ptr noundef nonnull %.01821) #7
  br label %lean_del_object.exit3186

lean_del_object.exit3186:                         ; preds = %lean_del_object.exit3184, %bb.aft
  br i1 %.not.i2725, label %bb.afu, label %lean_dec.exit2062

bb.afu:                                           ; preds = %lean_del_object.exit3186
  %i.apf = load i32, ptr %i.anc, align 512, !tbaa !14 ; 3 uses
  %i.apg = icmp sgt i32 %i.apf, 1
  br i1 %i.apg, label %bb.afv, label %bb.afw, !prof !15

bb.afv:                                           ; preds = %bb.afu
  %i.aph = add nsw i32 %i.apf, -1
  store i32 %i.aph, ptr %i.anc, align 512, !tbaa !14
  br label %lean_dec.exit2062

bb.afw:                                           ; preds = %bb.afu
  %.not.i2366 = icmp eq i32 %i.apf, 0
  br i1 %.not.i2366, label %lean_dec.exit2062, label %bb.afx

bb.afx:                                           ; preds = %bb.afw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anc) #7
  br label %lean_dec.exit2062

lean_dec.exit2062:                                ; preds = %bb.afx, %bb.afw, %bb.afv, %lean_del_object.exit3186
  %i.api = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.apj = icmp sgt i32 %i.api, 1
  br i1 %i.apj, label %bb.afy, label %bb.afz, !prof !15

bb.afy:                                           ; preds = %lean_dec.exit2062
  %i.apk = add nsw i32 %i.api, -1
  store i32 %i.apk, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2589

bb.afz:                                           ; preds = %lean_dec.exit2062
  %.not.i2588 = icmp eq i32 %i.api, 0
  br i1 %.not.i2588, label %lean_dec_ref.exit2589, label %bb.aga

bb.aga:                                           ; preds = %bb.afz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2589

lean_dec_ref.exit2589:                            ; preds = %bb.afy, %bb.afz, %bb.aga
  br i1 %.not.i2731, label %bb.agb, label %lean_dec.exit2060

bb.agb:                                           ; preds = %lean_dec_ref.exit2589
  %i.apl = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.apm = icmp sgt i32 %i.apl, 1
  br i1 %i.apm, label %bb.agc, label %bb.agd, !prof !15

bb.agc:                                           ; preds = %bb.agb
  %i.apn = add nsw i32 %i.apl, -1
  store i32 %i.apn, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit2060

bb.agd:                                           ; preds = %bb.agb
  %.not.i2368 = icmp eq i32 %i.apl, 0
  br i1 %.not.i2368, label %lean_dec.exit2060, label %bb.age

bb.age:                                           ; preds = %bb.agd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2060

lean_dec.exit2060:                                ; preds = %bb.age, %bb.agd, %bb.agc, %lean_dec_ref.exit2589
  %.not3436 = icmp eq ptr %i.alp, %i.anm
  br i1 %.not3436, label %bb.ahp, label %bb.agf

bb.agf:                                           ; preds = %lean_dec.exit2060
  %i.apo = ptrtoint ptr %i.aln to i64
  %i.app = and i64 %i.apo, 1
  %.not.i2717 = icmp eq i64 %i.app, 0
  br i1 %.not.i2717, label %bb.agg, label %lean_inc.exit2718

bb.agg:                                           ; preds = %bb.agf
  %.val.i.i3187 = load i32, ptr %i.aln, align 4, !tbaa !14 ; 3 uses
  %i.apq = icmp sgt i32 %.val.i.i3187, 0
  br i1 %i.apq, label %bb.agh, label %bb.agi, !prof !15

bb.agh:                                           ; preds = %bb.agg
  %i.apr = add nuw i32 %.val.i.i3187, 1
  store i32 %i.apr, ptr %i.aln, align 4, !tbaa !14
  br label %lean_inc.exit2718

bb.agi:                                           ; preds = %bb.agg
  %.not.i.i3188 = icmp eq i32 %.val.i.i3187, 0
  br i1 %.not.i.i3188, label %lean_inc.exit2718, label %bb.agj

bb.agj:                                           ; preds = %bb.agi
  %i.aps = atomicrmw sub ptr %i.aln, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2718

lean_inc.exit2718:                                ; preds = %bb.agj, %bb.agi, %bb.agh, %bb.agf
  %i.apt = ptrtoint ptr %i.all to i64
  %i.apu = and i64 %i.apt, 1
  %.not.i2715 = icmp eq i64 %i.apu, 0
  br i1 %.not.i2715, label %bb.agk, label %lean_inc.exit2716

bb.agk:                                           ; preds = %lean_inc.exit2718
  %.val.i.i3190 = load i32, ptr %i.all, align 4, !tbaa !14 ; 3 uses
  %i.apv = icmp sgt i32 %.val.i.i3190, 0
  br i1 %i.apv, label %bb.agl, label %bb.agm, !prof !15

bb.agl:                                           ; preds = %bb.agk
  %i.apw = add nuw i32 %.val.i.i3190, 1
  store i32 %i.apw, ptr %i.all, align 4, !tbaa !14
  br label %lean_inc.exit2716

bb.agm:                                           ; preds = %bb.agk
  %.not.i.i3191 = icmp eq i32 %.val.i.i3190, 0
  br i1 %.not.i.i3191, label %lean_inc.exit2716, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  %i.apx = atomicrmw sub ptr %i.all, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2716

lean_inc.exit2716:                                ; preds = %bb.agn, %bb.agm, %bb.agl, %lean_inc.exit2718
  %i.apy = ptrtoint ptr %i.alj to i64
  %i.apz = and i64 %i.apy, 1
  %.not.i2713 = icmp eq i64 %i.apz, 0
  br i1 %.not.i2713, label %bb.ago, label %lean_inc.exit2714

bb.ago:                                           ; preds = %lean_inc.exit2716
  %.val.i.i3193 = load i32, ptr %i.alj, align 4, !tbaa !14 ; 3 uses
  %i.aqa = icmp sgt i32 %.val.i.i3193, 0
  br i1 %i.aqa, label %bb.agp, label %bb.agq, !prof !15

bb.agp:                                           ; preds = %bb.ago
  %i.aqb = add nuw i32 %.val.i.i3193, 1
  store i32 %i.aqb, ptr %i.alj, align 4, !tbaa !14
  br label %lean_inc.exit2714

bb.agq:                                           ; preds = %bb.ago
  %.not.i.i3194 = icmp eq i32 %.val.i.i3193, 0
  br i1 %.not.i.i3194, label %lean_inc.exit2714, label %bb.agr

bb.agr:                                           ; preds = %bb.agq
  %i.aqc = atomicrmw sub ptr %i.alj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2714

lean_inc.exit2714:                                ; preds = %bb.agr, %bb.agq, %bb.agp, %lean_inc.exit2716
  %.val2816 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.aqd = icmp eq i32 %.val2816, 1
  br i1 %i.aqd, label %bb.ags, label %bb.ahj

bb.ags:                                           ; preds = %lean_inc.exit2714
  %i.aqe = load ptr, ptr %i.alo, align 8, !tbaa !10 ; 4 uses
  %i.aqf = ptrtoint ptr %i.aqe to i64
  %i.aqg = and i64 %i.aqf, 1
  %.not.i2057 = icmp eq i64 %i.aqg, 0
  br i1 %.not.i2057, label %bb.agt, label %lean_dec.exit2058

bb.agt:                                           ; preds = %bb.ags
  %i.aqh = load i32, ptr %i.aqe, align 4, !tbaa !14 ; 3 uses
  %i.aqi = icmp sgt i32 %i.aqh, 1
  br i1 %i.aqi, label %bb.agu, label %bb.agv, !prof !15

bb.agu:                                           ; preds = %bb.agt
  %i.aqj = add nsw i32 %i.aqh, -1
  store i32 %i.aqj, ptr %i.aqe, align 4, !tbaa !14
  br label %lean_dec.exit2058

bb.agv:                                           ; preds = %bb.agt
  %.not.i2370 = icmp eq i32 %i.aqh, 0
  br i1 %.not.i2370, label %lean_dec.exit2058, label %bb.agw

bb.agw:                                           ; preds = %bb.agv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqe) #7
  br label %lean_dec.exit2058

lean_dec.exit2058:                                ; preds = %bb.agw, %bb.agv, %bb.agu, %bb.ags
  %i.aqk = load ptr, ptr %i.alm, align 8, !tbaa !10 ; 4 uses
  %i.aql = ptrtoint ptr %i.aqk to i64
  %i.aqm = and i64 %i.aql, 1
  %.not.i2055 = icmp eq i64 %i.aqm, 0
  br i1 %.not.i2055, label %bb.agx, label %lean_dec.exit2056

bb.agx:                                           ; preds = %lean_dec.exit2058
  %i.aqn = load i32, ptr %i.aqk, align 4, !tbaa !14 ; 3 uses
  %i.aqo = icmp sgt i32 %i.aqn, 1
  br i1 %i.aqo, label %bb.agy, label %bb.agz, !prof !15

bb.agy:                                           ; preds = %bb.agx
  %i.aqp = add nsw i32 %i.aqn, -1
  store i32 %i.aqp, ptr %i.aqk, align 4, !tbaa !14
  br label %lean_dec.exit2056

bb.agz:                                           ; preds = %bb.agx
  %.not.i2372 = icmp eq i32 %i.aqn, 0
  br i1 %.not.i2372, label %lean_dec.exit2056, label %bb.aha

bb.aha:                                           ; preds = %bb.agz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqk) #7
  br label %lean_dec.exit2056

lean_dec.exit2056:                                ; preds = %bb.aha, %bb.agz, %bb.agy, %lean_dec.exit2058
  %i.aqq = load ptr, ptr %i.alk, align 8, !tbaa !10 ; 4 uses
  %i.aqr = ptrtoint ptr %i.aqq to i64
  %i.aqs = and i64 %i.aqr, 1
  %.not.i2053 = icmp eq i64 %i.aqs, 0
  br i1 %.not.i2053, label %bb.ahb, label %lean_dec.exit2054

bb.ahb:                                           ; preds = %lean_dec.exit2056
  %i.aqt = load i32, ptr %i.aqq, align 4, !tbaa !14 ; 3 uses
  %i.aqu = icmp sgt i32 %i.aqt, 1
  br i1 %i.aqu, label %bb.ahc, label %bb.ahd, !prof !15

bb.ahc:                                           ; preds = %bb.ahb
  %i.aqv = add nsw i32 %i.aqt, -1
  store i32 %i.aqv, ptr %i.aqq, align 4, !tbaa !14
  br label %lean_dec.exit2054

bb.ahd:                                           ; preds = %bb.ahb
  %.not.i2374 = icmp eq i32 %i.aqt, 0
  br i1 %.not.i2374, label %lean_dec.exit2054, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqq) #7
  br label %lean_dec.exit2054

lean_dec.exit2054:                                ; preds = %bb.ahe, %bb.ahd, %bb.ahc, %lean_dec.exit2056
  %i.aqw = load ptr, ptr %i.ali, align 8, !tbaa !10 ; 4 uses
  %i.aqx = ptrtoint ptr %i.aqw to i64
  %i.aqy = and i64 %i.aqx, 1
  %.not.i2051 = icmp eq i64 %i.aqy, 0
  br i1 %.not.i2051, label %bb.ahf, label %bb.aho

bb.ahf:                                           ; preds = %lean_dec.exit2054
  %i.aqz = load i32, ptr %i.aqw, align 4, !tbaa !14 ; 3 uses
  %i.ara = icmp sgt i32 %i.aqz, 1
  br i1 %i.ara, label %bb.ahg, label %bb.ahh, !prof !15

bb.ahg:                                           ; preds = %bb.ahf
  %i.arb = add nsw i32 %i.aqz, -1
  store i32 %i.arb, ptr %i.aqw, align 4, !tbaa !14
  br label %bb.aho

bb.ahh:                                           ; preds = %bb.ahf
  %.not.i2376 = icmp eq i32 %i.aqz, 0
  br i1 %.not.i2376, label %bb.aho, label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqw) #7
  br label %bb.aho

bb.ahj:                                           ; preds = %lean_inc.exit2714
  br i1 %.not.i2846, label %bb.ahk, label %lean_dec.exit2052

bb.ahk:                                           ; preds = %bb.ahj
  %i.arc = icmp sgt i32 %.val2816, 1
  br i1 %i.arc, label %bb.ahl, label %bb.ahm, !prof !15

bb.ahl:                                           ; preds = %bb.ahk
  %i.ard = add nsw i32 %.val2816, -1
  store i32 %i.ard, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit2052

bb.ahm:                                           ; preds = %bb.ahk
  %.not.i2378 = icmp eq i32 %.val2816, 0
  br i1 %.not.i2378, label %lean_dec.exit2052, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit2052

bb.aho:                                           ; preds = %lean_dec.exit2054, %bb.ahg, %bb.ahh, %bb.ahi
  store ptr %i.anm, ptr %i.alo, align 8, !tbaa !10
  br label %lean_dec.exit2048

lean_dec.exit2052:                                ; preds = %bb.ahn, %bb.ahm, %bb.ahl, %bb.ahj
  %i.are = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  store ptr %i.alj, ptr %i.arf, align 8, !tbaa !10
  %i.arg = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  store ptr %i.all, ptr %i.arg, align 8, !tbaa !10
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 24
  store ptr %i.aln, ptr %i.arh, align 8, !tbaa !10
  %i.ari = getelementptr inbounds nuw i8, ptr %i.are, i64 32
  store ptr %i.anm, ptr %i.ari, align 8, !tbaa !10
  br label %lean_dec.exit2048

bb.ahp:                                           ; preds = %lean_dec.exit2060
  %i.arj = load i32, ptr %i.anm, align 4, !tbaa !14 ; 3 uses
  %i.ark = icmp sgt i32 %i.arj, 1
  br i1 %i.ark, label %bb.ahq, label %bb.ahr, !prof !15

bb.ahq:                                           ; preds = %bb.ahp
  %i.arl = add nsw i32 %i.arj, -1
  store i32 %i.arl, ptr %i.anm, align 4, !tbaa !14
  br label %lean_dec.exit2048

bb.ahr:                                           ; preds = %bb.ahp
  %.not.i2380 = icmp eq i32 %i.arj, 0
  br i1 %.not.i2380, label %lean_dec.exit2048, label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anm) #7
  br label %lean_dec.exit2048

bb.aht:                                           ; preds = %lean_dec.exit2064
  %i.arm = ptrtoint ptr %.01818 to i64
  %i.arn = and i64 %i.arm, 1
  %.not.i3196 = icmp eq i64 %i.arn, 0
  br i1 %.not.i3196, label %bb.ahu, label %lean_del_object.exit3197

bb.ahu:                                           ; preds = %bb.aht
  tail call void @lean_free_object(ptr noundef nonnull %.01818) #7
  br label %lean_del_object.exit3197

lean_del_object.exit3197:                         ; preds = %bb.aht, %bb.ahu
  %i.aro = ptrtoint ptr %.01821 to i64
  %i.arp = and i64 %i.aro, 1
  %.not.i3198 = icmp eq i64 %i.arp, 0
  br i1 %.not.i3198, label %bb.ahv, label %lean_del_object.exit3199

bb.ahv:                                           ; preds = %lean_del_object.exit3197
  tail call void @lean_free_object(ptr noundef nonnull %.01821) #7
  br label %lean_del_object.exit3199

lean_del_object.exit3199:                         ; preds = %lean_del_object.exit3197, %bb.ahv
  br i1 %.not.i2725, label %bb.ahw, label %lean_dec.exit2046

bb.ahw:                                           ; preds = %lean_del_object.exit3199
  %i.arq = load i32, ptr %i.anc, align 512, !tbaa !14 ; 3 uses
  %i.arr = icmp sgt i32 %i.arq, 1
  br i1 %i.arr, label %bb.ahx, label %bb.ahy, !prof !15

bb.ahx:                                           ; preds = %bb.ahw
  %i.ars = add nsw i32 %i.arq, -1
  store i32 %i.ars, ptr %i.anc, align 512, !tbaa !14
  br label %lean_dec.exit2046

bb.ahy:                                           ; preds = %bb.ahw
  %.not.i2382 = icmp eq i32 %i.arq, 0
  br i1 %.not.i2382, label %lean_dec.exit2046, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anc) #7
  br label %lean_dec.exit2046

lean_dec.exit2046:                                ; preds = %bb.ahz, %bb.ahy, %bb.ahx, %lean_del_object.exit3199
  %i.art = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_S(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.anm, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 14 uses
  %i.aru = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.arv = icmp sgt i32 %i.aru, 1
  br i1 %i.arv, label %bb.aia, label %bb.aib, !prof !15

bb.aia:                                           ; preds = %lean_dec.exit2046
  %i.arw = add nsw i32 %i.aru, -1
  store i32 %i.arw, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2587

bb.aib:                                           ; preds = %lean_dec.exit2046
  %.not.i2586 = icmp eq i32 %i.aru, 0
  br i1 %.not.i2586, label %lean_dec_ref.exit2587, label %bb.aic

bb.aic:                                           ; preds = %bb.aib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2587

lean_dec_ref.exit2587:                            ; preds = %bb.aia, %bb.aib, %bb.aic
  %i.arx = ptrtoint ptr %i.art to i64             ; 2 uses
  %i.ary = and i64 %i.arx, 1
  %.not.i3200 = icmp eq i64 %i.ary, 0             ; 3 uses
  br i1 %.not.i3200, label %bb.aie, label %bb.aid

bb.aid:                                           ; preds = %lean_dec_ref.exit2587
  %i.arz = lshr i64 %i.arx, 1
  %i.asa = trunc i64 %i.arz to i32
  br label %lean_obj_tag.exit3203

bb.aie:                                           ; preds = %lean_dec_ref.exit2587
  %i.asb = getelementptr i8, ptr %i.art, i64 4
  %.val.i3202 = load i32, ptr %i.asb, align 4
  %i.asc = lshr i32 %.val.i3202, 24
  br label %lean_obj_tag.exit3203

lean_obj_tag.exit3203:                            ; preds = %bb.aid, %bb.aie
  %.0.i3201 = phi i32 [ %i.asa, %bb.aid ], [ %i.asc, %bb.aie ]
  %i.asd = icmp eq i32 %.0.i3201, 0
  br i1 %i.asd, label %bb.aif, label %bb.akf

bb.aif:                                           ; preds = %lean_obj_tag.exit3203
  %i.ase = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !10 ; 10 uses
  %.val2815 = load i32, ptr %i.art, align 8, !tbaa !14
  %i.asg = icmp eq i32 %.val2815, 1               ; 2 uses
  br i1 %i.asg, label %lean_dec.exit2044, label %bb.aig

bb.aig:                                           ; preds = %bb.aif
  %i.ash = ptrtoint ptr %i.asf to i64
  %i.asi = and i64 %i.ash, 1
  %.not.i2711 = icmp eq i64 %i.asi, 0
  br i1 %.not.i2711, label %bb.aih, label %lean_inc.exit2712

bb.aih:                                           ; preds = %bb.aig
  %.val.i.i3204 = load i32, ptr %i.asf, align 4, !tbaa !14 ; 3 uses
  %i.asj = icmp sgt i32 %.val.i.i3204, 0
  br i1 %i.asj, label %bb.aii, label %bb.aij, !prof !15

bb.aii:                                           ; preds = %bb.aih
  %i.ask = add nuw i32 %.val.i.i3204, 1
  store i32 %i.ask, ptr %i.asf, align 4, !tbaa !14
  br label %lean_inc.exit2712

bb.aij:                                           ; preds = %bb.aih
  %.not.i.i3205 = icmp eq i32 %.val.i.i3204, 0
  br i1 %.not.i.i3205, label %lean_inc.exit2712, label %bb.aik

bb.aik:                                           ; preds = %bb.aij
  %i.asl = atomicrmw sub ptr %i.asf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2712

lean_inc.exit2712:                                ; preds = %bb.aik, %bb.aij, %bb.aii, %bb.aig
  br i1 %.not.i3200, label %bb.ail, label %lean_dec.exit2044

bb.ail:                                           ; preds = %lean_inc.exit2712
  %i.asm = load i32, ptr %i.art, align 8, !tbaa !14 ; 3 uses
  %i.asn = icmp sgt i32 %i.asm, 1
  br i1 %i.asn, label %bb.aim, label %bb.ain, !prof !15

bb.aim:                                           ; preds = %bb.ail
  %i.aso = add nsw i32 %i.asm, -1
  store i32 %i.aso, ptr %i.art, align 8, !tbaa !14
  br label %lean_dec.exit2044

bb.ain:                                           ; preds = %bb.ail
  %.not.i2384 = icmp eq i32 %i.asm, 0
  br i1 %.not.i2384, label %lean_dec.exit2044, label %bb.aio

bb.aio:                                           ; preds = %bb.ain
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.art) #7
  br label %lean_dec.exit2044

lean_dec.exit2044:                                ; preds = %lean_inc.exit2712, %bb.aim, %bb.ain, %bb.aio, %bb.aif
  %.01806 = phi ptr [ %i.art, %bb.aif ], [ inttoptr (i64 1 to ptr), %bb.aio ], [ inttoptr (i64 1 to ptr), %bb.ain ], [ inttoptr (i64 1 to ptr), %bb.aim ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2712 ] ; 2 uses
  %.not3435 = icmp eq ptr %i.alp, %i.asf
  br i1 %.not3435, label %bb.ajz, label %bb.aip

bb.aip:                                           ; preds = %lean_dec.exit2044
  %i.asp = ptrtoint ptr %i.aln to i64
  %i.asq = and i64 %i.asp, 1
  %.not.i2709 = icmp eq i64 %i.asq, 0
  br i1 %.not.i2709, label %bb.aiq, label %lean_inc.exit2710

bb.aiq:                                           ; preds = %bb.aip
  %.val.i.i3207 = load i32, ptr %i.aln, align 4, !tbaa !14 ; 3 uses
  %i.asr = icmp sgt i32 %.val.i.i3207, 0
  br i1 %i.asr, label %bb.air, label %bb.ais, !prof !15

bb.air:                                           ; preds = %bb.aiq
  %i.ass = add nuw i32 %.val.i.i3207, 1
  store i32 %i.ass, ptr %i.aln, align 4, !tbaa !14
  br label %lean_inc.exit2710

bb.ais:                                           ; preds = %bb.aiq
  %.not.i.i3208 = icmp eq i32 %.val.i.i3207, 0
  br i1 %.not.i.i3208, label %lean_inc.exit2710, label %bb.ait

bb.ait:                                           ; preds = %bb.ais
  %i.ast = atomicrmw sub ptr %i.aln, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2710

lean_inc.exit2710:                                ; preds = %bb.ait, %bb.ais, %bb.air, %bb.aip
  %i.asu = ptrtoint ptr %i.all to i64
  %i.asv = and i64 %i.asu, 1
  %.not.i2707 = icmp eq i64 %i.asv, 0
  br i1 %.not.i2707, label %bb.aiu, label %lean_inc.exit2708

bb.aiu:                                           ; preds = %lean_inc.exit2710
  %.val.i.i3210 = load i32, ptr %i.all, align 4, !tbaa !14 ; 3 uses
  %i.asw = icmp sgt i32 %.val.i.i3210, 0
  br i1 %i.asw, label %bb.aiv, label %bb.aiw, !prof !15

bb.aiv:                                           ; preds = %bb.aiu
  %i.asx = add nuw i32 %.val.i.i3210, 1
  store i32 %i.asx, ptr %i.all, align 4, !tbaa !14
  br label %lean_inc.exit2708

bb.aiw:                                           ; preds = %bb.aiu
  %.not.i.i3211 = icmp eq i32 %.val.i.i3210, 0
  br i1 %.not.i.i3211, label %lean_inc.exit2708, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.asy = atomicrmw sub ptr %i.all, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2708

lean_inc.exit2708:                                ; preds = %bb.aix, %bb.aiw, %bb.aiv, %lean_inc.exit2710
  %i.asz = ptrtoint ptr %i.alj to i64
  %i.ata = and i64 %i.asz, 1
  %.not.i2705 = icmp eq i64 %i.ata, 0
  br i1 %.not.i2705, label %bb.aiy, label %lean_inc.exit2706

bb.aiy:                                           ; preds = %lean_inc.exit2708
  %.val.i.i3213 = load i32, ptr %i.alj, align 4, !tbaa !14 ; 3 uses
  %i.atb = icmp sgt i32 %.val.i.i3213, 0
  br i1 %i.atb, label %bb.aiz, label %bb.aja, !prof !15

bb.aiz:                                           ; preds = %bb.aiy
  %i.atc = add nuw i32 %.val.i.i3213, 1
  store i32 %i.atc, ptr %i.alj, align 4, !tbaa !14
  br label %lean_inc.exit2706

bb.aja:                                           ; preds = %bb.aiy
  %.not.i.i3214 = icmp eq i32 %.val.i.i3213, 0
  br i1 %.not.i.i3214, label %lean_inc.exit2706, label %bb.ajb

bb.ajb:                                           ; preds = %bb.aja
  %i.atd = atomicrmw sub ptr %i.alj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2706

lean_inc.exit2706:                                ; preds = %bb.ajb, %bb.aja, %bb.aiz, %lean_inc.exit2708
  %.val2814 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.ate = icmp eq i32 %.val2814, 1
  br i1 %i.ate, label %bb.ajc, label %bb.ajt

bb.ajc:                                           ; preds = %lean_inc.exit2706
  %i.atf = load ptr, ptr %i.alo, align 8, !tbaa !10 ; 4 uses
  %i.atg = ptrtoint ptr %i.atf to i64
  %i.ath = and i64 %i.atg, 1
  %.not.i2041 = icmp eq i64 %i.ath, 0
  br i1 %.not.i2041, label %bb.ajd, label %lean_dec.exit2042

bb.ajd:                                           ; preds = %bb.ajc
  %i.ati = load i32, ptr %i.atf, align 4, !tbaa !14 ; 3 uses
  %i.atj = icmp sgt i32 %i.ati, 1
  br i1 %i.atj, label %bb.aje, label %bb.ajf, !prof !15

bb.aje:                                           ; preds = %bb.ajd
  %i.atk = add nsw i32 %i.ati, -1
  store i32 %i.atk, ptr %i.atf, align 4, !tbaa !14
end_hunk_4
begin_hunk_5_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a

bb.alr:                                           ; preds = %bb.alq
  %i.awn = add nsw i32 %i.awl, -1
  store i32 %i.awn, ptr %i.awi, align 4, !tbaa !14
  br label %lean_dec.exit2024

bb.als:                                           ; preds = %bb.alq
  %.not.i2404 = icmp eq i32 %i.awl, 0
  br i1 %.not.i2404, label %lean_dec.exit2024, label %bb.alt

bb.alt:                                           ; preds = %bb.als
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.awi) #7
  br label %lean_dec.exit2024

lean_dec.exit2024:                                ; preds = %bb.alt, %bb.als, %bb.alr, %lean_dec.exit2026
  %i.awo = load ptr, ptr %i.alk, align 8, !tbaa !10 ; 4 uses
  %i.awp = ptrtoint ptr %i.awo to i64
  %i.awq = and i64 %i.awp, 1
  %.not.i2021 = icmp eq i64 %i.awq, 0
  br i1 %.not.i2021, label %bb.alu, label %lean_dec.exit2022

bb.alu:                                           ; preds = %lean_dec.exit2024
  %i.awr = load i32, ptr %i.awo, align 4, !tbaa !14 ; 3 uses
  %i.aws = icmp sgt i32 %i.awr, 1
  br i1 %i.aws, label %bb.alv, label %bb.alw, !prof !15

bb.alv:                                           ; preds = %bb.alu
  %i.awt = add nsw i32 %i.awr, -1
  store i32 %i.awt, ptr %i.awo, align 4, !tbaa !14
  br label %lean_dec.exit2022

bb.alw:                                           ; preds = %bb.alu
  %.not.i2406 = icmp eq i32 %i.awr, 0
  br i1 %.not.i2406, label %lean_dec.exit2022, label %bb.alx

bb.alx:                                           ; preds = %bb.alw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.awo) #7
  br label %lean_dec.exit2022

lean_dec.exit2022:                                ; preds = %bb.alx, %bb.alw, %bb.alv, %lean_dec.exit2024
  %i.awu = load ptr, ptr %i.ali, align 8, !tbaa !10 ; 4 uses
  %i.awv = ptrtoint ptr %i.awu to i64
  %i.aww = and i64 %i.awv, 1
  %.not.i2019 = icmp eq i64 %i.aww, 0
  br i1 %.not.i2019, label %bb.aly, label %bb.amh

bb.aly:                                           ; preds = %lean_dec.exit2022
  %i.awx = load i32, ptr %i.awu, align 4, !tbaa !14 ; 3 uses
  %i.awy = icmp sgt i32 %i.awx, 1
  br i1 %i.awy, label %bb.alz, label %bb.ama, !prof !15

bb.alz:                                           ; preds = %bb.aly
  %i.awz = add nsw i32 %i.awx, -1
  store i32 %i.awz, ptr %i.awu, align 4, !tbaa !14
  br label %bb.amh

bb.ama:                                           ; preds = %bb.aly
  %.not.i2408 = icmp eq i32 %i.awx, 0
  br i1 %.not.i2408, label %bb.amh, label %bb.amb

bb.amb:                                           ; preds = %bb.ama
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.awu) #7
  br label %bb.amh

bb.amc:                                           ; preds = %lean_inc.exit2698
  br i1 %.not.i2846, label %bb.amd, label %lean_dec.exit2020

bb.amd:                                           ; preds = %bb.amc
  %i.axa = icmp sgt i32 %.val2812, 1
  br i1 %i.axa, label %bb.ame, label %bb.amf, !prof !15

bb.ame:                                           ; preds = %bb.amd
  %i.axb = add nsw i32 %.val2812, -1
  store i32 %i.axb, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit2020

bb.amf:                                           ; preds = %bb.amd
  %.not.i2410 = icmp eq i32 %.val2812, 0
  br i1 %.not.i2410, label %lean_dec.exit2020, label %bb.amg

bb.amg:                                           ; preds = %bb.amf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit2020

bb.amh:                                           ; preds = %lean_dec.exit2022, %bb.alz, %bb.ama, %bb.amb
  store ptr %i.anm, ptr %i.alo, align 8, !tbaa !10
  br label %lean_dec.exit2016

lean_dec.exit2020:                                ; preds = %bb.amg, %bb.amf, %bb.ame, %bb.amc
  %i.axc = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  store ptr %i.alj, ptr %i.axd, align 8, !tbaa !10
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axc, i64 16
  store ptr %i.all, ptr %i.axe, align 8, !tbaa !10
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axc, i64 24
  store ptr %i.aln, ptr %i.axf, align 8, !tbaa !10
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axc, i64 32
  store ptr %i.anm, ptr %i.axg, align 8, !tbaa !10
  br label %lean_dec.exit2016

bb.ami:                                           ; preds = %lean_dec.exit2028
  %i.axh = load i32, ptr %i.anm, align 4, !tbaa !14 ; 3 uses
  %i.axi = icmp sgt i32 %i.axh, 1
  br i1 %i.axi, label %bb.amj, label %bb.amk, !prof !15

bb.amj:                                           ; preds = %bb.ami
  %i.axj = add nsw i32 %i.axh, -1
  store i32 %i.axj, ptr %i.anm, align 4, !tbaa !14
  br label %lean_dec.exit2016

bb.amk:                                           ; preds = %bb.ami
  %.not.i2412 = icmp eq i32 %i.axh, 0
  br i1 %.not.i2412, label %lean_dec.exit2016, label %bb.aml

bb.aml:                                           ; preds = %bb.amk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anm) #7
  br label %lean_dec.exit2016

lean_dec.exit2016:                                ; preds = %bb.amj, %bb.amk, %bb.aml, %lean_dec.exit2020, %bb.amh
  %.21816 = phi ptr [ %i.axc, %lean_dec.exit2020 ], [ %2, %bb.amh ], [ %2, %bb.aml ], [ %2, %bb.amk ], [ %2, %bb.amj ] ; 2 uses
  br i1 %i.ann, label %bb.amm, label %bb.amn

bb.amm:                                           ; preds = %lean_dec.exit2016
  %i.axk = getelementptr inbounds nuw i8, ptr %.01821, i64 8
  store ptr %.21816, ptr %i.axk, align 8, !tbaa !10
  br label %bb.amo

bb.amn:                                           ; preds = %lean_dec.exit2016
  %i.axl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 8
  store ptr %.21816, ptr %i.axm, align 8, !tbaa !10
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  store ptr %i.anc, ptr %i.axn, align 8, !tbaa !10
  br label %bb.amo

bb.amo:                                           ; preds = %bb.amn, %bb.amm
  %.01783 = phi ptr [ %.01821, %bb.amm ], [ %i.axl, %bb.amn ] ; 2 uses
  br i1 %i.aop, label %bb.amp, label %bb.amq

bb.amp:                                           ; preds = %bb.amo
  %i.axo = getelementptr inbounds nuw i8, ptr %.01818, i64 8
  store ptr %.01783, ptr %i.axo, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.amq:                                           ; preds = %bb.amo
  %i.axp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 8
  store ptr %.01783, ptr %i.axq, align 8, !tbaa !10
  br label %lean_dec.exit2180

lean_dec.exit2048:                                ; preds = %bb.ahq, %bb.ahr, %bb.ahs, %lean_dec.exit2052, %bb.aho
  %.21813 = phi ptr [ %i.are, %lean_dec.exit2052 ], [ %2, %bb.aho ], [ %2, %bb.ahs ], [ %2, %bb.ahr ], [ %2, %bb.ahq ]
  %i.axr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 8
  store ptr %.21813, ptr %i.axs, align 8, !tbaa !10
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.axt, align 8, !tbaa !10
  %i.axu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  store ptr %i.axr, ptr %i.axv, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.amr:                                           ; preds = %lean_obj_tag.exit3179
  %i.axw = ptrtoint ptr %.01821 to i64
  %i.axx = and i64 %i.axw, 1
  %.not.i3228 = icmp eq i64 %i.axx, 0
  br i1 %.not.i3228, label %bb.ams, label %lean_del_object.exit3229

bb.ams:                                           ; preds = %bb.amr
  tail call void @lean_free_object(ptr noundef nonnull %.01821) #7
  br label %lean_del_object.exit3229

lean_del_object.exit3229:                         ; preds = %bb.amr, %bb.ams
  %i.axy = ptrtoint ptr %i.anm to i64
  %i.axz = and i64 %i.axy, 1
  %.not.i2013 = icmp eq i64 %i.axz, 0
  br i1 %.not.i2013, label %bb.amt, label %lean_dec.exit2014

bb.amt:                                           ; preds = %lean_del_object.exit3229
  %i.aya = load i32, ptr %i.anm, align 4, !tbaa !14 ; 3 uses
  %i.ayb = icmp sgt i32 %i.aya, 1
  br i1 %i.ayb, label %bb.amu, label %bb.amv, !prof !15

bb.amu:                                           ; preds = %bb.amt
  %i.ayc = add nsw i32 %i.aya, -1
  store i32 %i.ayc, ptr %i.anm, align 4, !tbaa !14
  br label %lean_dec.exit2014

bb.amv:                                           ; preds = %bb.amt
  %.not.i2414 = icmp eq i32 %i.aya, 0
  br i1 %.not.i2414, label %lean_dec.exit2014, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anm) #7
  br label %lean_dec.exit2014

lean_dec.exit2014:                                ; preds = %bb.amw, %bb.amv, %bb.amu, %lean_del_object.exit3229
  br i1 %.not.i2725, label %bb.amx, label %lean_dec.exit2012

bb.amx:                                           ; preds = %lean_dec.exit2014
  %i.ayd = load i32, ptr %i.anc, align 512, !tbaa !14 ; 3 uses
  %i.aye = icmp sgt i32 %i.ayd, 1
  br i1 %i.aye, label %bb.amy, label %bb.amz, !prof !15

bb.amy:                                           ; preds = %bb.amx
  %i.ayf = add nsw i32 %i.ayd, -1
  store i32 %i.ayf, ptr %i.anc, align 512, !tbaa !14
  br label %lean_dec.exit2012

bb.amz:                                           ; preds = %bb.amx
  %.not.i2416 = icmp eq i32 %i.ayd, 0
  br i1 %.not.i2416, label %lean_dec.exit2012, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anc) #7
  br label %lean_dec.exit2012

lean_dec.exit2012:                                ; preds = %bb.ana, %bb.amz, %bb.amy, %lean_dec.exit2014
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %2, i32 noundef 4)
  %i.ayg = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.ayh = icmp sgt i32 %i.ayg, 1
  br i1 %i.ayh, label %bb.anb, label %bb.anc, !prof !15

bb.anb:                                           ; preds = %lean_dec.exit2012
  %i.ayi = add nsw i32 %i.ayg, -1
  store i32 %i.ayi, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2583

bb.anc:                                           ; preds = %lean_dec.exit2012
  %.not.i2582 = icmp eq i32 %i.ayg, 0
  br i1 %.not.i2582, label %lean_dec_ref.exit2583, label %bb.and

bb.and:                                           ; preds = %bb.anc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2583

lean_dec_ref.exit2583:                            ; preds = %bb.anb, %bb.anc, %bb.and
  br i1 %.not.i2731, label %bb.ane, label %lean_dec.exit2010

bb.ane:                                           ; preds = %lean_dec_ref.exit2583
  %i.ayj = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.ayk = icmp sgt i32 %i.ayj, 1
  br i1 %i.ayk, label %bb.anf, label %bb.ang, !prof !15

bb.anf:                                           ; preds = %bb.ane
  %i.ayl = add nsw i32 %i.ayj, -1
  store i32 %i.ayl, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit2010

bb.ang:                                           ; preds = %bb.ane
  %.not.i2418 = icmp eq i32 %i.ayj, 0
  br i1 %.not.i2418, label %lean_dec.exit2010, label %bb.anh

bb.anh:                                           ; preds = %bb.ang
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2010

lean_dec.exit2010:                                ; preds = %bb.anh, %bb.ang, %bb.anf, %lean_dec_ref.exit2583
  %i.aym = getelementptr inbounds nuw i8, ptr %i.aof, i64 8
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !10 ; 5 uses
  %.val2811 = load i32, ptr %i.aof, align 8, !tbaa !14
  %i.ayo = icmp eq i32 %.val2811, 1
  br i1 %i.ayo, label %lean_dec.exit2180, label %bb.ani

bb.ani:                                           ; preds = %lean_dec.exit2010
  %i.ayp = ptrtoint ptr %i.ayn to i64
  %i.ayq = and i64 %i.ayp, 1
  %.not.i2695 = icmp eq i64 %i.ayq, 0
  br i1 %.not.i2695, label %bb.anj, label %lean_inc.exit2696

bb.anj:                                           ; preds = %bb.ani
  %.val.i.i3230 = load i32, ptr %i.ayn, align 4, !tbaa !14 ; 3 uses
  %i.ayr = icmp sgt i32 %.val.i.i3230, 0
  br i1 %i.ayr, label %bb.ank, label %bb.anl, !prof !15

bb.ank:                                           ; preds = %bb.anj
  %i.ays = add nuw i32 %.val.i.i3230, 1
  store i32 %i.ays, ptr %i.ayn, align 4, !tbaa !14
  br label %lean_inc.exit2696

bb.anl:                                           ; preds = %bb.anj
  %.not.i.i3231 = icmp eq i32 %.val.i.i3230, 0
  br i1 %.not.i.i3231, label %lean_inc.exit2696, label %bb.anm

bb.anm:                                           ; preds = %bb.anl
  %i.ayt = atomicrmw sub ptr %i.ayn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2696

lean_inc.exit2696:                                ; preds = %bb.anm, %bb.anl, %bb.ank, %bb.ani
  br i1 %.not.i3176, label %bb.ann, label %bb.anr

bb.ann:                                           ; preds = %lean_inc.exit2696
  %i.ayu = load i32, ptr %i.aof, align 8, !tbaa !14 ; 3 uses
  %i.ayv = icmp sgt i32 %i.ayu, 1
  br i1 %i.ayv, label %bb.ano, label %bb.anp, !prof !15

bb.ano:                                           ; preds = %bb.ann
  %i.ayw = add nsw i32 %i.ayu, -1
  store i32 %i.ayw, ptr %i.aof, align 8, !tbaa !14
  br label %bb.anr

bb.anp:                                           ; preds = %bb.ann
  %.not.i2420 = icmp eq i32 %i.ayu, 0
  br i1 %.not.i2420, label %bb.anr, label %bb.anq

bb.anq:                                           ; preds = %bb.anp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aof) #7
  br label %bb.anr

bb.anr:                                           ; preds = %lean_inc.exit2696, %bb.ano, %bb.anp, %bb.anq
  %i.ayx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 8
  store ptr %i.ayn, ptr %i.ayy, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.ans:                                           ; preds = %lean_dec.exit2072
  %i.ayz = load i32, ptr %i.alq, align 4, !tbaa !14 ; 3 uses
  %i.aza = icmp sgt i32 %i.ayz, 1
  br i1 %i.aza, label %bb.ant, label %bb.anu, !prof !15

bb.ant:                                           ; preds = %bb.ans
  %i.azb = add nsw i32 %i.ayz, -1
  store i32 %i.azb, ptr %i.alq, align 4, !tbaa !14
  br label %lean_dec_ref.exit2581

bb.anu:                                           ; preds = %bb.ans
  %.not.i2580 = icmp eq i32 %i.ayz, 0
  br i1 %.not.i2580, label %lean_dec_ref.exit2581, label %bb.anv

bb.anv:                                           ; preds = %bb.anu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.alq) #7
  br label %lean_dec_ref.exit2581

lean_dec_ref.exit2581:                            ; preds = %bb.ant, %bb.anu, %bb.anv
  %i.azc = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.azd = icmp sgt i32 %i.azc, 1
  br i1 %i.azd, label %bb.anw, label %bb.anx, !prof !15

bb.anw:                                           ; preds = %lean_dec_ref.exit2581
  %i.aze = add nsw i32 %i.azc, -1
  store i32 %i.aze, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2579

bb.anx:                                           ; preds = %lean_dec_ref.exit2581
  %.not.i2578 = icmp eq i32 %i.azc, 0
  br i1 %.not.i2578, label %lean_dec_ref.exit2579, label %bb.any

bb.any:                                           ; preds = %bb.anx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2579

lean_dec_ref.exit2579:                            ; preds = %bb.anw, %bb.anx, %bb.any
  br i1 %.not.i2731, label %bb.anz, label %lean_dec.exit2006

bb.anz:                                           ; preds = %lean_dec_ref.exit2579
  %i.azf = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.azg = icmp sgt i32 %i.azf, 1
  br i1 %i.azg, label %bb.aoa, label %bb.aob, !prof !15

bb.aoa:                                           ; preds = %bb.anz
  %i.azh = add nsw i32 %i.azf, -1
  store i32 %i.azh, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit2006

bb.aob:                                           ; preds = %bb.anz
  %.not.i2422 = icmp eq i32 %i.azf, 0
  br i1 %.not.i2422, label %lean_dec.exit2006, label %bb.aoc

bb.aoc:                                           ; preds = %bb.aob
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit2006

lean_dec.exit2006:                                ; preds = %bb.aoc, %bb.aob, %bb.aoa, %lean_dec_ref.exit2579
  %i.azi = load ptr, ptr %i.ana, align 8, !tbaa !10 ; 10 uses
  %i.azj = ptrtoint ptr %i.azi to i64
  %i.azk = and i64 %i.azj, 1
  %.not.i2693 = icmp eq i64 %i.azk, 0             ; 2 uses
  br i1 %.not.i2693, label %bb.aod, label %lean_inc.exit2694

bb.aod:                                           ; preds = %lean_dec.exit2006
  %.val.i.i3233 = load i32, ptr %i.azi, align 4, !tbaa !14 ; 3 uses
  %i.azl = icmp sgt i32 %.val.i.i3233, 0
  br i1 %i.azl, label %bb.aoe, label %bb.aof, !prof !15

bb.aoe:                                           ; preds = %bb.aod
  %i.azm = add nuw i32 %.val.i.i3233, 1
  store i32 %i.azm, ptr %i.azi, align 4, !tbaa !14
  br label %lean_inc.exit2694

bb.aof:                                           ; preds = %bb.aod
  %.not.i.i3234 = icmp eq i32 %.val.i.i3233, 0
  br i1 %.not.i.i3234, label %lean_inc.exit2694, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  %i.azn = atomicrmw sub ptr %i.azi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2694

lean_inc.exit2694:                                ; preds = %lean_dec.exit2006, %bb.aoe, %bb.aof, %bb.aog
  %i.azo = load i32, ptr %i.amq, align 8, !tbaa !14 ; 3 uses
  %i.azp = icmp sgt i32 %i.azo, 1
  br i1 %i.azp, label %bb.aoh, label %bb.aoi, !prof !15

bb.aoh:                                           ; preds = %lean_inc.exit2694
  %i.azq = add nsw i32 %i.azo, -1
  store i32 %i.azq, ptr %i.amq, align 8, !tbaa !14
  br label %lean_dec.exit2004

end_hunk_5
begin_hunk_6_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a
  unreachable

lean_alloc_ctor.exit3256:                         ; preds = %lean_alloc_ctor.exit3255
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdw, i64 4
  store i32 1, ptr %i.bdw, align 4, !tbaa !14
  store i32 65552, ptr %i.bdy, align 4
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8
  store ptr %i.bdr, ptr %i.bdz, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.art:                                           ; preds = %lean_obj_tag.exit
  %i.bea = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !10 ; 20 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !10 ; 20 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !10 ; 20 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !10 ; 20 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !10 ; 16 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !10 ; 8 uses
  %i.bem = tail call ptr @l_Lean_Compiler_LCNF_Code_toCodeDecl_x21(i8 noundef zeroext 1, ptr noundef %2) #7 ; 11 uses
  %i.ben = ptrtoint ptr %0 to i64
  %i.beo = and i64 %i.ben, 1
  %.not.i2685 = icmp eq i64 %i.beo, 0             ; 9 uses
  br i1 %.not.i2685, label %bb.aru, label %lean_inc.exit2686

bb.aru:                                           ; preds = %bb.art
  %.val.i.i3257 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.bep = icmp sgt i32 %.val.i.i3257, 0
  br i1 %i.bep, label %bb.arv, label %bb.arw, !prof !15

bb.arv:                                           ; preds = %bb.aru
  %i.beq = add nuw i32 %.val.i.i3257, 1
  store i32 %i.beq, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2686

bb.arw:                                           ; preds = %bb.aru
  %.not.i.i3258 = icmp eq i32 %.val.i.i3257, 0
  br i1 %.not.i.i3258, label %lean_inc.exit2686, label %bb.arx

bb.arx:                                           ; preds = %bb.arw
  %i.ber = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2686

lean_inc.exit2686:                                ; preds = %bb.arx, %bb.arw, %bb.arv, %bb.art
  %i.bes = tail call zeroext i8 @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_isCtorUsing(ptr noundef %i.bem, ptr noundef %0)
  %i.bet = icmp eq i8 %i.bes, 0
  br i1 %i.bet, label %bb.ary, label %bb.bin

bb.ary:                                           ; preds = %lean_inc.exit2686
  %.val.i.i3260 = load i32, ptr %i.bel, align 4, !tbaa !14 ; 3 uses
  %i.beu = icmp sgt i32 %.val.i.i3260, 0
  br i1 %i.beu, label %bb.arz, label %bb.asa, !prof !15

bb.arz:                                           ; preds = %bb.ary
  %i.bev = add nuw i32 %.val.i.i3260, 1
  store i32 %i.bev, ptr %i.bel, align 4, !tbaa !14
  br label %lean_inc_ref.exit3262

bb.asa:                                           ; preds = %bb.ary
  %.not.i.i3261 = icmp eq i32 %.val.i.i3260, 0
  br i1 %.not.i.i3261, label %lean_inc_ref.exit3262, label %bb.asb

bb.asb:                                           ; preds = %bb.asa
  %i.bew = atomicrmw sub ptr %i.bel, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3262

lean_inc_ref.exit3262:                            ; preds = %bb.arz, %bb.asa, %bb.asb
  %.val.i.i3263 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.bex = icmp sgt i32 %.val.i.i3263, 0
  br i1 %i.bex, label %bb.asc, label %bb.asd, !prof !15

bb.asc:                                           ; preds = %lean_inc_ref.exit3262
  %i.bey = add nuw i32 %.val.i.i3263, 1
  store i32 %i.bey, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit3265

bb.asd:                                           ; preds = %lean_inc_ref.exit3262
  %.not.i.i3264 = icmp eq i32 %.val.i.i3263, 0
  br i1 %.not.i.i3264, label %lean_inc_ref.exit3265, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  %i.bez = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3265

lean_inc_ref.exit3265:                            ; preds = %bb.asc, %bb.asd, %bb.ase
  br i1 %.not.i2685, label %bb.asf, label %lean_inc.exit2684

bb.asf:                                           ; preds = %lean_inc_ref.exit3265
  %.val.i.i3266 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.bfa = icmp sgt i32 %.val.i.i3266, 0
  br i1 %i.bfa, label %bb.asg, label %bb.ash, !prof !15

bb.asg:                                           ; preds = %bb.asf
  %i.bfb = add nuw i32 %.val.i.i3266, 1
  store i32 %i.bfb, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2684

bb.ash:                                           ; preds = %bb.asf
  %.not.i.i3267 = icmp eq i32 %.val.i.i3266, 0
  br i1 %.not.i.i3267, label %lean_inc.exit2684, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  %i.bfc = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2684

lean_inc.exit2684:                                ; preds = %bb.asi, %bb.ash, %bb.asg, %lean_inc_ref.exit3265
  %i.bfd = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.bel, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 12 uses
  %i.bfe = ptrtoint ptr %i.bfd to i64             ; 2 uses
  %i.bff = and i64 %i.bfe, 1
  %.not.i3269 = icmp eq i64 %i.bff, 0             ; 2 uses
  br i1 %.not.i3269, label %bb.ask, label %bb.asj

bb.asj:                                           ; preds = %lean_inc.exit2684
  %i.bfg = lshr i64 %i.bfe, 1
  %i.bfh = trunc i64 %i.bfg to i32
  br label %lean_obj_tag.exit3272

bb.ask:                                           ; preds = %lean_inc.exit2684
  %i.bfi = getelementptr i8, ptr %i.bfd, i64 4
  %.val.i3271 = load i32, ptr %i.bfi, align 4
  %i.bfj = lshr i32 %.val.i3271, 24
  br label %lean_obj_tag.exit3272

lean_obj_tag.exit3272:                            ; preds = %bb.asj, %bb.ask
  %.0.i3270 = phi i32 [ %i.bfh, %bb.asj ], [ %i.bfj, %bb.ask ]
  %i.bfk = icmp eq i32 %.0.i3270, 0
  br i1 %i.bfk, label %bb.asl, label %bb.bha

bb.asl:                                           ; preds = %lean_obj_tag.exit3272
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfd, i64 8
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !10 ; 17 uses
  %.val2809 = load i32, ptr %i.bfd, align 8, !tbaa !14
  %i.bfn = icmp eq i32 %.val2809, 1               ; 2 uses
  br i1 %i.bfn, label %lean_dec.exit1986, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.bfo = ptrtoint ptr %i.bfm to i64
  %i.bfp = and i64 %i.bfo, 1
  %.not.i2681 = icmp eq i64 %i.bfp, 0
  br i1 %.not.i2681, label %bb.asn, label %lean_inc.exit2682

bb.asn:                                           ; preds = %bb.asm
  %.val.i.i3273 = load i32, ptr %i.bfm, align 4, !tbaa !14 ; 3 uses
  %i.bfq = icmp sgt i32 %.val.i.i3273, 0
  br i1 %i.bfq, label %bb.aso, label %bb.asp, !prof !15

bb.aso:                                           ; preds = %bb.asn
  %i.bfr = add nuw i32 %.val.i.i3273, 1
  store i32 %i.bfr, ptr %i.bfm, align 4, !tbaa !14
  br label %lean_inc.exit2682

bb.asp:                                           ; preds = %bb.asn
  %.not.i.i3274 = icmp eq i32 %.val.i.i3273, 0
  br i1 %.not.i.i3274, label %lean_inc.exit2682, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.bfs = atomicrmw sub ptr %i.bfm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2682

lean_inc.exit2682:                                ; preds = %bb.asq, %bb.asp, %bb.aso, %bb.asm
  br i1 %.not.i3269, label %bb.asr, label %lean_dec.exit1986

bb.asr:                                           ; preds = %lean_inc.exit2682
  %i.bft = load i32, ptr %i.bfd, align 8, !tbaa !14 ; 3 uses
  %i.bfu = icmp sgt i32 %i.bft, 1
  br i1 %i.bfu, label %bb.ass, label %bb.ast, !prof !15

bb.ass:                                           ; preds = %bb.asr
  %i.bfv = add nsw i32 %i.bft, -1
  store i32 %i.bfv, ptr %i.bfd, align 8, !tbaa !14
  br label %lean_dec.exit1986

bb.ast:                                           ; preds = %bb.asr
  %.not.i2442 = icmp eq i32 %i.bft, 0
  br i1 %.not.i2442, label %lean_dec.exit1986, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bfd) #7
  br label %lean_dec.exit1986

lean_dec.exit1986:                                ; preds = %lean_inc.exit2682, %bb.ass, %bb.ast, %bb.asu, %bb.asl
  %.01767 = phi ptr [ %i.bfd, %bb.asl ], [ inttoptr (i64 1 to ptr), %bb.asu ], [ inttoptr (i64 1 to ptr), %bb.ast ], [ inttoptr (i64 1 to ptr), %bb.ass ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2682 ] ; 4 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfm, i64 8 ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfm, i64 16 ; 2 uses
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !10 ; 14 uses
  %i.bfz = ptrtoint ptr %i.bfy to i64             ; 2 uses
  %i.bga = and i64 %i.bfz, 510
  %i.bgb = icmp eq i64 %i.bga, 0
  br i1 %i.bgb, label %bb.asv, label %bb.bec

bb.asv:                                           ; preds = %lean_dec.exit1986
  %i.bgc = and i64 %i.bfz, 1
  %.not.i2679 = icmp eq i64 %i.bgc, 0             ; 4 uses
  br i1 %.not.i2679, label %bb.asw, label %lean_inc.exit2680

bb.asw:                                           ; preds = %bb.asv
  %.val.i.i3276 = load i32, ptr %i.bfy, align 512, !tbaa !14 ; 3 uses
  %i.bgd = icmp sgt i32 %.val.i.i3276, 0
  br i1 %i.bgd, label %bb.asx, label %bb.asy, !prof !15

bb.asx:                                           ; preds = %bb.asw
  %i.bge = add nuw i32 %.val.i.i3276, 1
  store i32 %i.bge, ptr %i.bfy, align 512, !tbaa !14
  br label %lean_inc.exit2680

bb.asy:                                           ; preds = %bb.asw
  %.not.i.i3277 = icmp eq i32 %.val.i.i3276, 0
  br i1 %.not.i.i3277, label %lean_inc.exit2680, label %bb.asz

bb.asz:                                           ; preds = %bb.asy
  %i.bgf = atomicrmw sub ptr %i.bfy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2680

lean_inc.exit2680:                                ; preds = %bb.asz, %bb.asy, %bb.asx, %bb.asv
  %i.bgg = ptrtoint ptr %.01767 to i64
  %i.bgh = and i64 %i.bgg, 1
  %.not.i3279 = icmp eq i64 %i.bgh, 0
  br i1 %.not.i3279, label %bb.ata, label %lean_del_object.exit3280

bb.ata:                                           ; preds = %lean_inc.exit2680
  tail call void @lean_free_object(ptr noundef nonnull %.01767) #7
  br label %lean_del_object.exit3280

lean_del_object.exit3280:                         ; preds = %lean_inc.exit2680, %bb.ata
  %i.bgi = load ptr, ptr %i.bfw, align 8, !tbaa !10 ; 21 uses
  %.val2808 = load i32, ptr %i.bfm, align 8, !tbaa !14
  %i.bgj = icmp eq i32 %.val2808, 1               ; 2 uses
  br i1 %i.bgj, label %bb.atb, label %bb.atg

bb.atb:                                           ; preds = %lean_del_object.exit3280
  %i.bgk = load ptr, ptr %i.bfx, align 8, !tbaa !10 ; 4 uses
  %i.bgl = ptrtoint ptr %i.bgk to i64
  %i.bgm = and i64 %i.bgl, 1
  %.not.i1983 = icmp eq i64 %i.bgm, 0
  br i1 %.not.i1983, label %bb.atc, label %lean_dec.exit1984

bb.atc:                                           ; preds = %bb.atb
  %i.bgn = load i32, ptr %i.bgk, align 4, !tbaa !14 ; 3 uses
  %i.bgo = icmp sgt i32 %i.bgn, 1
  br i1 %i.bgo, label %bb.atd, label %bb.ate, !prof !15

bb.atd:                                           ; preds = %bb.atc
  %i.bgp = add nsw i32 %i.bgn, -1
  store i32 %i.bgp, ptr %i.bgk, align 4, !tbaa !14
  br label %lean_dec.exit1984

bb.ate:                                           ; preds = %bb.atc
  %.not.i2444 = icmp eq i32 %i.bgn, 0
  br i1 %.not.i2444, label %lean_dec.exit1984, label %bb.atf

bb.atf:                                           ; preds = %bb.ate
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bgk) #7
  br label %lean_dec.exit1984

bb.atg:                                           ; preds = %lean_del_object.exit3280
  %i.bgq = ptrtoint ptr %i.bgi to i64
  %i.bgr = and i64 %i.bgq, 1
  %.not.i2677 = icmp eq i64 %i.bgr, 0
  br i1 %.not.i2677, label %bb.ath, label %lean_inc.exit2678

bb.ath:                                           ; preds = %bb.atg
  %.val.i.i3281 = load i32, ptr %i.bgi, align 4, !tbaa !14 ; 3 uses
  %i.bgs = icmp sgt i32 %.val.i.i3281, 0
  br i1 %i.bgs, label %bb.ati, label %bb.atj, !prof !15

bb.ati:                                           ; preds = %bb.ath
  %i.bgt = add nuw i32 %.val.i.i3281, 1
  store i32 %i.bgt, ptr %i.bgi, align 4, !tbaa !14
  br label %lean_inc.exit2678

bb.atj:                                           ; preds = %bb.ath
  %.not.i.i3282 = icmp eq i32 %.val.i.i3281, 0
  br i1 %.not.i.i3282, label %lean_inc.exit2678, label %bb.atk

bb.atk:                                           ; preds = %bb.atj
  %i.bgu = atomicrmw sub ptr %i.bgi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2678

lean_inc.exit2678:                                ; preds = %bb.atg, %bb.ati, %bb.atj, %bb.atk
  %i.bgv = load i32, ptr %i.bfm, align 8, !tbaa !14 ; 3 uses
  %i.bgw = icmp sgt i32 %i.bgv, 1
  br i1 %i.bgw, label %bb.atl, label %bb.atm, !prof !15

bb.atl:                                           ; preds = %lean_inc.exit2678
  %i.bgx = add nsw i32 %i.bgv, -1
  store i32 %i.bgx, ptr %i.bfm, align 8, !tbaa !14
  br label %lean_dec.exit1984

bb.atm:                                           ; preds = %lean_inc.exit2678
  %.not.i2446 = icmp eq i32 %i.bgv, 0
  br i1 %.not.i2446, label %lean_dec.exit1984, label %bb.atn

bb.atn:                                           ; preds = %bb.atm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bfm) #7
  br label %lean_dec.exit1984

lean_dec.exit1984:                                ; preds = %bb.atl, %bb.atm, %bb.atn, %bb.atb, %bb.atd, %bb.ate, %bb.atf
  %.01762 = phi ptr [ %i.bfm, %bb.atb ], [ %i.bfm, %bb.atf ], [ %i.bfm, %bb.ate ], [ %i.bfm, %bb.atd ], [ inttoptr (i64 1 to ptr), %bb.atn ], [ inttoptr (i64 1 to ptr), %bb.atm ], [ inttoptr (i64 1 to ptr), %bb.atl ] ; 8 uses
  br i1 %.not.i2685, label %bb.ato, label %lean_inc.exit2676

bb.ato:                                           ; preds = %lean_dec.exit1984
  %.val.i.i3284 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.bgy = icmp sgt i32 %.val.i.i3284, 0
  br i1 %i.bgy, label %bb.atp, label %bb.atq, !prof !15

bb.atp:                                           ; preds = %bb.ato
  %i.bgz = add nuw i32 %.val.i.i3284, 1
  store i32 %i.bgz, ptr %0, align 4, !tbaa !14
  br label %lean_inc.exit2676

bb.atq:                                           ; preds = %bb.ato
  %.not.i.i3285 = icmp eq i32 %.val.i.i3284, 0
  br i1 %.not.i.i3285, label %lean_inc.exit2676, label %bb.atr

bb.atr:                                           ; preds = %bb.atq
  %i.bha = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2676

lean_inc.exit2676:                                ; preds = %bb.atr, %bb.atq, %bb.atp, %lean_dec.exit1984
  %i.bhb = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_classifyUse(ptr noundef %i.bem, ptr noundef %0, ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef %7) ; 14 uses
  %i.bhc = ptrtoint ptr %i.bhb to i64             ; 2 uses
  %i.bhd = and i64 %i.bhc, 1
  %.not.i3287 = icmp eq i64 %i.bhd, 0             ; 3 uses
  br i1 %.not.i3287, label %bb.att, label %bb.ats

bb.ats:                                           ; preds = %lean_inc.exit2676
  %i.bhe = lshr i64 %i.bhc, 1
  %i.bhf = trunc i64 %i.bhe to i32
  br label %lean_obj_tag.exit3290

bb.att:                                           ; preds = %lean_inc.exit2676
  %i.bhg = getelementptr i8, ptr %i.bhb, i64 4
  %.val.i3289 = load i32, ptr %i.bhg, align 4
  %i.bhh = lshr i32 %.val.i3289, 24
  br label %lean_obj_tag.exit3290

lean_obj_tag.exit3290:                            ; preds = %bb.ats, %bb.att
  %.0.i3288 = phi i32 [ %i.bhf, %bb.ats ], [ %i.bhh, %bb.att ]
  %i.bhi = icmp eq i32 %.0.i3288, 0
  br i1 %i.bhi, label %bb.atu, label %bb.bdb

bb.atu:                                           ; preds = %lean_obj_tag.exit3290
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhb, i64 8
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !10 ; 7 uses
  %.val2807 = load i32, ptr %i.bhb, align 8, !tbaa !14
  %i.bhl = icmp eq i32 %.val2807, 1               ; 2 uses
  %.pre3453 = ptrtoint ptr %i.bhk to i64          ; 2 uses
  %.pre3455 = and i64 %.pre3453, 1                ; 2 uses
  br i1 %i.bhl, label %lean_dec.exit1980, label %bb.atv

bb.atv:                                           ; preds = %bb.atu
  %.not.i2673 = icmp eq i64 %.pre3455, 0
  br i1 %.not.i2673, label %bb.atw, label %lean_inc.exit2674

bb.atw:                                           ; preds = %bb.atv
  %.val.i.i3291 = load i32, ptr %i.bhk, align 4, !tbaa !14 ; 3 uses
  %i.bhm = icmp sgt i32 %.val.i.i3291, 0
  br i1 %i.bhm, label %bb.atx, label %bb.aty, !prof !15

bb.atx:                                           ; preds = %bb.atw
  %i.bhn = add nuw i32 %.val.i.i3291, 1
  store i32 %i.bhn, ptr %i.bhk, align 4, !tbaa !14
  br label %lean_inc.exit2674

bb.aty:                                           ; preds = %bb.atw
  %.not.i.i3292 = icmp eq i32 %.val.i.i3291, 0
  br i1 %.not.i.i3292, label %lean_inc.exit2674, label %bb.atz

bb.atz:                                           ; preds = %bb.aty
  %i.bho = atomicrmw sub ptr %i.bhk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2674

lean_inc.exit2674:                                ; preds = %bb.atz, %bb.aty, %bb.atx, %bb.atv
  br i1 %.not.i3287, label %bb.aua, label %lean_dec.exit1980

bb.aua:                                           ; preds = %lean_inc.exit2674
  %i.bhp = load i32, ptr %i.bhb, align 8, !tbaa !14 ; 3 uses
  %i.bhq = icmp sgt i32 %i.bhp, 1
  br i1 %i.bhq, label %bb.aub, label %bb.auc, !prof !15

bb.aub:                                           ; preds = %bb.aua
  %i.bhr = add nsw i32 %i.bhp, -1
  store i32 %i.bhr, ptr %i.bhb, align 8, !tbaa !14
  br label %lean_dec.exit1980

bb.auc:                                           ; preds = %bb.aua
  %.not.i2448 = icmp eq i32 %i.bhp, 0
  br i1 %.not.i2448, label %lean_dec.exit1980, label %bb.aud

bb.aud:                                           ; preds = %bb.auc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bhb) #7
  br label %lean_dec.exit1980

lean_dec.exit1980:                                ; preds = %bb.atu, %lean_inc.exit2674, %bb.aub, %bb.auc, %bb.aud
  %.01760 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aud ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2674 ], [ inttoptr (i64 1 to ptr), %bb.aub ], [ inttoptr (i64 1 to ptr), %bb.auc ], [ %i.bhb, %bb.atu ] ; 6 uses
  %i.bhs = lshr i64 %.pre3453, 1
  %i.bht = trunc i64 %i.bhs to i8
  %.not.i1977 = icmp eq i64 %.pre3455, 0
  br i1 %.not.i1977, label %bb.aue, label %lean_dec.exit1978

bb.aue:                                           ; preds = %lean_dec.exit1980
  %i.bhu = load i32, ptr %i.bhk, align 4, !tbaa !14 ; 3 uses
  %i.bhv = icmp sgt i32 %i.bhu, 1
  br i1 %i.bhv, label %bb.auf, label %bb.aug, !prof !15

bb.auf:                                           ; preds = %bb.aue
  %i.bhw = add nsw i32 %i.bhu, -1
  store i32 %i.bhw, ptr %i.bhk, align 4, !tbaa !14
  br label %lean_dec.exit1978

bb.aug:                                           ; preds = %bb.aue
  %.not.i2450 = icmp eq i32 %i.bhu, 0
  br i1 %.not.i2450, label %lean_dec.exit1978, label %bb.auh

bb.auh:                                           ; preds = %bb.aug
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bhk) #7
  br label %lean_dec.exit1978

lean_dec.exit1978:                                ; preds = %bb.auh, %bb.aug, %bb.auf, %lean_dec.exit1980
  switch i8 %i.bht, label %bb.bal [
    i8 0, label %bb.aui
    i8 1, label %bb.awz
  ]

bb.aui:                                           ; preds = %lean_dec.exit1978
  %i.bhx = ptrtoint ptr %.01760 to i64
  %i.bhy = and i64 %i.bhx, 1
  %.not.i3294 = icmp eq i64 %i.bhy, 0
  br i1 %.not.i3294, label %bb.auj, label %lean_del_object.exit3295

bb.auj:                                           ; preds = %bb.aui
  tail call void @lean_free_object(ptr noundef nonnull %.01760) #7
  br label %lean_del_object.exit3295

lean_del_object.exit3295:                         ; preds = %bb.aui, %bb.auj
  %i.bhz = ptrtoint ptr %.01762 to i64
  %i.bia = and i64 %i.bhz, 1
  %.not.i3296 = icmp eq i64 %i.bia, 0
  br i1 %.not.i3296, label %bb.auk, label %lean_del_object.exit3297

bb.auk:                                           ; preds = %lean_del_object.exit3295
  tail call void @lean_free_object(ptr noundef nonnull %.01762) #7
  br label %lean_del_object.exit3297

lean_del_object.exit3297:                         ; preds = %lean_del_object.exit3295, %bb.auk
  br i1 %.not.i2679, label %bb.aul, label %lean_dec.exit1976

bb.aul:                                           ; preds = %lean_del_object.exit3297
  %i.bib = load i32, ptr %i.bfy, align 512, !tbaa !14 ; 3 uses
  %i.bic = icmp sgt i32 %i.bib, 1
  br i1 %i.bic, label %bb.aum, label %bb.aun, !prof !15

bb.aum:                                           ; preds = %bb.aul
  %i.bid = add nsw i32 %i.bib, -1
  store i32 %i.bid, ptr %i.bfy, align 512, !tbaa !14
  br label %lean_dec.exit1976

bb.aun:                                           ; preds = %bb.aul
  %.not.i2452 = icmp eq i32 %i.bib, 0
  br i1 %.not.i2452, label %lean_dec.exit1976, label %bb.auo

bb.auo:                                           ; preds = %bb.aun
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bfy) #7
  br label %lean_dec.exit1976

lean_dec.exit1976:                                ; preds = %bb.auo, %bb.aun, %bb.aum, %lean_del_object.exit3297
  %i.bie = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.bif = icmp sgt i32 %i.bie, 1
  br i1 %i.bif, label %bb.aup, label %bb.auq, !prof !15

bb.aup:                                           ; preds = %lean_dec.exit1976
  %i.big = add nsw i32 %i.bie, -1
  store i32 %i.big, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2569

bb.auq:                                           ; preds = %lean_dec.exit1976
  %.not.i2568 = icmp eq i32 %i.bie, 0
  br i1 %.not.i2568, label %lean_dec_ref.exit2569, label %bb.aur

bb.aur:                                           ; preds = %bb.auq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2569

lean_dec_ref.exit2569:                            ; preds = %bb.aup, %bb.auq, %bb.aur
  br i1 %.not.i2685, label %bb.aus, label %lean_dec.exit1974

bb.aus:                                           ; preds = %lean_dec_ref.exit2569
  %i.bih = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.bii = icmp sgt i32 %i.bih, 1
  br i1 %i.bii, label %bb.aut, label %bb.auu, !prof !15

bb.aut:                                           ; preds = %bb.aus
  %i.bij = add nsw i32 %i.bih, -1
  store i32 %i.bij, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1974

bb.auu:                                           ; preds = %bb.aus
  %.not.i2454 = icmp eq i32 %i.bih, 0
  br i1 %.not.i2454, label %lean_dec.exit1974, label %bb.auv

bb.auv:                                           ; preds = %bb.auu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit1974

lean_dec.exit1974:                                ; preds = %bb.auv, %bb.auu, %bb.aut, %lean_dec_ref.exit2569
  %.not3432 = icmp eq ptr %i.bel, %i.bgi
  br i1 %.not3432, label %bb.awv, label %bb.auw

bb.auw:                                           ; preds = %lean_dec.exit1974
  %.val.i.i3298 = load i32, ptr %i.bej, align 4, !tbaa !14 ; 3 uses
  %i.bik = icmp sgt i32 %.val.i.i3298, 0
  br i1 %i.bik, label %bb.aux, label %bb.auy, !prof !15

bb.aux:                                           ; preds = %bb.auw
  %i.bil = add nuw i32 %.val.i.i3298, 1
  store i32 %i.bil, ptr %i.bej, align 4, !tbaa !14
  br label %lean_inc_ref.exit3300

bb.auy:                                           ; preds = %bb.auw
  %.not.i.i3299 = icmp eq i32 %.val.i.i3298, 0
  br i1 %.not.i.i3299, label %lean_inc_ref.exit3300, label %bb.auz

bb.auz:                                           ; preds = %bb.auy
  %i.bim = atomicrmw sub ptr %i.bej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3300

lean_inc_ref.exit3300:                            ; preds = %bb.aux, %bb.auy, %bb.auz
  %i.bin = ptrtoint ptr %i.beh to i64
  %i.bio = and i64 %i.bin, 1
  %.not.i2671 = icmp eq i64 %i.bio, 0
  br i1 %.not.i2671, label %bb.ava, label %lean_inc.exit2672

bb.ava:                                           ; preds = %lean_inc_ref.exit3300
  %.val.i.i3301 = load i32, ptr %i.beh, align 4, !tbaa !14 ; 3 uses
  %i.bip = icmp sgt i32 %.val.i.i3301, 0
  br i1 %i.bip, label %bb.avb, label %bb.avc, !prof !15

bb.avb:                                           ; preds = %bb.ava
  %i.biq = add nuw i32 %.val.i.i3301, 1
  store i32 %i.biq, ptr %i.beh, align 4, !tbaa !14
  br label %lean_inc.exit2672

bb.avc:                                           ; preds = %bb.ava
  %.not.i.i3302 = icmp eq i32 %.val.i.i3301, 0
  br i1 %.not.i.i3302, label %lean_inc.exit2672, label %bb.avd

bb.avd:                                           ; preds = %bb.avc
  %i.bir = atomicrmw sub ptr %i.beh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2672

lean_inc.exit2672:                                ; preds = %bb.avd, %bb.avc, %bb.avb, %lean_inc_ref.exit3300
  %i.bis = ptrtoint ptr %i.bef to i64
  %i.bit = and i64 %i.bis, 1
  %.not.i2669 = icmp eq i64 %i.bit, 0
  br i1 %.not.i2669, label %bb.ave, label %lean_inc.exit2670

bb.ave:                                           ; preds = %lean_inc.exit2672
  %.val.i.i3304 = load i32, ptr %i.bef, align 4, !tbaa !14 ; 3 uses
  %i.biu = icmp sgt i32 %.val.i.i3304, 0
  br i1 %i.biu, label %bb.avf, label %bb.avg, !prof !15

bb.avf:                                           ; preds = %bb.ave
  %i.biv = add nuw i32 %.val.i.i3304, 1
  store i32 %i.biv, ptr %i.bef, align 4, !tbaa !14
  br label %lean_inc.exit2670

bb.avg:                                           ; preds = %bb.ave
  %.not.i.i3305 = icmp eq i32 %.val.i.i3304, 0
  br i1 %.not.i.i3305, label %lean_inc.exit2670, label %bb.avh

bb.avh:                                           ; preds = %bb.avg
  %i.biw = atomicrmw sub ptr %i.bef, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2670

lean_inc.exit2670:                                ; preds = %bb.avh, %bb.avg, %bb.avf, %lean_inc.exit2672
  %i.bix = ptrtoint ptr %i.bed to i64
  %i.biy = and i64 %i.bix, 1
  %.not.i2667 = icmp eq i64 %i.biy, 0
  br i1 %.not.i2667, label %bb.avi, label %lean_inc.exit2668

bb.avi:                                           ; preds = %lean_inc.exit2670
  %.val.i.i3307 = load i32, ptr %i.bed, align 4, !tbaa !14 ; 3 uses
  %i.biz = icmp sgt i32 %.val.i.i3307, 0
  br i1 %i.biz, label %bb.avj, label %bb.avk, !prof !15

bb.avj:                                           ; preds = %bb.avi
  %i.bja = add nuw i32 %.val.i.i3307, 1
  store i32 %i.bja, ptr %i.bed, align 4, !tbaa !14
  br label %lean_inc.exit2668

bb.avk:                                           ; preds = %bb.avi
  %.not.i.i3308 = icmp eq i32 %.val.i.i3307, 0
  br i1 %.not.i.i3308, label %lean_inc.exit2668, label %bb.avl

bb.avl:                                           ; preds = %bb.avk
  %i.bjb = atomicrmw sub ptr %i.bed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2668

lean_inc.exit2668:                                ; preds = %bb.avl, %bb.avk, %bb.avj, %lean_inc.exit2670
  %i.bjc = ptrtoint ptr %i.beb to i64
  %i.bjd = and i64 %i.bjc, 1
  %.not.i2665 = icmp eq i64 %i.bjd, 0
  br i1 %.not.i2665, label %bb.avm, label %lean_inc.exit2666

bb.avm:                                           ; preds = %lean_inc.exit2668
  %.val.i.i3310 = load i32, ptr %i.beb, align 4, !tbaa !14 ; 3 uses
  %i.bje = icmp sgt i32 %.val.i.i3310, 0
  br i1 %i.bje, label %bb.avn, label %bb.avo, !prof !15

bb.avn:                                           ; preds = %bb.avm
  %i.bjf = add nuw i32 %.val.i.i3310, 1
  store i32 %i.bjf, ptr %i.beb, align 4, !tbaa !14
  br label %lean_inc.exit2666

bb.avo:                                           ; preds = %bb.avm
  %.not.i.i3311 = icmp eq i32 %.val.i.i3310, 0
  br i1 %.not.i.i3311, label %lean_inc.exit2666, label %bb.avp

bb.avp:                                           ; preds = %bb.avo
  %i.bjg = atomicrmw sub ptr %i.beb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2666

lean_inc.exit2666:                                ; preds = %bb.avp, %bb.avo, %bb.avn, %lean_inc.exit2668
  %.val2806 = load i32, ptr %2, align 8, !tbaa !14 ; 4 uses
  %i.bjh = icmp eq i32 %.val2806, 1
  br i1 %i.bjh, label %bb.avq, label %bb.awp

bb.avq:                                           ; preds = %lean_inc.exit2666
  %i.bji = load ptr, ptr %i.bek, align 8, !tbaa !10 ; 4 uses
  %i.bjj = ptrtoint ptr %i.bji to i64
  %i.bjk = and i64 %i.bjj, 1
  %.not.i1971 = icmp eq i64 %i.bjk, 0
  br i1 %.not.i1971, label %bb.avr, label %lean_dec.exit1972

bb.avr:                                           ; preds = %bb.avq
  %i.bjl = load i32, ptr %i.bji, align 4, !tbaa !14 ; 3 uses
  %i.bjm = icmp sgt i32 %i.bjl, 1
  br i1 %i.bjm, label %bb.avs, label %bb.avt, !prof !15

bb.avs:                                           ; preds = %bb.avr
  %i.bjn = add nsw i32 %i.bjl, -1
  store i32 %i.bjn, ptr %i.bji, align 4, !tbaa !14
  br label %lean_dec.exit1972

bb.avt:                                           ; preds = %bb.avr
  %.not.i2456 = icmp eq i32 %i.bjl, 0
  br i1 %.not.i2456, label %lean_dec.exit1972, label %bb.avu

bb.avu:                                           ; preds = %bb.avt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bji) #7
  br label %lean_dec.exit1972

lean_dec.exit1972:                                ; preds = %bb.avu, %bb.avt, %bb.avs, %bb.avq
  %i.bjo = load ptr, ptr %i.bei, align 8, !tbaa !10 ; 4 uses
  %i.bjp = ptrtoint ptr %i.bjo to i64
end_hunk_6
begin_hunk_7_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a
bb.avv:                                           ; preds = %lean_dec.exit1972
  %i.bjr = load i32, ptr %i.bjo, align 4, !tbaa !14 ; 3 uses
  %i.bjs = icmp sgt i32 %i.bjr, 1
  br i1 %i.bjs, label %bb.avw, label %bb.avx, !prof !15

bb.avw:                                           ; preds = %bb.avv
  %i.bjt = add nsw i32 %i.bjr, -1
  store i32 %i.bjt, ptr %i.bjo, align 4, !tbaa !14
  br label %lean_dec.exit1970

bb.avx:                                           ; preds = %bb.avv
  %.not.i2458 = icmp eq i32 %i.bjr, 0
  br i1 %.not.i2458, label %lean_dec.exit1970, label %bb.avy

bb.avy:                                           ; preds = %bb.avx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bjo) #7
  br label %lean_dec.exit1970

lean_dec.exit1970:                                ; preds = %bb.avy, %bb.avx, %bb.avw, %lean_dec.exit1972
  %i.bju = load ptr, ptr %i.beg, align 8, !tbaa !10 ; 4 uses
  %i.bjv = ptrtoint ptr %i.bju to i64
  %i.bjw = and i64 %i.bjv, 1
  %.not.i1967 = icmp eq i64 %i.bjw, 0
  br i1 %.not.i1967, label %bb.avz, label %lean_dec.exit1968

bb.avz:                                           ; preds = %lean_dec.exit1970
  %i.bjx = load i32, ptr %i.bju, align 4, !tbaa !14 ; 3 uses
  %i.bjy = icmp sgt i32 %i.bjx, 1
  br i1 %i.bjy, label %bb.awa, label %bb.awb, !prof !15

bb.awa:                                           ; preds = %bb.avz
  %i.bjz = add nsw i32 %i.bjx, -1
  store i32 %i.bjz, ptr %i.bju, align 4, !tbaa !14
  br label %lean_dec.exit1968

bb.awb:                                           ; preds = %bb.avz
  %.not.i2460 = icmp eq i32 %i.bjx, 0
  br i1 %.not.i2460, label %lean_dec.exit1968, label %bb.awc

bb.awc:                                           ; preds = %bb.awb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bju) #7
  br label %lean_dec.exit1968

lean_dec.exit1968:                                ; preds = %bb.awc, %bb.awb, %bb.awa, %lean_dec.exit1970
  %i.bka = load ptr, ptr %i.bee, align 8, !tbaa !10 ; 4 uses
  %i.bkb = ptrtoint ptr %i.bka to i64
  %i.bkc = and i64 %i.bkb, 1
  %.not.i1965 = icmp eq i64 %i.bkc, 0
  br i1 %.not.i1965, label %bb.awd, label %lean_dec.exit1966

bb.awd:                                           ; preds = %lean_dec.exit1968
  %i.bkd = load i32, ptr %i.bka, align 4, !tbaa !14 ; 3 uses
  %i.bke = icmp sgt i32 %i.bkd, 1
  br i1 %i.bke, label %bb.awe, label %bb.awf, !prof !15

bb.awe:                                           ; preds = %bb.awd
  %i.bkf = add nsw i32 %i.bkd, -1
  store i32 %i.bkf, ptr %i.bka, align 4, !tbaa !14
  br label %lean_dec.exit1966

bb.awf:                                           ; preds = %bb.awd
  %.not.i2462 = icmp eq i32 %i.bkd, 0
  br i1 %.not.i2462, label %lean_dec.exit1966, label %bb.awg

bb.awg:                                           ; preds = %bb.awf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bka) #7
  br label %lean_dec.exit1966

lean_dec.exit1966:                                ; preds = %bb.awg, %bb.awf, %bb.awe, %lean_dec.exit1968
  %i.bkg = load ptr, ptr %i.bec, align 8, !tbaa !10 ; 4 uses
  %i.bkh = ptrtoint ptr %i.bkg to i64
  %i.bki = and i64 %i.bkh, 1
  %.not.i1963 = icmp eq i64 %i.bki, 0
  br i1 %.not.i1963, label %bb.awh, label %lean_dec.exit1964

bb.awh:                                           ; preds = %lean_dec.exit1966
  %i.bkj = load i32, ptr %i.bkg, align 4, !tbaa !14 ; 3 uses
  %i.bkk = icmp sgt i32 %i.bkj, 1
  br i1 %i.bkk, label %bb.awi, label %bb.awj, !prof !15

bb.awi:                                           ; preds = %bb.awh
  %i.bkl = add nsw i32 %i.bkj, -1
  store i32 %i.bkl, ptr %i.bkg, align 4, !tbaa !14
  br label %lean_dec.exit1964

bb.awj:                                           ; preds = %bb.awh
  %.not.i2464 = icmp eq i32 %i.bkj, 0
  br i1 %.not.i2464, label %lean_dec.exit1964, label %bb.awk

bb.awk:                                           ; preds = %bb.awj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bkg) #7
  br label %lean_dec.exit1964

lean_dec.exit1964:                                ; preds = %bb.awk, %bb.awj, %bb.awi, %lean_dec.exit1966
  %i.bkm = load ptr, ptr %i.bea, align 8, !tbaa !10 ; 4 uses
  %i.bkn = ptrtoint ptr %i.bkm to i64
  %i.bko = and i64 %i.bkn, 1
  %.not.i1961 = icmp eq i64 %i.bko, 0
  br i1 %.not.i1961, label %bb.awl, label %bb.awu

bb.awl:                                           ; preds = %lean_dec.exit1964
  %i.bkp = load i32, ptr %i.bkm, align 4, !tbaa !14 ; 3 uses
  %i.bkq = icmp sgt i32 %i.bkp, 1
  br i1 %i.bkq, label %bb.awm, label %bb.awn, !prof !15

bb.awm:                                           ; preds = %bb.awl
  %i.bkr = add nsw i32 %i.bkp, -1
  store i32 %i.bkr, ptr %i.bkm, align 4, !tbaa !14
  br label %bb.awu

bb.awn:                                           ; preds = %bb.awl
  %.not.i2466 = icmp eq i32 %i.bkp, 0
  br i1 %.not.i2466, label %bb.awu, label %bb.awo

bb.awo:                                           ; preds = %bb.awn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bkm) #7
  br label %bb.awu

bb.awp:                                           ; preds = %lean_inc.exit2666
  br i1 %.not.i2846, label %bb.awq, label %lean_dec.exit1962

bb.awq:                                           ; preds = %bb.awp
  %i.bks = icmp sgt i32 %.val2806, 1
  br i1 %i.bks, label %bb.awr, label %bb.aws, !prof !15

bb.awr:                                           ; preds = %bb.awq
  %i.bkt = add nsw i32 %.val2806, -1
  store i32 %i.bkt, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit1962

bb.aws:                                           ; preds = %bb.awq
  %.not.i2468 = icmp eq i32 %.val2806, 0
  br i1 %.not.i2468, label %lean_dec.exit1962, label %bb.awt

bb.awt:                                           ; preds = %bb.aws
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit1962

bb.awu:                                           ; preds = %lean_dec.exit1964, %bb.awm, %bb.awn, %bb.awo
  store ptr %i.bgi, ptr %i.bek, align 8, !tbaa !10
  br label %lean_dec.exit1958

lean_dec.exit1962:                                ; preds = %bb.awt, %bb.aws, %bb.awr, %bb.awp
  %i.bku = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 9, i32 noundef 6, i32 noundef 0) ; 7 uses
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  store ptr %i.beb, ptr %i.bkv, align 8, !tbaa !10
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bku, i64 16
  store ptr %i.bed, ptr %i.bkw, align 8, !tbaa !10
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bku, i64 24
  store ptr %i.bef, ptr %i.bkx, align 8, !tbaa !10
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bku, i64 32
  store ptr %i.beh, ptr %i.bky, align 8, !tbaa !10
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bku, i64 40
  store ptr %i.bej, ptr %i.bkz, align 8, !tbaa !10
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bku, i64 48
  store ptr %i.bgi, ptr %i.bla, align 8, !tbaa !10
  br label %lean_dec.exit1958

bb.awv:                                           ; preds = %lean_dec.exit1974
  %i.blb = load i32, ptr %i.bgi, align 4, !tbaa !14 ; 3 uses
  %i.blc = icmp sgt i32 %i.blb, 1
  br i1 %i.blc, label %bb.aww, label %bb.awx, !prof !15

bb.aww:                                           ; preds = %bb.awv
  %i.bld = add nsw i32 %i.blb, -1
  store i32 %i.bld, ptr %i.bgi, align 4, !tbaa !14
  br label %lean_dec.exit1958

bb.awx:                                           ; preds = %bb.awv
  %.not.i2470 = icmp eq i32 %i.blb, 0
  br i1 %.not.i2470, label %lean_dec.exit1958, label %bb.awy

bb.awy:                                           ; preds = %bb.awx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bgi) #7
  br label %lean_dec.exit1958

bb.awz:                                           ; preds = %lean_dec.exit1978
  %i.ble = ptrtoint ptr %.01760 to i64
  %i.blf = and i64 %i.ble, 1
  %.not.i3313 = icmp eq i64 %i.blf, 0
  br i1 %.not.i3313, label %bb.axa, label %lean_del_object.exit3314

bb.axa:                                           ; preds = %bb.awz
  tail call void @lean_free_object(ptr noundef nonnull %.01760) #7
  br label %lean_del_object.exit3314

lean_del_object.exit3314:                         ; preds = %bb.awz, %bb.axa
  %i.blg = ptrtoint ptr %.01762 to i64
  %i.blh = and i64 %i.blg, 1
  %.not.i3315 = icmp eq i64 %i.blh, 0
  br i1 %.not.i3315, label %bb.axb, label %lean_del_object.exit3316

bb.axb:                                           ; preds = %lean_del_object.exit3314
  tail call void @lean_free_object(ptr noundef nonnull %.01762) #7
  br label %lean_del_object.exit3316

lean_del_object.exit3316:                         ; preds = %lean_del_object.exit3314, %bb.axb
  br i1 %.not.i2679, label %bb.axc, label %lean_dec.exit1956

bb.axc:                                           ; preds = %lean_del_object.exit3316
  %i.bli = load i32, ptr %i.bfy, align 512, !tbaa !14 ; 3 uses
  %i.blj = icmp sgt i32 %i.bli, 1
  br i1 %i.blj, label %bb.axd, label %bb.axe, !prof !15

bb.axd:                                           ; preds = %bb.axc
  %i.blk = add nsw i32 %i.bli, -1
  store i32 %i.blk, ptr %i.bfy, align 512, !tbaa !14
  br label %lean_dec.exit1956

bb.axe:                                           ; preds = %bb.axc
  %.not.i2472 = icmp eq i32 %i.bli, 0
  br i1 %.not.i2472, label %lean_dec.exit1956, label %bb.axf

bb.axf:                                           ; preds = %bb.axe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bfy) #7
  br label %lean_dec.exit1956

lean_dec.exit1956:                                ; preds = %bb.axf, %bb.axe, %bb.axd, %lean_del_object.exit3316
  %i.bll = tail call ptr @l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_S(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.bgi, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) ; 14 uses
  %i.blm = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.bln = icmp sgt i32 %i.blm, 1
  br i1 %i.bln, label %bb.axg, label %bb.axh, !prof !15

bb.axg:                                           ; preds = %lean_dec.exit1956
  %i.blo = add nsw i32 %i.blm, -1
  store i32 %i.blo, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2567

bb.axh:                                           ; preds = %lean_dec.exit1956
  %.not.i2566 = icmp eq i32 %i.blm, 0
  br i1 %.not.i2566, label %lean_dec_ref.exit2567, label %bb.axi

bb.axi:                                           ; preds = %bb.axh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2567

lean_dec_ref.exit2567:                            ; preds = %bb.axg, %bb.axh, %bb.axi
  %i.blp = ptrtoint ptr %i.bll to i64             ; 2 uses
  %i.blq = and i64 %i.blp, 1
  %.not.i3317 = icmp eq i64 %i.blq, 0             ; 3 uses
  br i1 %.not.i3317, label %bb.axk, label %bb.axj

bb.axj:                                           ; preds = %lean_dec_ref.exit2567
  %i.blr = lshr i64 %i.blp, 1
  %i.bls = trunc i64 %i.blr to i32
  br label %lean_obj_tag.exit3320

bb.axk:                                           ; preds = %lean_dec_ref.exit2567
  %i.blt = getelementptr i8, ptr %i.bll, i64 4
  %.val.i3319 = load i32, ptr %i.blt, align 4
  %i.blu = lshr i32 %.val.i3319, 24
  br label %lean_obj_tag.exit3320

lean_obj_tag.exit3320:                            ; preds = %bb.axj, %bb.axk
  %.0.i3318 = phi i32 [ %i.bls, %bb.axj ], [ %i.blu, %bb.axk ]
  %i.blv = icmp eq i32 %.0.i3318, 0
  br i1 %i.blv, label %bb.axl, label %bb.baa

bb.axl:                                           ; preds = %lean_obj_tag.exit3320
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bll, i64 8
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !10 ; 10 uses
  %.val2805 = load i32, ptr %i.bll, align 8, !tbaa !14
  %i.bly = icmp eq i32 %.val2805, 1               ; 2 uses
  br i1 %i.bly, label %lean_dec.exit1954, label %bb.axm

bb.axm:                                           ; preds = %bb.axl
  %i.blz = ptrtoint ptr %i.blx to i64
  %i.bma = and i64 %i.blz, 1
  %.not.i2663 = icmp eq i64 %i.bma, 0
  br i1 %.not.i2663, label %bb.axn, label %lean_inc.exit2664

bb.axn:                                           ; preds = %bb.axm
  %.val.i.i3321 = load i32, ptr %i.blx, align 4, !tbaa !14 ; 3 uses
  %i.bmb = icmp sgt i32 %.val.i.i3321, 0
  br i1 %i.bmb, label %bb.axo, label %bb.axp, !prof !15

bb.axo:                                           ; preds = %bb.axn
  %i.bmc = add nuw i32 %.val.i.i3321, 1
  store i32 %i.bmc, ptr %i.blx, align 4, !tbaa !14
  br label %lean_inc.exit2664

bb.axp:                                           ; preds = %bb.axn
  %.not.i.i3322 = icmp eq i32 %.val.i.i3321, 0
  br i1 %.not.i.i3322, label %lean_inc.exit2664, label %bb.axq

bb.axq:                                           ; preds = %bb.axp
  %i.bmd = atomicrmw sub ptr %i.blx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2664

lean_inc.exit2664:                                ; preds = %bb.axq, %bb.axp, %bb.axo, %bb.axm
  br i1 %.not.i3317, label %bb.axr, label %lean_dec.exit1954

bb.axr:                                           ; preds = %lean_inc.exit2664
  %i.bme = load i32, ptr %i.bll, align 8, !tbaa !14 ; 3 uses
  %i.bmf = icmp sgt i32 %i.bme, 1
  br i1 %i.bmf, label %bb.axs, label %bb.axt, !prof !15

bb.axs:                                           ; preds = %bb.axr
  %i.bmg = add nsw i32 %i.bme, -1
  store i32 %i.bmg, ptr %i.bll, align 8, !tbaa !14
  br label %lean_dec.exit1954

bb.axt:                                           ; preds = %bb.axr
  %.not.i2474 = icmp eq i32 %i.bme, 0
  br i1 %.not.i2474, label %lean_dec.exit1954, label %bb.axu

bb.axu:                                           ; preds = %bb.axt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bll) #7
  br label %lean_dec.exit1954

lean_dec.exit1954:                                ; preds = %lean_inc.exit2664, %bb.axs, %bb.axt, %bb.axu, %bb.axl
  %.01744 = phi ptr [ %i.bll, %bb.axl ], [ inttoptr (i64 1 to ptr), %bb.axu ], [ inttoptr (i64 1 to ptr), %bb.axt ], [ inttoptr (i64 1 to ptr), %bb.axs ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2664 ] ; 2 uses
  %.not3431 = icmp eq ptr %i.bel, %i.blx
  br i1 %.not3431, label %bb.azu, label %bb.axv

bb.axv:                                           ; preds = %lean_dec.exit1954
  %.val.i.i3324 = load i32, ptr %i.bej, align 4, !tbaa !14 ; 3 uses
  %i.bmh = icmp sgt i32 %.val.i.i3324, 0
  br i1 %i.bmh, label %bb.axw, label %bb.axx, !prof !15

bb.axw:                                           ; preds = %bb.axv
  %i.bmi = add nuw i32 %.val.i.i3324, 1
  store i32 %i.bmi, ptr %i.bej, align 4, !tbaa !14
  br label %lean_inc_ref.exit3326

bb.axx:                                           ; preds = %bb.axv
  %.not.i.i3325 = icmp eq i32 %.val.i.i3324, 0
  br i1 %.not.i.i3325, label %lean_inc_ref.exit3326, label %bb.axy

bb.axy:                                           ; preds = %bb.axx
  %i.bmj = atomicrmw sub ptr %i.bej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3326

lean_inc_ref.exit3326:                            ; preds = %bb.axw, %bb.axx, %bb.axy
  %i.bmk = ptrtoint ptr %i.beh to i64
  %i.bml = and i64 %i.bmk, 1
  %.not.i2661 = icmp eq i64 %i.bml, 0
  br i1 %.not.i2661, label %bb.axz, label %lean_inc.exit2662

bb.axz:                                           ; preds = %lean_inc_ref.exit3326
  %.val.i.i3327 = load i32, ptr %i.beh, align 4, !tbaa !14 ; 3 uses
  %i.bmm = icmp sgt i32 %.val.i.i3327, 0
  br i1 %i.bmm, label %bb.aya, label %bb.ayb, !prof !15

bb.aya:                                           ; preds = %bb.axz
  %i.bmn = add nuw i32 %.val.i.i3327, 1
  store i32 %i.bmn, ptr %i.beh, align 4, !tbaa !14
  br label %lean_inc.exit2662

bb.ayb:                                           ; preds = %bb.axz
  %.not.i.i3328 = icmp eq i32 %.val.i.i3327, 0
  br i1 %.not.i.i3328, label %lean_inc.exit2662, label %bb.ayc

bb.ayc:                                           ; preds = %bb.ayb
  %i.bmo = atomicrmw sub ptr %i.beh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2662

lean_inc.exit2662:                                ; preds = %bb.ayc, %bb.ayb, %bb.aya, %lean_inc_ref.exit3326
  %i.bmp = ptrtoint ptr %i.bef to i64
  %i.bmq = and i64 %i.bmp, 1
  %.not.i2659 = icmp eq i64 %i.bmq, 0
  br i1 %.not.i2659, label %bb.ayd, label %lean_inc.exit2660

bb.ayd:                                           ; preds = %lean_inc.exit2662
  %.val.i.i3330 = load i32, ptr %i.bef, align 4, !tbaa !14 ; 3 uses
  %i.bmr = icmp sgt i32 %.val.i.i3330, 0
  br i1 %i.bmr, label %bb.aye, label %bb.ayf, !prof !15

bb.aye:                                           ; preds = %bb.ayd
  %i.bms = add nuw i32 %.val.i.i3330, 1
  store i32 %i.bms, ptr %i.bef, align 4, !tbaa !14
  br label %lean_inc.exit2660

bb.ayf:                                           ; preds = %bb.ayd
  %.not.i.i3331 = icmp eq i32 %.val.i.i3330, 0
  br i1 %.not.i.i3331, label %lean_inc.exit2660, label %bb.ayg

bb.ayg:                                           ; preds = %bb.ayf
  %i.bmt = atomicrmw sub ptr %i.bef, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2660

lean_inc.exit2660:                                ; preds = %bb.ayg, %bb.ayf, %bb.aye, %lean_inc.exit2662
  %i.bmu = ptrtoint ptr %i.bed to i64
  %i.bmv = and i64 %i.bmu, 1
  %.not.i2657 = icmp eq i64 %i.bmv, 0
  br i1 %.not.i2657, label %bb.ayh, label %lean_inc.exit2658

bb.ayh:                                           ; preds = %lean_inc.exit2660
  %.val.i.i3333 = load i32, ptr %i.bed, align 4, !tbaa !14 ; 3 uses
  %i.bmw = icmp sgt i32 %.val.i.i3333, 0
  br i1 %i.bmw, label %bb.ayi, label %bb.ayj, !prof !15

bb.ayi:                                           ; preds = %bb.ayh
  %i.bmx = add nuw i32 %.val.i.i3333, 1
  store i32 %i.bmx, ptr %i.bed, align 4, !tbaa !14
  br label %lean_inc.exit2658

bb.ayj:                                           ; preds = %bb.ayh
  %.not.i.i3334 = icmp eq i32 %.val.i.i3333, 0
  br i1 %.not.i.i3334, label %lean_inc.exit2658, label %bb.ayk

bb.ayk:                                           ; preds = %bb.ayj
  %i.bmy = atomicrmw sub ptr %i.bed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2658

lean_inc.exit2658:                                ; preds = %bb.ayk, %bb.ayj, %bb.ayi, %lean_inc.exit2660
  %i.bmz = ptrtoint ptr %i.beb to i64
end_hunk_7
begin_hunk_8_@l___private_Lean_Compiler_LCNF_ResetReuse_0__Lean_Compiler_LCNF_D_go:bb.a
  br label %lean_dec.exit1926

bb.bcc:                                           ; preds = %bb.bca
  %.not.i2502 = icmp eq i32 %i.brt, 0
  br i1 %.not.i2502, label %lean_dec.exit1926, label %bb.bcd

bb.bcd:                                           ; preds = %bb.bcc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.brq) #7
  br label %lean_dec.exit1926

lean_dec.exit1926:                                ; preds = %bb.bcd, %bb.bcc, %bb.bcb, %lean_dec.exit1928
  %i.brw = load ptr, ptr %i.bec, align 8, !tbaa !10 ; 4 uses
  %i.brx = ptrtoint ptr %i.brw to i64
  %i.bry = and i64 %i.brx, 1
  %.not.i1923 = icmp eq i64 %i.bry, 0
  br i1 %.not.i1923, label %bb.bce, label %lean_dec.exit1924

bb.bce:                                           ; preds = %lean_dec.exit1926
  %i.brz = load i32, ptr %i.brw, align 4, !tbaa !14 ; 3 uses
  %i.bsa = icmp sgt i32 %i.brz, 1
  br i1 %i.bsa, label %bb.bcf, label %bb.bcg, !prof !15

bb.bcf:                                           ; preds = %bb.bce
  %i.bsb = add nsw i32 %i.brz, -1
  store i32 %i.bsb, ptr %i.brw, align 4, !tbaa !14
  br label %lean_dec.exit1924

bb.bcg:                                           ; preds = %bb.bce
  %.not.i2504 = icmp eq i32 %i.brz, 0
  br i1 %.not.i2504, label %lean_dec.exit1924, label %bb.bch

bb.bch:                                           ; preds = %bb.bcg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.brw) #7
  br label %lean_dec.exit1924

lean_dec.exit1924:                                ; preds = %bb.bch, %bb.bcg, %bb.bcf, %lean_dec.exit1926
  %i.bsc = load ptr, ptr %i.bea, align 8, !tbaa !10 ; 4 uses
  %i.bsd = ptrtoint ptr %i.bsc to i64
  %i.bse = and i64 %i.bsd, 1
  %.not.i1921 = icmp eq i64 %i.bse, 0
  br i1 %.not.i1921, label %bb.bci, label %bb.bcr

bb.bci:                                           ; preds = %lean_dec.exit1924
  %i.bsf = load i32, ptr %i.bsc, align 4, !tbaa !14 ; 3 uses
  %i.bsg = icmp sgt i32 %i.bsf, 1
  br i1 %i.bsg, label %bb.bcj, label %bb.bck, !prof !15

bb.bcj:                                           ; preds = %bb.bci
  %i.bsh = add nsw i32 %i.bsf, -1
  store i32 %i.bsh, ptr %i.bsc, align 4, !tbaa !14
  br label %bb.bcr

bb.bck:                                           ; preds = %bb.bci
  %.not.i2506 = icmp eq i32 %i.bsf, 0
  br i1 %.not.i2506, label %bb.bcr, label %bb.bcl

bb.bcl:                                           ; preds = %bb.bck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bsc) #7
  br label %bb.bcr

bb.bcm:                                           ; preds = %lean_inc.exit2646
  br i1 %.not.i2846, label %bb.bcn, label %lean_dec.exit1922

bb.bcn:                                           ; preds = %bb.bcm
  %i.bsi = icmp sgt i32 %.val2802, 1
  br i1 %i.bsi, label %bb.bco, label %bb.bcp, !prof !15

bb.bco:                                           ; preds = %bb.bcn
  %i.bsj = add nsw i32 %.val2802, -1
  store i32 %i.bsj, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit1922

bb.bcp:                                           ; preds = %bb.bcn
  %.not.i2508 = icmp eq i32 %.val2802, 0
  br i1 %.not.i2508, label %lean_dec.exit1922, label %bb.bcq

bb.bcq:                                           ; preds = %bb.bcp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit1922

bb.bcr:                                           ; preds = %lean_dec.exit1924, %bb.bcj, %bb.bck, %bb.bcl
  store ptr %i.bgi, ptr %i.bek, align 8, !tbaa !10
  br label %lean_dec.exit1918

lean_dec.exit1922:                                ; preds = %bb.bcq, %bb.bcp, %bb.bco, %bb.bcm
  %i.bsk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 9, i32 noundef 6, i32 noundef 0) ; 7 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 8
  store ptr %i.beb, ptr %i.bsl, align 8, !tbaa !10
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsk, i64 16
  store ptr %i.bed, ptr %i.bsm, align 8, !tbaa !10
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsk, i64 24
  store ptr %i.bef, ptr %i.bsn, align 8, !tbaa !10
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsk, i64 32
  store ptr %i.beh, ptr %i.bso, align 8, !tbaa !10
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bsk, i64 40
  store ptr %i.bej, ptr %i.bsp, align 8, !tbaa !10
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsk, i64 48
  store ptr %i.bgi, ptr %i.bsq, align 8, !tbaa !10
  br label %lean_dec.exit1918

bb.bcs:                                           ; preds = %lean_dec.exit1934
  %i.bsr = load i32, ptr %i.bgi, align 4, !tbaa !14 ; 3 uses
  %i.bss = icmp sgt i32 %i.bsr, 1
  br i1 %i.bss, label %bb.bct, label %bb.bcu, !prof !15

bb.bct:                                           ; preds = %bb.bcs
  %i.bst = add nsw i32 %i.bsr, -1
  store i32 %i.bst, ptr %i.bgi, align 4, !tbaa !14
  br label %lean_dec.exit1918

bb.bcu:                                           ; preds = %bb.bcs
  %.not.i2510 = icmp eq i32 %i.bsr, 0
  br i1 %.not.i2510, label %lean_dec.exit1918, label %bb.bcv

bb.bcv:                                           ; preds = %bb.bcu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bgi) #7
  br label %lean_dec.exit1918

lean_dec.exit1918:                                ; preds = %bb.bct, %bb.bcu, %bb.bcv, %lean_dec.exit1922, %bb.bcr
  %.21758 = phi ptr [ %i.bsk, %lean_dec.exit1922 ], [ %2, %bb.bcr ], [ %2, %bb.bcv ], [ %2, %bb.bcu ], [ %2, %bb.bct ] ; 2 uses
  br i1 %i.bgj, label %bb.bcw, label %bb.bcx

bb.bcw:                                           ; preds = %lean_dec.exit1918
  %i.bsu = getelementptr inbounds nuw i8, ptr %.01762, i64 8
  store ptr %.21758, ptr %i.bsu, align 8, !tbaa !10
  br label %bb.bcy

bb.bcx:                                           ; preds = %lean_dec.exit1918
  %i.bsv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8
  store ptr %.21758, ptr %i.bsw, align 8, !tbaa !10
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsv, i64 16
  store ptr %i.bfy, ptr %i.bsx, align 8, !tbaa !10
  br label %bb.bcy

bb.bcy:                                           ; preds = %bb.bcx, %bb.bcw
  %.01682 = phi ptr [ %.01762, %bb.bcw ], [ %i.bsv, %bb.bcx ] ; 2 uses
  br i1 %i.bhl, label %bb.bcz, label %bb.bda

bb.bcz:                                           ; preds = %bb.bcy
  %i.bsy = getelementptr inbounds nuw i8, ptr %.01760, i64 8
  store ptr %.01682, ptr %i.bsy, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.bda:                                           ; preds = %bb.bcy
  %i.bsz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  store ptr %.01682, ptr %i.bta, align 8, !tbaa !10
  br label %lean_dec.exit2180

lean_dec.exit1958:                                ; preds = %bb.aww, %bb.awx, %bb.awy, %lean_dec.exit1962, %bb.awu
  %.21755 = phi ptr [ %i.bku, %lean_dec.exit1962 ], [ %2, %bb.awu ], [ %2, %bb.awy ], [ %2, %bb.awx ], [ %2, %bb.aww ]
  %i.btb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  store ptr %.21755, ptr %i.btc, align 8, !tbaa !10
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btb, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.btd, align 8, !tbaa !10
  %i.bte = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 8
  store ptr %i.btb, ptr %i.btf, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.bdb:                                           ; preds = %lean_obj_tag.exit3290
  %i.btg = ptrtoint ptr %.01762 to i64
  %i.bth = and i64 %i.btg, 1
  %.not.i3357 = icmp eq i64 %i.bth, 0
  br i1 %.not.i3357, label %bb.bdc, label %lean_del_object.exit3358

bb.bdc:                                           ; preds = %bb.bdb
  tail call void @lean_free_object(ptr noundef nonnull %.01762) #7
  br label %lean_del_object.exit3358

lean_del_object.exit3358:                         ; preds = %bb.bdb, %bb.bdc
  %i.bti = ptrtoint ptr %i.bgi to i64
  %i.btj = and i64 %i.bti, 1
  %.not.i1915 = icmp eq i64 %i.btj, 0
  br i1 %.not.i1915, label %bb.bdd, label %lean_dec.exit1916

bb.bdd:                                           ; preds = %lean_del_object.exit3358
  %i.btk = load i32, ptr %i.bgi, align 4, !tbaa !14 ; 3 uses
  %i.btl = icmp sgt i32 %i.btk, 1
  br i1 %i.btl, label %bb.bde, label %bb.bdf, !prof !15

bb.bde:                                           ; preds = %bb.bdd
  %i.btm = add nsw i32 %i.btk, -1
  store i32 %i.btm, ptr %i.bgi, align 4, !tbaa !14
  br label %lean_dec.exit1916

bb.bdf:                                           ; preds = %bb.bdd
  %.not.i2512 = icmp eq i32 %i.btk, 0
  br i1 %.not.i2512, label %lean_dec.exit1916, label %bb.bdg

bb.bdg:                                           ; preds = %bb.bdf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bgi) #7
  br label %lean_dec.exit1916

lean_dec.exit1916:                                ; preds = %bb.bdg, %bb.bdf, %bb.bde, %lean_del_object.exit3358
  br i1 %.not.i2679, label %bb.bdh, label %lean_dec.exit1914

bb.bdh:                                           ; preds = %lean_dec.exit1916
  %i.btn = load i32, ptr %i.bfy, align 512, !tbaa !14 ; 3 uses
  %i.bto = icmp sgt i32 %i.btn, 1
  br i1 %i.bto, label %bb.bdi, label %bb.bdj, !prof !15

bb.bdi:                                           ; preds = %bb.bdh
  %i.btp = add nsw i32 %i.btn, -1
  store i32 %i.btp, ptr %i.bfy, align 512, !tbaa !14
  br label %lean_dec.exit1914

bb.bdj:                                           ; preds = %bb.bdh
  %.not.i2514 = icmp eq i32 %i.btn, 0
  br i1 %.not.i2514, label %lean_dec.exit1914, label %bb.bdk

bb.bdk:                                           ; preds = %bb.bdj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bfy) #7
  br label %lean_dec.exit1914

lean_dec.exit1914:                                ; preds = %bb.bdk, %bb.bdj, %bb.bdi, %lean_dec.exit1916
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %2, i32 noundef 6)
  %i.btq = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.btr = icmp sgt i32 %i.btq, 1
  br i1 %i.btr, label %bb.bdl, label %bb.bdm, !prof !15

bb.bdl:                                           ; preds = %lean_dec.exit1914
  %i.bts = add nsw i32 %i.btq, -1
  store i32 %i.bts, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2563

bb.bdm:                                           ; preds = %lean_dec.exit1914
  %.not.i2562 = icmp eq i32 %i.btq, 0
  br i1 %.not.i2562, label %lean_dec_ref.exit2563, label %bb.bdn

bb.bdn:                                           ; preds = %bb.bdm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2563

lean_dec_ref.exit2563:                            ; preds = %bb.bdl, %bb.bdm, %bb.bdn
  br i1 %.not.i2685, label %bb.bdo, label %lean_dec.exit1912

bb.bdo:                                           ; preds = %lean_dec_ref.exit2563
  %i.btt = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.btu = icmp sgt i32 %i.btt, 1
  br i1 %i.btu, label %bb.bdp, label %bb.bdq, !prof !15

bb.bdp:                                           ; preds = %bb.bdo
  %i.btv = add nsw i32 %i.btt, -1
  store i32 %i.btv, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1912

bb.bdq:                                           ; preds = %bb.bdo
  %.not.i2516 = icmp eq i32 %i.btt, 0
  br i1 %.not.i2516, label %lean_dec.exit1912, label %bb.bdr

bb.bdr:                                           ; preds = %bb.bdq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit1912

lean_dec.exit1912:                                ; preds = %bb.bdr, %bb.bdq, %bb.bdp, %lean_dec_ref.exit2563
  %i.btw = getelementptr inbounds nuw i8, ptr %i.bhb, i64 8
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !10 ; 5 uses
  %.val2801 = load i32, ptr %i.bhb, align 8, !tbaa !14
  %i.bty = icmp eq i32 %.val2801, 1
  br i1 %i.bty, label %lean_dec.exit2180, label %bb.bds

bb.bds:                                           ; preds = %lean_dec.exit1912
  %i.btz = ptrtoint ptr %i.btx to i64
  %i.bua = and i64 %i.btz, 1
  %.not.i2643 = icmp eq i64 %i.bua, 0
  br i1 %.not.i2643, label %bb.bdt, label %lean_inc.exit2644

bb.bdt:                                           ; preds = %bb.bds
  %.val.i.i3359 = load i32, ptr %i.btx, align 4, !tbaa !14 ; 3 uses
  %i.bub = icmp sgt i32 %.val.i.i3359, 0
  br i1 %i.bub, label %bb.bdu, label %bb.bdv, !prof !15

bb.bdu:                                           ; preds = %bb.bdt
  %i.buc = add nuw i32 %.val.i.i3359, 1
  store i32 %i.buc, ptr %i.btx, align 4, !tbaa !14
  br label %lean_inc.exit2644

bb.bdv:                                           ; preds = %bb.bdt
  %.not.i.i3360 = icmp eq i32 %.val.i.i3359, 0
  br i1 %.not.i.i3360, label %lean_inc.exit2644, label %bb.bdw

bb.bdw:                                           ; preds = %bb.bdv
  %i.bud = atomicrmw sub ptr %i.btx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2644

lean_inc.exit2644:                                ; preds = %bb.bdw, %bb.bdv, %bb.bdu, %bb.bds
  br i1 %.not.i3287, label %bb.bdx, label %bb.beb

bb.bdx:                                           ; preds = %lean_inc.exit2644
  %i.bue = load i32, ptr %i.bhb, align 8, !tbaa !14 ; 3 uses
  %i.buf = icmp sgt i32 %i.bue, 1
  br i1 %i.buf, label %bb.bdy, label %bb.bdz, !prof !15

bb.bdy:                                           ; preds = %bb.bdx
  %i.bug = add nsw i32 %i.bue, -1
  store i32 %i.bug, ptr %i.bhb, align 8, !tbaa !14
  br label %bb.beb

bb.bdz:                                           ; preds = %bb.bdx
  %.not.i2518 = icmp eq i32 %i.bue, 0
  br i1 %.not.i2518, label %bb.beb, label %bb.bea

bb.bea:                                           ; preds = %bb.bdz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bhb) #7
  br label %bb.beb

bb.beb:                                           ; preds = %lean_inc.exit2644, %bb.bdy, %bb.bdz, %bb.bea
  %i.buh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buh, i64 8
  store ptr %i.btx, ptr %i.bui, align 8, !tbaa !10
  br label %lean_dec.exit2180

bb.bec:                                           ; preds = %lean_dec.exit1986
  %i.buj = load i32, ptr %i.bem, align 4, !tbaa !14 ; 3 uses
  %i.buk = icmp sgt i32 %i.buj, 1
  br i1 %i.buk, label %bb.bed, label %bb.bee, !prof !15

bb.bed:                                           ; preds = %bb.bec
  %i.bul = add nsw i32 %i.buj, -1
  store i32 %i.bul, ptr %i.bem, align 4, !tbaa !14
  br label %lean_dec_ref.exit2561

bb.bee:                                           ; preds = %bb.bec
  %.not.i2560 = icmp eq i32 %i.buj, 0
  br i1 %.not.i2560, label %lean_dec_ref.exit2561, label %bb.bef

bb.bef:                                           ; preds = %bb.bee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bem) #7
  br label %lean_dec_ref.exit2561

lean_dec_ref.exit2561:                            ; preds = %bb.bed, %bb.bee, %bb.bef
  %i.bum = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.bun = icmp sgt i32 %i.bum, 1
  br i1 %i.bun, label %bb.beg, label %bb.beh, !prof !15

bb.beg:                                           ; preds = %lean_dec_ref.exit2561
  %i.buo = add nsw i32 %i.bum, -1
  store i32 %i.buo, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit2559

bb.beh:                                           ; preds = %lean_dec_ref.exit2561
  %.not.i2558 = icmp eq i32 %i.bum, 0
  br i1 %.not.i2558, label %lean_dec_ref.exit2559, label %bb.bei

bb.bei:                                           ; preds = %bb.beh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit2559

lean_dec_ref.exit2559:                            ; preds = %bb.beg, %bb.beh, %bb.bei
  br i1 %.not.i2685, label %bb.bej, label %lean_dec.exit1908

bb.bej:                                           ; preds = %lean_dec_ref.exit2559
  %i.bup = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.buq = icmp sgt i32 %i.bup, 1
  br i1 %i.buq, label %bb.bek, label %bb.bel, !prof !15

bb.bek:                                           ; preds = %bb.bej
  %i.bur = add nsw i32 %i.bup, -1
  store i32 %i.bur, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1908

bb.bel:                                           ; preds = %bb.bej
  %.not.i2520 = icmp eq i32 %i.bup, 0
  br i1 %.not.i2520, label %lean_dec.exit1908, label %bb.bem

bb.bem:                                           ; preds = %bb.bel
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit1908

lean_dec.exit1908:                                ; preds = %bb.bem, %bb.bel, %bb.bek, %lean_dec_ref.exit2559
  %i.bus = load ptr, ptr %i.bfw, align 8, !tbaa !10 ; 10 uses
  %i.but = ptrtoint ptr %i.bus to i64
  %i.buu = and i64 %i.but, 1
  %.not.i2641 = icmp eq i64 %i.buu, 0             ; 2 uses
  br i1 %.not.i2641, label %bb.ben, label %lean_inc.exit2642

bb.ben:                                           ; preds = %lean_dec.exit1908
  %.val.i.i3362 = load i32, ptr %i.bus, align 4, !tbaa !14 ; 3 uses
  %i.buv = icmp sgt i32 %.val.i.i3362, 0
  br i1 %i.buv, label %bb.beo, label %bb.bep, !prof !15

bb.beo:                                           ; preds = %bb.ben
  %i.buw = add nuw i32 %.val.i.i3362, 1
  store i32 %i.buw, ptr %i.bus, align 4, !tbaa !14
  br label %lean_inc.exit2642

bb.bep:                                           ; preds = %bb.ben
  %.not.i.i3363 = icmp eq i32 %.val.i.i3362, 0
  br i1 %.not.i.i3363, label %lean_inc.exit2642, label %bb.beq

bb.beq:                                           ; preds = %bb.bep
  %i.bux = atomicrmw sub ptr %i.bus, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2642

lean_inc.exit2642:                                ; preds = %lean_dec.exit1908, %bb.beo, %bb.bep, %bb.beq
  %i.buy = load i32, ptr %i.bfm, align 8, !tbaa !14 ; 3 uses
  %i.buz = icmp sgt i32 %i.buy, 1
  br i1 %i.buz, label %bb.ber, label %bb.bes, !prof !15

bb.ber:                                           ; preds = %lean_inc.exit2642
  %i.bva = add nsw i32 %i.buy, -1
  store i32 %i.bva, ptr %i.bfm, align 8, !tbaa !14
  br label %lean_dec.exit1906

end_hunk_8
