Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExplicitBoxing?download=true
inline.NumInlined: 2343
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@l___private_Lean_Compiler_LCNF_ExplicitBoxing_0__Lean_Compiler_LCNF_Code_explicitBoxing:bb.a
lean_inc.exit1772:                                ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %.val.i1811 = load i32, ptr %i.ac, align 8, !tbaa !15 ; 4 uses
  %i.ar = icmp eq i32 %.val.i1811, 1
  br i1 %i.ar, label %.preheader.i, label %bb.z

.preheader.i:                                     ; preds = %lean_inc.exit1772
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !10 ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, 1
  %.not.i.i1812 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i1812, label %bb.v, label %lean_dec.exit.i

bb.v:                                             ; preds = %.preheader.i
  %i.av = load i32, ptr %i.as, align 4, !tbaa !15 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %bb.v
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !15
  br label %lean_dec.exit.i

bb.x:                                             ; preds = %bb.v
  %.not.i7.i = icmp eq i32 %i.av, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.y, %bb.x, %bb.w, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref_known.exit

bb.z:                                             ; preds = %lean_inc.exit1772
  %i.ay = icmp sgt i32 %.val.i1811, 1
  br i1 %i.ay, label %bb.aa, label %bb.ab, !prof !16

bb.aa:                                            ; preds = %bb.z
  %i.az = add nsw i32 %.val.i1811, -1
  store i32 %i.az, ptr %i.ac, align 8, !tbaa !15
  br label %lean_dec_ref_known.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i8.i = icmp eq i32 %.val.i1811, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aa, %bb.ab, %bb.ac
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10 ; 4 uses
  %.val.i.i1813 = load i32, ptr %i.w, align 4, !tbaa !15 ; 3 uses
  %i.bc = icmp sgt i32 %.val.i.i1813, 0
  br i1 %i.bc, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %lean_dec_ref_known.exit
  %i.bd = add nuw i32 %.val.i.i1813, 1
  store i32 %i.bd, ptr %i.w, align 4, !tbaa !15
  br label %lean_inc_ref.exit1815

bb.ae:                                            ; preds = %lean_dec_ref_known.exit
  %.not.i.i1814 = icmp eq i32 %.val.i.i1813, 0
  br i1 %.not.i.i1814, label %lean_inc_ref.exit1815, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = atomicrmw add ptr %i.w, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1815

lean_inc_ref.exit1815:                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.val.i.i1816 = load i32, ptr %i.bb, align 4, !tbaa !15 ; 3 uses
  %i.bf = icmp sgt i32 %.val.i.i1816, 0
  br i1 %i.bf, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %lean_inc_ref.exit1815
  %i.bg = add nuw i32 %.val.i.i1816, 1
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !15
  br label %lean_inc_ref.exit1818

bb.ah:                                            ; preds = %lean_inc_ref.exit1815
  %.not.i.i1817 = icmp eq i32 %.val.i.i1816, 0
  br i1 %.not.i.i1817, label %lean_inc_ref.exit1818, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bh = atomicrmw add ptr %i.bb, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1818

lean_inc_ref.exit1818:                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.val.i.i1819 = load i32, ptr %i.s, align 8, !tbaa !15 ; 3 uses
  %i.bi = icmp sgt i32 %.val.i.i1819, 0
  br i1 %i.bi, label %bb.aj, label %bb.ak, !prof !16

bb.aj:                                            ; preds = %lean_inc_ref.exit1818
  %i.bj = add nuw i32 %.val.i.i1819, 1
  store i32 %i.bj, ptr %i.s, align 8, !tbaa !15
  br label %lean_inc_ref.exit1821

bb.ak:                                            ; preds = %lean_inc_ref.exit1818
  %.not.i.i1820 = icmp eq i32 %.val.i.i1819, 0
  br i1 %.not.i.i1820, label %lean_inc_ref.exit1821, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = atomicrmw add ptr %i.s, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1821

lean_inc_ref.exit1821:                            ; preds = %bb.aj, %bb.ak, %bb.al
  %i.bl = tail call ptr @l___private_Lean_Compiler_LCNF_CompilerM_0__Lean_Compiler_LCNF_updateFunDeclImp___redArg(i8 noundef zeroext 1, ptr noundef nonnull %i.s, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.w, ptr noundef %i.al, ptr noundef %4) #5 ; 10 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = and i64 %i.bm, 1
  %.not.i1822 = icmp eq i64 %i.bn, 0              ; 2 uses
  br i1 %.not.i1822, label %bb.an, label %bb.am

