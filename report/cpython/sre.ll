inline.NumInlined: 358
inline.NumDeleted: 87
begin_hunk_0_@sre_ucs1_match:bb.a
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !133 ; 2 uses
  %i.blu = load i32, ptr %i.blt, align 4, !tbaa !7
  %i.blv = zext i32 %i.blu to i64
  %i.blw = getelementptr [4 x i8], ptr %i.blt, i64 %i.blv ; 2 uses
  %i.blx = add i32 %.13, 1                        ; 3 uses
  %i.bly = and i32 %i.blx, 4095
  %i.blz = icmp eq i32 %i.bly, 0
  br i1 %i.blz, label %bb.re, label %.preheader1904

bb.re:                                            ; preds = %bb.rd
  %i.bma = tail call i32 @PyErr_CheckSignals() #13
  %.not1644 = icmp eq i32 %i.bma, 0
  br i1 %.not1644, label %.preheader1904, label %.loopexit

bb.rf:                                            ; preds = %.backedge
  %i.bmb = load ptr, ptr %i.ak, align 8, !tbaa !89
  %i.bmc = ptrtoint ptr %.151535 to i64
  %i.bmd = ptrtoint ptr %i.bmb to i64
  %i.bme = sub i64 %i.bmc, %i.bmd
  %i.bmf = getelementptr i8, ptr %.12, i64 4
  %i.bmg = load i32, ptr %i.bmf, align 4, !tbaa !7
  %i.bmh = zext i32 %i.bmg to i64                 ; 2 uses
  %.not1762 = icmp ult i64 %i.bme, %i.bmh
  br i1 %.not1762, label %bb.rx, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bmi = sub nsw i64 0, %i.bmh
  %i.bmj = getelementptr i8, ptr %.151535, i64 %i.bmi
  store ptr %i.bmj, ptr %0, align 8, !tbaa !81
  %i.bmk = getelementptr i8, ptr %.40, i64 16
  %i.bml = load <2 x i32>, ptr %i.ae, align 4, !tbaa !7
  %i.bmm = load i32, ptr %i.ae, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.bml, ptr %i.bmk, align 8, !tbaa !7
  %i.bmn = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1764 = icmp ne ptr %i.bmn, null
  %i.bmo = icmp sgt i32 %i.bmm, -1
  %or.cond1876 = select i1 %.not1764, i1 %i.bmo, i1 false
  %.pre2498 = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond1876, label %bb.rh, label %bb.rm

bb.rh:                                            ; preds = %bb.rg
  %i.bmp = add nuw i32 %i.bmm, 1
  %i.bmq = sext i32 %i.bmp to i64
  %i.bmr = shl nsw i64 %i.bmq, 3                  ; 4 uses
  %i.bms = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bmt = sub i64 %i.bms, %.pre2498
  %i.bmu = icmp ugt i64 %i.bmr, %i.bmt
  br i1 %i.bmu, label %bb.ri, label %._crit_edge2495

._crit_edge2495:                                  ; preds = %bb.rh
  %.pre2496 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.rl

bb.ri:                                            ; preds = %bb.rh
  %i.bmv = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.bmr) ; 2 uses
  %i.bmw = icmp slt i32 %i.bmv, 0
  br i1 %i.bmw, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.bmx = sext i32 %i.bmv to i64
  br label %.loopexit

bb.rk:                                            ; preds = %bb.ri
  %.not1765 = icmp eq i64 %.111490.ph, -1
  %.pre2497 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.bmy = getelementptr i8, ptr %.pre2497, i64 %.111490.ph
  %spec.select2933 = select i1 %.not1765, ptr %.40, ptr %i.bmy
  br label %bb.rl

bb.rl:                                            ; preds = %bb.rk, %._crit_edge2495
  %i.bmz = phi ptr [ %.pre2496, %._crit_edge2495 ], [ %.pre2497, %bb.rk ]
  %.36 = phi ptr [ %.40, %._crit_edge2495 ], [ %spec.select2933, %bb.rk ]
  %i.bna = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bnb = getelementptr i8, ptr %i.bmz, i64 %i.bna
  %i.bnc = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bnb, ptr noundef nonnull align 8 dereferenceable(1) %i.bnc, i64 %i.bmr, i1 false)
  %i.bnd = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bne = add i64 %i.bnd, %i.bmr                 ; 2 uses
  store i64 %i.bne, ptr %i.e, align 8, !tbaa !120
  br label %bb.rm

bb.rm:                                            ; preds = %bb.rl, %bb.rg
  %i.bnf = phi i64 [ %i.bne, %bb.rl ], [ %.pre2498, %bb.rg ] ; 4 uses
  %.37 = phi ptr [ %.36, %bb.rl ], [ %.40, %bb.rg ] ; 2 uses
  %i.bng = getelementptr i8, ptr %.37, i64 24
  store ptr %.12, ptr %i.bng, align 8, !tbaa !133
  %i.bnh = getelementptr i8, ptr %.37, i64 32
  store ptr %.151535, ptr %i.bnh, align 8, !tbaa !134
  %i.bni = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bnj = sub i64 %i.bni, %i.bnf
  %i.bnk = icmp ult i64 %i.bnj, 56
  br i1 %i.bnk, label %bb.rn, label %bb.rp

bb.rn:                                            ; preds = %bb.rm
  %i.bnl = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.bnm = icmp slt i32 %i.bnl, 0
  br i1 %i.bnm, label %bb.ro, label %._crit_edge2499

._crit_edge2499:                                  ; preds = %bb.rn
  %.pre2500 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.bnn = sext i32 %i.bnl to i64
  br label %.loopexit

bb.rp:                                            ; preds = %._crit_edge2499, %bb.rm
  %i.bno = phi i64 [ %.pre2500, %._crit_edge2499 ], [ %i.bnf, %bb.rm ]
  %i.bnp = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bnq = getelementptr i8, ptr %i.bnp, i64 %i.bnf ; 5 uses
  %i.bnr = add i64 %i.bno, 56
  store i64 %i.bnr, ptr %i.e, align 8, !tbaa !120
  %i.bns = getelementptr i8, ptr %.12, i64 8      ; 2 uses
  %i.bnt = getelementptr i8, ptr %i.bnq, i64 24
  store ptr %i.bns, ptr %i.bnt, align 8, !tbaa !133
  %i.bnu = getelementptr i8, ptr %i.bnq, i64 40
  store i32 0, ptr %i.bnu, align 8, !tbaa !125
  %i.bnv = getelementptr i8, ptr %i.bnq, i64 44
  store i32 13, ptr %i.bnv, align 4, !tbaa !124
  %i.bnw = getelementptr i8, ptr %i.bnq, i64 48
  store i64 %.111490.ph, ptr %i.bnw, align 8, !tbaa !122
  br label %.backedge1905.backedge

bb.rq:                                            ; preds = %bb.su
  br i1 %.not1642, label %.critedge1899, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.bnx = getelementptr i8, ptr %i.bpi, i64 16
  %i.bny = load i32, ptr %i.bnx, align 8, !tbaa !135 ; 2 uses
  %i.bnz = icmp sgt i32 %i.bny, -1
  br i1 %i.bnz, label %bb.rs, label %.critedge1899

bb.rs:                                            ; preds = %bb.rr
  %i.boa = add nuw i32 %i.bny, 1
  %i.bob = sext i32 %i.boa to i64
  %i.boc = shl nsw i64 %i.bob, 3
  %i.bod = sub i64 %i.bpf, %i.boc
  store i64 %i.bod, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1899

bb.rt:                                            ; preds = %bb.su
  br i1 %.not1642, label %bb.rw, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.boe = getelementptr i8, ptr %i.bpi, i64 16
  %i.bof = load i32, ptr %i.boe, align 8, !tbaa !135 ; 2 uses
  %i.bog = icmp sgt i32 %i.bof, -1
  br i1 %i.bog, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %bb.ru
  %i.boh = add nuw i32 %i.bof, 1
  %i.boi = sext i32 %i.boh to i64
  %i.boj = shl nsw i64 %i.boi, 3                  ; 3 uses
  %i.bok = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bol = getelementptr i8, ptr %i.bph, i64 %i.bpf
  %i.bom = sub nsw i64 0, %i.boj
  %i.bon = getelementptr i8, ptr %i.bol, i64 %i.bom
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bok, ptr noundef nonnull align 1 dereferenceable(1) %i.bon, i64 %i.boj, i1 false)
  %i.boo = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bop = sub i64 %i.boo, %i.boj
  store i64 %i.bop, ptr %i.e, align 8, !tbaa !120
  br label %bb.rw

bb.rw:                                            ; preds = %bb.rt, %bb.ru, %bb.rv
  %i.boq = getelementptr i8, ptr %i.bpi, i64 16
  %i.bor = load <2 x i32>, ptr %i.boq, align 8, !tbaa !7
  store <2 x i32> %i.bor, ptr %i.ae, align 4, !tbaa !7
  br label %bb.rx

bb.rx:                                            ; preds = %bb.rw, %bb.rf
  %.141534 = phi ptr [ %.151535, %bb.rf ], [ %i.bsk, %bb.rw ] ; 2 uses
  %.38 = phi ptr [ %.40, %bb.rf ], [ %i.bpi, %bb.rw ] ; 2 uses
  %.121504 = phi i32 [ %.14, %bb.rf ], [ %.13, %bb.rw ]
  %.101489 = phi i64 [ %.111490.ph, %bb.rf ], [ %i.bpb, %bb.rw ] ; 2 uses
  %.11 = phi ptr [ %.12, %bb.rf ], [ %i.bsi, %bb.rw ] ; 2 uses
  %i.bos = load i32, ptr %.11, align 4, !tbaa !7
  %i.bot = zext i32 %i.bos to i64
  %i.bou = getelementptr [4 x i8], ptr %.11, i64 %i.bot ; 2 uses
  %i.bov = add i32 %.121504, 1                    ; 3 uses
  %i.bow = and i32 %i.bov, 4095
  %i.box = icmp eq i32 %i.bow, 0
  br i1 %i.box, label %bb.ry, label %.preheader1904

bb.ry:                                            ; preds = %bb.rx
  %i.boy = tail call i32 @PyErr_CheckSignals() #13
  %.not1763 = icmp eq i32 %i.boy, 0
  br i1 %.not1763, label %.preheader1904, label %.loopexit

.critedge1899.loopexit:                           ; preds = %.lr.ph2173, %bb.pp
  br label %.critedge1899

.critedge1899.loopexit3183:                       ; preds = %.lr.ph2164, %bb.qd
  br label %.critedge1899

.critedge1899.loopexit3184:                       ; preds = %.lr.ph2159, %sre_lower_ascii.exit1851
  br label %.critedge1899

.critedge1899.loopexit3185:                       ; preds = %.lr.ph, %bb.qj
  br label %.critedge1899