bb.am:                                            ; preds = %lean_inc_ref.exit1821
  %i.bo = lshr i64 %i.bm, 1
  %i.bp = trunc i64 %i.bo to i32
  br label %lean_obj_tag.exit1825

bb.an:                                            ; preds = %lean_inc_ref.exit1821
  %i.bq = getelementptr i8, ptr %i.bl, i64 4
  %.val.i1824 = load i32, ptr %i.bq, align 4
  %i.br = lshr i32 %.val.i1824, 24
  br label %lean_obj_tag.exit1825

lean_obj_tag.exit1825:                            ; preds = %bb.am, %bb.an
  %.0.i1823 = phi i32 [ %i.bp, %bb.am ], [ %i.br, %bb.an ]
  %i.bs = icmp eq i32 %.0.i1823, 0
  br i1 %i.bs, label %bb.ao, label %bb.cp

bb.ao:                                            ; preds = %lean_obj_tag.exit1825
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !10 ; 13 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i1769 = icmp eq i64 %i.bw, 0              ; 3 uses
  br i1 %.not.i1769, label %bb.ap, label %lean_inc.exit1770

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i1826 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i1826, 0
  br i1 %i.bx, label %bb.aq, label %bb.ar, !prof !16

bb.aq:                                            ; preds = %bb.ap
  %i.by = add nuw i32 %.val.i.i1826, 1
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !15
  br label %lean_inc.exit1770

bb.ar:                                            ; preds = %bb.ap
  %.not.i.i1827 = icmp eq i32 %.val.i.i1826, 0
  br i1 %.not.i.i1827, label %lean_inc.exit1770, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = atomicrmw add ptr %i.bu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1770

lean_inc.exit1770:                                ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bl, i32 noundef 1)
  %.val.i.i1829 = load i32, ptr %i.u, align 4, !tbaa !15 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i1829, 0
  br i1 %i.ca, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %lean_inc.exit1770
  %i.cb = add nuw i32 %.val.i.i1829, 1
  store i32 %i.cb, ptr %i.u, align 4, !tbaa !15
  br label %lean_inc_ref.exit1831

bb.au:                                            ; preds = %lean_inc.exit1770
  %.not.i.i1830 = icmp eq i32 %.val.i.i1829, 0
  br i1 %.not.i.i1830, label %lean_inc_ref.exit1831, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cc = atomicrmw add ptr %i.u, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1831

lean_inc_ref.exit1831:                            ; preds = %bb.at, %bb.au, %bb.av
  %i.cd = tail call ptr @l___private_Lean_Compiler_LCNF_ExplicitBoxing_0__Lean_Compiler_LCNF_Code_explicitBoxing(ptr noundef nonnull %i.u, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) ; 9 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i1832 = icmp eq i64 %i.cf, 0              ; 2 uses
  br i1 %.not.i1832, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %lean_inc_ref.exit1831
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit1835

bb.ax:                                            ; preds = %lean_inc_ref.exit1831
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %.val.i1834 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i1834, 24
  br label %lean_obj_tag.exit1835

lean_obj_tag.exit1835:                            ; preds = %bb.aw, %bb.ax
  %.0.i1833 = phi i32 [ %i.ch, %bb.aw ], [ %i.cj, %bb.ax ]
  %i.ck = icmp eq i32 %.0.i1833, 0
  br i1 %i.ck, label %bb.ay, label %bb.ck

bb.ay:                                            ; preds = %lean_obj_tag.exit1835
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !10 ; 10 uses
  %.val1796 = load i32, ptr %i.cd, align 8, !tbaa !15
  %i.cn = icmp eq i32 %.val1796, 1                ; 3 uses
  br i1 %i.cn, label %lean_dec.exit1370, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = and i64 %i.co, 1
  %.not.i1767 = icmp eq i64 %i.cp, 0
  br i1 %.not.i1767, label %bb.ba, label %lean_inc.exit1768