.critedge1899:                                    ; preds = %.backedge, %bb.st, %repeat_pool_free.exit1855, %bb.sh, %bb.sg, %bb.se, %bb.sc, %.critedge1899.loopexit3185, %.critedge1899.loopexit3184, %.critedge1899.loopexit3183, %.critedge1899.loopexit, %bb.rs, %bb.rr, %bb.rq, %bb.qy, %bb.qi, %bb.qh, %bb.qc, %bb.qb, %bb.pu, %bb.pt, %bb.po, %bb.pn, %bb.pk, %repeat_pool_free.exit, %bb.nl, %bb.nb, %bb.na, %bb.mw, %bb.mv, %bb.mu, %bb.mi, %bb.ma, %bb.ln, %bb.lm, %bb.ku, %bb.km, %bb.kc, %bb.jw, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jk, %bb.jj, %bb.ji, %bb.iv, %bb.in, %bb.ij, %.sink.split, %bb.ii, %bb.ih, %bb.ic, %bb.ib, %bb.ia, %bb.ht, %._crit_edge2180, %bb.ho, %bb.hn, %bb.hm, %bb.gw, %bb.gq, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gf, %bb.ge, %bb.gd, %sre_ucs1_charset_loc_ignore.exit, %bb.fd, %bb.fb, %bb.ex, %bb.ew, %sre_lower_ascii.exit1817, %bb.eq, %char_loc_ignore.exit1816, %bb.em, %bb.el, %bb.ek, %bb.eg, %bb.ef, %sre_lower_ascii.exit1813, %bb.dz, %char_loc_ignore.exit, %bb.du, %bb.dq, %bb.dp, %sre_lower_ascii.exit, %bb.dj, %bb.df, %bb.de, %bb.da, %bb.cw, %bb.cv, %bb.cr, %bb.cq, %sre_ucs1_at.exit, %Py_UNICODE_ISALNUM.exit111.thread.i, %Py_UNICODE_ISALNUM.exit103.thread.i, %bb.bv, %bb.bo, %bb.bh, %bb.ay, %bb.ap, %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.x, %bb.w, %bb.s, %bb.r, %bb.h
  %.39 = phi ptr [ %.40, %.critedge1899.loopexit ], [ %.16, %bb.jr ], [ %i.bpi, %bb.sg ], [ %i.bpi, %bb.ma ], [ %i.bpi, %bb.ln ], [ %i.bpi, %bb.mu ], [ %i.bpi, %bb.sh ], [ %i.bpi, %bb.nl ], [ %.40, %sre_ucs1_charset_loc_ignore.exit ], [ %i.bpi, %bb.gd ], [ %i.bpi, %repeat_pool_free.exit1855 ], [ %i.bpi, %bb.ku ], [ %i.bpi, %bb.sc ], [ %i.bpi, %bb.mi ], [ %i.bpi, %bb.st ], [ %.40, %bb.x ], [ %.40, %bb.ag ], [ %.40, %bb.cr ], [ %.40, %sre_ucs1_at.exit ], [ %.40, %bb.qi ], [ %.01505, %bb.h ], [ %.40, %bb.af ], [ %.40, %sre_lower_ascii.exit1813 ], [ %i.bpi, %bb.se ], [ %.40, %bb.pn ], [ %i.bpi, %bb.nb ], [ %.40, %bb.cw ], [ %.40, %sre_lower_ascii.exit ], [ %.40, %bb.al ], [ %.40, %bb.s ], [ %.40, %sre_lower_ascii.exit1817 ], [ %.40, %bb.pu ], [ %.40, %bb.qb ], [ %.40, %.critedge1899.loopexit3184 ], [ %.40, %bb.da ], [ %.40, %bb.go ], [ %i.bpi, %bb.ia ], [ %i.we, %bb.gw ], [ %.40, %bb.eg ], [ %i.we, %bb.gq ], [ %i.bpi, %bb.ji ], [ %.121517, %bb.iv ], [ %.40, %bb.ij ], [ %i.adf, %bb.in ], [ %.40, %bb.ju ], [ %i.ahu, %bb.kc ], [ %.40, %bb.po ], [ %.40, %bb.pt ], [ %i.bpi, %bb.rr ], [ %.40, %char_loc_ignore.exit1816 ], [ %.40, %bb.df ], [ %.40, %char_loc_ignore.exit ], [ %.40, %bb.qc ], [ %.40, %bb.qh ], [ %i.bpi, %bb.rs ], [ %.40, %bb.ex ], [ %.40, %bb.dq ], [ %i.bpi, %repeat_pool_free.exit ], [ %i.ahu, %bb.jw ], [ %i.bpi, %bb.km ], [ %.21507, %bb.gn ], [ %i.bpi, %bb.hm ], [ %.111516.ph, %.sink.split ], [ %i.bpi, %bb.pk ], [ %.40, %bb.qy ], [ %.40, %.backedge ], [ %.40, %bb.ah ], [ %.40, %bb.ao ], [ %.40, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ %.40, %bb.bv ], [ %.40, %bb.bo ], [ %.40, %bb.bh ], [ %.40, %bb.ay ], [ %.40, %bb.ap ], [ %.40, %bb.am ], [ %.40, %bb.aj ], [ %.40, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ %.40, %bb.r ], [ %.40, %bb.w ], [ %.40, %bb.ad ], [ %.40, %bb.cq ], [ %.40, %bb.cv ], [ %.40, %bb.de ], [ %.40, %bb.dj ], [ %.40, %bb.dp ], [ %.40, %bb.du ], [ %.40, %bb.dz ], [ %.40, %bb.ef ], [ %.40, %bb.el ], [ %.40, %bb.em ], [ %.40, %bb.ek ], [ %.40, %bb.eq ], [ %.40, %bb.ew ], [ %.40, %bb.fd ], [ %.40, %bb.fb ], [ %i.bpi, %bb.gf ], [ %i.bpi, %bb.ge ], [ %.21507, %bb.gl ], [ %.21507, %bb.gm ], [ %i.bpi, %bb.ho ], [ %i.bpi, %bb.hn ], [ %i.bpi, %bb.ic ], [ %i.bpi, %bb.ib ], [ %.91514, %bb.ii ], [ %.71512, %bb.ht ], [ %.71512, %._crit_edge2180 ], [ %.91514, %bb.ih ], [ %i.bpi, %bb.jk ], [ %i.bpi, %bb.jj ], [ %.16, %bb.jt ], [ %.16, %bb.js ], [ %i.bpi, %bb.lm ], [ %i.bpi, %bb.mw ], [ %i.bpi, %bb.mv ], [ %i.bpi, %bb.na ], [ %i.bpi, %bb.rq ], [ %.40, %.critedge1899.loopexit3183 ], [ %.40, %.critedge1899.loopexit3185 ] ; 2 uses
  %.13 = phi i32 [ %.14, %.critedge1899.loopexit ], [ %.71499, %bb.jr ], [ %.13, %bb.sg ], [ %.13, %bb.ma ], [ %.13, %bb.ln ], [ %.13, %bb.mu ], [ %.13, %bb.sh ], [ %.13, %bb.nl ], [ %.14, %sre_ucs1_charset_loc_ignore.exit ], [ %.13, %bb.gd ], [ %.13, %repeat_pool_free.exit1855 ], [ %.13, %bb.ku ], [ %.13, %bb.sc ], [ %.13, %bb.mi ], [ %.13, %bb.st ], [ %.14, %bb.x ], [ %.14, %bb.ag ], [ %.14, %bb.cr ], [ %.14, %sre_ucs1_at.exit ], [ %.14, %bb.qi ], [ %.01492, %bb.h ], [ %.14, %bb.af ], [ %.14, %sre_lower_ascii.exit1813 ], [ %.13, %bb.se ], [ %.14, %bb.pn ], [ %.13, %bb.nb ], [ %.14, %bb.cw ], [ %.14, %sre_lower_ascii.exit ], [ %.14, %bb.al ], [ %.14, %bb.s ], [ %.14, %sre_lower_ascii.exit1817 ], [ %.14, %bb.pu ], [ %.14, %bb.qb ], [ %.14, %.critedge1899.loopexit3184 ], [ %.14, %bb.da ], [ %.14, %bb.go ], [ %.13, %bb.ia ], [ %.14, %bb.gw ], [ %.14, %bb.eg ], [ %.14, %bb.gq ], [ %.13, %bb.ji ], [ %.14, %bb.iv ], [ %.14, %bb.ij ], [ %.14, %bb.in ], [ %.14, %bb.ju ], [ %.14, %bb.kc ], [ %.14, %bb.po ], [ %.14, %bb.pt ], [ %.13, %bb.rr ], [ %.14, %char_loc_ignore.exit1816 ], [ %.14, %bb.df ], [ %.14, %char_loc_ignore.exit ], [ %.14, %bb.qc ], [ %.14, %bb.qh ], [ %.13, %bb.rs ], [ %.14, %bb.ex ], [ %.14, %bb.dq ], [ %.13, %repeat_pool_free.exit ], [ %.14, %bb.jw ], [ %.13, %bb.km ], [ %.11493, %bb.gn ], [ %.13, %bb.hm ], [ %.51497.ph, %.sink.split ], [ %.13, %bb.pk ], [ %.14, %bb.qy ], [ %.14, %.backedge ], [ %.14, %bb.ah ], [ %.14, %bb.ao ], [ %.14, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ %.14, %bb.bv ], [ %.14, %bb.bo ], [ %.14, %bb.bh ], [ %.14, %bb.ay ], [ %.14, %bb.ap ], [ %.14, %bb.am ], [ %.14, %bb.aj ], [ %.14, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ %.14, %bb.r ], [ %.14, %bb.w ], [ %.14, %bb.ad ], [ %.14, %bb.cq ], [ %.14, %bb.cv ], [ %.14, %bb.de ], [ %.14, %bb.dj ], [ %.14, %bb.dp ], [ %.14, %bb.du ], [ %.14, %bb.dz ], [ %.14, %bb.ef ], [ %.14, %bb.el ], [ %.14, %bb.em ], [ %.14, %bb.ek ], [ %.14, %bb.eq ], [ %.14, %bb.ew ], [ %.14, %bb.fd ], [ %.14, %bb.fb ], [ %.13, %bb.gf ], [ %.13, %bb.ge ], [ %.11493, %bb.gl ], [ %.11493, %bb.gm ], [ %.13, %bb.ho ], [ %.13, %bb.hn ], [ %.13, %bb.ic ], [ %.13, %bb.ib ], [ %.41496, %bb.ii ], [ %.31495, %bb.ht ], [ %.31495, %._crit_edge2180 ], [ %.41496, %bb.ih ], [ %.13, %bb.jk ], [ %.13, %bb.jj ], [ %.71499, %bb.jt ], [ %.71499, %bb.js ], [ %.13, %bb.lm ], [ %.13, %bb.mw ], [ %.13, %bb.mv ], [ %.13, %bb.na ], [ %.13, %bb.rq ], [ %.14, %.critedge1899.loopexit3183 ], [ %.14, %.critedge1899.loopexit3185 ] ; 49 uses
  %.not1641 = phi i1 [ true, %.critedge1899.loopexit ], [ true, %bb.jr ], [ false, %bb.sg ], [ true, %bb.ma ], [ false, %bb.ln ], [ false, %bb.mu ], [ false, %bb.sh ], [ true, %bb.nl ], [ true, %sre_ucs1_charset_loc_ignore.exit ], [ false, %bb.gd ], [ false, %repeat_pool_free.exit1855 ], [ true, %bb.ku ], [ false, %bb.sc ], [ true, %bb.mi ], [ true, %bb.st ], [ true, %bb.x ], [ false, %bb.ag ], [ true, %bb.cr ], [ true, %sre_ucs1_at.exit ], [ true, %bb.qi ], [ true, %bb.h ], [ true, %bb.af ], [ true, %sre_lower_ascii.exit1813 ], [ false, %bb.se ], [ true, %bb.pn ], [ true, %bb.nb ], [ true, %bb.cw ], [ true, %sre_lower_ascii.exit ], [ true, %bb.al ], [ true, %bb.s ], [ true, %sre_lower_ascii.exit1817 ], [ true, %bb.pu ], [ true, %bb.qb ], [ true, %.critedge1899.loopexit3184 ], [ true, %bb.da ], [ true, %bb.go ], [ false, %bb.ia ], [ false, %bb.gw ], [ true, %bb.eg ], [ true, %bb.gq ], [ false, %bb.ji ], [ false, %bb.iv ], [ true, %bb.ij ], [ true, %bb.in ], [ true, %bb.ju ], [ false, %bb.kc ], [ true, %bb.po ], [ true, %bb.pt ], [ true, %bb.rr ], [ true, %char_loc_ignore.exit1816 ], [ true, %bb.df ], [ true, %char_loc_ignore.exit ], [ true, %bb.qc ], [ true, %bb.qh ], [ true, %bb.rs ], [ true, %bb.ex ], [ true, %bb.dq ], [ true, %repeat_pool_free.exit ], [ true, %bb.jw ], [ true, %bb.km ], [ true, %bb.gn ], [ false, %bb.hm ], [ true, %.sink.split ], [ true, %bb.pk ], [ true, %bb.qy ], [ true, %.backedge ], [ true, %bb.ah ], [ true, %bb.ao ], [ true, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ true, %bb.bv ], [ true, %bb.bo ], [ true, %bb.bh ], [ true, %bb.ay ], [ true, %bb.ap ], [ true, %bb.am ], [ true, %bb.aj ], [ true, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ true, %bb.r ], [ true, %bb.w ], [ true, %bb.ad ], [ true, %bb.cq ], [ true, %bb.cv ], [ true, %bb.de ], [ true, %bb.dj ], [ true, %bb.dp ], [ true, %bb.du ], [ true, %bb.dz ], [ true, %bb.ef ], [ true, %bb.el ], [ true, %bb.em ], [ true, %bb.ek ], [ true, %bb.eq ], [ true, %bb.ew ], [ true, %bb.fd ], [ true, %bb.fb ], [ false, %bb.gf ], [ false, %bb.ge ], [ true, %bb.gl ], [ true, %bb.gm ], [ false, %bb.ho ], [ false, %bb.hn ], [ false, %bb.ic ], [ false, %bb.ib ], [ true, %bb.ii ], [ true, %bb.ht ], [ true, %._crit_edge2180 ], [ true, %bb.ih ], [ false, %bb.jk ], [ false, %bb.jj ], [ true, %bb.jt ], [ true, %bb.js ], [ false, %bb.lm ], [ false, %bb.mw ], [ false, %bb.mv ], [ true, %bb.na ], [ true, %bb.rq ], [ true, %.critedge1899.loopexit3183 ], [ true, %.critedge1899.loopexit3185 ] ; 15 uses
  %i.boz = phi i1 [ false, %.critedge1899.loopexit ], [ false, %bb.jr ], [ true, %bb.sg ], [ false, %bb.ma ], [ true, %bb.ln ], [ true, %bb.mu ], [ true, %bb.sh ], [ false, %bb.nl ], [ false, %sre_ucs1_charset_loc_ignore.exit ], [ true, %bb.gd ], [ true, %repeat_pool_free.exit1855 ], [ false, %bb.ku ], [ true, %bb.sc ], [ false, %bb.mi ], [ false, %bb.st ], [ false, %bb.x ], [ true, %bb.ag ], [ false, %bb.cr ], [ false, %sre_ucs1_at.exit ], [ false, %bb.qi ], [ false, %bb.h ], [ false, %bb.af ], [ false, %sre_lower_ascii.exit1813 ], [ true, %bb.se ], [ false, %bb.pn ], [ false, %bb.nb ], [ false, %bb.cw ], [ false, %sre_lower_ascii.exit ], [ false, %bb.al ], [ false, %bb.s ], [ false, %sre_lower_ascii.exit1817 ], [ false, %bb.pu ], [ false, %bb.qb ], [ false, %.critedge1899.loopexit3184 ], [ false, %bb.da ], [ false, %bb.go ], [ true, %bb.ia ], [ true, %bb.gw ], [ false, %bb.eg ], [ false, %bb.gq ], [ true, %bb.ji ], [ true, %bb.iv ], [ false, %bb.ij ], [ false, %bb.in ], [ false, %bb.ju ], [ true, %bb.kc ], [ false, %bb.po ], [ false, %bb.pt ], [ false, %bb.rr ], [ false, %char_loc_ignore.exit1816 ], [ false, %bb.df ], [ false, %char_loc_ignore.exit ], [ false, %bb.qc ], [ false, %bb.qh ], [ false, %bb.rs ], [ false, %bb.ex ], [ false, %bb.dq ], [ false, %repeat_pool_free.exit ], [ false, %bb.jw ], [ false, %bb.km ], [ false, %bb.gn ], [ true, %bb.hm ], [ false, %.sink.split ], [ false, %bb.pk ], [ false, %bb.qy ], [ false, %.backedge ], [ false, %bb.ah ], [ false, %bb.ao ], [ false, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ false, %bb.bv ], [ false, %bb.bo ], [ false, %bb.bh ], [ false, %bb.ay ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ false, %bb.r ], [ false, %bb.w ], [ false, %bb.ad ], [ false, %bb.cq ], [ false, %bb.cv ], [ false, %bb.de ], [ false, %bb.dj ], [ false, %bb.dp ], [ false, %bb.du ], [ false, %bb.dz ], [ false, %bb.ef ], [ false, %bb.el ], [ false, %bb.em ], [ false, %bb.ek ], [ false, %bb.eq ], [ false, %bb.ew ], [ false, %bb.fd ], [ false, %bb.fb ], [ true, %bb.gf ], [ true, %bb.ge ], [ false, %bb.gl ], [ false, %bb.gm ], [ true, %bb.ho ], [ true, %bb.hn ], [ true, %bb.ic ], [ true, %bb.ib ], [ false, %bb.ii ], [ false, %bb.ht ], [ false, %._crit_edge2180 ], [ false, %bb.ih ], [ true, %bb.jk ], [ true, %bb.jj ], [ false, %bb.jt ], [ false, %bb.js ], [ true, %bb.lm ], [ true, %bb.mw ], [ true, %bb.mv ], [ false, %bb.na ], [ false, %bb.rq ], [ false, %.critedge1899.loopexit3183 ], [ false, %.critedge1899.loopexit3185 ]
  %.01491 = phi i64 [ 0, %.critedge1899.loopexit ], [ 0, %bb.jr ], [ 1, %bb.sg ], [ 0, %bb.ma ], [ 1, %bb.ln ], [ 1, %bb.mu ], [ 1, %bb.sh ], [ 0, %bb.nl ], [ 0, %sre_ucs1_charset_loc_ignore.exit ], [ 1, %bb.gd ], [ 1, %repeat_pool_free.exit1855 ], [ 0, %bb.ku ], [ 1, %bb.sc ], [ 0, %bb.mi ], [ 0, %bb.st ], [ 0, %bb.x ], [ 1, %bb.ag ], [ 0, %bb.cr ], [ 0, %sre_ucs1_at.exit ], [ 0, %bb.qi ], [ 0, %bb.h ], [ 0, %bb.af ], [ 0, %sre_lower_ascii.exit1813 ], [ 1, %bb.se ], [ 0, %bb.pn ], [ 0, %bb.nb ], [ 0, %bb.cw ], [ 0, %sre_lower_ascii.exit ], [ 0, %bb.al ], [ 0, %bb.s ], [ 0, %sre_lower_ascii.exit1817 ], [ 0, %bb.pu ], [ 0, %bb.qb ], [ 0, %.critedge1899.loopexit3184 ], [ 0, %bb.da ], [ 0, %bb.go ], [ 1, %bb.ia ], [ 1, %bb.gw ], [ 0, %bb.eg ], [ 0, %bb.gq ], [ 1, %bb.ji ], [ 1, %bb.iv ], [ 0, %bb.ij ], [ 0, %bb.in ], [ 0, %bb.ju ], [ 1, %bb.kc ], [ 0, %bb.po ], [ 0, %bb.pt ], [ 0, %bb.rr ], [ 0, %char_loc_ignore.exit1816 ], [ 0, %bb.df ], [ 0, %char_loc_ignore.exit ], [ 0, %bb.qc ], [ 0, %bb.qh ], [ 0, %bb.rs ], [ 0, %bb.ex ], [ 0, %bb.dq ], [ 0, %repeat_pool_free.exit ], [ 0, %bb.jw ], [ 0, %bb.km ], [ 0, %bb.gn ], [ 1, %bb.hm ], [ 0, %.sink.split ], [ 0, %bb.pk ], [ 0, %bb.qy ], [ 0, %.backedge ], [ 0, %bb.ah ], [ 0, %bb.ao ], [ 0, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ 0, %bb.bv ], [ 0, %bb.bo ], [ 0, %bb.bh ], [ 0, %bb.ay ], [ 0, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.aj ], [ 0, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ 0, %bb.r ], [ 0, %bb.w ], [ 0, %bb.ad ], [ 0, %bb.cq ], [ 0, %bb.cv ], [ 0, %bb.de ], [ 0, %bb.dj ], [ 0, %bb.dp ], [ 0, %bb.du ], [ 0, %bb.dz ], [ 0, %bb.ef ], [ 0, %bb.el ], [ 0, %bb.em ], [ 0, %bb.ek ], [ 0, %bb.eq ], [ 0, %bb.ew ], [ 0, %bb.fd ], [ 0, %bb.fb ], [ 1, %bb.gf ], [ 1, %bb.ge ], [ 0, %bb.gl ], [ 0, %bb.gm ], [ 1, %bb.ho ], [ 1, %bb.hn ], [ 1, %bb.ic ], [ 1, %bb.ib ], [ 0, %bb.ii ], [ 0, %bb.ht ], [ 0, %._crit_edge2180 ], [ 0, %bb.ih ], [ 1, %bb.jk ], [ 1, %bb.jj ], [ 0, %bb.jt ], [ 0, %bb.js ], [ 1, %bb.lm ], [ 1, %bb.mw ], [ 1, %bb.mv ], [ 0, %bb.na ], [ 0, %bb.rq ], [ 0, %.critedge1899.loopexit3183 ], [ 0, %.critedge1899.loopexit3185 ] ; 2 uses
  %i.bpa = getelementptr i8, ptr %.39, i64 48
  %i.bpb = load i64, ptr %i.bpa, align 8, !tbaa !122 ; 19 uses
  %i.bpc = getelementptr i8, ptr %.39, i64 44
  %i.bpd = load i32, ptr %i.bpc, align 4, !tbaa !124
  %i.bpe = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpf = add i64 %i.bpe, -56                    ; 19 uses
  store i64 %i.bpf, ptr %i.e, align 8, !tbaa !120
  %i.bpg = icmp eq i64 %i.bpb, -1
  br i1 %i.bpg, label %bb.rz, label %bb.sa

bb.rz:                                            ; preds = %.critedge1899
  store i32 %.13, ptr %i.c, align 8, !tbaa !119
  br label %.loopexit

bb.sa:                                            ; preds = %.critedge1899
  %i.bph = load ptr, ptr %i.u, align 8, !tbaa !88 ; 10 uses
  %i.bpi = getelementptr i8, ptr %i.bph, i64 %i.bpb ; 119 uses
  switch i32 %i.bpd, label %.loopexit [
    i32 2, label %bb.sb
    i32 3, label %bb.sc
    i32 5, label %bb.sd
    i32 6, label %bb.se
    i32 11, label %bb.sf
    i32 1, label %bb.sg
    i32 4, label %bb.sh
    i32 14, label %bb.si
    i32 15, label %bb.sj
    i32 7, label %bb.sk
    i32 8, label %bb.sp
    i32 9, label %bb.sq
    i32 10, label %bb.sr
    i32 16, label %bb.ss
    i32 12, label %bb.st
    i32 13, label %bb.su
  ]

bb.sb:                                            ; preds = %bb.sa
  %i.bpj = getelementptr i8, ptr %i.bpi, i64 24
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !133
  %i.bpl = getelementptr i8, ptr %i.bpi, i64 32
  %i.bpm = load ptr, ptr %i.bpl, align 8, !tbaa !134 ; 2 uses
  %i.bpn = getelementptr i8, ptr %i.bpi, i64 8
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !26
  %i.bpp = getelementptr i8, ptr %i.bpo, i64 16
  %i.bpq = getelementptr i8, ptr %i.bph, i64 %i.bpf
  %i.bpr = getelementptr i8, ptr %i.bpq, i64 -8
  %i.bps = load i64, ptr %i.bpr, align 1
  store i64 %i.bps, ptr %i.bpp, align 8
  %i.bpt = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpu = add i64 %i.bpt, -8                     ; 4 uses
  store i64 %i.bpu, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.lo, label %bb.lm

bb.sc:                                            ; preds = %bb.sa
  %i.bpv = getelementptr i8, ptr %i.bpi, i64 32
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !134
  %i.bpx = getelementptr i8, ptr %i.bpi, i64 8
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !26
  store ptr %i.bpy, ptr %i.ac, align 8, !tbaa !87
  br i1 %i.boz, label %.critedge1899, label %bb.ma

bb.sd:                                            ; preds = %bb.sa
  %i.bpz = getelementptr i8, ptr %i.bpi, i64 24
  %i.bqa = getelementptr i8, ptr %i.bpi, i64 32
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !134 ; 2 uses
  %i.bqc = load <2 x ptr>, ptr %i.bpz, align 8, !tbaa !95
  %i.bqd = load ptr, ptr %i.ac, align 8, !tbaa !87
  %i.bqe = getelementptr i8, ptr %i.bpi, i64 8    ; 2 uses
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !26
  store ptr %i.bqf, ptr %i.ac, align 8, !tbaa !87
  %.not1793 = icmp eq ptr %i.bqd, null            ; 2 uses
  br i1 %.not1641, label %bb.mx, label %bb.mu

bb.se:                                            ; preds = %bb.sa
  %i.bqg = getelementptr i8, ptr %i.bpi, i64 32
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !134
  %i.bqi = getelementptr i8, ptr %i.bpi, i64 8    ; 2 uses
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !26
  %i.bqk = getelementptr i8, ptr %i.bqj, i64 16
  %i.bql = getelementptr i8, ptr %i.bph, i64 %i.bpf
  %i.bqm = getelementptr i8, ptr %i.bql, i64 -8
  %i.bqn = load i64, ptr %i.bqm, align 1
  store i64 %i.bqn, ptr %i.bqk, align 8
  %i.bqo = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bqp = add i64 %i.bqo, -8
  store i64 %i.bqp, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.nl, label %.critedge1899

bb.sf:                                            ; preds = %bb.sa
  %i.bqq = getelementptr i8, ptr %i.bpi, i64 24
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !133
  %i.bqs = getelementptr i8, ptr %i.bpi, i64 32
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !134
  %i.bqu = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1782 = icmp eq ptr %i.bqu, null            ; 2 uses
  br i1 %.not1641, label %bb.gg, label %bb.gd

bb.sg:                                            ; preds = %bb.sa
  br i1 %.not1641, label %bb.ku, label %.critedge1899

bb.sh:                                            ; preds = %bb.sa
  br i1 %.not1641, label %bb.mi, label %.critedge1899

bb.si:                                            ; preds = %bb.sa
  %i.bqv = getelementptr i8, ptr %i.bpi, i64 32
  %i.bqw = load ptr, ptr %i.bqv, align 8, !tbaa !134 ; 2 uses
  br i1 %.not1641, label %bb.nx, label %bb.nw

bb.sj:                                            ; preds = %bb.sa
  %i.bqx = getelementptr i8, ptr %i.bpi, i64 24
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !133 ; 2 uses
  %i.bqz = getelementptr i8, ptr %i.bpi, i64 32
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !134 ; 2 uses
  %i.brb = getelementptr i8, ptr %i.bpi, i64 16   ; 2 uses
  %i.brc = load i32, ptr %i.brb, align 8, !tbaa !135 ; 4 uses
  %i.brd = icmp sgt i32 %i.brc, -1                ; 2 uses
  br i1 %.not1641, label %bb.oy, label %bb.ov

bb.sk:                                            ; preds = %bb.sa
  %i.bre = getelementptr i8, ptr %i.bpi, i64 8    ; 2 uses
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !26
  %i.brg = getelementptr i8, ptr %i.brf, i64 24
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !143
  store ptr %i.brh, ptr %i.ac, align 8, !tbaa !87
  %i.bri = load ptr, ptr %i.bre, align 8, !tbaa !26 ; 3 uses
  %i.brj = getelementptr i8, ptr %i.bri, i64 32
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !147 ; 3 uses
  %i.brl = getelementptr i8, ptr %i.bri, i64 40   ; 2 uses
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !106 ; 4 uses
  %.not.i1853 = icmp eq ptr %i.brk, null
  br i1 %.not.i1853, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.brn = getelementptr i8, ptr %i.brk, i64 40
  store ptr %i.brm, ptr %i.brn, align 8, !tbaa !106
  br label %bb.sn

bb.sm:                                            ; preds = %bb.sk
  store ptr %i.brm, ptr %i.ag, align 8, !tbaa !105
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %.not15.i1854 = icmp eq ptr %i.brm, null
  br i1 %.not15.i1854, label %repeat_pool_free.exit1855, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.bro = getelementptr i8, ptr %i.brm, i64 32
  store ptr %i.brk, ptr %i.bro, align 8, !tbaa !147
  br label %repeat_pool_free.exit1855

repeat_pool_free.exit1855:                        ; preds = %bb.sn, %bb.so
  %i.brp = load ptr, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.brp, ptr %i.brl, align 8, !tbaa !106
  store ptr %i.bri, ptr %i.ah, align 8, !tbaa !110
  br i1 %.not1641, label %bb.km, label %.critedge1899

bb.sp:                                            ; preds = %bb.sa
  %i.brq = getelementptr i8, ptr %i.bpi, i64 24
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !133
  %i.brs = getelementptr i8, ptr %i.bpi, i64 32
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !134
  %i.bru = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1653 = icmp eq ptr %i.bru, null            ; 2 uses
  br i1 %.not1641, label %bb.hp, label %bb.hm

bb.sq:                                            ; preds = %bb.sa
  %i.brv = getelementptr i8, ptr %i.bpi, i64 24
  %i.brw = load ptr, ptr %i.brv, align 8, !tbaa !133
  %i.brx = getelementptr i8, ptr %i.bpi, i64 32
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !134
  %i.brz = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1650 = icmp eq ptr %i.brz, null            ; 2 uses
  br i1 %.not1641, label %bb.id, label %bb.ia

bb.sr:                                            ; preds = %bb.sa
  %i.bsa = getelementptr i8, ptr %i.bpi, i64 24
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !133 ; 2 uses
  %i.bsc = getelementptr i8, ptr %i.bpi, i64 32
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !134 ; 2 uses
  %i.bse = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1647 = icmp eq ptr %i.bse, null            ; 2 uses
  br i1 %.not1641, label %bb.jl, label %bb.ji

bb.ss:                                            ; preds = %bb.sa
  br i1 %.not1641, label %bb.pk, label %bb.pl

bb.st:                                            ; preds = %bb.sa
  %i.bsf = getelementptr i8, ptr %i.bpi, i64 32
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !134 ; 2 uses
  br i1 %.not1641, label %.critedge1899, label %bb.rd

bb.su:                                            ; preds = %bb.sa
  %i.bsh = getelementptr i8, ptr %i.bpi, i64 24
  %i.bsi = load ptr, ptr %i.bsh, align 8, !tbaa !133
  %i.bsj = getelementptr i8, ptr %i.bpi, i64 32
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !134
  %i.bsl = load ptr, ptr %i.ac, align 8, !tbaa !87
  %.not1642 = icmp eq ptr %i.bsl, null            ; 2 uses
  br i1 %.not1641, label %bb.rt, label %bb.rq

.loopexit:                                        ; preds = %.backedge, %bb.sa, %bb.rz, %bb.ry, %bb.ro, %bb.rj, %bb.re, %bb.rb, %bb.qw, %bb.qt, %bb.qp, %bb.ql, %bb.qf, %bb.pz, %bb.pr, %bb.pm, %bb.pi, %bb.pf, %bb.ou, %bb.ol, %bb.nv, %bb.nm, %bb.ni, %bb.ne, %bb.mr, %bb.mm, %bb.mf, %bb.mb, %bb.lx, %bb.lj, %bb.lf, %bb.la, %bb.kr, %bb.kn, %bb.kj, %bb.kg, %bb.ke, %bb.jv, %bb.jo, %bb.jf, %bb.iz, %bb.im, %bb.hx, %bb.hj, %bb.ha, %bb.gp, %bb.ga, %bb.fm, %bb.fh, %bb.fe, %bb.ez, %bb.eu, %bb.eo, %bb.ei, %bb.ed, %bb.dx, %bb.ds, %bb.dn, %bb.dh, %bb.dc, %bb.cy, %bb.ct, %bb.co, %bb.z, %bb.u, %bb.p, %bb.k, %bb.g
  %.0 = phi i64 [ -9, %bb.g ], [ %.01491, %bb.rz ], [ -1, %.backedge ], [ %i.adc, %bb.im ], [ -9, %bb.lx ], [ -10, %bb.qf ], [ -10, %bb.dx ], [ %i.avq, %bb.ne ], [ %i.awl, %bb.ni ], [ -10, %bb.pf ], [ -10, %bb.dh ], [ -9, %bb.ga ], [ -10, %bb.ez ], [ -10, %bb.qw ], [ -10, %bb.ds ], [ -9, %bb.nv ], [ -9, %bb.ol ], [ -9, %bb.ou ], [ -9, %bb.nm ], [ -10, %bb.ct ], [ -10, %bb.cy ], [ %i.bli, %bb.rb ], [ %i.bmx, %bb.rj ], [ %i.bnn, %bb.ro ], [ -10, %bb.re ], [ -10, %bb.z ], [ %i.sv, %bb.fm ], [ -10, %bb.co ], [ -10, %bb.ry ], [ -10, %bb.ed ], [ -10, %bb.pm ], [ -10, %bb.ql ], [ -10, %bb.qp ], [ -10, %bb.qt ], [ -10, %bb.dc ], [ -10, %bb.fe ], [ -10, %bb.dn ], [ -10, %bb.p ], [ -10, %bb.k ], [ %i.aku, %bb.kr ], [ %i.amo, %bb.la ], [ %i.anc, %bb.lf ], [ %i.anx, %bb.lj ], [ -9, %bb.kg ], [ %i.aro, %bb.mf ], [ %i.atd, %bb.mm ], [ %i.att, %bb.mr ], [ -2, %bb.kn ], [ -10, %bb.u ], [ -10, %bb.eu ], [ -10, %bb.pz ], [ %i.ajj, %bb.kj ], [ -10, %bb.ke ], [ -10, %bb.fh ], [ %i.xj, %bb.ha ], [ %i.yt, %bb.hj ], [ %i.aax, %bb.hx ], [ -10, %bb.ei ], [ %i.aek, %bb.iz ], [ %i.aff, %bb.jf ], [ %i.wb, %bb.gp ], [ %i.bdi, %bb.pi ], [ -2, %bb.mb ], [ %i.agr, %bb.jo ], [ %i.ahr, %bb.jv ], [ -10, %bb.pr ], [ -10, %bb.eo ], [ %.01491, %bb.sa ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader1904
  %.sink2911.sink = phi i32 [ %.sink2932, %.preheader1904 ], [ %.sink2911.sink.be, %.backedge.backedge ]
  %.151535 = phi ptr [ %.151535.ph, %.preheader1904 ], [ %.151535.be, %.backedge.backedge ] ; 134 uses
  %.40 = phi ptr [ %.40.ph, %.preheader1904 ], [ %.40.be, %.backedge.backedge ] ; 136 uses
  %.14 = phi i32 [ %.14.ph, %.preheader1904 ], [ %.14.be, %.backedge.backedge ] ; 115 uses
  %.12 = phi ptr [ %i.bee, %.preheader1904 ], [ %.12.be, %.backedge.backedge ] ; 117 uses
  %i.bsm = zext i32 %.sink2911.sink to i64
  %i.bsn = getelementptr [8 x i8], ptr @sre_ucs1_match.sre_targets, i64 %i.bsm
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !95
  indirectbr ptr %i.bso, [label %.critedge1899, label %bb.ab, label %bb.cv, label %bb.da, label %bb.qy, label %bb.rf, label %bb.ah, label %bb.fj, label %bb.cq, label %.loopexit, label %bb.ef, label %bb.pn, label %bb.qn, label %bb.de, label %bb.fg, label %bb.dp, label %bb.r, label %bb.l, label %bb.kn, label %bb.mb, label %bb.w, label %bb.ew, label %bb.qb, label %bb.kg, label %bb.go, label %bb.ek, label %bb.ij, label %bb.pg, label %bb.nm, label %bb.ju, label %bb.pt, label %bb.eq, label %bb.dj, label %bb.dz, label %bb.qh, label %bb.fb, label %bb.du]
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 2) i64 @sre_ucs2_match(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 24 uses
  %i.c = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  %i.e = getelementptr i8, ptr %0, i64 192        ; 108 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 184        ; 32 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %i.i = sub i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.i, 56
  br i1 %i.j, label %bb.b, label %data_stack_grow.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.f, 56                         ; 2 uses
  %i.l = icmp slt i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %data_stack_grow.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 %i.k, 4
  %i.n = add i64 %i.f, 1080
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = tail call ptr @PyMem_Realloc(ptr noundef %i.q, i64 noundef %i.o) #13 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !88   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMem_Free(ptr noundef nonnull %i.s) #13
  store ptr null, ptr %i.p, align 8, !tbaa !88
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.p, align 8, !tbaa !88
  store i64 %i.o, ptr %i.g, align 8, !tbaa !121
  %.pre = load i64, ptr %i.e, align 8, !tbaa !120
  br label %data_stack_grow.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

data_stack_grow.exit.thread:                      ; preds = %bb.b, %bb.f, %bb.a
  %i.t = phi i64 [ %i.f, %bb.b ], [ %.pre, %bb.f ], [ %i.f, %bb.a ]
  %i.u = getelementptr i8, ptr %0, i64 176        ; 57 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr i8, ptr %i.v, i64 %i.f     ; 4 uses
  %i.x = add i64 %i.t, 56
  store i64 %i.x, ptr %i.e, align 8, !tbaa !120
  %i.y = getelementptr i8, ptr %i.w, i64 48
  store i64 -1, ptr %i.y, align 8, !tbaa !153
  %i.z = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.z, align 4, !tbaa !155
  %i.aa = getelementptr i8, ptr %i.w, i64 40
  store i32 %2, ptr %i.aa, align 8, !tbaa !156
  %i.ab = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 156       ; 29 uses
  %i.ad = getelementptr i8, ptr %0, i64 168       ; 26 uses
  %i.ae = getelementptr i8, ptr %0, i64 148       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 10 uses
  %i.ai = getelementptr i8, ptr %0, i64 200       ; 27 uses
  %i.aj = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 208       ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 216       ; 6 uses
  br label %.backedge1884

.backedge1884:                                    ; preds = %.backedge1884.backedge, %data_stack_grow.exit.thread
  %.01505 = phi ptr [ %i.w, %data_stack_grow.exit.thread ], [ %.01505.be, %.backedge1884.backedge ] ; 3 uses
  %.01492 = phi i32 [ %i.d, %data_stack_grow.exit.thread ], [ %.01492.be, %.backedge1884.backedge ] ; 2 uses
  %.01479 = phi i64 [ %i.f, %data_stack_grow.exit.thread ], [ %.01479.be, %.backedge1884.backedge ] ; 2 uses
  %.01478 = phi ptr [ %1, %data_stack_grow.exit.thread ], [ %.01478.be, %.backedge1884.backedge ] ; 5 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.an = load i32, ptr %.01478, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 14
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.backedge1884
  %i.ap = getelementptr i8, ptr %.01478, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.ab, %i.ar
  %i.at = ashr exact i64 %i.as, 1
  %i.au = zext i32 %i.aq to i64
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.critedge1878, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = getelementptr i8, ptr %.01478, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %.01478, i64 %i.az
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge1884
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %.01478, %.backedge1884 ] ; 2 uses
  %i.bb = add i32 %.01492, 1                      ; 3 uses
  %i.bc = and i32 %i.bb, 4095
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %.preheader1883

bb.l:                                             ; preds = %bb.k
  %i.be = tail call i32 @PyErr_CheckSignals() #13
  %.not1640 = icmp eq i32 %i.be, 0
  br i1 %.not1640, label %.preheader1883, label %.loopexit

bb.m:                                             ; preds = %.backedge
  %i.bf = load i32, ptr %.12, align 4, !tbaa !7   ; 9 uses
  %i.bg = and i32 %i.bf, 1
  %.not1733 = icmp eq i32 %i.bg, 0
  br i1 %.not1733, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = sdiv i32 %i.bf, 2
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !85 ; 5 uses
  %i.bk = icmp sgt i32 %i.bf, %i.bj
  br i1 %i.bk, label %.preheader1879, label %bb.p

.preheader1879:                                   ; preds = %bb.o
  %.015362148 = add nsw i32 %i.bj, 1
  %i.bl = icmp slt i32 %.015362148, %i.bf
  br i1 %i.bl, label %.lr.ph2150.preheader, label %._crit_edge2151

.lr.ph2150.preheader:                             ; preds = %.preheader1879
  %i.bm = sext i32 %i.bj to i64
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bo = xor i32 %i.bj, -1
  %i.bp = add i32 %i.bf, %i.bo
  %i.bq = add i32 %i.bf, -2
  %i.br = sub i32 %i.bq, %i.bj
  %xtraiter = and i32 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2150.prol.loopexit, label %.lr.ph2150.prol

.lr.ph2150.prol:                                  ; preds = %.lr.ph2150.preheader, %.lr.ph2150.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph2150.prol ], [ %i.bn, %.lr.ph2150.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2150.prol ], [ 0, %.lr.ph2150.preheader ]
  %i.bs = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.prol
  store ptr null, ptr %i.bt, align 8, !tbaa !95
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2150.prol.loopexit, label %.lr.ph2150.prol, !llvm.loop !157

.lr.ph2150.prol.loopexit:                         ; preds = %.lr.ph2150.prol, %.lr.ph2150.preheader
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph2150.preheader ], [ %indvars.iv.next.prol, %.lr.ph2150.prol ]
  %i.bu = icmp ult i32 %i.br, 3
  br i1 %i.bu, label %._crit_edge2151, label %.lr.ph2150

.lr.ph2150:                                       ; preds = %.lr.ph2150.prol.loopexit, %.lr.ph2150
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2150 ], [ %indvars.iv.unr, %.lr.ph2150.prol.loopexit ] ; 5 uses
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr null, ptr %i.bw, align 8, !tbaa !95
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !95
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store ptr null, ptr %i.cc, align 8, !tbaa !95
  %i.cd = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
end_hunk_0
begin_hunk_1_@sre_ucs2_match:bb.a
  %i.bmj = load i32, ptr %i.bmi, align 4, !tbaa !7
  %i.bmk = zext i32 %i.bmj to i64
  %i.bml = getelementptr [4 x i8], ptr %i.bmi, i64 %i.bmk ; 2 uses
  %i.bmm = add i32 %.13, 1                        ; 3 uses
  %i.bmn = and i32 %i.bmm, 4095
  %i.bmo = icmp eq i32 %i.bmn, 0
  br i1 %i.bmo, label %bb.qz, label %.preheader1883

bb.qz:                                            ; preds = %bb.qy
  %i.bmp = tail call i32 @PyErr_CheckSignals() #13
  %.not1644 = icmp eq i32 %i.bmp, 0
  br i1 %.not1644, label %.preheader1883, label %.loopexit

bb.ra:                                            ; preds = %.backedge
  %i.bmq = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.bmr = ptrtoint ptr %.151535 to i64
  %i.bms = ptrtoint ptr %i.bmq to i64
  %i.bmt = sub i64 %i.bmr, %i.bms
  %i.bmu = ashr exact i64 %i.bmt, 1
  %i.bmv = getelementptr i8, ptr %.12, i64 4
  %i.bmw = load i32, ptr %i.bmv, align 4, !tbaa !7
  %i.bmx = zext i32 %i.bmw to i64                 ; 2 uses
  %.not1762 = icmp ult i64 %i.bmu, %i.bmx
  br i1 %.not1762, label %bb.rs, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.bmy = sub nsw i64 0, %i.bmx
  %i.bmz = getelementptr [2 x i8], ptr %.151535, i64 %i.bmy
  store ptr %i.bmz, ptr %0, align 8, !tbaa !81
  %i.bna = getelementptr i8, ptr %.40, i64 16
  %i.bnb = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.bnc = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.bnb, ptr %i.bna, align 8, !tbaa !7
  %i.bnd = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1764 = icmp ne ptr %i.bnd, null
  %i.bne = icmp sgt i32 %i.bnc, -1
  %or.cond1860 = select i1 %.not1764, i1 %i.bne, i1 false
  %.pre2454 = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond1860, label %bb.rc, label %bb.rh

bb.rc:                                            ; preds = %bb.rb
  %i.bnf = add nuw i32 %i.bnc, 1
  %i.bng = sext i32 %i.bnf to i64
  %i.bnh = shl nsw i64 %i.bng, 3                  ; 4 uses
  %i.bni = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bnj = sub i64 %i.bni, %.pre2454
  %i.bnk = icmp ugt i64 %i.bnh, %i.bnj
  br i1 %i.bnk, label %bb.rd, label %._crit_edge2451

._crit_edge2451:                                  ; preds = %bb.rc
  %.pre2452 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.rg

bb.rd:                                            ; preds = %bb.rc
  %i.bnl = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.bnh) ; 2 uses
  %i.bnm = icmp slt i32 %i.bnl, 0
  br i1 %i.bnm, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.bnn = sext i32 %i.bnl to i64
  br label %.loopexit

bb.rf:                                            ; preds = %bb.rd
  %.not1765 = icmp eq i64 %.111490.ph, -1
  %.pre2453 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.bno = getelementptr i8, ptr %.pre2453, i64 %.111490.ph
  %spec.select2910 = select i1 %.not1765, ptr %.40, ptr %i.bno
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rf, %._crit_edge2451
  %i.bnp = phi ptr [ %.pre2452, %._crit_edge2451 ], [ %.pre2453, %bb.rf ]
  %.36 = phi ptr [ %.40, %._crit_edge2451 ], [ %spec.select2910, %bb.rf ]
  %i.bnq = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bnr = getelementptr i8, ptr %i.bnp, i64 %i.bnq
  %i.bns = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bnr, ptr noundef nonnull align 8 dereferenceable(1) %i.bns, i64 %i.bnh, i1 false)
  %i.bnt = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bnu = add i64 %i.bnt, %i.bnh                 ; 2 uses
  store i64 %i.bnu, ptr %i.e, align 8, !tbaa !120
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %bb.rb
  %i.bnv = phi i64 [ %i.bnu, %bb.rg ], [ %.pre2454, %bb.rb ] ; 4 uses
  %.37 = phi ptr [ %.36, %bb.rg ], [ %.40, %bb.rb ] ; 2 uses
  %i.bnw = getelementptr i8, ptr %.37, i64 24
  store ptr %.12, ptr %i.bnw, align 8, !tbaa !159
  %i.bnx = getelementptr i8, ptr %.37, i64 32
  store ptr %.151535, ptr %i.bnx, align 8, !tbaa !160
  %i.bny = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bnz = sub i64 %i.bny, %i.bnv
  %i.boa = icmp ult i64 %i.bnz, 56
  br i1 %i.boa, label %bb.ri, label %bb.rk

bb.ri:                                            ; preds = %bb.rh
  %i.bob = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.boc = icmp slt i32 %i.bob, 0
  br i1 %i.boc, label %bb.rj, label %._crit_edge2455

._crit_edge2455:                                  ; preds = %bb.ri
  %.pre2456 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.bod = sext i32 %i.bob to i64
  br label %.loopexit

bb.rk:                                            ; preds = %._crit_edge2455, %bb.rh
  %i.boe = phi i64 [ %.pre2456, %._crit_edge2455 ], [ %i.bnv, %bb.rh ]
  %i.bof = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bog = getelementptr i8, ptr %i.bof, i64 %i.bnv ; 5 uses
  %i.boh = add i64 %i.boe, 56
  store i64 %i.boh, ptr %i.e, align 8, !tbaa !120
  %i.boi = getelementptr i8, ptr %.12, i64 8      ; 2 uses
  %i.boj = getelementptr i8, ptr %i.bog, i64 24
  store ptr %i.boi, ptr %i.boj, align 8, !tbaa !159
  %i.bok = getelementptr i8, ptr %i.bog, i64 40
  store i32 0, ptr %i.bok, align 8, !tbaa !156
  %i.bol = getelementptr i8, ptr %i.bog, i64 44
  store i32 13, ptr %i.bol, align 4, !tbaa !155
  %i.bom = getelementptr i8, ptr %i.bog, i64 48
  store i64 %.111490.ph, ptr %i.bom, align 8, !tbaa !153
  br label %.backedge1884.backedge

bb.rl:                                            ; preds = %bb.sp
  br i1 %.not1642, label %.critedge1878, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bon = getelementptr i8, ptr %i.bpy, i64 16
  %i.boo = load i32, ptr %i.bon, align 8, !tbaa !161 ; 2 uses
  %i.bop = icmp sgt i32 %i.boo, -1
  br i1 %i.bop, label %bb.rn, label %.critedge1878