bb.ba:                                            ; preds = %bb.az
  %.val.i.i1836 = load i32, ptr %i.cm, align 4, !tbaa !15 ; 3 uses
  %i.cq = icmp sgt i32 %.val.i.i1836, 0
  br i1 %i.cq, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.cr = add nuw i32 %.val.i.i1836, 1
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !15
  br label %lean_inc.exit1768

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i1837 = icmp eq i32 %.val.i.i1836, 0
  br i1 %.not.i.i1837, label %lean_inc.exit1768, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cs = atomicrmw add ptr %i.cm, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1768

lean_inc.exit1768:                                ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  br i1 %.not.i1832, label %bb.be, label %lean_dec.exit1370

bb.be:                                            ; preds = %lean_inc.exit1768
  %i.ct = load i32, ptr %i.cd, align 8, !tbaa !15 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.bf, label %bb.bg, !prof !16

bb.bf:                                            ; preds = %bb.be
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %i.cd, align 8, !tbaa !15
  br label %lean_dec.exit1370

bb.bg:                                            ; preds = %bb.be
  %.not.i1371 = icmp eq i32 %i.ct, 0
  br i1 %.not.i1371, label %lean_dec.exit1370, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #5
  br label %lean_dec.exit1370

lean_dec.exit1370:                                ; preds = %lean_inc.exit1768, %bb.bf, %bb.bg, %bb.bh, %bb.ay
  %.01110 = phi ptr [ %i.cd, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.bh ], [ inttoptr (i64 1 to ptr), %bb.bg ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1768 ] ; 4 uses
  %.not2371 = icmp eq ptr %i.u, %i.cm
  %.not2372 = icmp eq ptr %i.s, %i.bu
  %or.cond = and i1 %.not2372, %.not2371
  br i1 %or.cond, label %bb.ca, label %.critedge

.critedge:                                        ; preds = %lean_dec.exit1370
  %.val1795 = load i32, ptr %0, align 8, !tbaa !15 ; 4 uses
  %i.cw = icmp eq i32 %.val1795, 1
  br i1 %i.cw, label %bb.bi, label %bb.br

bb.bi:                                            ; preds = %.critedge
  %i.cx = load ptr, ptr %i.t, align 8, !tbaa !10  ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i1367 = icmp eq i64 %i.cz, 0
  br i1 %.not.i1367, label %bb.bj, label %lean_dec.exit1368

bb.bj:                                            ; preds = %bb.bi
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !15 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bk, label %bb.bl, !prof !16

bb.bk:                                            ; preds = %bb.bj
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !15
  br label %lean_dec.exit1368

bb.bl:                                            ; preds = %bb.bj
  %.not.i1372 = icmp eq i32 %i.da, 0
  br i1 %.not.i1372, label %lean_dec.exit1368, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #5
  br label %lean_dec.exit1368

lean_dec.exit1368:                                ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !10  ; 4 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = and i64 %i.de, 1
  %.not.i1365 = icmp eq i64 %i.df, 0
  br i1 %.not.i1365, label %bb.bn, label %bb.bw

bb.bn:                                            ; preds = %lean_dec.exit1368
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !15 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.bo, label %bb.bp, !prof !16

bb.bo:                                            ; preds = %bb.bn
  %i.di = add nsw i32 %i.dg, -1
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !15
  br label %bb.bw

bb.bp:                                            ; preds = %bb.bn
  %.not.i1374 = icmp eq i32 %i.dg, 0
  br i1 %.not.i1374, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %bb.bw

bb.br:                                            ; preds = %.critedge
  br i1 %.not.i1797, label %bb.bs, label %lean_dec.exit1366

bb.bs:                                            ; preds = %bb.br
  %i.dj = icmp sgt i32 %.val1795, 1
  br i1 %i.dj, label %bb.bt, label %bb.bu, !prof !16

bb.bt:                                            ; preds = %bb.bs
  %i.dk = add nsw i32 %.val1795, -1
  store i32 %i.dk, ptr %0, align 8, !tbaa !15
  br label %lean_dec.exit1366

bb.bu:                                            ; preds = %bb.bs
  %.not.i1376 = icmp eq i32 %.val1795, 0
  br i1 %.not.i1376, label %lean_dec.exit1366, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit1366

bb.bw:                                            ; preds = %lean_dec.exit1368, %bb.bo, %bb.bp, %bb.bq
  store ptr %i.cm, ptr %i.t, align 8, !tbaa !10
  store ptr %i.bu, ptr %i.r, align 8, !tbaa !10
  br label %bb.bx

lean_dec.exit1366:                                ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.br
  %i.dl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.bu, ptr %i.dm, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.cm, ptr %i.dn, align 8, !tbaa !10
  br label %bb.bx

bb.bx:                                            ; preds = %lean_dec.exit1366, %bb.bw
  %.01136 = phi ptr [ %0, %bb.bw ], [ %i.dl, %lean_dec.exit1366 ] ; 2 uses
  br i1 %i.cn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.do = getelementptr inbounds nuw i8, ptr %.01110, i64 8
  store ptr %.01136, ptr %i.do, align 8, !tbaa !10
  br label %lean_dec.exit1356

bb.bz:                                            ; preds = %bb.bx
  %i.dp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %.01136, ptr %i.dq, align 8, !tbaa !10
  br label %lean_dec.exit1356

bb.ca:                                            ; preds = %lean_dec.exit1370
  %i.dr = load i32, ptr %i.cm, align 4, !tbaa !15 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.cb, label %bb.cc, !prof !16

bb.cb:                                            ; preds = %bb.ca
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %i.cm, align 4, !tbaa !15
  br label %lean_dec.exit1362

bb.cc:                                            ; preds = %bb.ca
  %.not.i1378 = icmp eq i32 %i.dr, 0
  br i1 %.not.i1378, label %lean_dec.exit1362, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #5
  br label %lean_dec.exit1362

lean_dec.exit1362:                                ; preds = %bb.cd, %bb.cc, %bb.cb
  br i1 %.not.i1769, label %bb.ce, label %lean_dec.exit1360

bb.ce:                                            ; preds = %lean_dec.exit1362
  %i.du = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.cf, label %bb.cg, !prof !16

bb.cf:                                            ; preds = %bb.ce
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.bu, align 4, !tbaa !15
  br label %lean_dec.exit1360

bb.cg:                                            ; preds = %bb.ce
  %.not.i1380 = icmp eq i32 %i.du, 0
  br i1 %.not.i1380, label %lean_dec.exit1360, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #5
  br label %lean_dec.exit1360

lean_dec.exit1360:                                ; preds = %bb.ch, %bb.cg, %bb.cf, %lean_dec.exit1362
  br i1 %i.cn, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %lean_dec.exit1360
  %i.dx = getelementptr inbounds nuw i8, ptr %.01110, i64 8
  store ptr %0, ptr %i.dx, align 8, !tbaa !10
  br label %lean_dec.exit1356

bb.cj:                                            ; preds = %lean_dec.exit1360
  %i.dy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %0, ptr %i.dz, align 8, !tbaa !10
  br label %lean_dec.exit1356

bb.ck:                                            ; preds = %lean_obj_tag.exit1835
  br i1 %.not.i1769, label %bb.cl, label %lean_dec.exit1358

bb.cl:                                            ; preds = %bb.ck
  %i.ea = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cm, label %bb.cn, !prof !16

bb.cm:                                            ; preds = %bb.cl
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.bu, align 4, !tbaa !15
  br label %lean_dec.exit1358

bb.cn:                                            ; preds = %bb.cl
  %.not.i1382 = icmp eq i32 %i.ea, 0
  br i1 %.not.i1382, label %lean_dec.exit1358, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #5
  br label %lean_dec.exit1358

lean_dec.exit1358:                                ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %0, i32 noundef 2)
  br label %lean_dec.exit1356

bb.cp:                                            ; preds = %lean_obj_tag.exit1825
  %.val.i1839 = load i32, ptr %0, align 8, !tbaa !15 ; 4 uses
  %i.ed = icmp eq i32 %.val.i1839, 1
  br i1 %i.ed, label %.preheader.i1841.preheader, label %bb.cy

.preheader.i1841.preheader:                       ; preds = %bb.cp
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !10  ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i1843 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i1843, label %bb.cq, label %lean_dec.exit.i1844

bb.cq:                                            ; preds = %.preheader.i1841.preheader
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !15 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !15
  br label %lean_dec.exit.i1844