bb.rn:                                            ; preds = %bb.rm
  %i.boq = add nuw i32 %i.boo, 1
  %i.bor = sext i32 %i.boq to i64
  %i.bos = shl nsw i64 %i.bor, 3
  %i.bot = sub i64 %i.bpv, %i.bos
  store i64 %i.bot, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1878

bb.ro:                                            ; preds = %bb.sp
  br i1 %.not1642, label %bb.rr, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bou = getelementptr i8, ptr %i.bpy, i64 16
  %i.bov = load i32, ptr %i.bou, align 8, !tbaa !161 ; 2 uses
  %i.bow = icmp sgt i32 %i.bov, -1
  br i1 %i.bow, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %bb.rp
  %i.box = add nuw i32 %i.bov, 1
  %i.boy = sext i32 %i.box to i64
  %i.boz = shl nsw i64 %i.boy, 3                  ; 3 uses
  %i.bpa = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bpb = getelementptr i8, ptr %i.bpx, i64 %i.bpv
  %i.bpc = sub nsw i64 0, %i.boz
  %i.bpd = getelementptr i8, ptr %i.bpb, i64 %i.bpc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpa, ptr noundef nonnull align 1 dereferenceable(1) %i.bpd, i64 %i.boz, i1 false)
  %i.bpe = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpf = sub i64 %i.bpe, %i.boz
  store i64 %i.bpf, ptr %i.e, align 8, !tbaa !120
  br label %bb.rr

bb.rr:                                            ; preds = %bb.ro, %bb.rp, %bb.rq
  %i.bpg = getelementptr i8, ptr %i.bpy, i64 16
  %i.bph = load <2 x i32>, ptr %i.bpg, align 8, !tbaa !7
  store <2 x i32> %i.bph, ptr %i.ac, align 4, !tbaa !7
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.ra
  %.141534 = phi ptr [ %.151535, %bb.ra ], [ %i.bta, %bb.rr ] ; 2 uses
  %.38 = phi ptr [ %.40, %bb.ra ], [ %i.bpy, %bb.rr ] ; 2 uses
  %.121504 = phi i32 [ %.14, %bb.ra ], [ %.13, %bb.rr ]
  %.101489 = phi i64 [ %.111490.ph, %bb.ra ], [ %i.bpr, %bb.rr ] ; 2 uses
  %.11 = phi ptr [ %.12, %bb.ra ], [ %i.bsy, %bb.rr ] ; 2 uses
  %i.bpi = load i32, ptr %.11, align 4, !tbaa !7
  %i.bpj = zext i32 %i.bpi to i64
  %i.bpk = getelementptr [4 x i8], ptr %.11, i64 %i.bpj ; 2 uses
  %i.bpl = add i32 %.121504, 1                    ; 3 uses
  %i.bpm = and i32 %i.bpl, 4095
  %i.bpn = icmp eq i32 %i.bpm, 0
  br i1 %i.bpn, label %bb.rt, label %.preheader1883

bb.rt:                                            ; preds = %bb.rs
  %i.bpo = tail call i32 @PyErr_CheckSignals() #13
  %.not1763 = icmp eq i32 %i.bpo, 0
  br i1 %.not1763, label %.preheader1883, label %.loopexit

.critedge1878.loopexit:                           ; preds = %.lr.ph2154, %bb.pi
  br label %.critedge1878

.critedge1878.loopexit3166:                       ; preds = %.lr.ph2145, %bb.pw
  br label %.critedge1878

.critedge1878.loopexit3167:                       ; preds = %.lr.ph2140, %sre_lower_ascii.exit1833
  br label %.critedge1878

.critedge1878.loopexit3168:                       ; preds = %.lr.ph, %sre_lower_locale.exit1835
  br label %.critedge1878

.critedge1878:                                    ; preds = %.backedge, %bb.so, %repeat_pool_free.exit1838, %bb.sc, %bb.sb, %bb.rz, %bb.rx, %.critedge1878.loopexit3168, %.critedge1878.loopexit3167, %.critedge1878.loopexit3166, %.critedge1878.loopexit, %bb.rn, %bb.rm, %bb.rl, %bb.qt, %bb.qb, %bb.qa, %bb.pv, %bb.pu, %bb.pn, %bb.pm, %bb.ph, %bb.pg, %bb.pd, %repeat_pool_free.exit, %bb.no, %bb.ne, %bb.nd, %bb.mz, %bb.my, %bb.mx, %bb.ml, %bb.md, %bb.lq, %bb.lp, %bb.kx, %bb.kp, %bb.kf, %bb.jz, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jn, %bb.jm, %bb.jl, %bb.iy, %bb.iq, %bb.im, %.sink.split, %bb.il, %bb.ik, %bb.if, %bb.ie, %bb.id, %bb.hw, %._crit_edge2162, %bb.hr, %bb.hq, %bb.hp, %bb.gz, %bb.gt, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gi, %bb.gh, %bb.gg, %sre_ucs2_charset_loc_ignore.exit, %sre_upper_locale.exit.i, %bb.ff, %bb.fb, %bb.fa, %sre_lower_ascii.exit1813, %bb.eu, %char_loc_ignore.exit1812, %sre_lower_locale.exit.i1809, %bb.eq, %bb.ep, %bb.el, %bb.ek, %sre_lower_ascii.exit1808, %bb.ee, %char_loc_ignore.exit, %bb.eb, %bb.dz, %bb.dv, %bb.du, %sre_lower_ascii.exit, %bb.do, %bb.dk, %bb.dj, %bb.df, %bb.db, %bb.da, %bb.cw, %bb.cv, %sre_ucs2_at.exit, %Py_UNICODE_ISALNUM.exit111.thread.i, %Py_UNICODE_ISALNUM.exit103.thread.i, %bb.ca, %bb.br, %bb.bi, %bb.az, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.y, %bb.x, %bb.t, %bb.s, %bb.i
  %.39 = phi ptr [ %.40, %.critedge1878.loopexit ], [ %.16, %bb.ju ], [ %i.bpy, %bb.sb ], [ %i.bpy, %bb.md ], [ %i.bpy, %bb.lq ], [ %i.bpy, %bb.mx ], [ %i.bpy, %bb.sc ], [ %i.bpy, %bb.no ], [ %.40, %sre_ucs2_charset_loc_ignore.exit ], [ %i.bpy, %bb.gg ], [ %i.bpy, %repeat_pool_free.exit1838 ], [ %i.bpy, %bb.kx ], [ %i.bpy, %bb.rx ], [ %i.bpy, %bb.ml ], [ %i.bpy, %bb.so ], [ %.40, %bb.y ], [ %.40, %bb.ah ], [ %.40, %bb.cw ], [ %.40, %sre_ucs2_at.exit ], [ %.40, %bb.qb ], [ %.01505, %bb.i ], [ %.40, %bb.ag ], [ %.40, %sre_lower_ascii.exit1808 ], [ %i.bpy, %bb.rz ], [ %.40, %bb.pg ], [ %i.bpy, %bb.ne ], [ %.40, %bb.db ], [ %.40, %sre_lower_ascii.exit ], [ %.40, %bb.am ], [ %.40, %bb.t ], [ %.40, %sre_lower_ascii.exit1813 ], [ %.40, %bb.pn ], [ %.40, %bb.pu ], [ %.40, %.critedge1878.loopexit3167 ], [ %.40, %bb.df ], [ %.40, %bb.gr ], [ %i.bpy, %bb.id ], [ %i.wu, %bb.gz ], [ %.40, %bb.el ], [ %i.wu, %bb.gt ], [ %i.bpy, %bb.jl ], [ %.121517, %bb.iy ], [ %.40, %bb.im ], [ %i.adw, %bb.iq ], [ %.40, %bb.jx ], [ %i.ail, %bb.kf ], [ %.40, %bb.ph ], [ %.40, %bb.pm ], [ %i.bpy, %bb.rm ], [ %.40, %char_loc_ignore.exit1812 ], [ %.40, %bb.dk ], [ %.40, %char_loc_ignore.exit ], [ %.40, %bb.pv ], [ %.40, %bb.qa ], [ %i.bpy, %bb.rn ], [ %.40, %bb.fb ], [ %.40, %bb.dv ], [ %i.bpy, %repeat_pool_free.exit ], [ %i.ail, %bb.jz ], [ %i.bpy, %bb.kp ], [ %.21507, %bb.gq ], [ %i.bpy, %bb.hp ], [ %.111516.ph, %.sink.split ], [ %i.bpy, %bb.pd ], [ %.40, %bb.qt ], [ %.40, %.backedge ], [ %.40, %bb.ai ], [ %.40, %bb.ap ], [ %.40, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ %.40, %bb.ca ], [ %.40, %bb.br ], [ %.40, %bb.bi ], [ %.40, %bb.az ], [ %.40, %bb.aq ], [ %.40, %bb.an ], [ %.40, %bb.ak ], [ %.40, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ %.40, %bb.s ], [ %.40, %bb.x ], [ %.40, %bb.ae ], [ %.40, %bb.cv ], [ %.40, %bb.da ], [ %.40, %bb.dj ], [ %.40, %bb.do ], [ %.40, %bb.du ], [ %.40, %bb.eb ], [ %.40, %bb.dz ], [ %.40, %bb.ee ], [ %.40, %bb.ek ], [ %.40, %bb.eq ], [ %.40, %sre_lower_locale.exit.i1809 ], [ %.40, %bb.ep ], [ %.40, %bb.eu ], [ %.40, %bb.fa ], [ %.40, %sre_upper_locale.exit.i ], [ %.40, %bb.ff ], [ %i.bpy, %bb.gi ], [ %i.bpy, %bb.gh ], [ %.21507, %bb.go ], [ %.21507, %bb.gp ], [ %i.bpy, %bb.hr ], [ %i.bpy, %bb.hq ], [ %i.bpy, %bb.if ], [ %i.bpy, %bb.ie ], [ %.91514, %bb.il ], [ %.71512, %bb.hw ], [ %.71512, %._crit_edge2162 ], [ %.91514, %bb.ik ], [ %i.bpy, %bb.jn ], [ %i.bpy, %bb.jm ], [ %.16, %bb.jw ], [ %.16, %bb.jv ], [ %i.bpy, %bb.lp ], [ %i.bpy, %bb.mz ], [ %i.bpy, %bb.my ], [ %i.bpy, %bb.nd ], [ %i.bpy, %bb.rl ], [ %.40, %.critedge1878.loopexit3166 ], [ %.40, %.critedge1878.loopexit3168 ] ; 2 uses
  %.13 = phi i32 [ %.14, %.critedge1878.loopexit ], [ %.71499, %bb.ju ], [ %.13, %bb.sb ], [ %.13, %bb.md ], [ %.13, %bb.lq ], [ %.13, %bb.mx ], [ %.13, %bb.sc ], [ %.13, %bb.no ], [ %.14, %sre_ucs2_charset_loc_ignore.exit ], [ %.13, %bb.gg ], [ %.13, %repeat_pool_free.exit1838 ], [ %.13, %bb.kx ], [ %.13, %bb.rx ], [ %.13, %bb.ml ], [ %.13, %bb.so ], [ %.14, %bb.y ], [ %.14, %bb.ah ], [ %.14, %bb.cw ], [ %.14, %sre_ucs2_at.exit ], [ %.14, %bb.qb ], [ %.01492, %bb.i ], [ %.14, %bb.ag ], [ %.14, %sre_lower_ascii.exit1808 ], [ %.13, %bb.rz ], [ %.14, %bb.pg ], [ %.13, %bb.ne ], [ %.14, %bb.db ], [ %.14, %sre_lower_ascii.exit ], [ %.14, %bb.am ], [ %.14, %bb.t ], [ %.14, %sre_lower_ascii.exit1813 ], [ %.14, %bb.pn ], [ %.14, %bb.pu ], [ %.14, %.critedge1878.loopexit3167 ], [ %.14, %bb.df ], [ %.14, %bb.gr ], [ %.13, %bb.id ], [ %.14, %bb.gz ], [ %.14, %bb.el ], [ %.14, %bb.gt ], [ %.13, %bb.jl ], [ %.14, %bb.iy ], [ %.14, %bb.im ], [ %.14, %bb.iq ], [ %.14, %bb.jx ], [ %.14, %bb.kf ], [ %.14, %bb.ph ], [ %.14, %bb.pm ], [ %.13, %bb.rm ], [ %.14, %char_loc_ignore.exit1812 ], [ %.14, %bb.dk ], [ %.14, %char_loc_ignore.exit ], [ %.14, %bb.pv ], [ %.14, %bb.qa ], [ %.13, %bb.rn ], [ %.14, %bb.fb ], [ %.14, %bb.dv ], [ %.13, %repeat_pool_free.exit ], [ %.14, %bb.jz ], [ %.13, %bb.kp ], [ %.11493, %bb.gq ], [ %.13, %bb.hp ], [ %.51497.ph, %.sink.split ], [ %.13, %bb.pd ], [ %.14, %bb.qt ], [ %.14, %.backedge ], [ %.14, %bb.ai ], [ %.14, %bb.ap ], [ %.14, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ %.14, %bb.ca ], [ %.14, %bb.br ], [ %.14, %bb.bi ], [ %.14, %bb.az ], [ %.14, %bb.aq ], [ %.14, %bb.an ], [ %.14, %bb.ak ], [ %.14, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ %.14, %bb.s ], [ %.14, %bb.x ], [ %.14, %bb.ae ], [ %.14, %bb.cv ], [ %.14, %bb.da ], [ %.14, %bb.dj ], [ %.14, %bb.do ], [ %.14, %bb.du ], [ %.14, %bb.eb ], [ %.14, %bb.dz ], [ %.14, %bb.ee ], [ %.14, %bb.ek ], [ %.14, %bb.eq ], [ %.14, %sre_lower_locale.exit.i1809 ], [ %.14, %bb.ep ], [ %.14, %bb.eu ], [ %.14, %bb.fa ], [ %.14, %sre_upper_locale.exit.i ], [ %.14, %bb.ff ], [ %.13, %bb.gi ], [ %.13, %bb.gh ], [ %.11493, %bb.go ], [ %.11493, %bb.gp ], [ %.13, %bb.hr ], [ %.13, %bb.hq ], [ %.13, %bb.if ], [ %.13, %bb.ie ], [ %.41496, %bb.il ], [ %.31495, %bb.hw ], [ %.31495, %._crit_edge2162 ], [ %.41496, %bb.ik ], [ %.13, %bb.jn ], [ %.13, %bb.jm ], [ %.71499, %bb.jw ], [ %.71499, %bb.jv ], [ %.13, %bb.lp ], [ %.13, %bb.mz ], [ %.13, %bb.my ], [ %.13, %bb.nd ], [ %.13, %bb.rl ], [ %.14, %.critedge1878.loopexit3166 ], [ %.14, %.critedge1878.loopexit3168 ] ; 49 uses
  %.not1641 = phi i1 [ true, %.critedge1878.loopexit ], [ true, %bb.ju ], [ false, %bb.sb ], [ true, %bb.md ], [ false, %bb.lq ], [ false, %bb.mx ], [ false, %bb.sc ], [ true, %bb.no ], [ true, %sre_ucs2_charset_loc_ignore.exit ], [ false, %bb.gg ], [ false, %repeat_pool_free.exit1838 ], [ true, %bb.kx ], [ false, %bb.rx ], [ true, %bb.ml ], [ true, %bb.so ], [ true, %bb.y ], [ false, %bb.ah ], [ true, %bb.cw ], [ true, %sre_ucs2_at.exit ], [ true, %bb.qb ], [ true, %bb.i ], [ true, %bb.ag ], [ true, %sre_lower_ascii.exit1808 ], [ false, %bb.rz ], [ true, %bb.pg ], [ true, %bb.ne ], [ true, %bb.db ], [ true, %sre_lower_ascii.exit ], [ true, %bb.am ], [ true, %bb.t ], [ true, %sre_lower_ascii.exit1813 ], [ true, %bb.pn ], [ true, %bb.pu ], [ true, %.critedge1878.loopexit3167 ], [ true, %bb.df ], [ true, %bb.gr ], [ false, %bb.id ], [ false, %bb.gz ], [ true, %bb.el ], [ true, %bb.gt ], [ false, %bb.jl ], [ false, %bb.iy ], [ true, %bb.im ], [ true, %bb.iq ], [ true, %bb.jx ], [ false, %bb.kf ], [ true, %bb.ph ], [ true, %bb.pm ], [ true, %bb.rm ], [ true, %char_loc_ignore.exit1812 ], [ true, %bb.dk ], [ true, %char_loc_ignore.exit ], [ true, %bb.pv ], [ true, %bb.qa ], [ true, %bb.rn ], [ true, %bb.fb ], [ true, %bb.dv ], [ true, %repeat_pool_free.exit ], [ true, %bb.jz ], [ true, %bb.kp ], [ true, %bb.gq ], [ false, %bb.hp ], [ true, %.sink.split ], [ true, %bb.pd ], [ true, %bb.qt ], [ true, %.backedge ], [ true, %bb.ai ], [ true, %bb.ap ], [ true, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ true, %bb.ca ], [ true, %bb.br ], [ true, %bb.bi ], [ true, %bb.az ], [ true, %bb.aq ], [ true, %bb.an ], [ true, %bb.ak ], [ true, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ true, %bb.s ], [ true, %bb.x ], [ true, %bb.ae ], [ true, %bb.cv ], [ true, %bb.da ], [ true, %bb.dj ], [ true, %bb.do ], [ true, %bb.du ], [ true, %bb.eb ], [ true, %bb.dz ], [ true, %bb.ee ], [ true, %bb.ek ], [ true, %bb.eq ], [ true, %sre_lower_locale.exit.i1809 ], [ true, %bb.ep ], [ true, %bb.eu ], [ true, %bb.fa ], [ true, %sre_upper_locale.exit.i ], [ true, %bb.ff ], [ false, %bb.gi ], [ false, %bb.gh ], [ true, %bb.go ], [ true, %bb.gp ], [ false, %bb.hr ], [ false, %bb.hq ], [ false, %bb.if ], [ false, %bb.ie ], [ true, %bb.il ], [ true, %bb.hw ], [ true, %._crit_edge2162 ], [ true, %bb.ik ], [ false, %bb.jn ], [ false, %bb.jm ], [ true, %bb.jw ], [ true, %bb.jv ], [ false, %bb.lp ], [ false, %bb.mz ], [ false, %bb.my ], [ true, %bb.nd ], [ true, %bb.rl ], [ true, %.critedge1878.loopexit3166 ], [ true, %.critedge1878.loopexit3168 ] ; 15 uses
  %i.bpp = phi i1 [ false, %.critedge1878.loopexit ], [ false, %bb.ju ], [ true, %bb.sb ], [ false, %bb.md ], [ true, %bb.lq ], [ true, %bb.mx ], [ true, %bb.sc ], [ false, %bb.no ], [ false, %sre_ucs2_charset_loc_ignore.exit ], [ true, %bb.gg ], [ true, %repeat_pool_free.exit1838 ], [ false, %bb.kx ], [ true, %bb.rx ], [ false, %bb.ml ], [ false, %bb.so ], [ false, %bb.y ], [ true, %bb.ah ], [ false, %bb.cw ], [ false, %sre_ucs2_at.exit ], [ false, %bb.qb ], [ false, %bb.i ], [ false, %bb.ag ], [ false, %sre_lower_ascii.exit1808 ], [ true, %bb.rz ], [ false, %bb.pg ], [ false, %bb.ne ], [ false, %bb.db ], [ false, %sre_lower_ascii.exit ], [ false, %bb.am ], [ false, %bb.t ], [ false, %sre_lower_ascii.exit1813 ], [ false, %bb.pn ], [ false, %bb.pu ], [ false, %.critedge1878.loopexit3167 ], [ false, %bb.df ], [ false, %bb.gr ], [ true, %bb.id ], [ true, %bb.gz ], [ false, %bb.el ], [ false, %bb.gt ], [ true, %bb.jl ], [ true, %bb.iy ], [ false, %bb.im ], [ false, %bb.iq ], [ false, %bb.jx ], [ true, %bb.kf ], [ false, %bb.ph ], [ false, %bb.pm ], [ false, %bb.rm ], [ false, %char_loc_ignore.exit1812 ], [ false, %bb.dk ], [ false, %char_loc_ignore.exit ], [ false, %bb.pv ], [ false, %bb.qa ], [ false, %bb.rn ], [ false, %bb.fb ], [ false, %bb.dv ], [ false, %repeat_pool_free.exit ], [ false, %bb.jz ], [ false, %bb.kp ], [ false, %bb.gq ], [ true, %bb.hp ], [ false, %.sink.split ], [ false, %bb.pd ], [ false, %bb.qt ], [ false, %.backedge ], [ false, %bb.ai ], [ false, %bb.ap ], [ false, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ false, %bb.ca ], [ false, %bb.br ], [ false, %bb.bi ], [ false, %bb.az ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.ak ], [ false, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ false, %bb.s ], [ false, %bb.x ], [ false, %bb.ae ], [ false, %bb.cv ], [ false, %bb.da ], [ false, %bb.dj ], [ false, %bb.do ], [ false, %bb.du ], [ false, %bb.eb ], [ false, %bb.dz ], [ false, %bb.ee ], [ false, %bb.ek ], [ false, %bb.eq ], [ false, %sre_lower_locale.exit.i1809 ], [ false, %bb.ep ], [ false, %bb.eu ], [ false, %bb.fa ], [ false, %sre_upper_locale.exit.i ], [ false, %bb.ff ], [ true, %bb.gi ], [ true, %bb.gh ], [ false, %bb.go ], [ false, %bb.gp ], [ true, %bb.hr ], [ true, %bb.hq ], [ true, %bb.if ], [ true, %bb.ie ], [ false, %bb.il ], [ false, %bb.hw ], [ false, %._crit_edge2162 ], [ false, %bb.ik ], [ true, %bb.jn ], [ true, %bb.jm ], [ false, %bb.jw ], [ false, %bb.jv ], [ true, %bb.lp ], [ true, %bb.mz ], [ true, %bb.my ], [ false, %bb.nd ], [ false, %bb.rl ], [ false, %.critedge1878.loopexit3166 ], [ false, %.critedge1878.loopexit3168 ]
  %.01491 = phi i64 [ 0, %.critedge1878.loopexit ], [ 0, %bb.ju ], [ 1, %bb.sb ], [ 0, %bb.md ], [ 1, %bb.lq ], [ 1, %bb.mx ], [ 1, %bb.sc ], [ 0, %bb.no ], [ 0, %sre_ucs2_charset_loc_ignore.exit ], [ 1, %bb.gg ], [ 1, %repeat_pool_free.exit1838 ], [ 0, %bb.kx ], [ 1, %bb.rx ], [ 0, %bb.ml ], [ 0, %bb.so ], [ 0, %bb.y ], [ 1, %bb.ah ], [ 0, %bb.cw ], [ 0, %sre_ucs2_at.exit ], [ 0, %bb.qb ], [ 0, %bb.i ], [ 0, %bb.ag ], [ 0, %sre_lower_ascii.exit1808 ], [ 1, %bb.rz ], [ 0, %bb.pg ], [ 0, %bb.ne ], [ 0, %bb.db ], [ 0, %sre_lower_ascii.exit ], [ 0, %bb.am ], [ 0, %bb.t ], [ 0, %sre_lower_ascii.exit1813 ], [ 0, %bb.pn ], [ 0, %bb.pu ], [ 0, %.critedge1878.loopexit3167 ], [ 0, %bb.df ], [ 0, %bb.gr ], [ 1, %bb.id ], [ 1, %bb.gz ], [ 0, %bb.el ], [ 0, %bb.gt ], [ 1, %bb.jl ], [ 1, %bb.iy ], [ 0, %bb.im ], [ 0, %bb.iq ], [ 0, %bb.jx ], [ 1, %bb.kf ], [ 0, %bb.ph ], [ 0, %bb.pm ], [ 0, %bb.rm ], [ 0, %char_loc_ignore.exit1812 ], [ 0, %bb.dk ], [ 0, %char_loc_ignore.exit ], [ 0, %bb.pv ], [ 0, %bb.qa ], [ 0, %bb.rn ], [ 0, %bb.fb ], [ 0, %bb.dv ], [ 0, %repeat_pool_free.exit ], [ 0, %bb.jz ], [ 0, %bb.kp ], [ 0, %bb.gq ], [ 1, %bb.hp ], [ 0, %.sink.split ], [ 0, %bb.pd ], [ 0, %bb.qt ], [ 0, %.backedge ], [ 0, %bb.ai ], [ 0, %bb.ap ], [ 0, %Py_UNICODE_ISALNUM.exit103.thread.i ], [ 0, %bb.ca ], [ 0, %bb.br ], [ 0, %bb.bi ], [ 0, %bb.az ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ak ], [ 0, %Py_UNICODE_ISALNUM.exit111.thread.i ], [ 0, %bb.s ], [ 0, %bb.x ], [ 0, %bb.ae ], [ 0, %bb.cv ], [ 0, %bb.da ], [ 0, %bb.dj ], [ 0, %bb.do ], [ 0, %bb.du ], [ 0, %bb.eb ], [ 0, %bb.dz ], [ 0, %bb.ee ], [ 0, %bb.ek ], [ 0, %bb.eq ], [ 0, %sre_lower_locale.exit.i1809 ], [ 0, %bb.ep ], [ 0, %bb.eu ], [ 0, %bb.fa ], [ 0, %sre_upper_locale.exit.i ], [ 0, %bb.ff ], [ 1, %bb.gi ], [ 1, %bb.gh ], [ 0, %bb.go ], [ 0, %bb.gp ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %bb.if ], [ 1, %bb.ie ], [ 0, %bb.il ], [ 0, %bb.hw ], [ 0, %._crit_edge2162 ], [ 0, %bb.ik ], [ 1, %bb.jn ], [ 1, %bb.jm ], [ 0, %bb.jw ], [ 0, %bb.jv ], [ 1, %bb.lp ], [ 1, %bb.mz ], [ 1, %bb.my ], [ 0, %bb.nd ], [ 0, %bb.rl ], [ 0, %.critedge1878.loopexit3166 ], [ 0, %.critedge1878.loopexit3168 ] ; 2 uses
  %i.bpq = getelementptr i8, ptr %.39, i64 48
  %i.bpr = load i64, ptr %i.bpq, align 8, !tbaa !153 ; 19 uses
  %i.bps = getelementptr i8, ptr %.39, i64 44
  %i.bpt = load i32, ptr %i.bps, align 4, !tbaa !155
  %i.bpu = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpv = add i64 %i.bpu, -56                    ; 19 uses
  store i64 %i.bpv, ptr %i.e, align 8, !tbaa !120
  %i.bpw = icmp eq i64 %i.bpr, -1
  br i1 %i.bpw, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %.critedge1878
  store i32 %.13, ptr %i.c, align 8, !tbaa !119
  br label %.loopexit

bb.rv:                                            ; preds = %.critedge1878
  %i.bpx = load ptr, ptr %i.u, align 8, !tbaa !88 ; 10 uses
  %i.bpy = getelementptr i8, ptr %i.bpx, i64 %i.bpr ; 119 uses
  switch i32 %i.bpt, label %.loopexit [
    i32 2, label %bb.rw
    i32 3, label %bb.rx
    i32 5, label %bb.ry
    i32 6, label %bb.rz
    i32 11, label %bb.sa
    i32 1, label %bb.sb
    i32 4, label %bb.sc
    i32 14, label %bb.sd
    i32 15, label %bb.se
    i32 7, label %bb.sf
    i32 8, label %bb.sk
    i32 9, label %bb.sl
    i32 10, label %bb.sm
    i32 16, label %bb.sn
    i32 12, label %bb.so
    i32 13, label %bb.sp
  ]

bb.rw:                                            ; preds = %bb.rv
  %i.bpz = getelementptr i8, ptr %i.bpy, i64 24
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !159
  %i.bqb = getelementptr i8, ptr %i.bpy, i64 32
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !160 ; 2 uses
  %i.bqd = getelementptr i8, ptr %i.bpy, i64 8
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !26
  %i.bqf = getelementptr i8, ptr %i.bqe, i64 16
  %i.bqg = getelementptr i8, ptr %i.bpx, i64 %i.bpv
  %i.bqh = getelementptr i8, ptr %i.bqg, i64 -8
  %i.bqi = load i64, ptr %i.bqh, align 1
  store i64 %i.bqi, ptr %i.bqf, align 8
  %i.bqj = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bqk = add i64 %i.bqj, -8                     ; 4 uses
  store i64 %i.bqk, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.lr, label %bb.lp

bb.rx:                                            ; preds = %bb.rv
  %i.bql = getelementptr i8, ptr %i.bpy, i64 32
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !160
  %i.bqn = getelementptr i8, ptr %i.bpy, i64 8
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !26
  store ptr %i.bqo, ptr %i.ai, align 8, !tbaa !87
  br i1 %i.bpp, label %.critedge1878, label %bb.md

bb.ry:                                            ; preds = %bb.rv
  %i.bqp = getelementptr i8, ptr %i.bpy, i64 24
  %i.bqq = getelementptr i8, ptr %i.bpy, i64 32
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !160 ; 2 uses
  %i.bqs = load <2 x ptr>, ptr %i.bqp, align 8, !tbaa !95
  %i.bqt = load ptr, ptr %i.ai, align 8, !tbaa !87
  %i.bqu = getelementptr i8, ptr %i.bpy, i64 8    ; 2 uses
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !26
  store ptr %i.bqv, ptr %i.ai, align 8, !tbaa !87
  %.not1793 = icmp eq ptr %i.bqt, null            ; 2 uses
  br i1 %.not1641, label %bb.na, label %bb.mx

bb.rz:                                            ; preds = %bb.rv
  %i.bqw = getelementptr i8, ptr %i.bpy, i64 32
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !160
  %i.bqy = getelementptr i8, ptr %i.bpy, i64 8    ; 2 uses
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !26
  %i.bra = getelementptr i8, ptr %i.bqz, i64 16
  %i.brb = getelementptr i8, ptr %i.bpx, i64 %i.bpv
  %i.brc = getelementptr i8, ptr %i.brb, i64 -8
  %i.brd = load i64, ptr %i.brc, align 1
  store i64 %i.brd, ptr %i.bra, align 8
  %i.bre = load i64, ptr %i.e, align 8, !tbaa !120
  %i.brf = add i64 %i.bre, -8
  store i64 %i.brf, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.no, label %.critedge1878

bb.sa:                                            ; preds = %bb.rv
  %i.brg = getelementptr i8, ptr %i.bpy, i64 24
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !159
  %i.bri = getelementptr i8, ptr %i.bpy, i64 32
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !160
  %i.brk = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1782 = icmp eq ptr %i.brk, null            ; 2 uses
  br i1 %.not1641, label %bb.gj, label %bb.gg

bb.sb:                                            ; preds = %bb.rv
  br i1 %.not1641, label %bb.kx, label %.critedge1878

bb.sc:                                            ; preds = %bb.rv
  br i1 %.not1641, label %bb.ml, label %.critedge1878

bb.sd:                                            ; preds = %bb.rv
  %i.brl = getelementptr i8, ptr %i.bpy, i64 32
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !160 ; 2 uses
  br i1 %.not1641, label %bb.nx, label %bb.nw

bb.se:                                            ; preds = %bb.rv
  %i.brn = getelementptr i8, ptr %i.bpy, i64 24
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !159 ; 2 uses
  %i.brp = getelementptr i8, ptr %i.bpy, i64 32
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !160 ; 2 uses
  %i.brr = getelementptr i8, ptr %i.bpy, i64 16   ; 2 uses
  %i.brs = load i32, ptr %i.brr, align 8, !tbaa !161 ; 4 uses
  %i.brt = icmp sgt i32 %i.brs, -1                ; 2 uses
  br i1 %.not1641, label %bb.or, label %bb.oo

bb.sf:                                            ; preds = %bb.rv
  %i.bru = getelementptr i8, ptr %i.bpy, i64 8    ; 2 uses
  %i.brv = load ptr, ptr %i.bru, align 8, !tbaa !26
  %i.brw = getelementptr i8, ptr %i.brv, i64 24
  %i.brx = load ptr, ptr %i.brw, align 8, !tbaa !143
  store ptr %i.brx, ptr %i.ai, align 8, !tbaa !87
  %i.bry = load ptr, ptr %i.bru, align 8, !tbaa !26 ; 3 uses
  %i.brz = getelementptr i8, ptr %i.bry, i64 32
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !147 ; 3 uses
  %i.bsb = getelementptr i8, ptr %i.bry, i64 40   ; 2 uses
  %i.bsc = load ptr, ptr %i.bsb, align 8, !tbaa !106 ; 4 uses
  %.not.i1836 = icmp eq ptr %i.bsa, null
  br i1 %.not.i1836, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bsd = getelementptr i8, ptr %i.bsa, i64 40
  store ptr %i.bsc, ptr %i.bsd, align 8, !tbaa !106
  br label %bb.si

bb.sh:                                            ; preds = %bb.sf
  store ptr %i.bsc, ptr %i.ak, align 8, !tbaa !105
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.sg
  %.not15.i1837 = icmp eq ptr %i.bsc, null
  br i1 %.not15.i1837, label %repeat_pool_free.exit1838, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bse = getelementptr i8, ptr %i.bsc, i64 32
  store ptr %i.bsa, ptr %i.bse, align 8, !tbaa !147
  br label %repeat_pool_free.exit1838

repeat_pool_free.exit1838:                        ; preds = %bb.si, %bb.sj
  %i.bsf = load ptr, ptr %i.al, align 8, !tbaa !110
  store ptr %i.bsf, ptr %i.bsb, align 8, !tbaa !106
  store ptr %i.bry, ptr %i.al, align 8, !tbaa !110
  br i1 %.not1641, label %bb.kp, label %.critedge1878

bb.sk:                                            ; preds = %bb.rv
  %i.bsg = getelementptr i8, ptr %i.bpy, i64 24
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !159
  %i.bsi = getelementptr i8, ptr %i.bpy, i64 32
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !160
  %i.bsk = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1653 = icmp eq ptr %i.bsk, null            ; 2 uses
  br i1 %.not1641, label %bb.hs, label %bb.hp

bb.sl:                                            ; preds = %bb.rv
  %i.bsl = getelementptr i8, ptr %i.bpy, i64 24
  %i.bsm = load ptr, ptr %i.bsl, align 8, !tbaa !159
  %i.bsn = getelementptr i8, ptr %i.bpy, i64 32
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !160
  %i.bsp = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1650 = icmp eq ptr %i.bsp, null            ; 2 uses
  br i1 %.not1641, label %bb.ig, label %bb.id

bb.sm:                                            ; preds = %bb.rv
  %i.bsq = getelementptr i8, ptr %i.bpy, i64 24
  %i.bsr = load ptr, ptr %i.bsq, align 8, !tbaa !159 ; 2 uses
  %i.bss = getelementptr i8, ptr %i.bpy, i64 32
  %i.bst = load ptr, ptr %i.bss, align 8, !tbaa !160 ; 2 uses
  %i.bsu = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1647 = icmp eq ptr %i.bsu, null            ; 2 uses
  br i1 %.not1641, label %bb.jo, label %bb.jl

bb.sn:                                            ; preds = %bb.rv
  br i1 %.not1641, label %bb.pd, label %bb.pe

bb.so:                                            ; preds = %bb.rv
  %i.bsv = getelementptr i8, ptr %i.bpy, i64 32
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !160 ; 2 uses
  br i1 %.not1641, label %.critedge1878, label %bb.qy

bb.sp:                                            ; preds = %bb.rv
  %i.bsx = getelementptr i8, ptr %i.bpy, i64 24
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !159
  %i.bsz = getelementptr i8, ptr %i.bpy, i64 32
  %i.bta = load ptr, ptr %i.bsz, align 8, !tbaa !160
  %i.btb = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1642 = icmp eq ptr %i.btb, null            ; 2 uses
  br i1 %.not1641, label %bb.ro, label %bb.rl