bb.cs:                                            ; preds = %bb.cq
  %.not.i7.i1847 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i1847, label %lean_dec.exit.i1844, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #5
  br label %lean_dec.exit.i1844

lean_dec.exit.i1844:                              ; preds = %bb.ct, %bb.cs, %bb.cr, %.preheader.i1841.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10 ; 4 uses
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = and i64 %i.em, 1
  %.not.i.i1843.1 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i1843.1, label %bb.cu, label %lean_dec.exit.i1844.1

bb.cu:                                            ; preds = %lean_dec.exit.i1844
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !15 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.cx, label %bb.cv, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %.not.i7.i1847.1 = icmp eq i32 %i.eo, 0
  br i1 %.not.i7.i1847.1, label %lean_dec.exit.i1844.1, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #5
  br label %lean_dec.exit.i1844.1

bb.cx:                                            ; preds = %bb.cu
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.el, align 4, !tbaa !15
  br label %lean_dec.exit.i1844.1

lean_dec.exit.i1844.1:                            ; preds = %bb.cx, %bb.cw, %bb.cv, %lean_dec.exit.i1844
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit1848

bb.cy:                                            ; preds = %bb.cp
  %i.er = icmp sgt i32 %.val.i1839, 1
  br i1 %i.er, label %bb.cz, label %bb.da, !prof !16

bb.cz:                                            ; preds = %bb.cy
  %i.es = add nsw i32 %.val.i1839, -1
  store i32 %i.es, ptr %0, align 8, !tbaa !15
  br label %lean_dec_ref_known.exit1848

bb.da:                                            ; preds = %bb.cy
  %.not.i8.i1840 = icmp eq i32 %.val.i1839, 0
  br i1 %.not.i8.i1840, label %lean_dec_ref_known.exit1848, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit1848

lean_dec_ref_known.exit1848:                      ; preds = %lean_dec.exit.i1844.1, %bb.cz, %bb.da, %bb.db
  %i.et = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10 ; 5 uses
  %.val1794 = load i32, ptr %i.bl, align 8, !tbaa !15
  %i.ev = icmp eq i32 %.val1794, 1
  br i1 %i.ev, label %lean_dec.exit1356, label %bb.dc

bb.dc:                                            ; preds = %lean_dec_ref_known.exit1848
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = and i64 %i.ew, 1
  %.not.i1765 = icmp eq i64 %i.ex, 0
  br i1 %.not.i1765, label %bb.dd, label %lean_inc.exit1766

bb.dd:                                            ; preds = %bb.dc
  %.val.i.i1849 = load i32, ptr %i.eu, align 4, !tbaa !15 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i1849, 0
  br i1 %i.ey, label %bb.de, label %bb.df, !prof !16

bb.de:                                            ; preds = %bb.dd
  %i.ez = add nuw i32 %.val.i.i1849, 1
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !15
  br label %lean_inc.exit1766

bb.df:                                            ; preds = %bb.dd
  %.not.i.i1850 = icmp eq i32 %.val.i.i1849, 0
  br i1 %.not.i.i1850, label %lean_inc.exit1766, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.fa = atomicrmw add ptr %i.eu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1766

lean_inc.exit1766:                                ; preds = %bb.dg, %bb.df, %bb.de, %bb.dc
  br i1 %.not.i1822, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %lean_inc.exit1766
  %i.fb = load i32, ptr %i.bl, align 8, !tbaa !15 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.di, label %bb.dj, !prof !16

bb.di:                                            ; preds = %bb.dh
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %i.bl, align 8, !tbaa !15
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  %.not.i1384 = icmp eq i32 %i.fb, 0
  br i1 %.not.i1384, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #5
  br label %bb.dl

bb.dl:                                            ; preds = %lean_inc.exit1766, %bb.di, %bb.dj, %bb.dk
  %i.fe = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.eu, ptr %i.ff, align 8, !tbaa !10
  br label %lean_dec.exit1356

bb.dm:                                            ; preds = %lean_obj_tag.exit1807
  %.val.i1852 = load i32, ptr %0, align 8, !tbaa !15 ; 4 uses
  %i.fg = icmp eq i32 %.val.i1852, 1
  br i1 %i.fg, label %.preheader.i1854.preheader, label %bb.dv

.preheader.i1854.preheader:                       ; preds = %bb.dm
end_hunk_0