.loopexit:                                        ; preds = %.backedge, %bb.rv, %bb.ru, %bb.rt, %bb.rj, %bb.re, %bb.qz, %bb.qw, %bb.qr, %bb.qo, %bb.qk, %bb.qg, %bb.py, %bb.ps, %bb.pk, %bb.pf, %bb.pb, %bb.oy, %bb.om, %bb.oh, %bb.nu, %bb.np, %bb.nl, %bb.nh, %bb.mu, %bb.mp, %bb.mi, %bb.me, %bb.ma, %bb.lm, %bb.li, %bb.ld, %bb.ku, %bb.kq, %bb.km, %bb.kj, %bb.kh, %bb.jy, %bb.jr, %bb.ji, %bb.jc, %bb.ip, %bb.ia, %bb.hm, %bb.hd, %bb.gs, %bb.gd, %bb.fp, %bb.fk, %bb.fh, %bb.fd, %bb.ey, %bb.es, %bb.en, %bb.ei, %bb.ec, %bb.dx, %bb.ds, %bb.dm, %bb.dh, %bb.dd, %bb.cy, %bb.ct, %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g
  %.0 = phi i64 [ -9, %bb.g ], [ %.01491, %bb.ru ], [ -1, %.backedge ], [ %i.adt, %bb.ip ], [ -9, %bb.ma ], [ -10, %bb.py ], [ -10, %bb.ec ], [ %i.awh, %bb.nh ], [ %i.axc, %bb.nl ], [ -10, %bb.oy ], [ -10, %bb.dm ], [ -9, %bb.gd ], [ -10, %bb.fd ], [ -10, %bb.qr ], [ -10, %bb.dx ], [ %i.ayy, %bb.nu ], [ %i.bar, %bb.oh ], [ %i.bbi, %bb.om ], [ -9, %bb.np ], [ -10, %bb.cy ], [ -10, %bb.dd ], [ %i.blx, %bb.qw ], [ %i.bnn, %bb.re ], [ %i.bod, %bb.rj ], [ -10, %bb.qz ], [ -10, %bb.aa ], [ %i.tk, %bb.fp ], [ -10, %bb.ct ], [ -10, %bb.rt ], [ -10, %bb.ei ], [ -10, %bb.pf ], [ -10, %bb.qg ], [ -10, %bb.qk ], [ -10, %bb.qo ], [ -10, %bb.dh ], [ -10, %bb.fh ], [ -10, %bb.ds ], [ -10, %bb.q ], [ -10, %bb.l ], [ %i.all, %bb.ku ], [ %i.anf, %bb.ld ], [ %i.ant, %bb.li ], [ %i.aoo, %bb.lm ], [ -9, %bb.kj ], [ %i.asf, %bb.mi ], [ %i.atu, %bb.mp ], [ %i.auk, %bb.mu ], [ -2, %bb.kq ], [ -10, %bb.v ], [ -10, %bb.ey ], [ -10, %bb.ps ], [ %i.aka, %bb.km ], [ -10, %bb.kh ], [ -10, %bb.fk ], [ %i.xz, %bb.hd ], [ %i.zj, %bb.hm ], [ %i.abn, %bb.ia ], [ -10, %bb.en ], [ %i.afb, %bb.jc ], [ %i.afw, %bb.ji ], [ %i.wr, %bb.gs ], [ %i.bdn, %bb.pb ], [ -2, %bb.me ], [ %i.ahi, %bb.jr ], [ %i.aii, %bb.jy ], [ -10, %bb.pk ], [ -10, %bb.es ], [ %.01491, %bb.rv ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader1883
  %.sink2888.sink = phi i32 [ %.sink2909, %.preheader1883 ], [ %.sink2888.sink.be, %.backedge.backedge ]
  %.151535 = phi ptr [ %.151535.ph, %.preheader1883 ], [ %.151535.be, %.backedge.backedge ] ; 131 uses
  %.40 = phi ptr [ %.40.ph, %.preheader1883 ], [ %.40.be, %.backedge.backedge ] ; 137 uses
  %.14 = phi i32 [ %.14.ph, %.preheader1883 ], [ %.14.be, %.backedge.backedge ] ; 116 uses
  %.12 = phi ptr [ %i.bej, %.preheader1883 ], [ %.12.be, %.backedge.backedge ] ; 117 uses
  %i.btc = zext i32 %.sink2888.sink to i64
  %i.btd = getelementptr [8 x i8], ptr @sre_ucs2_match.sre_targets, i64 %i.btc
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !95
  indirectbr ptr %i.bte, [label %.critedge1878, label %bb.ac, label %bb.da, label %bb.df, label %bb.qt, label %bb.ra, label %bb.ai, label %bb.fm, label %bb.cv, label %.loopexit, label %bb.ek, label %bb.pg, label %bb.qi, label %bb.dj, label %bb.fj, label %bb.du, label %bb.s, label %bb.m, label %bb.kq, label %bb.me, label %bb.x, label %bb.fa, label %bb.pu, label %bb.kj, label %bb.gr, label %bb.ep, label %bb.im, label %bb.oz, label %bb.np, label %bb.jx, label %bb.pm, label %bb.eu, label %bb.do, label %bb.ee, label %bb.qa, label %bb.ff, label %bb.dz]
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 2) i64 @sre_ucs4_match(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 24 uses
  %i.c = getelementptr i8, ptr %0, i64 224        ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !119
  %i.e = getelementptr i8, ptr %0, i64 192        ; 108 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 184        ; 32 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %i.i = sub i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.i, 56
  br i1 %i.j, label %bb.b, label %data_stack_grow.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.f, 56                         ; 2 uses
  %i.l = icmp slt i64 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %data_stack_grow.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 %i.k, 4
  %i.n = add i64 %i.f, 1080
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88
  %i.r = tail call ptr @PyMem_Realloc(ptr noundef %i.q, i64 noundef %i.o) #13 ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !88   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMem_Free(ptr noundef nonnull %i.s) #13
  store ptr null, ptr %i.p, align 8, !tbaa !88
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.p, align 8, !tbaa !88
  store i64 %i.o, ptr %i.g, align 8, !tbaa !121
  %.pre = load i64, ptr %i.e, align 8, !tbaa !120
  br label %data_stack_grow.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %.loopexit

data_stack_grow.exit.thread:                      ; preds = %bb.b, %bb.f, %bb.a
  %i.t = phi i64 [ %i.f, %bb.b ], [ %.pre, %bb.f ], [ %i.f, %bb.a ]
  %i.u = getelementptr i8, ptr %0, i64 176        ; 57 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.w = getelementptr i8, ptr %i.v, i64 %i.f     ; 4 uses
  %i.x = add i64 %i.t, 56
  store i64 %i.x, ptr %i.e, align 8, !tbaa !120
  %i.y = getelementptr i8, ptr %i.w, i64 48
  store i64 -1, ptr %i.y, align 8, !tbaa !174
  %i.z = getelementptr i8, ptr %i.w, i64 44
  store i32 0, ptr %i.z, align 4, !tbaa !176
  %i.aa = getelementptr i8, ptr %i.w, i64 40
  store i32 %2, ptr %i.aa, align 8, !tbaa !177
  %i.ab = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 156       ; 29 uses
  %i.ad = getelementptr i8, ptr %0, i64 168       ; 26 uses
  %i.ae = getelementptr i8, ptr %0, i64 148       ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ag = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 8         ; 10 uses
  %i.ai = getelementptr i8, ptr %0, i64 200       ; 27 uses
  %i.aj = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 208       ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 216       ; 6 uses
  br label %.backedge1884

.backedge1884:                                    ; preds = %.backedge1884.backedge, %data_stack_grow.exit.thread
  %.01505 = phi ptr [ %i.w, %data_stack_grow.exit.thread ], [ %.01505.be, %.backedge1884.backedge ] ; 3 uses
  %.01492 = phi i32 [ %i.d, %data_stack_grow.exit.thread ], [ %.01492.be, %.backedge1884.backedge ] ; 2 uses
  %.01479 = phi i64 [ %i.f, %data_stack_grow.exit.thread ], [ %.01479.be, %.backedge1884.backedge ] ; 2 uses
  %.01478 = phi ptr [ %1, %data_stack_grow.exit.thread ], [ %.01478.be, %.backedge1884.backedge ] ; 5 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.an = load i32, ptr %.01478, align 4, !tbaa !7
  %i.ao = icmp eq i32 %i.an, 14
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.backedge1884
  %i.ap = getelementptr i8, ptr %.01478, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = sub i64 %i.ab, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = zext i32 %i.aq to i64
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.critedge1878, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aw = getelementptr i8, ptr %.01478, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %.01478, i64 %i.az
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge1884
  %.1 = phi ptr [ %i.ba, %bb.j ], [ %.01478, %.backedge1884 ] ; 2 uses
  %i.bb = add i32 %.01492, 1                      ; 3 uses
  %i.bc = and i32 %i.bb, 4095
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %.preheader1883

bb.l:                                             ; preds = %bb.k
  %i.be = tail call i32 @PyErr_CheckSignals() #13
  %.not1640 = icmp eq i32 %i.be, 0
  br i1 %.not1640, label %.preheader1883, label %.loopexit

bb.m:                                             ; preds = %.backedge
  %i.bf = load i32, ptr %.12, align 4, !tbaa !7   ; 9 uses
  %i.bg = and i32 %i.bf, 1
  %.not1733 = icmp eq i32 %i.bg, 0
  br i1 %.not1733, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = sdiv i32 %i.bf, 2
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ag, align 8, !tbaa !86
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !85 ; 5 uses
  %i.bk = icmp sgt i32 %i.bf, %i.bj
  br i1 %i.bk, label %.preheader1879, label %bb.p

.preheader1879:                                   ; preds = %bb.o
  %.015362148 = add nsw i32 %i.bj, 1
  %i.bl = icmp slt i32 %.015362148, %i.bf
  br i1 %i.bl, label %.lr.ph2150.preheader, label %._crit_edge2151

.lr.ph2150.preheader:                             ; preds = %.preheader1879
  %i.bm = sext i32 %i.bj to i64
  %i.bn = add nsw i64 %i.bm, 1                    ; 2 uses
  %i.bo = xor i32 %i.bj, -1
  %i.bp = add i32 %i.bf, %i.bo
  %i.bq = add i32 %i.bf, -2
  %i.br = sub i32 %i.bq, %i.bj
  %xtraiter = and i32 %i.bp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2150.prol.loopexit, label %.lr.ph2150.prol

.lr.ph2150.prol:                                  ; preds = %.lr.ph2150.preheader, %.lr.ph2150.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph2150.prol ], [ %i.bn, %.lr.ph2150.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph2150.prol ], [ 0, %.lr.ph2150.preheader ]
  %i.bs = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %indvars.iv.prol
  store ptr null, ptr %i.bt, align 8, !tbaa !95
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph2150.prol.loopexit, label %.lr.ph2150.prol, !llvm.loop !178

.lr.ph2150.prol.loopexit:                         ; preds = %.lr.ph2150.prol, %.lr.ph2150.preheader
  %indvars.iv.unr = phi i64 [ %i.bn, %.lr.ph2150.preheader ], [ %indvars.iv.next.prol, %.lr.ph2150.prol ]
  %i.bu = icmp ult i32 %i.br, 3
  br i1 %i.bu, label %._crit_edge2151, label %.lr.ph2150

.lr.ph2150:                                       ; preds = %.lr.ph2150.prol.loopexit, %.lr.ph2150
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2150 ], [ %indvars.iv.unr, %.lr.ph2150.prol.loopexit ] ; 5 uses
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %indvars.iv
  store ptr null, ptr %i.bw, align 8, !tbaa !95
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  store ptr null, ptr %i.bz, align 8, !tbaa !95
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store ptr null, ptr %i.cc, align 8, !tbaa !95
  %i.cd = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
end_hunk_1
begin_hunk_2_@sre_ucs4_match:bb.a
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !7
  %i.blk = zext i32 %i.blj to i64
  %i.bll = getelementptr [4 x i8], ptr %i.bli, i64 %i.blk ; 2 uses
  %i.blm = add i32 %.13, 1                        ; 3 uses
  %i.bln = and i32 %i.blm, 4095
  %i.blo = icmp eq i32 %i.bln, 0
  br i1 %i.blo, label %bb.qz, label %.preheader1883

bb.qz:                                            ; preds = %bb.qy
  %i.blp = tail call i32 @PyErr_CheckSignals() #13
  %.not1644 = icmp eq i32 %i.blp, 0
  br i1 %.not1644, label %.preheader1883, label %.loopexit

bb.ra:                                            ; preds = %.backedge
  %i.blq = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.blr = ptrtoint ptr %.151535 to i64
  %i.bls = ptrtoint ptr %i.blq to i64
  %i.blt = sub i64 %i.blr, %i.bls
  %i.blu = ashr exact i64 %i.blt, 2
  %i.blv = getelementptr i8, ptr %.12, i64 4
  %i.blw = load i32, ptr %i.blv, align 4, !tbaa !7
  %i.blx = zext i32 %i.blw to i64                 ; 2 uses
  %.not1762 = icmp ult i64 %i.blu, %i.blx
  br i1 %.not1762, label %bb.rs, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.bly = sub nsw i64 0, %i.blx
  %i.blz = getelementptr [4 x i8], ptr %.151535, i64 %i.bly
  store ptr %i.blz, ptr %0, align 8, !tbaa !81
  %i.bma = getelementptr i8, ptr %.40, i64 16
  %i.bmb = load <2 x i32>, ptr %i.ac, align 4, !tbaa !7
  %i.bmc = load i32, ptr %i.ac, align 4, !tbaa !85 ; 2 uses
  store <2 x i32> %i.bmb, ptr %i.bma, align 8, !tbaa !7
  %i.bmd = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1764 = icmp ne ptr %i.bmd, null
  %i.bme = icmp sgt i32 %i.bmc, -1
  %or.cond1860 = select i1 %.not1764, i1 %i.bme, i1 false
  %.pre2454 = load i64, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  br i1 %or.cond1860, label %bb.rc, label %bb.rh

bb.rc:                                            ; preds = %bb.rb
  %i.bmf = add nuw i32 %i.bmc, 1
  %i.bmg = sext i32 %i.bmf to i64
  %i.bmh = shl nsw i64 %i.bmg, 3                  ; 4 uses
  %i.bmi = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bmj = sub i64 %i.bmi, %.pre2454
  %i.bmk = icmp ugt i64 %i.bmh, %i.bmj
  br i1 %i.bmk, label %bb.rd, label %._crit_edge2451

._crit_edge2451:                                  ; preds = %bb.rc
  %.pre2452 = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %bb.rg

bb.rd:                                            ; preds = %bb.rc
  %i.bml = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef %i.bmh) ; 2 uses
  %i.bmm = icmp slt i32 %i.bml, 0
  br i1 %i.bmm, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.bmn = sext i32 %i.bml to i64
  br label %.loopexit

bb.rf:                                            ; preds = %bb.rd
  %.not1765 = icmp eq i64 %.111490.ph, -1
  %.pre2453 = load ptr, ptr %i.u, align 8, !tbaa !88 ; 2 uses
  %i.bmo = getelementptr i8, ptr %.pre2453, i64 %.111490.ph
  %spec.select2918 = select i1 %.not1765, ptr %.40, ptr %i.bmo
  br label %bb.rg

bb.rg:                                            ; preds = %bb.rf, %._crit_edge2451
  %i.bmp = phi ptr [ %.pre2452, %._crit_edge2451 ], [ %.pre2453, %bb.rf ]
  %.36 = phi ptr [ %.40, %._crit_edge2451 ], [ %spec.select2918, %bb.rf ]
  %i.bmq = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bmr = getelementptr i8, ptr %i.bmp, i64 %i.bmq
  %i.bms = load ptr, ptr %i.ad, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bmr, ptr noundef nonnull align 8 dereferenceable(1) %i.bms, i64 %i.bmh, i1 false)
  %i.bmt = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bmu = add i64 %i.bmt, %i.bmh                 ; 2 uses
  store i64 %i.bmu, ptr %i.e, align 8, !tbaa !120
  br label %bb.rh

bb.rh:                                            ; preds = %bb.rg, %bb.rb
  %i.bmv = phi i64 [ %i.bmu, %bb.rg ], [ %.pre2454, %bb.rb ] ; 4 uses
  %.37 = phi ptr [ %.36, %bb.rg ], [ %.40, %bb.rb ] ; 2 uses
  %i.bmw = getelementptr i8, ptr %.37, i64 24
  store ptr %.12, ptr %i.bmw, align 8, !tbaa !180
  %i.bmx = getelementptr i8, ptr %.37, i64 32
  store ptr %.151535, ptr %i.bmx, align 8, !tbaa !181
  %i.bmy = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bmz = sub i64 %i.bmy, %i.bmv
  %i.bna = icmp ult i64 %i.bmz, 56
  br i1 %i.bna, label %bb.ri, label %bb.rk

bb.ri:                                            ; preds = %bb.rh
  %i.bnb = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.bnc = icmp slt i32 %i.bnb, 0
  br i1 %i.bnc, label %bb.rj, label %._crit_edge2455

._crit_edge2455:                                  ; preds = %bb.ri
  %.pre2456 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.bnd = sext i32 %i.bnb to i64
  br label %.loopexit

bb.rk:                                            ; preds = %._crit_edge2455, %bb.rh
  %i.bne = phi i64 [ %.pre2456, %._crit_edge2455 ], [ %i.bmv, %bb.rh ]
  %i.bnf = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bng = getelementptr i8, ptr %i.bnf, i64 %i.bmv ; 5 uses
  %i.bnh = add i64 %i.bne, 56
  store i64 %i.bnh, ptr %i.e, align 8, !tbaa !120
  %i.bni = getelementptr i8, ptr %.12, i64 8      ; 2 uses
  %i.bnj = getelementptr i8, ptr %i.bng, i64 24
  store ptr %i.bni, ptr %i.bnj, align 8, !tbaa !180
  %i.bnk = getelementptr i8, ptr %i.bng, i64 40
  store i32 0, ptr %i.bnk, align 8, !tbaa !177
  %i.bnl = getelementptr i8, ptr %i.bng, i64 44
  store i32 13, ptr %i.bnl, align 4, !tbaa !176
  %i.bnm = getelementptr i8, ptr %i.bng, i64 48
  store i64 %.111490.ph, ptr %i.bnm, align 8, !tbaa !174
  br label %.backedge1884.backedge

bb.rl:                                            ; preds = %bb.sp
  br i1 %.not1642, label %.critedge1878, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bnn = getelementptr i8, ptr %i.boy, i64 16
  %i.bno = load i32, ptr %i.bnn, align 8, !tbaa !182 ; 2 uses
  %i.bnp = icmp sgt i32 %i.bno, -1
  br i1 %i.bnp, label %bb.rn, label %.critedge1878

bb.rn:                                            ; preds = %bb.rm
  %i.bnq = add nuw i32 %i.bno, 1
  %i.bnr = sext i32 %i.bnq to i64
  %i.bns = shl nsw i64 %i.bnr, 3
  %i.bnt = sub i64 %i.bov, %i.bns
  store i64 %i.bnt, ptr %i.e, align 8, !tbaa !120
  br label %.critedge1878

bb.ro:                                            ; preds = %bb.sp
  br i1 %.not1642, label %bb.rr, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bnu = getelementptr i8, ptr %i.boy, i64 16
  %i.bnv = load i32, ptr %i.bnu, align 8, !tbaa !182 ; 2 uses
  %i.bnw = icmp sgt i32 %i.bnv, -1
  br i1 %i.bnw, label %bb.rq, label %bb.rr

bb.rq:                                            ; preds = %bb.rp
  %i.bnx = add nuw i32 %i.bnv, 1
  %i.bny = sext i32 %i.bnx to i64
  %i.bnz = shl nsw i64 %i.bny, 3                  ; 3 uses
  %i.boa = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bob = getelementptr i8, ptr %i.box, i64 %i.bov
  %i.boc = sub nsw i64 0, %i.bnz
  %i.bod = getelementptr i8, ptr %i.bob, i64 %i.boc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.boa, ptr noundef nonnull align 1 dereferenceable(1) %i.bod, i64 %i.bnz, i1 false)
  %i.boe = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bof = sub i64 %i.boe, %i.bnz
  store i64 %i.bof, ptr %i.e, align 8, !tbaa !120
  br label %bb.rr

bb.rr:                                            ; preds = %bb.ro, %bb.rp, %bb.rq
  %i.bog = getelementptr i8, ptr %i.boy, i64 16
  %i.boh = load <2 x i32>, ptr %i.bog, align 8, !tbaa !7
  store <2 x i32> %i.boh, ptr %i.ac, align 4, !tbaa !7
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.ra
  %.141534 = phi ptr [ %.151535, %bb.ra ], [ %i.bsa, %bb.rr ] ; 2 uses
  %.38 = phi ptr [ %.40, %bb.ra ], [ %i.boy, %bb.rr ] ; 2 uses
  %.121504 = phi i32 [ %.14, %bb.ra ], [ %.13, %bb.rr ]
  %.101489 = phi i64 [ %.111490.ph, %bb.ra ], [ %i.bor, %bb.rr ] ; 2 uses
  %.11 = phi ptr [ %.12, %bb.ra ], [ %i.bry, %bb.rr ] ; 2 uses
  %i.boi = load i32, ptr %.11, align 4, !tbaa !7
  %i.boj = zext i32 %i.boi to i64
  %i.bok = getelementptr [4 x i8], ptr %.11, i64 %i.boj ; 2 uses
  %i.bol = add i32 %.121504, 1                    ; 3 uses
  %i.bom = and i32 %i.bol, 4095
  %i.bon = icmp eq i32 %i.bom, 0
  br i1 %i.bon, label %bb.rt, label %.preheader1883

bb.rt:                                            ; preds = %bb.rs
  %i.boo = tail call i32 @PyErr_CheckSignals() #13
  %.not1763 = icmp eq i32 %i.boo, 0
  br i1 %.not1763, label %.preheader1883, label %.loopexit

.critedge1878.loopexit:                           ; preds = %.lr.ph2154, %bb.pi
  br label %.critedge1878

.critedge1878.loopexit3174:                       ; preds = %.lr.ph2145, %bb.pw
  br label %.critedge1878

.critedge1878.loopexit3175:                       ; preds = %.lr.ph2140, %sre_lower_ascii.exit1833
  br label %.critedge1878

.critedge1878.loopexit3176:                       ; preds = %.lr.ph, %sre_lower_locale.exit1835
  br label %.critedge1878

.critedge1878:                                    ; preds = %.backedge, %bb.so, %repeat_pool_free.exit1838, %bb.sc, %bb.sb, %bb.rz, %bb.rx, %.critedge1878.loopexit3176, %.critedge1878.loopexit3175, %.critedge1878.loopexit3174, %.critedge1878.loopexit, %bb.rn, %bb.rm, %bb.rl, %bb.qt, %bb.qb, %bb.qa, %bb.pv, %bb.pu, %bb.pn, %bb.pm, %bb.ph, %bb.pg, %bb.pd, %repeat_pool_free.exit, %bb.no, %bb.ne, %bb.nd, %bb.mz, %bb.my, %bb.mx, %bb.ml, %bb.md, %bb.lq, %bb.lp, %bb.kx, %bb.kp, %bb.kf, %bb.jz, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jn, %bb.jm, %bb.jl, %bb.iy, %bb.iq, %bb.im, %.sink.split, %bb.il, %bb.ik, %bb.if, %bb.ie, %bb.id, %bb.hw, %._crit_edge2162, %bb.hr, %bb.hq, %bb.hp, %bb.gz, %bb.gt, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gi, %bb.gh, %bb.gg, %sre_ucs4_charset_loc_ignore.exit, %sre_upper_locale.exit.i, %bb.ff, %bb.fb, %bb.fa, %sre_lower_ascii.exit1813, %bb.eu, %char_loc_ignore.exit1812, %sre_lower_locale.exit.i1809, %bb.eq, %bb.ep, %bb.el, %bb.ek, %sre_lower_ascii.exit1808, %bb.ee, %char_loc_ignore.exit, %bb.eb, %bb.dz, %bb.dv, %bb.du, %sre_lower_ascii.exit, %bb.do, %bb.dk, %bb.dj, %bb.df, %bb.db, %bb.da, %bb.cw, %bb.cv, %sre_ucs4_at.exit, %Py_UNICODE_ISALNUM.exit115.thread.i, %Py_UNICODE_ISALNUM.exit107.thread.i, %bb.ca, %bb.br, %bb.bi, %bb.az, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.y, %bb.x, %bb.t, %bb.s, %bb.i
  %.39 = phi ptr [ %.40, %.critedge1878.loopexit ], [ %.16, %bb.ju ], [ %i.boy, %bb.sb ], [ %i.boy, %bb.md ], [ %i.boy, %bb.lq ], [ %i.boy, %bb.mx ], [ %i.boy, %bb.sc ], [ %i.boy, %bb.no ], [ %.40, %sre_ucs4_charset_loc_ignore.exit ], [ %i.boy, %bb.gg ], [ %i.boy, %repeat_pool_free.exit1838 ], [ %i.boy, %bb.kx ], [ %i.boy, %bb.rx ], [ %i.boy, %bb.ml ], [ %i.boy, %bb.so ], [ %.40, %bb.y ], [ %.40, %bb.ah ], [ %.40, %bb.cw ], [ %.40, %sre_ucs4_at.exit ], [ %.40, %bb.qb ], [ %.01505, %bb.i ], [ %.40, %bb.ag ], [ %.40, %sre_lower_ascii.exit1808 ], [ %i.boy, %bb.rz ], [ %.40, %bb.pg ], [ %i.boy, %bb.ne ], [ %.40, %bb.db ], [ %.40, %sre_lower_ascii.exit ], [ %.40, %bb.am ], [ %.40, %bb.t ], [ %.40, %sre_lower_ascii.exit1813 ], [ %.40, %bb.pn ], [ %.40, %bb.pu ], [ %.40, %.critedge1878.loopexit3175 ], [ %.40, %bb.df ], [ %.40, %bb.gr ], [ %i.boy, %bb.id ], [ %i.wb, %bb.gz ], [ %.40, %bb.el ], [ %i.wb, %bb.gt ], [ %i.boy, %bb.jl ], [ %.121517, %bb.iy ], [ %.40, %bb.im ], [ %i.adc, %bb.iq ], [ %.40, %bb.jx ], [ %i.ahr, %bb.kf ], [ %.40, %bb.ph ], [ %.40, %bb.pm ], [ %i.boy, %bb.rm ], [ %.40, %char_loc_ignore.exit1812 ], [ %.40, %bb.dk ], [ %.40, %char_loc_ignore.exit ], [ %.40, %bb.pv ], [ %.40, %bb.qa ], [ %i.boy, %bb.rn ], [ %.40, %bb.fb ], [ %.40, %bb.dv ], [ %i.boy, %repeat_pool_free.exit ], [ %i.ahr, %bb.jz ], [ %i.boy, %bb.kp ], [ %.21507, %bb.gq ], [ %i.boy, %bb.hp ], [ %.111516.ph, %.sink.split ], [ %i.boy, %bb.pd ], [ %.40, %bb.qt ], [ %.40, %.backedge ], [ %.40, %bb.ai ], [ %.40, %bb.ap ], [ %.40, %Py_UNICODE_ISALNUM.exit107.thread.i ], [ %.40, %bb.ca ], [ %.40, %bb.br ], [ %.40, %bb.bi ], [ %.40, %bb.az ], [ %.40, %bb.aq ], [ %.40, %bb.an ], [ %.40, %bb.ak ], [ %.40, %Py_UNICODE_ISALNUM.exit115.thread.i ], [ %.40, %bb.s ], [ %.40, %bb.x ], [ %.40, %bb.ae ], [ %.40, %bb.cv ], [ %.40, %bb.da ], [ %.40, %bb.dj ], [ %.40, %bb.do ], [ %.40, %bb.du ], [ %.40, %bb.eb ], [ %.40, %bb.dz ], [ %.40, %bb.ee ], [ %.40, %bb.ek ], [ %.40, %bb.eq ], [ %.40, %sre_lower_locale.exit.i1809 ], [ %.40, %bb.ep ], [ %.40, %bb.eu ], [ %.40, %bb.fa ], [ %.40, %sre_upper_locale.exit.i ], [ %.40, %bb.ff ], [ %i.boy, %bb.gi ], [ %i.boy, %bb.gh ], [ %.21507, %bb.go ], [ %.21507, %bb.gp ], [ %i.boy, %bb.hr ], [ %i.boy, %bb.hq ], [ %i.boy, %bb.if ], [ %i.boy, %bb.ie ], [ %.91514, %bb.il ], [ %.71512, %bb.hw ], [ %.71512, %._crit_edge2162 ], [ %.91514, %bb.ik ], [ %i.boy, %bb.jn ], [ %i.boy, %bb.jm ], [ %.16, %bb.jw ], [ %.16, %bb.jv ], [ %i.boy, %bb.lp ], [ %i.boy, %bb.mz ], [ %i.boy, %bb.my ], [ %i.boy, %bb.nd ], [ %i.boy, %bb.rl ], [ %.40, %.critedge1878.loopexit3174 ], [ %.40, %.critedge1878.loopexit3176 ] ; 2 uses
  %.13 = phi i32 [ %.14, %.critedge1878.loopexit ], [ %.71499, %bb.ju ], [ %.13, %bb.sb ], [ %.13, %bb.md ], [ %.13, %bb.lq ], [ %.13, %bb.mx ], [ %.13, %bb.sc ], [ %.13, %bb.no ], [ %.14, %sre_ucs4_charset_loc_ignore.exit ], [ %.13, %bb.gg ], [ %.13, %repeat_pool_free.exit1838 ], [ %.13, %bb.kx ], [ %.13, %bb.rx ], [ %.13, %bb.ml ], [ %.13, %bb.so ], [ %.14, %bb.y ], [ %.14, %bb.ah ], [ %.14, %bb.cw ], [ %.14, %sre_ucs4_at.exit ], [ %.14, %bb.qb ], [ %.01492, %bb.i ], [ %.14, %bb.ag ], [ %.14, %sre_lower_ascii.exit1808 ], [ %.13, %bb.rz ], [ %.14, %bb.pg ], [ %.13, %bb.ne ], [ %.14, %bb.db ], [ %.14, %sre_lower_ascii.exit ], [ %.14, %bb.am ], [ %.14, %bb.t ], [ %.14, %sre_lower_ascii.exit1813 ], [ %.14, %bb.pn ], [ %.14, %bb.pu ], [ %.14, %.critedge1878.loopexit3175 ], [ %.14, %bb.df ], [ %.14, %bb.gr ], [ %.13, %bb.id ], [ %.14, %bb.gz ], [ %.14, %bb.el ], [ %.14, %bb.gt ], [ %.13, %bb.jl ], [ %.14, %bb.iy ], [ %.14, %bb.im ], [ %.14, %bb.iq ], [ %.14, %bb.jx ], [ %.14, %bb.kf ], [ %.14, %bb.ph ], [ %.14, %bb.pm ], [ %.13, %bb.rm ], [ %.14, %char_loc_ignore.exit1812 ], [ %.14, %bb.dk ], [ %.14, %char_loc_ignore.exit ], [ %.14, %bb.pv ], [ %.14, %bb.qa ], [ %.13, %bb.rn ], [ %.14, %bb.fb ], [ %.14, %bb.dv ], [ %.13, %repeat_pool_free.exit ], [ %.14, %bb.jz ], [ %.13, %bb.kp ], [ %.11493, %bb.gq ], [ %.13, %bb.hp ], [ %.51497.ph, %.sink.split ], [ %.13, %bb.pd ], [ %.14, %bb.qt ], [ %.14, %.backedge ], [ %.14, %bb.ai ], [ %.14, %bb.ap ], [ %.14, %Py_UNICODE_ISALNUM.exit107.thread.i ], [ %.14, %bb.ca ], [ %.14, %bb.br ], [ %.14, %bb.bi ], [ %.14, %bb.az ], [ %.14, %bb.aq ], [ %.14, %bb.an ], [ %.14, %bb.ak ], [ %.14, %Py_UNICODE_ISALNUM.exit115.thread.i ], [ %.14, %bb.s ], [ %.14, %bb.x ], [ %.14, %bb.ae ], [ %.14, %bb.cv ], [ %.14, %bb.da ], [ %.14, %bb.dj ], [ %.14, %bb.do ], [ %.14, %bb.du ], [ %.14, %bb.eb ], [ %.14, %bb.dz ], [ %.14, %bb.ee ], [ %.14, %bb.ek ], [ %.14, %bb.eq ], [ %.14, %sre_lower_locale.exit.i1809 ], [ %.14, %bb.ep ], [ %.14, %bb.eu ], [ %.14, %bb.fa ], [ %.14, %sre_upper_locale.exit.i ], [ %.14, %bb.ff ], [ %.13, %bb.gi ], [ %.13, %bb.gh ], [ %.11493, %bb.go ], [ %.11493, %bb.gp ], [ %.13, %bb.hr ], [ %.13, %bb.hq ], [ %.13, %bb.if ], [ %.13, %bb.ie ], [ %.41496, %bb.il ], [ %.31495, %bb.hw ], [ %.31495, %._crit_edge2162 ], [ %.41496, %bb.ik ], [ %.13, %bb.jn ], [ %.13, %bb.jm ], [ %.71499, %bb.jw ], [ %.71499, %bb.jv ], [ %.13, %bb.lp ], [ %.13, %bb.mz ], [ %.13, %bb.my ], [ %.13, %bb.nd ], [ %.13, %bb.rl ], [ %.14, %.critedge1878.loopexit3174 ], [ %.14, %.critedge1878.loopexit3176 ] ; 49 uses
  %.not1641 = phi i1 [ true, %.critedge1878.loopexit ], [ true, %bb.ju ], [ false, %bb.sb ], [ true, %bb.md ], [ false, %bb.lq ], [ false, %bb.mx ], [ false, %bb.sc ], [ true, %bb.no ], [ true, %sre_ucs4_charset_loc_ignore.exit ], [ false, %bb.gg ], [ false, %repeat_pool_free.exit1838 ], [ true, %bb.kx ], [ false, %bb.rx ], [ true, %bb.ml ], [ true, %bb.so ], [ true, %bb.y ], [ false, %bb.ah ], [ true, %bb.cw ], [ true, %sre_ucs4_at.exit ], [ true, %bb.qb ], [ true, %bb.i ], [ true, %bb.ag ], [ true, %sre_lower_ascii.exit1808 ], [ false, %bb.rz ], [ true, %bb.pg ], [ true, %bb.ne ], [ true, %bb.db ], [ true, %sre_lower_ascii.exit ], [ true, %bb.am ], [ true, %bb.t ], [ true, %sre_lower_ascii.exit1813 ], [ true, %bb.pn ], [ true, %bb.pu ], [ true, %.critedge1878.loopexit3175 ], [ true, %bb.df ], [ true, %bb.gr ], [ false, %bb.id ], [ false, %bb.gz ], [ true, %bb.el ], [ true, %bb.gt ], [ false, %bb.jl ], [ false, %bb.iy ], [ true, %bb.im ], [ true, %bb.iq ], [ true, %bb.jx ], [ false, %bb.kf ], [ true, %bb.ph ], [ true, %bb.pm ], [ true, %bb.rm ], [ true, %char_loc_ignore.exit1812 ], [ true, %bb.dk ], [ true, %char_loc_ignore.exit ], [ true, %bb.pv ], [ true, %bb.qa ], [ true, %bb.rn ], [ true, %bb.fb ], [ true, %bb.dv ], [ true, %repeat_pool_free.exit ], [ true, %bb.jz ], [ true, %bb.kp ], [ true, %bb.gq ], [ false, %bb.hp ], [ true, %.sink.split ], [ true, %bb.pd ], [ true, %bb.qt ], [ true, %.backedge ], [ true, %bb.ai ], [ true, %bb.ap ], [ true, %Py_UNICODE_ISALNUM.exit107.thread.i ], [ true, %bb.ca ], [ true, %bb.br ], [ true, %bb.bi ], [ true, %bb.az ], [ true, %bb.aq ], [ true, %bb.an ], [ true, %bb.ak ], [ true, %Py_UNICODE_ISALNUM.exit115.thread.i ], [ true, %bb.s ], [ true, %bb.x ], [ true, %bb.ae ], [ true, %bb.cv ], [ true, %bb.da ], [ true, %bb.dj ], [ true, %bb.do ], [ true, %bb.du ], [ true, %bb.eb ], [ true, %bb.dz ], [ true, %bb.ee ], [ true, %bb.ek ], [ true, %bb.eq ], [ true, %sre_lower_locale.exit.i1809 ], [ true, %bb.ep ], [ true, %bb.eu ], [ true, %bb.fa ], [ true, %sre_upper_locale.exit.i ], [ true, %bb.ff ], [ false, %bb.gi ], [ false, %bb.gh ], [ true, %bb.go ], [ true, %bb.gp ], [ false, %bb.hr ], [ false, %bb.hq ], [ false, %bb.if ], [ false, %bb.ie ], [ true, %bb.il ], [ true, %bb.hw ], [ true, %._crit_edge2162 ], [ true, %bb.ik ], [ false, %bb.jn ], [ false, %bb.jm ], [ true, %bb.jw ], [ true, %bb.jv ], [ false, %bb.lp ], [ false, %bb.mz ], [ false, %bb.my ], [ true, %bb.nd ], [ true, %bb.rl ], [ true, %.critedge1878.loopexit3174 ], [ true, %.critedge1878.loopexit3176 ] ; 15 uses
  %i.bop = phi i1 [ false, %.critedge1878.loopexit ], [ false, %bb.ju ], [ true, %bb.sb ], [ false, %bb.md ], [ true, %bb.lq ], [ true, %bb.mx ], [ true, %bb.sc ], [ false, %bb.no ], [ false, %sre_ucs4_charset_loc_ignore.exit ], [ true, %bb.gg ], [ true, %repeat_pool_free.exit1838 ], [ false, %bb.kx ], [ true, %bb.rx ], [ false, %bb.ml ], [ false, %bb.so ], [ false, %bb.y ], [ true, %bb.ah ], [ false, %bb.cw ], [ false, %sre_ucs4_at.exit ], [ false, %bb.qb ], [ false, %bb.i ], [ false, %bb.ag ], [ false, %sre_lower_ascii.exit1808 ], [ true, %bb.rz ], [ false, %bb.pg ], [ false, %bb.ne ], [ false, %bb.db ], [ false, %sre_lower_ascii.exit ], [ false, %bb.am ], [ false, %bb.t ], [ false, %sre_lower_ascii.exit1813 ], [ false, %bb.pn ], [ false, %bb.pu ], [ false, %.critedge1878.loopexit3175 ], [ false, %bb.df ], [ false, %bb.gr ], [ true, %bb.id ], [ true, %bb.gz ], [ false, %bb.el ], [ false, %bb.gt ], [ true, %bb.jl ], [ true, %bb.iy ], [ false, %bb.im ], [ false, %bb.iq ], [ false, %bb.jx ], [ true, %bb.kf ], [ false, %bb.ph ], [ false, %bb.pm ], [ false, %bb.rm ], [ false, %char_loc_ignore.exit1812 ], [ false, %bb.dk ], [ false, %char_loc_ignore.exit ], [ false, %bb.pv ], [ false, %bb.qa ], [ false, %bb.rn ], [ false, %bb.fb ], [ false, %bb.dv ], [ false, %repeat_pool_free.exit ], [ false, %bb.jz ], [ false, %bb.kp ], [ false, %bb.gq ], [ true, %bb.hp ], [ false, %.sink.split ], [ false, %bb.pd ], [ false, %bb.qt ], [ false, %.backedge ], [ false, %bb.ai ], [ false, %bb.ap ], [ false, %Py_UNICODE_ISALNUM.exit107.thread.i ], [ false, %bb.ca ], [ false, %bb.br ], [ false, %bb.bi ], [ false, %bb.az ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.ak ], [ false, %Py_UNICODE_ISALNUM.exit115.thread.i ], [ false, %bb.s ], [ false, %bb.x ], [ false, %bb.ae ], [ false, %bb.cv ], [ false, %bb.da ], [ false, %bb.dj ], [ false, %bb.do ], [ false, %bb.du ], [ false, %bb.eb ], [ false, %bb.dz ], [ false, %bb.ee ], [ false, %bb.ek ], [ false, %bb.eq ], [ false, %sre_lower_locale.exit.i1809 ], [ false, %bb.ep ], [ false, %bb.eu ], [ false, %bb.fa ], [ false, %sre_upper_locale.exit.i ], [ false, %bb.ff ], [ true, %bb.gi ], [ true, %bb.gh ], [ false, %bb.go ], [ false, %bb.gp ], [ true, %bb.hr ], [ true, %bb.hq ], [ true, %bb.if ], [ true, %bb.ie ], [ false, %bb.il ], [ false, %bb.hw ], [ false, %._crit_edge2162 ], [ false, %bb.ik ], [ true, %bb.jn ], [ true, %bb.jm ], [ false, %bb.jw ], [ false, %bb.jv ], [ true, %bb.lp ], [ true, %bb.mz ], [ true, %bb.my ], [ false, %bb.nd ], [ false, %bb.rl ], [ false, %.critedge1878.loopexit3174 ], [ false, %.critedge1878.loopexit3176 ]
  %.01491 = phi i64 [ 0, %.critedge1878.loopexit ], [ 0, %bb.ju ], [ 1, %bb.sb ], [ 0, %bb.md ], [ 1, %bb.lq ], [ 1, %bb.mx ], [ 1, %bb.sc ], [ 0, %bb.no ], [ 0, %sre_ucs4_charset_loc_ignore.exit ], [ 1, %bb.gg ], [ 1, %repeat_pool_free.exit1838 ], [ 0, %bb.kx ], [ 1, %bb.rx ], [ 0, %bb.ml ], [ 0, %bb.so ], [ 0, %bb.y ], [ 1, %bb.ah ], [ 0, %bb.cw ], [ 0, %sre_ucs4_at.exit ], [ 0, %bb.qb ], [ 0, %bb.i ], [ 0, %bb.ag ], [ 0, %sre_lower_ascii.exit1808 ], [ 1, %bb.rz ], [ 0, %bb.pg ], [ 0, %bb.ne ], [ 0, %bb.db ], [ 0, %sre_lower_ascii.exit ], [ 0, %bb.am ], [ 0, %bb.t ], [ 0, %sre_lower_ascii.exit1813 ], [ 0, %bb.pn ], [ 0, %bb.pu ], [ 0, %.critedge1878.loopexit3175 ], [ 0, %bb.df ], [ 0, %bb.gr ], [ 1, %bb.id ], [ 1, %bb.gz ], [ 0, %bb.el ], [ 0, %bb.gt ], [ 1, %bb.jl ], [ 1, %bb.iy ], [ 0, %bb.im ], [ 0, %bb.iq ], [ 0, %bb.jx ], [ 1, %bb.kf ], [ 0, %bb.ph ], [ 0, %bb.pm ], [ 0, %bb.rm ], [ 0, %char_loc_ignore.exit1812 ], [ 0, %bb.dk ], [ 0, %char_loc_ignore.exit ], [ 0, %bb.pv ], [ 0, %bb.qa ], [ 0, %bb.rn ], [ 0, %bb.fb ], [ 0, %bb.dv ], [ 0, %repeat_pool_free.exit ], [ 0, %bb.jz ], [ 0, %bb.kp ], [ 0, %bb.gq ], [ 1, %bb.hp ], [ 0, %.sink.split ], [ 0, %bb.pd ], [ 0, %bb.qt ], [ 0, %.backedge ], [ 0, %bb.ai ], [ 0, %bb.ap ], [ 0, %Py_UNICODE_ISALNUM.exit107.thread.i ], [ 0, %bb.ca ], [ 0, %bb.br ], [ 0, %bb.bi ], [ 0, %bb.az ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.ak ], [ 0, %Py_UNICODE_ISALNUM.exit115.thread.i ], [ 0, %bb.s ], [ 0, %bb.x ], [ 0, %bb.ae ], [ 0, %bb.cv ], [ 0, %bb.da ], [ 0, %bb.dj ], [ 0, %bb.do ], [ 0, %bb.du ], [ 0, %bb.eb ], [ 0, %bb.dz ], [ 0, %bb.ee ], [ 0, %bb.ek ], [ 0, %bb.eq ], [ 0, %sre_lower_locale.exit.i1809 ], [ 0, %bb.ep ], [ 0, %bb.eu ], [ 0, %bb.fa ], [ 0, %sre_upper_locale.exit.i ], [ 0, %bb.ff ], [ 1, %bb.gi ], [ 1, %bb.gh ], [ 0, %bb.go ], [ 0, %bb.gp ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %bb.if ], [ 1, %bb.ie ], [ 0, %bb.il ], [ 0, %bb.hw ], [ 0, %._crit_edge2162 ], [ 0, %bb.ik ], [ 1, %bb.jn ], [ 1, %bb.jm ], [ 0, %bb.jw ], [ 0, %bb.jv ], [ 1, %bb.lp ], [ 1, %bb.mz ], [ 1, %bb.my ], [ 0, %bb.nd ], [ 0, %bb.rl ], [ 0, %.critedge1878.loopexit3174 ], [ 0, %.critedge1878.loopexit3176 ] ; 2 uses
  %i.boq = getelementptr i8, ptr %.39, i64 48
  %i.bor = load i64, ptr %i.boq, align 8, !tbaa !174 ; 19 uses
  %i.bos = getelementptr i8, ptr %.39, i64 44
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !176
  %i.bou = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bov = add i64 %i.bou, -56                    ; 19 uses
  store i64 %i.bov, ptr %i.e, align 8, !tbaa !120
  %i.bow = icmp eq i64 %i.bor, -1
  br i1 %i.bow, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %.critedge1878
  store i32 %.13, ptr %i.c, align 8, !tbaa !119
  br label %.loopexit

bb.rv:                                            ; preds = %.critedge1878
  %i.box = load ptr, ptr %i.u, align 8, !tbaa !88 ; 10 uses
  %i.boy = getelementptr i8, ptr %i.box, i64 %i.bor ; 119 uses
  switch i32 %i.bot, label %.loopexit [
    i32 2, label %bb.rw
    i32 3, label %bb.rx
    i32 5, label %bb.ry
    i32 6, label %bb.rz
    i32 11, label %bb.sa
    i32 1, label %bb.sb
    i32 4, label %bb.sc
    i32 14, label %bb.sd
    i32 15, label %bb.se
    i32 7, label %bb.sf
    i32 8, label %bb.sk
    i32 9, label %bb.sl
    i32 10, label %bb.sm
    i32 16, label %bb.sn
    i32 12, label %bb.so
    i32 13, label %bb.sp
  ]

bb.rw:                                            ; preds = %bb.rv
  %i.boz = getelementptr i8, ptr %i.boy, i64 24
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !180
  %i.bpb = getelementptr i8, ptr %i.boy, i64 32
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !181 ; 2 uses
  %i.bpd = getelementptr i8, ptr %i.boy, i64 8
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !26
  %i.bpf = getelementptr i8, ptr %i.bpe, i64 16
  %i.bpg = getelementptr i8, ptr %i.box, i64 %i.bov
  %i.bph = getelementptr i8, ptr %i.bpg, i64 -8
  %i.bpi = load i64, ptr %i.bph, align 1
  store i64 %i.bpi, ptr %i.bpf, align 8
  %i.bpj = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bpk = add i64 %i.bpj, -8                     ; 4 uses
  store i64 %i.bpk, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.lr, label %bb.lp

bb.rx:                                            ; preds = %bb.rv
  %i.bpl = getelementptr i8, ptr %i.boy, i64 32
  %i.bpm = load ptr, ptr %i.bpl, align 8, !tbaa !181
  %i.bpn = getelementptr i8, ptr %i.boy, i64 8
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !26
  store ptr %i.bpo, ptr %i.ai, align 8, !tbaa !87
  br i1 %i.bop, label %.critedge1878, label %bb.md

bb.ry:                                            ; preds = %bb.rv
  %i.bpp = getelementptr i8, ptr %i.boy, i64 24
  %i.bpq = getelementptr i8, ptr %i.boy, i64 32
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !181 ; 2 uses
  %i.bps = load <2 x ptr>, ptr %i.bpp, align 8, !tbaa !132
  %i.bpt = load ptr, ptr %i.ai, align 8, !tbaa !87
  %i.bpu = getelementptr i8, ptr %i.boy, i64 8    ; 2 uses
  %i.bpv = load ptr, ptr %i.bpu, align 8, !tbaa !26
  store ptr %i.bpv, ptr %i.ai, align 8, !tbaa !87
  %.not1793 = icmp eq ptr %i.bpt, null            ; 2 uses
  br i1 %.not1641, label %bb.na, label %bb.mx

bb.rz:                                            ; preds = %bb.rv
  %i.bpw = getelementptr i8, ptr %i.boy, i64 32
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !181
  %i.bpy = getelementptr i8, ptr %i.boy, i64 8    ; 2 uses
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !26
  %i.bqa = getelementptr i8, ptr %i.bpz, i64 16
  %i.bqb = getelementptr i8, ptr %i.box, i64 %i.bov
  %i.bqc = getelementptr i8, ptr %i.bqb, i64 -8
  %i.bqd = load i64, ptr %i.bqc, align 1
  store i64 %i.bqd, ptr %i.bqa, align 8
  %i.bqe = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bqf = add i64 %i.bqe, -8
  store i64 %i.bqf, ptr %i.e, align 8, !tbaa !120
  br i1 %.not1641, label %bb.no, label %.critedge1878

bb.sa:                                            ; preds = %bb.rv
  %i.bqg = getelementptr i8, ptr %i.boy, i64 24
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !180
  %i.bqi = getelementptr i8, ptr %i.boy, i64 32
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !181
  %i.bqk = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1782 = icmp eq ptr %i.bqk, null            ; 2 uses
  br i1 %.not1641, label %bb.gj, label %bb.gg

bb.sb:                                            ; preds = %bb.rv
  br i1 %.not1641, label %bb.kx, label %.critedge1878

bb.sc:                                            ; preds = %bb.rv
  br i1 %.not1641, label %bb.ml, label %.critedge1878

bb.sd:                                            ; preds = %bb.rv
  %i.bql = getelementptr i8, ptr %i.boy, i64 32
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !181 ; 2 uses
  br i1 %.not1641, label %bb.nx, label %bb.nw

bb.se:                                            ; preds = %bb.rv
  %i.bqn = getelementptr i8, ptr %i.boy, i64 24
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !180 ; 2 uses
  %i.bqp = getelementptr i8, ptr %i.boy, i64 32
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !181 ; 2 uses
  %i.bqr = getelementptr i8, ptr %i.boy, i64 16   ; 2 uses
  %i.bqs = load i32, ptr %i.bqr, align 8, !tbaa !182 ; 4 uses
  %i.bqt = icmp sgt i32 %i.bqs, -1                ; 2 uses
  br i1 %.not1641, label %bb.or, label %bb.oo

bb.sf:                                            ; preds = %bb.rv
  %i.bqu = getelementptr i8, ptr %i.boy, i64 8    ; 2 uses
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !26
  %i.bqw = getelementptr i8, ptr %i.bqv, i64 24
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !143
  store ptr %i.bqx, ptr %i.ai, align 8, !tbaa !87
  %i.bqy = load ptr, ptr %i.bqu, align 8, !tbaa !26 ; 3 uses
  %i.bqz = getelementptr i8, ptr %i.bqy, i64 32
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !147 ; 3 uses
  %i.brb = getelementptr i8, ptr %i.bqy, i64 40   ; 2 uses
  %i.brc = load ptr, ptr %i.brb, align 8, !tbaa !106 ; 4 uses
  %.not.i1836 = icmp eq ptr %i.bra, null
  br i1 %.not.i1836, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.brd = getelementptr i8, ptr %i.bra, i64 40
  store ptr %i.brc, ptr %i.brd, align 8, !tbaa !106
  br label %bb.si

bb.sh:                                            ; preds = %bb.sf
  store ptr %i.brc, ptr %i.ak, align 8, !tbaa !105
  br label %bb.si

bb.si:                                            ; preds = %bb.sh, %bb.sg
  %.not15.i1837 = icmp eq ptr %i.brc, null
  br i1 %.not15.i1837, label %repeat_pool_free.exit1838, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bre = getelementptr i8, ptr %i.brc, i64 32
  store ptr %i.bra, ptr %i.bre, align 8, !tbaa !147
  br label %repeat_pool_free.exit1838

repeat_pool_free.exit1838:                        ; preds = %bb.si, %bb.sj
  %i.brf = load ptr, ptr %i.al, align 8, !tbaa !110
  store ptr %i.brf, ptr %i.brb, align 8, !tbaa !106
  store ptr %i.bqy, ptr %i.al, align 8, !tbaa !110
  br i1 %.not1641, label %bb.kp, label %.critedge1878

bb.sk:                                            ; preds = %bb.rv
  %i.brg = getelementptr i8, ptr %i.boy, i64 24
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !180
  %i.bri = getelementptr i8, ptr %i.boy, i64 32
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !181
  %i.brk = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1653 = icmp eq ptr %i.brk, null            ; 2 uses
  br i1 %.not1641, label %bb.hs, label %bb.hp

bb.sl:                                            ; preds = %bb.rv
  %i.brl = getelementptr i8, ptr %i.boy, i64 24
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !180
  %i.brn = getelementptr i8, ptr %i.boy, i64 32
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !181
  %i.brp = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1650 = icmp eq ptr %i.brp, null            ; 2 uses
  br i1 %.not1641, label %bb.ig, label %bb.id

bb.sm:                                            ; preds = %bb.rv
  %i.brq = getelementptr i8, ptr %i.boy, i64 24
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !180 ; 2 uses
  %i.brs = getelementptr i8, ptr %i.boy, i64 32
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !181 ; 2 uses
  %i.bru = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1647 = icmp eq ptr %i.bru, null            ; 2 uses
  br i1 %.not1641, label %bb.jo, label %bb.jl

bb.sn:                                            ; preds = %bb.rv
  br i1 %.not1641, label %bb.pd, label %bb.pe

bb.so:                                            ; preds = %bb.rv
  %i.brv = getelementptr i8, ptr %i.boy, i64 32
  %i.brw = load ptr, ptr %i.brv, align 8, !tbaa !181 ; 2 uses
  br i1 %.not1641, label %.critedge1878, label %bb.qy

bb.sp:                                            ; preds = %bb.rv
  %i.brx = getelementptr i8, ptr %i.boy, i64 24
  %i.bry = load ptr, ptr %i.brx, align 8, !tbaa !180
  %i.brz = getelementptr i8, ptr %i.boy, i64 32
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !181
  %i.bsb = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not1642 = icmp eq ptr %i.bsb, null            ; 2 uses
  br i1 %.not1641, label %bb.ro, label %bb.rl

.loopexit:                                        ; preds = %.backedge, %bb.rv, %bb.ru, %bb.rt, %bb.rj, %bb.re, %bb.qz, %bb.qw, %bb.qr, %bb.qo, %bb.qk, %bb.qg, %bb.py, %bb.ps, %bb.pk, %bb.pf, %bb.pb, %bb.oy, %bb.om, %bb.oh, %bb.nu, %bb.np, %bb.nl, %bb.nh, %bb.mu, %bb.mp, %bb.mi, %bb.me, %bb.ma, %bb.lm, %bb.li, %bb.ld, %bb.ku, %bb.kq, %bb.km, %bb.kj, %bb.kh, %bb.jy, %bb.jr, %bb.ji, %bb.jc, %bb.ip, %bb.ia, %bb.hm, %bb.hd, %bb.gs, %bb.gd, %bb.fp, %bb.fk, %bb.fh, %bb.fd, %bb.ey, %bb.es, %bb.en, %bb.ei, %bb.ec, %bb.dx, %bb.ds, %bb.dm, %bb.dh, %bb.dd, %bb.cy, %bb.ct, %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g
  %.0 = phi i64 [ -9, %bb.g ], [ %.01491, %bb.ru ], [ -1, %.backedge ], [ %i.acz, %bb.ip ], [ -9, %bb.ma ], [ -10, %bb.py ], [ -10, %bb.ec ], [ %i.avn, %bb.nh ], [ %i.awi, %bb.nl ], [ -10, %bb.oy ], [ -10, %bb.dm ], [ -9, %bb.gd ], [ -10, %bb.fd ], [ -10, %bb.qr ], [ -10, %bb.dx ], [ %i.aye, %bb.nu ], [ %i.azx, %bb.oh ], [ %i.bao, %bb.om ], [ -9, %bb.np ], [ -10, %bb.cy ], [ -10, %bb.dd ], [ %i.bkx, %bb.qw ], [ %i.bmn, %bb.re ], [ %i.bnd, %bb.rj ], [ -10, %bb.qz ], [ -10, %bb.aa ], [ %i.st, %bb.fp ], [ -10, %bb.ct ], [ -10, %bb.rt ], [ -10, %bb.ei ], [ -10, %bb.pf ], [ -10, %bb.qg ], [ -10, %bb.qk ], [ -10, %bb.qo ], [ -10, %bb.dh ], [ -10, %bb.fh ], [ -10, %bb.ds ], [ -10, %bb.q ], [ -10, %bb.l ], [ %i.akr, %bb.ku ], [ %i.aml, %bb.ld ], [ %i.amz, %bb.li ], [ %i.anu, %bb.lm ], [ -9, %bb.kj ], [ %i.arl, %bb.mi ], [ %i.ata, %bb.mp ], [ %i.atq, %bb.mu ], [ -2, %bb.kq ], [ -10, %bb.v ], [ -10, %bb.ey ], [ -10, %bb.ps ], [ %i.ajg, %bb.km ], [ -10, %bb.kh ], [ -10, %bb.fk ], [ %i.xg, %bb.hd ], [ %i.yp, %bb.hm ], [ %i.aat, %bb.ia ], [ -10, %bb.en ], [ %i.aeh, %bb.jc ], [ %i.afc, %bb.ji ], [ %i.vy, %bb.gs ], [ %i.bct, %bb.pb ], [ -2, %bb.me ], [ %i.ago, %bb.jr ], [ %i.aho, %bb.jy ], [ -10, %bb.pk ], [ -10, %bb.es ], [ %.01491, %bb.rv ]
  ret i64 %.0

.backedge:                                        ; preds = %.backedge.backedge, %.preheader1883
  %.sink2896.sink = phi i32 [ %.sink2917, %.preheader1883 ], [ %.sink2896.sink.be, %.backedge.backedge ]
  %.151535 = phi ptr [ %.151535.ph, %.preheader1883 ], [ %.151535.be, %.backedge.backedge ] ; 131 uses
  %.40 = phi ptr [ %.40.ph, %.preheader1883 ], [ %.40.be, %.backedge.backedge ] ; 137 uses
  %.14 = phi i32 [ %.14.ph, %.preheader1883 ], [ %.14.be, %.backedge.backedge ] ; 116 uses
  %.12 = phi ptr [ %i.bdp, %.preheader1883 ], [ %.12.be, %.backedge.backedge ] ; 117 uses
  %i.bsc = zext i32 %.sink2896.sink to i64
  %i.bsd = getelementptr [8 x i8], ptr @sre_ucs4_match.sre_targets, i64 %i.bsc
  %i.bse = load ptr, ptr %i.bsd, align 8, !tbaa !95
  indirectbr ptr %i.bse, [label %.critedge1878, label %bb.ac, label %bb.da, label %bb.df, label %bb.qt, label %bb.ra, label %bb.ai, label %bb.fm, label %bb.cv, label %.loopexit, label %bb.ek, label %bb.pg, label %bb.qi, label %bb.dj, label %bb.fj, label %bb.du, label %bb.s, label %bb.m, label %bb.kq, label %bb.me, label %bb.x, label %bb.fa, label %bb.pu, label %bb.kj, label %bb.gr, label %bb.ep, label %bb.im, label %bb.oz, label %bb.np, label %bb.jx, label %bb.pm, label %bb.eu, label %bb.do, label %bb.ee, label %bb.qa, label %bb.ff, label %bb.dz]
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -9, 1) i32 @data_stack_grow(ptr noundef captures(none) %0, i64 noundef range(i64 -17179869184, 17179869177) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !121
  %i.f = icmp slt i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = add i64 %i.c, 1024
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.l = tail call ptr @PyMem_Realloc(ptr noundef %i.k, i64 noundef %i.i) #13 ; 2 uses
  %.not.not = icmp eq ptr %i.l, null
  br i1 %.not.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !88   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #13
  store ptr null, ptr %i.j, align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.j, align 8, !tbaa !88
  store i64 %i.i, ptr %i.d, align 8, !tbaa !121
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %.thread
  %.1 = phi i32 [ -9, %.thread ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @PyErr_CheckSignals() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @sre_category(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  switch i32 %0, label %Py_UNICODE_ISSPACE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.h
    i32 4, label %bb.j
    i32 5, label %bb.l
    i32 6, label %bb.n
    i32 7, label %bb.o
    i32 8, label %bb.p
    i32 9, label %bb.s
    i32 10, label %bb.v
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 13, label %bb.aa
    i32 14, label %bb.ad
    i32 15, label %bb.ah
    i32 16, label %bb.al
    i32 17, label %bb.am
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 58
  br i1 %i.a, label %bb.c, label %Py_UNICODE_ISSPACE.exit

bb.c:                                             ; preds = %bb.b
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = lshr i32 %i.d, 2
  %.lobit49 = and i32 %i.e, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %1, 58
  br i1 %i.f, label %bb.e, label %Py_UNICODE_ISSPACE.exit

bb.e:                                             ; preds = %bb.d
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = lshr i32 %i.i, 2
  %.lobit48 = and i32 %i.j, 1
  %i.k = xor i32 %.lobit48, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.f:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %1, 33
  br i1 %i.l, label %bb.g, label %Py_UNICODE_ISSPACE.exit

bb.g:                                             ; preds = %bb.f
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = lshr i32 %i.o, 3
  %.lobit47 = and i32 %i.p, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = icmp ult i32 %1, 33
  br i1 %i.q, label %bb.i, label %Py_UNICODE_ISSPACE.exit

bb.i:                                             ; preds = %bb.h
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = lshr i32 %i.t, 3
  %.lobit = and i32 %i.u, 1
  %i.v = xor i32 %.lobit, 1
  br label %Py_UNICODE_ISSPACE.exit

bb.j:                                             ; preds = %bb.a
  %i.w = icmp ult i32 %1, 123
  br i1 %i.w, label %bb.k, label %Py_UNICODE_ISSPACE.exit

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = and i32 %i.z, 7
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp eq i32 %1, 95
  %i.ad = or i1 %i.ac, %i.ab
  %i.ae = zext i1 %i.ad to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.l:                                             ; preds = %bb.a
  %i.af = icmp ult i32 %1, 123
  br i1 %i.af, label %bb.m, label %Py_UNICODE_ISSPACE.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = zext nneg i32 %1 to i64
  %i.ah = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = and i32 %i.ai, 7
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp ne i32 %1, 95
  %.not46 = and i1 %i.al, %i.ak
  %i.am = zext i1 %.not46 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.n:                                             ; preds = %bb.a
  %i.an = icmp eq i32 %1, 10
  %i.ao = zext i1 %i.an to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.o:                                             ; preds = %bb.a
  %i.ap = icmp ne i32 %1, 10
  %i.aq = zext i1 %i.ap to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.p:                                             ; preds = %bb.a
  %.not42 = icmp ult i32 %1, 256
  br i1 %.not42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call ptr @__ctype_b_loc() #14
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129
  %i.at = zext nneg i32 %1 to i64
  %i.au = getelementptr [2 x i8], ptr %i.as, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !131
  %i.aw = and i16 %i.av, 8
  %.not43 = icmp eq i16 %i.aw, 0
  br i1 %.not43, label %bb.r, label %Py_UNICODE_ISSPACE.exit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ax = icmp eq i32 %1, 95
  %i.ay = zext i1 %i.ax to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.s:                                             ; preds = %bb.a
  %.not40 = icmp ult i32 %1, 256
  br i1 %.not40, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_2
