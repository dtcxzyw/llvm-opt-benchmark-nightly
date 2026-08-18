inline.NumInlined: 7990
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE20parse_perl_extensionEv:bb.a
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !974
  %i.xw = ptrtoint ptr %storemerge312 to i64
  %i.xx = ptrtoint ptr %i.xv to i64
  %i.xy = sub i64 %i.xw, %i.xx
  %i.xz = ashr exact i64 %i.xy, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.xz)
  br label %.critedge

bb.ch:                                            ; preds = %bb.ce
  %i.ya = load i32, ptr %i.xc, align 4, !tbaa !808
  %i.yb = icmp eq i32 %i.ya, 38
  br i1 %i.yb, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 6 uses
  store ptr %i.yc, ptr %i.b, align 8, !tbaa !975
  %.not3001115 = icmp eq ptr %i.yc, %i.we
  br i1 %.not3001115, label %.preheader1064, label %.lr.ph1118

.lr.ph1118:                                       ; preds = %bb.ci, %bb.cj
  %storemerge2991116 = phi ptr [ %i.yg, %bb.cj ], [ %i.yc, %bb.ci ]
  %i.yd = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.ye = load i32, ptr %storemerge2991116, align 4, !tbaa !808
  %i.yf = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.yd, i32 noundef signext %i.ye)
  %.not301 = icmp eq i8 %i.yf, 2
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !975 ; 2 uses
  %.pre1221.pre = load ptr, ptr %i.e, align 8, !tbaa !976 ; 2 uses
  br i1 %.not301, label %.critedge12, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph1118
  %i.yg = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 4 ; 4 uses
  store ptr %i.yg, ptr %i.b, align 8, !tbaa !975
  %.not300 = icmp eq ptr %i.yg, %.pre1221.pre
  br i1 %.not300, label %.critedge12, label %.lr.ph1118, !llvm.loop !1096

.critedge12:                                      ; preds = %.lr.ph1118, %bb.cj
  %.pre = phi ptr [ %i.yg, %bb.cj ], [ %.pre.pre, %.lr.ph1118 ] ; 4 uses
  %i.yh = icmp eq ptr %.pre, %.pre1221.pre
  br i1 %i.yh, label %.preheader1064, label %bb.ck

.preheader1064:                                   ; preds = %bb.ci, %.critedge12
  %i.yi = phi ptr [ %.pre, %.critedge12 ], [ %i.yc, %bb.ci ]
  %storemerge3021123 = getelementptr inbounds i8, ptr %i.yi, i64 -4 ; 2 uses
  store ptr %storemerge3021123, ptr %i.b, align 8, !tbaa !975
  %i.yj = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.yk = load i32, ptr %storemerge3021123, align 4, !tbaa !808
  %i.yl = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.yj, i32 noundef signext %i.yk)
  %.not3031124 = icmp eq i8 %i.yl, 1
  br i1 %.not3031124, label %._crit_edge1126, label %.lr.ph1125

.lr.ph1125:                                       ; preds = %.preheader1064, %.lr.ph1125
  %i.ym = load ptr, ptr %i.b, align 8, !tbaa !975
  %storemerge302 = getelementptr inbounds i8, ptr %i.ym, i64 -4 ; 2 uses
  store ptr %storemerge302, ptr %i.b, align 8, !tbaa !975
  %i.yn = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.yo = load i32, ptr %storemerge302, align 4, !tbaa !808
  %i.yp = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.yn, i32 noundef signext %i.yo)
  %.not303 = icmp eq i8 %i.yp, 1
  br i1 %.not303, label %._crit_edge1126, label %.lr.ph1125, !llvm.loop !1097

bb.ck:                                            ; preds = %.critedge12
  %.not9.i = icmp eq ptr %i.yc, %.pre
  br i1 %.not9.i, label %.thread974, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ck, %.lr.ph.i
  %.011.i = phi i64 [ %i.yx, %.lr.ph.i ], [ 0, %bb.ck ] ; 3 uses
  %.0810.i = phi ptr [ %i.yy, %.lr.ph.i ], [ %i.yc, %bb.ck ] ; 2 uses
  %i.yq = load i32, ptr %.0810.i, align 4, !tbaa !808
  %i.yr = add i32 %i.yq, -1640531527
  %i.ys = zext i32 %i.yr to i64
  %i.yt = shl i64 %.011.i, 6
  %i.yu = lshr i64 %.011.i, 2
  %i.yv = add i64 %i.yu, %i.yt
  %i.yw = add i64 %i.yv, %i.ys
  %i.yx = xor i64 %i.yw, %.011.i                  ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %.not.i633 = icmp eq ptr %i.yy, %.pre
  br i1 %.not.i633, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1057

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.yz = urem i64 %i.yx, 2147483647
  %i.za = shl nuw nsw i64 %i.yz, 32
  %i.zb = or i64 %i.za, 4611686018427387904
  br label %.thread974

.thread974:                                       ; preds = %._crit_edge.loopexit.i, %bb.ck
  %.0.lcssa.i = phi i64 [ 4611686018427387904, %bb.ck ], [ %i.zb, %._crit_edge.loopexit.i ]
  %sext = sub nsw i64 0, %.0.lcssa.i
  %i.zc = ashr i64 %sext, 32
  br label %bb.cm

._crit_edge1126:                                  ; preds = %.lr.ph1125, %.preheader1064
  %i.zd = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !974
  %i.zg = ptrtoint ptr %i.zd to i64
  %i.zh = ptrtoint ptr %i.zf to i64
  %i.zi = sub i64 %i.zg, %i.zh
  %i.zj = ashr exact i64 %i.zi, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.zj)
  br label %.critedge

bb.cl:                                            ; preds = %bb.ch
  %i.zk = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.zl = tail call noundef i64 @_ZNK5boost16cpp_regex_traitsIwE3toiERPKwS3_i(ptr noundef nonnull align 8 dereferenceable(16) %i.zk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.we, i32 noundef 10)
  %i.zm = sub nsw i64 0, %i.zl
  br label %bb.cm

bb.cm:                                            ; preds = %.thread974, %bb.cl
  %.2174 = phi i64 [ %i.zc, %.thread974 ], [ %i.zm, %bb.cl ] ; 2 uses
  %i.zn = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12append_stateENS0_19syntax_element_typeEm(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 27, i64 noundef 24)
  %i.zo = icmp slt i64 %.2174, 0
  %i.zp = trunc i64 %.2174 to i32
  %i.zq = add i32 %i.zp, -1
  %i.zr = select i1 %i.zo, i32 %i.zq, i32 0
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  store i32 %i.zr, ptr %i.zs, align 8, !tbaa !318
  %i.zt = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.zu = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !808
  %i.zw = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.zt, i32 noundef signext %i.zv)
  %.not305 = icmp eq i8 %i.zw, 2
  br i1 %.not305, label %bb.co, label %.preheader1066

.preheader1066:                                   ; preds = %bb.cm, %.preheader1066
  %.pn310 = load ptr, ptr %i.b, align 8, !tbaa !975
  %storemerge308 = getelementptr inbounds i8, ptr %.pn310, i64 -4 ; 2 uses
  store ptr %storemerge308, ptr %i.b, align 8, !tbaa !975
  %i.zx = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.zy = load i32, ptr %storemerge308, align 4, !tbaa !808
  %i.zz = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.zx, i32 noundef signext %i.zy)
  %.not309 = icmp eq i8 %i.zz, 1
  br i1 %.not309, label %bb.cn, label %.preheader1066, !llvm.loop !1098

bb.cn:                                            ; preds = %.preheader1066
  %i.aaa = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !974
  %i.aad = ptrtoint ptr %i.aaa to i64
  %i.aae = ptrtoint ptr %i.aac to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  %i.aag = ashr exact i64 %i.aaf, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aag)
  br label %.critedge

bb.co:                                            ; preds = %bb.cm
  %i.aah = load ptr, ptr %i.b, align 8, !tbaa !975 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 4 ; 2 uses
  store ptr %i.aai, ptr %i.b, align 8, !tbaa !975
  %i.aaj = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.aak = icmp eq ptr %i.aai, %i.aaj
  br i1 %i.aak, label %.preheader1065, label %.thread990

.preheader1065:                                   ; preds = %bb.co
  store ptr %i.aah, ptr %i.b, align 8, !tbaa !975
  %i.aal = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.aam = load i32, ptr %i.aah, align 4, !tbaa !808
  %i.aan = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.aal, i32 noundef signext %i.aam)
  %.not3071120 = icmp eq i8 %i.aan, 1
  br i1 %.not3071120, label %._crit_edge1122, label %.lr.ph1121

.lr.ph1121:                                       ; preds = %.preheader1065, %.lr.ph1121
  %i.aao = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.aap = getelementptr inbounds i8, ptr %i.aao, i64 -4 ; 2 uses
  store ptr %i.aap, ptr %i.b, align 8, !tbaa !975
  %i.aaq = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.aar = load i32, ptr %i.aap, align 4, !tbaa !808
  %i.aas = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.aaq, i32 noundef signext %i.aar)
  %.not307 = icmp eq i8 %i.aas, 1
  br i1 %.not307, label %._crit_edge1122, label %.lr.ph1121, !llvm.loop !1099

._crit_edge1122:                                  ; preds = %.lr.ph1121, %.preheader1065
  %i.aat = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !974
  %i.aaw = ptrtoint ptr %i.aat to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = ashr exact i64 %i.aay, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aaz)
  br label %.critedge

bb.cp:                                            ; preds = %bb.cd, %bb.cd
  %.ptr996 = getelementptr inbounds nuw i8, ptr %i.wd, i64 4 ; 5 uses
  %.not2801103 = icmp eq ptr %.ptr996, %i.we
  br i1 %.not2801103, label %.critedge14.preheader, label %.lr.ph1107

.critedge14.preheader:                            ; preds = %bb.cq, %bb.cp
  %storemerge279.ptr.lcssa1100 = phi ptr [ %.ptr996, %bb.cp ], [ %storemerge279.ptr, %bb.cq ] ; 2 uses
  store ptr %storemerge279.ptr.lcssa1100, ptr %i.b, align 8, !tbaa !975
  %i.aba = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !848 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 48
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !121 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abb, i64 40 ; 2 uses
  %.not10.i.i.i.i.i634 = icmp eq ptr %i.abd, null
  br label %.critedge14

.lr.ph1107:                                       ; preds = %bb.cp, %bb.cq
  %indvar = phi i64 [ %indvar.next, %bb.cq ], [ 0, %bb.cp ] ; 5 uses
  %storemerge279.ptr1105 = phi ptr [ %storemerge279.ptr, %bb.cq ], [ %.ptr996, %bb.cp ] ; 2 uses
  %storemerge279.idx1104 = phi i64 [ %storemerge279.add, %bb.cq ], [ 4, %bb.cp ] ; 2 uses
  %i.abf = load i32, ptr %storemerge279.ptr1105, align 4, !tbaa !808
  switch i32 %i.abf, label %bb.cq [
    i32 62, label %bb.cs
    i32 39, label %bb.cs
  ]

bb.cq:                                            ; preds = %.lr.ph1107
  %storemerge279.add = add nuw nsw i64 %storemerge279.idx1104, 4 ; 2 uses
  %storemerge279.ptr = getelementptr inbounds nuw i8, ptr %i.wd, i64 %storemerge279.add ; 3 uses
  %.not280 = icmp eq ptr %storemerge279.ptr, %i.we
  %indvar.next = add i64 %indvar, 1
  br i1 %.not280, label %.critedge14.preheader, label %.lr.ph1107, !llvm.loop !1100

.critedge14:                                      ; preds = %.critedge14.backedge, %.critedge14.preheader
  %.pn298 = phi ptr [ %storemerge279.ptr.lcssa1100, %.critedge14.preheader ], [ %storemerge296, %.critedge14.backedge ]
  %storemerge296 = getelementptr inbounds i8, ptr %.pn298, i64 -4 ; 4 uses
  %i.abg = load i32, ptr %storemerge296, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i634, label %.critedge14.backedge, label %.lr.ph.i.i.i.i.i635

.lr.ph.i.i.i.i.i635:                              ; preds = %.critedge14, %.lr.ph.i.i.i.i.i635
  %.012.i.i.i.i.i636 = phi ptr [ %.1.i.i.i.i.i641, %.lr.ph.i.i.i.i.i635 ], [ %i.abd, %.critedge14 ] ; 3 uses
  %.0811.i.i.i.i.i637 = phi ptr [ %.19.i.i.i.i.i638, %.lr.ph.i.i.i.i.i635 ], [ %i.abe, %.critedge14 ]
  %i.abh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i636, i64 32
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !808
  %i.abj = icmp slt i32 %i.abi, %i.abg            ; 2 uses
  %.19.i.i.i.i.i638 = select i1 %i.abj, ptr %.0811.i.i.i.i.i637, ptr %.012.i.i.i.i.i636 ; 4 uses
  %.1.in.v.i.i.i.i.i639 = select i1 %i.abj, i64 24, i64 16
  %.1.in.i.i.i.i.i640 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i636, i64 %.1.in.v.i.i.i.i.i639
  %.1.i.i.i.i.i641 = load ptr, ptr %.1.in.i.i.i.i.i640, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i642 = icmp eq ptr %.1.i.i.i.i.i641, null
  br i1 %.not.i.i.i.i.i642, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i643, label %.lr.ph.i.i.i.i.i635, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i643: ; preds = %.lr.ph.i.i.i.i.i635
  %i.abk = icmp eq ptr %.19.i.i.i.i.i638, %i.abe
  br i1 %i.abk, label %.critedge14.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i644

.critedge14.backedge:                             ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i643, %.critedge14, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i644, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit645
  br label %.critedge14, !llvm.loop !1101

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i644: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i643
  %i.abl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i638, i64 32
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !808
  %i.abn = icmp slt i32 %i.abg, %i.abm
  br i1 %i.abn, label %.critedge14.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit645

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit645: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i644
  %i.abo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i638, i64 36
  %i.abp = load i8, ptr %i.abo, align 4, !tbaa !918
  %.not297 = icmp eq i8 %i.abp, 1
  br i1 %.not297, label %bb.cr, label %.critedge14.backedge

bb.cr:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit645
  store ptr %storemerge296, ptr %i.b, align 8, !tbaa !975
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !974
  %i.abs = ptrtoint ptr %storemerge296 to i64
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = sub i64 %i.abs, %i.abt
  %i.abv = ashr exact i64 %i.abu, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.abv)
  br label %.critedge

bb.cs:                                            ; preds = %.lr.ph1107, %.lr.ph1107
  store ptr %storemerge279.ptr1105, ptr %i.b, align 8, !tbaa !975
  %.not9.i646 = icmp eq i64 %storemerge279.idx1104, 4
  br i1 %.not9.i646, label %_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653, label %.lr.ph.i647.preheader

.lr.ph.i647.preheader:                            ; preds = %bb.cs
  %i.abw = and i64 %indvar, 1
  %i.abx = icmp eq i64 %indvar, -4611686018427387903
  br i1 %i.abx, label %.lr.ph.i647.epil.preheader, label %.lr.ph.i647.preheader.new

.lr.ph.i647.preheader.new:                        ; preds = %.lr.ph.i647.preheader
  %unroll_iter = and i64 %indvar, -2
  %24 = add i64 %unroll_iter, 4611686018427387902
  br label %.lr.ph.i647

.lr.ph.i647:                                      ; preds = %.lr.ph.i647, %.lr.ph.i647.preheader.new
  %.011.i648 = phi i64 [ 0, %.lr.ph.i647.preheader.new ], [ %i.aco, %.lr.ph.i647 ] ; 3 uses
  %.0810.i649 = phi ptr [ %.ptr996, %.lr.ph.i647.preheader.new ], [ %i.acp, %.lr.ph.i647 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i647.preheader.new ], [ %niter.next.1, %.lr.ph.i647 ] ; 2 uses
  %i.aby = load i32, ptr %.0810.i649, align 4, !tbaa !808
  %i.abz = add i32 %i.aby, -1640531527
  %i.aca = zext i32 %i.abz to i64
  %i.acb = shl i64 %.011.i648, 6
  %i.acc = lshr i64 %.011.i648, 2
  %i.acd = add i64 %i.acc, %i.acb
  %i.ace = add i64 %i.acd, %i.aca
  %i.acf = xor i64 %i.ace, %.011.i648             ; 3 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.0810.i649, i64 4
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !808
  %i.aci = add i32 %i.ach, -1640531527
  %i.acj = zext i32 %i.aci to i64
  %i.ack = shl i64 %i.acf, 6
  %i.acl = lshr i64 %i.acf, 2
  %i.acm = add i64 %i.acl, %i.ack
  %i.acn = add i64 %i.acm, %i.acj
  %i.aco = xor i64 %i.acn, %i.acf                 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.0810.i649, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %24
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i651.unr-lcssa, label %.lr.ph.i647, !llvm.loop !1057

._crit_edge.loopexit.i651.unr-lcssa:              ; preds = %.lr.ph.i647
  %lcmp.mod.not.not = icmp eq i64 %i.abw, 0
  br i1 %lcmp.mod.not.not, label %._crit_edge.loopexit.i651, label %.lr.ph.i647.epil.preheader

.lr.ph.i647.epil.preheader:                       ; preds = %._crit_edge.loopexit.i651.unr-lcssa, %.lr.ph.i647.preheader
  %.011.i648.epil.init = phi i64 [ 0, %.lr.ph.i647.preheader ], [ %i.aco, %._crit_edge.loopexit.i651.unr-lcssa ] ; 3 uses
  %.0810.i649.epil.init = phi ptr [ %.ptr996, %.lr.ph.i647.preheader ], [ %i.acp, %._crit_edge.loopexit.i651.unr-lcssa ]
  %lcmp.mod1432 = trunc i64 %indvar to i1
  tail call void @llvm.assume(i1 %lcmp.mod1432)
  %i.acq = load i32, ptr %.0810.i649.epil.init, align 4, !tbaa !808
  %i.acr = add i32 %i.acq, -1640531527
  %i.acs = zext i32 %i.acr to i64
  %i.act = shl i64 %.011.i648.epil.init, 6
  %i.acu = lshr i64 %.011.i648.epil.init, 2
  %i.acv = add i64 %i.acu, %i.act
  %i.acw = add i64 %i.acv, %i.acs
  %i.acx = xor i64 %i.acw, %.011.i648.epil.init
  br label %._crit_edge.loopexit.i651

._crit_edge.loopexit.i651:                        ; preds = %._crit_edge.loopexit.i651.unr-lcssa, %.lr.ph.i647.epil.preheader
  %.lcssa1425 = phi i64 [ %i.aco, %._crit_edge.loopexit.i651.unr-lcssa ], [ %i.acx, %.lr.ph.i647.epil.preheader ]
  %i.acy = urem i64 %.lcssa1425, 2147483647
  %i.acz = trunc nuw nsw i64 %i.acy to i32
  %i.ada = or i32 %i.acz, 1073741824
  br label %_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653

_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653: ; preds = %bb.cs, %._crit_edge.loopexit.i651
  %.0.lcssa.i652 = phi i32 [ 1073741824, %bb.cs ], [ %i.ada, %._crit_edge.loopexit.i651 ]
  %i.adb = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12append_stateENS0_19syntax_element_typeEm(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 27, i64 noundef 24)
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  store i32 %.0.lcssa.i652, ptr %i.adc, align 8, !tbaa !318
  %i.add = load ptr, ptr %i.b, align 8, !tbaa !975 ; 3 uses
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !808
  switch i32 %i.ade, label %bb.cu [
    i32 62, label %bb.ct
    i32 39, label %bb.ct
  ]

bb.ct:                                            ; preds = %_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653, %_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 4 ; 4 uses
  store ptr %i.adf, ptr %i.b, align 8, !tbaa !975
  %i.adg = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.adh = icmp eq ptr %i.adf, %i.adg
  br i1 %i.adh, label %bb.cu, label %bb.da

bb.cu:                                            ; preds = %_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653, %bb.ct
  %.promoted1112 = phi ptr [ %i.add, %_ZN5boost13re_detail_60028hash_value_from_capture_nameIPKwEEiT_S4_.exit653 ], [ %i.adf, %bb.ct ]
  %i.adi = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !848 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 48
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !121 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adj, i64 40 ; 2 uses
  %.not10.i.i.i.i.i654 = icmp eq ptr %i.adl, null
  br label %.backedge1067

.backedge1067:                                    ; preds = %.backedge1067.backedge, %bb.cu
  %.pn2951113 = phi ptr [ %.promoted1112, %bb.cu ], [ %storemerge291, %.backedge1067.backedge ]
  %storemerge291 = getelementptr inbounds i8, ptr %.pn2951113, i64 -4 ; 4 uses
  %i.adn = load i32, ptr %storemerge291, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i654, label %.backedge1067.backedge, label %.lr.ph.i.i.i.i.i655

.lr.ph.i.i.i.i.i655:                              ; preds = %.backedge1067, %.lr.ph.i.i.i.i.i655
  %.012.i.i.i.i.i656 = phi ptr [ %.1.i.i.i.i.i661, %.lr.ph.i.i.i.i.i655 ], [ %i.adl, %.backedge1067 ] ; 3 uses
  %.0811.i.i.i.i.i657 = phi ptr [ %.19.i.i.i.i.i658, %.lr.ph.i.i.i.i.i655 ], [ %i.adm, %.backedge1067 ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i656, i64 32
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !808
  %i.adq = icmp slt i32 %i.adp, %i.adn            ; 2 uses
  %.19.i.i.i.i.i658 = select i1 %i.adq, ptr %.0811.i.i.i.i.i657, ptr %.012.i.i.i.i.i656 ; 4 uses
  %.1.in.v.i.i.i.i.i659 = select i1 %i.adq, i64 24, i64 16
  %.1.in.i.i.i.i.i660 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i656, i64 %.1.in.v.i.i.i.i.i659
  %.1.i.i.i.i.i661 = load ptr, ptr %.1.in.i.i.i.i.i660, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i662 = icmp eq ptr %.1.i.i.i.i.i661, null
  br i1 %.not.i.i.i.i.i662, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i663, label %.lr.ph.i.i.i.i.i655, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i663: ; preds = %.lr.ph.i.i.i.i.i655
  %i.adr = icmp eq ptr %.19.i.i.i.i.i658, %i.adm
  br i1 %i.adr, label %.backedge1067.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i664

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i664: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i663
  %i.ads = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i658, i64 32
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !808
  %i.adu = icmp slt i32 %i.adn, %i.adt
  br i1 %i.adu, label %.backedge1067.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit665

.backedge1067.backedge:                           ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i664, %.backedge1067, %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i663, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit665
  br label %.backedge1067, !llvm.loop !1102

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit665: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i664
  %i.adv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i658, i64 36
  %i.adw = load i8, ptr %i.adv, align 4, !tbaa !918
  %i.adx = icmp eq i8 %i.adw, 1
  br i1 %i.adx, label %bb.cv, label %.backedge1067.backedge

bb.cv:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit665
  store ptr %storemerge291, ptr %i.b, align 8, !tbaa !975
  %i.ady = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !974
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.aea = ptrtoint ptr %storemerge291 to i64
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  %i.aed = ashr exact i64 %i.aec, 2
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aed, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.aee = load ptr, ptr %12, align 8, !tbaa !14  ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aeg = icmp eq ptr %i.aee, %i.aef
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666: ; preds = %bb.cx
  %i.aeh = load i64, ptr %i.aef, align 8, !tbaa !16
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aee, i64 noundef %i.aei) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i666
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.critedge

bb.cy:                                            ; preds = %bb.cv
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671

bb.cz:                                            ; preds = %bb.cw
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ael = load ptr, ptr %12, align 8, !tbaa !14  ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aen = icmp eq ptr %i.ael, %i.aem
  br i1 %i.aen, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669: ; preds = %bb.cz
  %i.aeo = load i64, ptr %i.aem, align 8, !tbaa !16
  %i.aep = add i64 %i.aeo, 1
  call void @_ZdlPvm(ptr noundef %i.ael, i64 noundef %i.aep) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669, %bb.cy
  %.pn293 = phi { ptr, i32 } [ %i.aej, %bb.cy ], [ %i.aek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669 ], [ %i.aek, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %common.resume

bb.da:                                            ; preds = %bb.ct
  %i.aeq = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.aer = load i32, ptr %i.adf, align 4, !tbaa !808
  %i.aes = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.aeq, i32 noundef signext %i.aer)
  %.not285 = icmp eq i8 %i.aes, 2
  br i1 %.not285, label %bb.dc, label %.preheader1069

.preheader1069:                                   ; preds = %bb.da, %.preheader1069
  %.pn290 = load ptr, ptr %i.b, align 8, !tbaa !975
  %storemerge288 = getelementptr inbounds i8, ptr %.pn290, i64 -4 ; 2 uses
  store ptr %storemerge288, ptr %i.b, align 8, !tbaa !975
  %i.aet = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.aeu = load i32, ptr %storemerge288, align 4, !tbaa !808
  %i.aev = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.aet, i32 noundef signext %i.aeu)
  %.not289 = icmp eq i8 %i.aev, 1
  br i1 %.not289, label %bb.db, label %.preheader1069, !llvm.loop !1103

bb.db:                                            ; preds = %.preheader1069
  %i.aew = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !974
  %i.aez = ptrtoint ptr %i.aew to i64
  %i.afa = ptrtoint ptr %i.aey to i64
  %i.afb = sub i64 %i.aez, %i.afa
  %i.afc = ashr exact i64 %i.afb, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.afc)
  br label %.critedge

bb.dc:                                            ; preds = %bb.da
  %i.afd = load ptr, ptr %i.b, align 8, !tbaa !975 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 4 ; 2 uses
  store ptr %i.afe, ptr %i.b, align 8, !tbaa !975
  %i.aff = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.afg = icmp eq ptr %i.afe, %i.aff
  br i1 %i.afg, label %.preheader1068, label %.thread990

.preheader1068:                                   ; preds = %bb.dc
  store ptr %i.afd, ptr %i.b, align 8, !tbaa !975
  %i.afh = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.afi = load i32, ptr %i.afd, align 4, !tbaa !808
  %i.afj = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.afh, i32 noundef signext %i.afi)
  %.not2871109 = icmp eq i8 %i.afj, 1
  br i1 %.not2871109, label %._crit_edge1111, label %.lr.ph1110

.lr.ph1110:                                       ; preds = %.preheader1068, %.lr.ph1110
  %i.afk = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.afl = getelementptr inbounds i8, ptr %i.afk, i64 -4 ; 2 uses
  store ptr %i.afl, ptr %i.b, align 8, !tbaa !975
  %i.afm = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.afn = load i32, ptr %i.afl, align 4, !tbaa !808
  %i.afo = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.afm, i32 noundef signext %i.afn)
  %.not287 = icmp eq i8 %i.afo, 1
  br i1 %.not287, label %._crit_edge1111, label %.lr.ph1110, !llvm.loop !1104

._crit_edge1111:                                  ; preds = %.lr.ph1110, %.preheader1068
  %i.afp = load ptr, ptr %i.b, align 8, !tbaa !975
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE20parse_perl_extensionEv:bb.a
  %.1.in.i.i.i.i.i708 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i704, i64 %.1.in.v.i.i.i.i.i707
  %.1.i.i.i.i.i709 = load ptr, ptr %.1.in.i.i.i.i.i708, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i710 = icmp eq ptr %.1.i.i.i.i.i709, null
  br i1 %.not.i.i.i.i.i710, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i711, label %.lr.ph.i.i.i.i.i703, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i711: ; preds = %.lr.ph.i.i.i.i.i703
  %i.aqc = icmp eq ptr %.19.i.i.i.i.i706, %i.apx
  br i1 %i.aqc, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i712

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i712: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i711
  %i.aqd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i706, i64 32
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !808
  %i.aqf = icmp slt i32 %i.apy, %i.aqe
  br i1 %i.aqf, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i712
  %i.aqg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i706, i64 36
  %i.aqh = load i8, ptr %i.aqg, align 4, !tbaa !918
  %.not326 = icmp eq i8 %i.aqh, 1
  br i1 %.not326, label %bb.eo, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i711, %bb.en, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i712, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713
  %i.aqi = getelementptr inbounds i8, ptr %storemerge325, i64 -4
  br label %bb.en, !llvm.loop !1119

bb.eo:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit713
  store ptr %storemerge325, ptr %i.b, align 8, !tbaa !975
  %i.aqj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !974
  %i.aql = ptrtoint ptr %storemerge325 to i64
  %i.aqm = ptrtoint ptr %i.aqk to i64
  %i.aqn = sub i64 %i.aql, %i.aqm
  %i.aqo = ashr exact i64 %i.aqn, 2
  call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aqo)
  br label %.critedge

.critedge18.preheader:                            ; preds = %bb.ep
  %i.aqp = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !848 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 48
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !121 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 40 ; 2 uses
  %.not10.i.i.i.i.i714 = icmp eq ptr %i.aqs, null
  br label %.critedge18

.lr.ph1141:                                       ; preds = %bb.em, %bb.ep
  %i.aqu = phi ptr [ %i.aqw, %bb.ep ], [ %i.apq, %bb.em ] ; 3 uses
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !808
  %.not321 = icmp eq i32 %i.aqv, %.1178
  br i1 %.not321, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph1141
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 4 ; 4 uses
  store ptr %i.aqw, ptr %i.b, align 8, !tbaa !975
  %.not320 = icmp eq ptr %i.aqw, %i.apr
  br i1 %.not320, label %.critedge18.preheader, label %.lr.ph1141, !llvm.loop !1120

.critedge18:                                      ; preds = %.critedge18.backedge, %.critedge18.preheader
  %.pn324 = phi ptr [ %i.aqw, %.critedge18.preheader ], [ %storemerge322, %.critedge18.backedge ]
  %storemerge322 = getelementptr inbounds i8, ptr %.pn324, i64 -4 ; 4 uses
  %i.aqx = load i32, ptr %storemerge322, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i714, label %.critedge18.backedge, label %.lr.ph.i.i.i.i.i715

.lr.ph.i.i.i.i.i715:                              ; preds = %.critedge18, %.lr.ph.i.i.i.i.i715
  %.012.i.i.i.i.i716 = phi ptr [ %.1.i.i.i.i.i721, %.lr.ph.i.i.i.i.i715 ], [ %i.aqs, %.critedge18 ] ; 3 uses
  %.0811.i.i.i.i.i717 = phi ptr [ %.19.i.i.i.i.i718, %.lr.ph.i.i.i.i.i715 ], [ %i.aqt, %.critedge18 ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i716, i64 32
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !808
  %i.ara = icmp slt i32 %i.aqz, %i.aqx            ; 2 uses
  %.19.i.i.i.i.i718 = select i1 %i.ara, ptr %.0811.i.i.i.i.i717, ptr %.012.i.i.i.i.i716 ; 4 uses
  %.1.in.v.i.i.i.i.i719 = select i1 %i.ara, i64 24, i64 16
  %.1.in.i.i.i.i.i720 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i716, i64 %.1.in.v.i.i.i.i.i719
  %.1.i.i.i.i.i721 = load ptr, ptr %.1.in.i.i.i.i.i720, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i722 = icmp eq ptr %.1.i.i.i.i.i721, null
  br i1 %.not.i.i.i.i.i722, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i723, label %.lr.ph.i.i.i.i.i715, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i723: ; preds = %.lr.ph.i.i.i.i.i715
  %i.arb = icmp eq ptr %.19.i.i.i.i.i718, %i.aqt
  br i1 %i.arb, label %.critedge18.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i724

.critedge18.backedge:                             ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i723, %.critedge18, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i724, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit725
  br label %.critedge18, !llvm.loop !1121

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i724: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i723
  %i.arc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i718, i64 32
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !808
  %i.are = icmp slt i32 %i.aqx, %i.ard
  br i1 %i.are, label %.critedge18.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit725

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit725: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i724
  %i.arf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i718, i64 36
  %i.arg = load i8, ptr %i.arf, align 4, !tbaa !918
  %.not323 = icmp eq i8 %i.arg, 1
  br i1 %.not323, label %bb.eq, label %.critedge18.backedge

bb.eq:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit725
  store ptr %storemerge322, ptr %i.b, align 8, !tbaa !975
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !974
  %i.arj = ptrtoint ptr %storemerge322 to i64
  %i.ark = ptrtoint ptr %i.ari to i64
  %i.arl = sub i64 %i.arj, %i.ark
  %i.arm = ashr exact i64 %i.arl, 2
  call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.arm)
  br label %.critedge

bb.er:                                            ; preds = %.lr.ph1141
  %i.arn = load ptr, ptr %0, align 8, !tbaa !969
  call void @_ZN5boost13re_detail_60020named_subexpressions8set_nameIwEEvPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %i.arn, ptr noundef nonnull %i.apq, ptr noundef nonnull %i.aqu, i32 noundef %.2131)
  %i.aro = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  store ptr %i.arp, ptr %i.b, align 8, !tbaa !975
  br label %.thread990

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit468.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i466, %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE12append_stateENS0_19syntax_element_typeEm.exit, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i467, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit468
  switch i32 %i.ep, label %bb.fd [
    i32 82, label %bb.es
    i32 38, label %bb.eu
    i32 80, label %bb.ex
  ]

bb.es:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit468.thread
  %i.arq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  store ptr %i.arq, ptr %i.b, align 8, !tbaa !975
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !808
  %i.ars = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef signext %i.arr)
  %.not370 = icmp eq i8 %i.ars, 2
  br i1 %.not370, label %.thread982, label %.preheader1044

.preheader1044:                                   ; preds = %bb.es
  %i.art = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !848 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 48
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !121 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 40 ; 2 uses
  %.not10.i.i.i.i.i726 = icmp eq ptr %i.arw, null
  %.promoted1175 = load ptr, ptr %i.b, align 8, !tbaa !975
  br label %.backedge1045

.backedge1045:                                    ; preds = %.backedge1045.backedge, %.preheader1044
  %.pn4131176 = phi ptr [ %.promoted1175, %.preheader1044 ], [ %storemerge411, %.backedge1045.backedge ]
  %storemerge411 = getelementptr inbounds i8, ptr %.pn4131176, i64 -4 ; 4 uses
  %i.ary = load i32, ptr %storemerge411, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i726, label %.backedge1045.backedge, label %.lr.ph.i.i.i.i.i727

.lr.ph.i.i.i.i.i727:                              ; preds = %.backedge1045, %.lr.ph.i.i.i.i.i727
  %.012.i.i.i.i.i728 = phi ptr [ %.1.i.i.i.i.i733, %.lr.ph.i.i.i.i.i727 ], [ %i.arw, %.backedge1045 ] ; 3 uses
  %.0811.i.i.i.i.i729 = phi ptr [ %.19.i.i.i.i.i730, %.lr.ph.i.i.i.i.i727 ], [ %i.arx, %.backedge1045 ]
  %i.arz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i728, i64 32
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !808
  %i.asb = icmp slt i32 %i.asa, %i.ary            ; 2 uses
  %.19.i.i.i.i.i730 = select i1 %i.asb, ptr %.0811.i.i.i.i.i729, ptr %.012.i.i.i.i.i728 ; 4 uses
  %.1.in.v.i.i.i.i.i731 = select i1 %i.asb, i64 24, i64 16
  %.1.in.i.i.i.i.i732 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i728, i64 %.1.in.v.i.i.i.i.i731
  %.1.i.i.i.i.i733 = load ptr, ptr %.1.in.i.i.i.i.i732, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i734 = icmp eq ptr %.1.i.i.i.i.i733, null
  br i1 %.not.i.i.i.i.i734, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i735, label %.lr.ph.i.i.i.i.i727, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i735: ; preds = %.lr.ph.i.i.i.i.i727
  %i.asc = icmp eq ptr %.19.i.i.i.i.i730, %i.arx
  br i1 %i.asc, label %.backedge1045.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i736

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i736: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i735
  %i.asd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i730, i64 32
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !808
  %i.asf = icmp slt i32 %i.ary, %i.ase
  br i1 %i.asf, label %.backedge1045.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit737

.backedge1045.backedge:                           ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i736, %.backedge1045, %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i735, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit737
  br label %.backedge1045, !llvm.loop !1122

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit737: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i736
  %i.asg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i730, i64 36
  %i.ash = load i8, ptr %i.asg, align 4, !tbaa !918
  %i.asi = icmp eq i8 %i.ash, 1
  br i1 %i.asi, label %bb.et, label %.backedge1045.backedge

bb.et:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit737
  store ptr %storemerge411, ptr %i.b, align 8, !tbaa !975
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !974
  %i.asl = ptrtoint ptr %storemerge411 to i64
  %i.asm = ptrtoint ptr %i.ask to i64
  %i.asn = sub i64 %i.asl, %i.asm
  %i.aso = ashr exact i64 %i.asn, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aso)
  br label %.critedge

bb.eu:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit468.thread
  %.ptr998 = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 5 uses
  %i.asp = load ptr, ptr %i.e, align 8, !tbaa !976 ; 2 uses
  %.not3641167 = icmp eq ptr %.ptr998, %i.asp
  br i1 %.not3641167, label %.critedge20.preheader, label %.lr.ph1171

.critedge20.preheader:                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread, %bb.eu
  %storemerge363.ptr.lcssa1164 = phi ptr [ %.ptr998, %bb.eu ], [ %storemerge363.ptr, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread ] ; 2 uses
  store ptr %storemerge363.ptr.lcssa1164, ptr %i.b, align 8, !tbaa !975
  br label %.critedge20

.lr.ph1171:                                       ; preds = %bb.eu, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread
  %indvar1442 = phi i64 [ %indvar.next1443, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread ], [ 0, %bb.eu ] ; 5 uses
  %storemerge363.ptr1169 = phi ptr [ %storemerge363.ptr, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread ], [ %.ptr998, %bb.eu ] ; 2 uses
  %storemerge363.idx1168 = phi i64 [ %storemerge363.add, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread ], [ 4, %bb.eu ] ; 2 uses
  %i.asq = load i32, ptr %storemerge363.ptr1169, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i457, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread, label %.lr.ph.i.i.i.i.i739

.lr.ph.i.i.i.i.i739:                              ; preds = %.lr.ph1171, %.lr.ph.i.i.i.i.i739
  %.012.i.i.i.i.i740 = phi ptr [ %.1.i.i.i.i.i745, %.lr.ph.i.i.i.i.i739 ], [ %i.es, %.lr.ph1171 ] ; 3 uses
  %.0811.i.i.i.i.i741 = phi ptr [ %.19.i.i.i.i.i742, %.lr.ph.i.i.i.i.i739 ], [ %i.et, %.lr.ph1171 ]
  %i.asr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i740, i64 32
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !808
  %i.ast = icmp slt i32 %i.ass, %i.asq            ; 2 uses
  %.19.i.i.i.i.i742 = select i1 %i.ast, ptr %.0811.i.i.i.i.i741, ptr %.012.i.i.i.i.i740 ; 4 uses
  %.1.in.v.i.i.i.i.i743 = select i1 %i.ast, i64 24, i64 16
  %.1.in.i.i.i.i.i744 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i740, i64 %.1.in.v.i.i.i.i.i743
  %.1.i.i.i.i.i745 = load ptr, ptr %.1.in.i.i.i.i.i744, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i746 = icmp eq ptr %.1.i.i.i.i.i745, null
  br i1 %.not.i.i.i.i.i746, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i747, label %.lr.ph.i.i.i.i.i739, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i747: ; preds = %.lr.ph.i.i.i.i.i739
  %i.asu = icmp eq ptr %.19.i.i.i.i.i742, %i.et
  br i1 %i.asu, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i748

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i748: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i747
  %i.asv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i742, i64 32
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !808
  %i.asx = icmp slt i32 %i.asq, %i.asw
  br i1 %i.asx, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i748
  %i.asy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i742, i64 36
  %i.asz = load i8, ptr %i.asy, align 4, !tbaa !918
  %.not365 = icmp eq i8 %i.asz, 2
  br i1 %.not365, label %bb.ev, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i747, %.lr.ph1171, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i748, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749
  %storemerge363.add = add nuw nsw i64 %storemerge363.idx1168, 4 ; 2 uses
  %storemerge363.ptr = getelementptr inbounds nuw i8, ptr %i.eo, i64 %storemerge363.add ; 3 uses
  %.not364 = icmp eq ptr %storemerge363.ptr, %i.asp
  %indvar.next1443 = add i64 %indvar1442, 1
  br i1 %.not364, label %.critedge20.preheader, label %.lr.ph1171, !llvm.loop !1123

.critedge20:                                      ; preds = %.critedge20.backedge, %.critedge20.preheader
  %.pn369 = phi ptr [ %storemerge363.ptr.lcssa1164, %.critedge20.preheader ], [ %storemerge366, %.critedge20.backedge ]
  %storemerge366 = getelementptr inbounds i8, ptr %.pn369, i64 -4 ; 4 uses
  %i.ata = load i32, ptr %storemerge366, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i457, label %.critedge20.backedge, label %.lr.ph.i.i.i.i.i751

.lr.ph.i.i.i.i.i751:                              ; preds = %.critedge20, %.lr.ph.i.i.i.i.i751
  %.012.i.i.i.i.i752 = phi ptr [ %.1.i.i.i.i.i757, %.lr.ph.i.i.i.i.i751 ], [ %i.es, %.critedge20 ] ; 3 uses
  %.0811.i.i.i.i.i753 = phi ptr [ %.19.i.i.i.i.i754, %.lr.ph.i.i.i.i.i751 ], [ %i.et, %.critedge20 ]
  %i.atb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i752, i64 32
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !808
  %i.atd = icmp slt i32 %i.atc, %i.ata            ; 2 uses
  %.19.i.i.i.i.i754 = select i1 %i.atd, ptr %.0811.i.i.i.i.i753, ptr %.012.i.i.i.i.i752 ; 4 uses
  %.1.in.v.i.i.i.i.i755 = select i1 %i.atd, i64 24, i64 16
  %.1.in.i.i.i.i.i756 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i752, i64 %.1.in.v.i.i.i.i.i755
  %.1.i.i.i.i.i757 = load ptr, ptr %.1.in.i.i.i.i.i756, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i758 = icmp eq ptr %.1.i.i.i.i.i757, null
  br i1 %.not.i.i.i.i.i758, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i759, label %.lr.ph.i.i.i.i.i751, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i759: ; preds = %.lr.ph.i.i.i.i.i751
  %i.ate = icmp eq ptr %.19.i.i.i.i.i754, %i.et
  br i1 %i.ate, label %.critedge20.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i760

.critedge20.backedge:                             ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i759, %.critedge20, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i760, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit761
  br label %.critedge20, !llvm.loop !1124

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i760: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i759
  %i.atf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i754, i64 32
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !808
  %i.ath = icmp slt i32 %i.ata, %i.atg
  br i1 %i.ath, label %.critedge20.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit761

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit761: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i760
  %i.ati = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i754, i64 36
  %i.atj = load i8, ptr %i.ati, align 4, !tbaa !918
  %.not367 = icmp eq i8 %i.atj, 1
  br i1 %.not367, label %bb.ew, label %.critedge20.backedge

bb.ev:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit749
  store ptr %storemerge363.ptr1169, ptr %i.b, align 8, !tbaa !975
  %.not9.i762 = icmp eq i64 %storemerge363.idx1168, 4
  br i1 %.not9.i762, label %.thread982, label %.lr.ph.i763.preheader

.lr.ph.i763.preheader:                            ; preds = %bb.ev
  %i.atk = and i64 %indvar1442, 1
  %i.atl = icmp eq i64 %indvar1442, -4611686018427387903
  br i1 %i.atl, label %.lr.ph.i763.epil.preheader, label %.lr.ph.i763.preheader.new

.lr.ph.i763.preheader.new:                        ; preds = %.lr.ph.i763.preheader
  %unroll_iter1449 = and i64 %indvar1442, -2
  %25 = add i64 %unroll_iter1449, 4611686018427387902
  br label %.lr.ph.i763

.lr.ph.i763:                                      ; preds = %.lr.ph.i763, %.lr.ph.i763.preheader.new
  %.011.i764 = phi i64 [ 0, %.lr.ph.i763.preheader.new ], [ %i.auc, %.lr.ph.i763 ] ; 3 uses
  %.0810.i765 = phi ptr [ %.ptr998, %.lr.ph.i763.preheader.new ], [ %i.aud, %.lr.ph.i763 ] ; 3 uses
  %niter1450 = phi i64 [ 0, %.lr.ph.i763.preheader.new ], [ %niter1450.next.1, %.lr.ph.i763 ] ; 2 uses
  %i.atm = load i32, ptr %.0810.i765, align 4, !tbaa !808
  %i.atn = add i32 %i.atm, -1640531527
  %i.ato = zext i32 %i.atn to i64
  %i.atp = shl i64 %.011.i764, 6
  %i.atq = lshr i64 %.011.i764, 2
  %i.atr = add i64 %i.atq, %i.atp
  %i.ats = add i64 %i.atr, %i.ato
  %i.att = xor i64 %i.ats, %.011.i764             ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.0810.i765, i64 4
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !808
  %i.atw = add i32 %i.atv, -1640531527
  %i.atx = zext i32 %i.atw to i64
  %i.aty = shl i64 %i.att, 6
  %i.atz = lshr i64 %i.att, 2
  %i.aua = add i64 %i.atz, %i.aty
  %i.aub = add i64 %i.aua, %i.atx
  %i.auc = xor i64 %i.aub, %i.att                 ; 3 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %.0810.i765, i64 8 ; 2 uses
  %niter1450.next.1 = add i64 %niter1450, 2
  %niter1450.ncmp.1 = icmp eq i64 %niter1450, %25
  br i1 %niter1450.ncmp.1, label %._crit_edge.loopexit.i767.unr-lcssa, label %.lr.ph.i763, !llvm.loop !1057

._crit_edge.loopexit.i767.unr-lcssa:              ; preds = %.lr.ph.i763
  %lcmp.mod1446.not.not = icmp eq i64 %i.atk, 0
  br i1 %lcmp.mod1446.not.not, label %._crit_edge.loopexit.i767, label %.lr.ph.i763.epil.preheader

.lr.ph.i763.epil.preheader:                       ; preds = %._crit_edge.loopexit.i767.unr-lcssa, %.lr.ph.i763.preheader
  %.011.i764.epil.init = phi i64 [ 0, %.lr.ph.i763.preheader ], [ %i.auc, %._crit_edge.loopexit.i767.unr-lcssa ] ; 3 uses
  %.0810.i765.epil.init = phi ptr [ %.ptr998, %.lr.ph.i763.preheader ], [ %i.aud, %._crit_edge.loopexit.i767.unr-lcssa ]
  %lcmp.mod1448 = trunc i64 %indvar1442 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1448)
  %i.aue = load i32, ptr %.0810.i765.epil.init, align 4, !tbaa !808
  %i.auf = add i32 %i.aue, -1640531527
  %i.aug = zext i32 %i.auf to i64
  %i.auh = shl i64 %.011.i764.epil.init, 6
  %i.aui = lshr i64 %.011.i764.epil.init, 2
  %i.auj = add i64 %i.aui, %i.auh
  %i.auk = add i64 %i.auj, %i.aug
  %i.aul = xor i64 %i.auk, %.011.i764.epil.init
  br label %._crit_edge.loopexit.i767

._crit_edge.loopexit.i767:                        ; preds = %._crit_edge.loopexit.i767.unr-lcssa, %.lr.ph.i763.epil.preheader
  %.lcssa = phi i64 [ %i.auc, %._crit_edge.loopexit.i767.unr-lcssa ], [ %i.aul, %.lr.ph.i763.epil.preheader ]
  %i.aum = urem i64 %.lcssa, 2147483647
  %i.aun = or i64 %i.aum, 1073741824
  br label %.thread982

bb.ew:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit761
  store ptr %storemerge366, ptr %i.b, align 8, !tbaa !975
  %i.auo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !974
  %i.auq = ptrtoint ptr %storemerge366 to i64
  %i.aur = ptrtoint ptr %i.aup to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = ashr exact i64 %i.aus, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.aut)
  br label %.critedge

bb.ex:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit468.thread
  %i.auu = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 3 uses
  store ptr %i.auu, ptr %i.b, align 8, !tbaa !975
  %i.auv = load ptr, ptr %i.e, align 8, !tbaa !976 ; 3 uses
  %i.auw = icmp eq ptr %i.auu, %i.auv
  br i1 %i.auw, label %.preheader1046, label %bb.ez

.preheader1046:                                   ; preds = %bb.ex, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread
  %i.aux = phi i32 [ %.pre1228, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread ], [ 80, %bb.ex ] ; 2 uses
  %storemerge361 = phi ptr [ %i.avh, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread ], [ %i.eo, %bb.ex ] ; 3 uses
  br i1 %.not10.i.i.i.i.i457, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread, label %.lr.ph.i.i.i.i.i771

.lr.ph.i.i.i.i.i771:                              ; preds = %.preheader1046, %.lr.ph.i.i.i.i.i771
  %.012.i.i.i.i.i772 = phi ptr [ %.1.i.i.i.i.i777, %.lr.ph.i.i.i.i.i771 ], [ %i.es, %.preheader1046 ] ; 3 uses
  %.0811.i.i.i.i.i773 = phi ptr [ %.19.i.i.i.i.i774, %.lr.ph.i.i.i.i.i771 ], [ %i.et, %.preheader1046 ]
  %i.auy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i772, i64 32
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !808
  %i.ava = icmp slt i32 %i.auz, %i.aux            ; 2 uses
  %.19.i.i.i.i.i774 = select i1 %i.ava, ptr %.0811.i.i.i.i.i773, ptr %.012.i.i.i.i.i772 ; 4 uses
  %.1.in.v.i.i.i.i.i775 = select i1 %i.ava, i64 24, i64 16
  %.1.in.i.i.i.i.i776 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i772, i64 %.1.in.v.i.i.i.i.i775
  %.1.i.i.i.i.i777 = load ptr, ptr %.1.in.i.i.i.i.i776, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i778 = icmp eq ptr %.1.i.i.i.i.i777, null
  br i1 %.not.i.i.i.i.i778, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i779, label %.lr.ph.i.i.i.i.i771, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i779: ; preds = %.lr.ph.i.i.i.i.i771
  %i.avb = icmp eq ptr %.19.i.i.i.i.i774, %i.et
  br i1 %i.avb, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i780

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i780: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i779
  %i.avc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i774, i64 32
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !808
  %i.ave = icmp slt i32 %i.aux, %i.avd
  br i1 %i.ave, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i780
  %i.avf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i774, i64 36
  %i.avg = load i8, ptr %i.avf, align 4, !tbaa !918
  %.not362 = icmp eq i8 %i.avg, 1
  br i1 %.not362, label %bb.ey, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i779, %.preheader1046, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i780, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781
  %i.avh = getelementptr inbounds i8, ptr %storemerge361, i64 -4 ; 2 uses
  %.pre1228 = load i32, ptr %i.avh, align 4, !tbaa !808
  br label %.preheader1046, !llvm.loop !1125

bb.ey:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit781
  store ptr %storemerge361, ptr %i.b, align 8, !tbaa !975
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !974
  %i.avk = ptrtoint ptr %storemerge361 to i64
  %i.avl = ptrtoint ptr %i.avj to i64
  %i.avm = sub i64 %i.avk, %i.avl
  %i.avn = ashr exact i64 %i.avm, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.avn)
  br label %.critedge

bb.ez:                                            ; preds = %bb.ex
  %i.avo = load i32, ptr %i.auu, align 4, !tbaa !808
  %i.avp = icmp eq i32 %i.avo, 62
  br i1 %i.avp, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %.ptr997 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 5 uses
  %.not3551155 = icmp eq ptr %.ptr997, %i.auv
  br i1 %.not3551155, label %.critedge22.preheader, label %.lr.ph1159

.critedge22.preheader:                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread, %bb.fa
  %storemerge354.ptr.lcssa1152 = phi ptr [ %.ptr997, %bb.fa ], [ %storemerge354.ptr, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread ] ; 2 uses
  store ptr %storemerge354.ptr.lcssa1152, ptr %i.b, align 8, !tbaa !975
  br label %.critedge22

.lr.ph1159:                                       ; preds = %bb.fa, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread
  %indvar1433 = phi i64 [ %indvar.next1434, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread ], [ 0, %bb.fa ] ; 5 uses
  %storemerge354.ptr1157 = phi ptr [ %storemerge354.ptr, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread ], [ %.ptr997, %bb.fa ] ; 2 uses
  %storemerge354.idx1156 = phi i64 [ %storemerge354.add, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread ], [ 8, %bb.fa ] ; 2 uses
  %i.avq = load i32, ptr %storemerge354.ptr1157, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i457, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread, label %.lr.ph.i.i.i.i.i783

.lr.ph.i.i.i.i.i783:                              ; preds = %.lr.ph1159, %.lr.ph.i.i.i.i.i783
  %.012.i.i.i.i.i784 = phi ptr [ %.1.i.i.i.i.i789, %.lr.ph.i.i.i.i.i783 ], [ %i.es, %.lr.ph1159 ] ; 3 uses
  %.0811.i.i.i.i.i785 = phi ptr [ %.19.i.i.i.i.i786, %.lr.ph.i.i.i.i.i783 ], [ %i.et, %.lr.ph1159 ]
  %i.avr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i784, i64 32
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !808
  %i.avt = icmp slt i32 %i.avs, %i.avq            ; 2 uses
  %.19.i.i.i.i.i786 = select i1 %i.avt, ptr %.0811.i.i.i.i.i785, ptr %.012.i.i.i.i.i784 ; 4 uses
  %.1.in.v.i.i.i.i.i787 = select i1 %i.avt, i64 24, i64 16
  %.1.in.i.i.i.i.i788 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i784, i64 %.1.in.v.i.i.i.i.i787
  %.1.i.i.i.i.i789 = load ptr, ptr %.1.in.i.i.i.i.i788, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i790 = icmp eq ptr %.1.i.i.i.i.i789, null
  br i1 %.not.i.i.i.i.i790, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i791, label %.lr.ph.i.i.i.i.i783, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i791: ; preds = %.lr.ph.i.i.i.i.i783
  %i.avu = icmp eq ptr %.19.i.i.i.i.i786, %i.et
  br i1 %i.avu, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i792

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i792: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i791
  %i.avv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i786, i64 32
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !808
  %i.avx = icmp slt i32 %i.avq, %i.avw
  br i1 %i.avx, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i792
  %i.avy = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i786, i64 36
  %i.avz = load i8, ptr %i.avy, align 4, !tbaa !918
  %.not356 = icmp eq i8 %i.avz, 2
  br i1 %.not356, label %bb.fb, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793.thread: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i791, %.lr.ph1159, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i792, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793
  %storemerge354.add = add nuw nsw i64 %storemerge354.idx1156, 4 ; 2 uses
  %storemerge354.ptr = getelementptr inbounds nuw i8, ptr %i.eo, i64 %storemerge354.add ; 3 uses
  %.not355 = icmp eq ptr %storemerge354.ptr, %i.auv
  %indvar.next1434 = add i64 %indvar1433, 1
  br i1 %.not355, label %.critedge22.preheader, label %.lr.ph1159, !llvm.loop !1126

.critedge22:                                      ; preds = %.critedge22.backedge, %.critedge22.preheader
  %.pn360 = phi ptr [ %storemerge354.ptr.lcssa1152, %.critedge22.preheader ], [ %storemerge357, %.critedge22.backedge ]
  %storemerge357 = getelementptr inbounds i8, ptr %.pn360, i64 -4 ; 4 uses
  %i.awa = load i32, ptr %storemerge357, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i457, label %.critedge22.backedge, label %.lr.ph.i.i.i.i.i795

.lr.ph.i.i.i.i.i795:                              ; preds = %.critedge22, %.lr.ph.i.i.i.i.i795
  %.012.i.i.i.i.i796 = phi ptr [ %.1.i.i.i.i.i801, %.lr.ph.i.i.i.i.i795 ], [ %i.es, %.critedge22 ] ; 3 uses
  %.0811.i.i.i.i.i797 = phi ptr [ %.19.i.i.i.i.i798, %.lr.ph.i.i.i.i.i795 ], [ %i.et, %.critedge22 ]
  %i.awb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i796, i64 32
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !808
  %i.awd = icmp slt i32 %i.awc, %i.awa            ; 2 uses
  %.19.i.i.i.i.i798 = select i1 %i.awd, ptr %.0811.i.i.i.i.i797, ptr %.012.i.i.i.i.i796 ; 4 uses
  %.1.in.v.i.i.i.i.i799 = select i1 %i.awd, i64 24, i64 16
  %.1.in.i.i.i.i.i800 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i796, i64 %.1.in.v.i.i.i.i.i799
  %.1.i.i.i.i.i801 = load ptr, ptr %.1.in.i.i.i.i.i800, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i802 = icmp eq ptr %.1.i.i.i.i.i801, null
  br i1 %.not.i.i.i.i.i802, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i803, label %.lr.ph.i.i.i.i.i795, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i803: ; preds = %.lr.ph.i.i.i.i.i795
  %i.awe = icmp eq ptr %.19.i.i.i.i.i798, %i.et
  br i1 %i.awe, label %.critedge22.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i804

.critedge22.backedge:                             ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i803, %.critedge22, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i804, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit805
  br label %.critedge22, !llvm.loop !1127

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i804: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i803
  %i.awf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i798, i64 32
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !808
  %i.awh = icmp slt i32 %i.awa, %i.awg
  br i1 %i.awh, label %.critedge22.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit805

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit805: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i804
  %i.awi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i798, i64 36
  %i.awj = load i8, ptr %i.awi, align 4, !tbaa !918
  %.not358 = icmp eq i8 %i.awj, 1
  br i1 %.not358, label %bb.fc, label %.critedge22.backedge

bb.fb:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit793
  store ptr %storemerge354.ptr1157, ptr %i.b, align 8, !tbaa !975
  %.not9.i806 = icmp eq i64 %storemerge354.idx1156, 8
  br i1 %.not9.i806, label %.thread982, label %.lr.ph.i807.preheader

.lr.ph.i807.preheader:                            ; preds = %bb.fb
  %i.awk = and i64 %indvar1433, 1
  %i.awl = icmp eq i64 %indvar1433, -4611686018427387903
  br i1 %i.awl, label %.lr.ph.i807.epil.preheader, label %.lr.ph.i807.preheader.new

.lr.ph.i807.preheader.new:                        ; preds = %.lr.ph.i807.preheader
  %unroll_iter1440 = and i64 %indvar1433, -2
  %26 = add i64 %unroll_iter1440, 4611686018427387902
  br label %.lr.ph.i807

.lr.ph.i807:                                      ; preds = %.lr.ph.i807, %.lr.ph.i807.preheader.new
  %.011.i808 = phi i64 [ 0, %.lr.ph.i807.preheader.new ], [ %i.axc, %.lr.ph.i807 ] ; 3 uses
  %.0810.i809 = phi ptr [ %.ptr997, %.lr.ph.i807.preheader.new ], [ %i.axd, %.lr.ph.i807 ] ; 3 uses
  %niter1441 = phi i64 [ 0, %.lr.ph.i807.preheader.new ], [ %niter1441.next.1, %.lr.ph.i807 ] ; 2 uses
  %i.awm = load i32, ptr %.0810.i809, align 4, !tbaa !808
  %i.awn = add i32 %i.awm, -1640531527
  %i.awo = zext i32 %i.awn to i64
  %i.awp = shl i64 %.011.i808, 6
  %i.awq = lshr i64 %.011.i808, 2
  %i.awr = add i64 %i.awq, %i.awp
  %i.aws = add i64 %i.awr, %i.awo
  %i.awt = xor i64 %i.aws, %.011.i808             ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.0810.i809, i64 4
  %i.awv = load i32, ptr %i.awu, align 4, !tbaa !808
  %i.aww = add i32 %i.awv, -1640531527
  %i.awx = zext i32 %i.aww to i64
  %i.awy = shl i64 %i.awt, 6
  %i.awz = lshr i64 %i.awt, 2
  %i.axa = add i64 %i.awz, %i.awy
  %i.axb = add i64 %i.axa, %i.awx
  %i.axc = xor i64 %i.axb, %i.awt                 ; 3 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %.0810.i809, i64 8 ; 2 uses
  %niter1441.next.1 = add i64 %niter1441, 2
  %niter1441.ncmp.1 = icmp eq i64 %niter1441, %26
  br i1 %niter1441.ncmp.1, label %._crit_edge.loopexit.i811.unr-lcssa, label %.lr.ph.i807, !llvm.loop !1057

._crit_edge.loopexit.i811.unr-lcssa:              ; preds = %.lr.ph.i807
  %lcmp.mod1437.not.not = icmp eq i64 %i.awk, 0
  br i1 %lcmp.mod1437.not.not, label %._crit_edge.loopexit.i811, label %.lr.ph.i807.epil.preheader

.lr.ph.i807.epil.preheader:                       ; preds = %._crit_edge.loopexit.i811.unr-lcssa, %.lr.ph.i807.preheader
  %.011.i808.epil.init = phi i64 [ 0, %.lr.ph.i807.preheader ], [ %i.axc, %._crit_edge.loopexit.i811.unr-lcssa ] ; 3 uses
  %.0810.i809.epil.init = phi ptr [ %.ptr997, %.lr.ph.i807.preheader ], [ %i.axd, %._crit_edge.loopexit.i811.unr-lcssa ]
  %lcmp.mod1439 = trunc i64 %indvar1433 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1439)
  %i.axe = load i32, ptr %.0810.i809.epil.init, align 4, !tbaa !808
  %i.axf = add i32 %i.axe, -1640531527
  %i.axg = zext i32 %i.axf to i64
  %i.axh = shl i64 %.011.i808.epil.init, 6
  %i.axi = lshr i64 %.011.i808.epil.init, 2
  %i.axj = add i64 %i.axi, %i.axh
  %i.axk = add i64 %i.axj, %i.axg
  %i.axl = xor i64 %i.axk, %.011.i808.epil.init
  br label %._crit_edge.loopexit.i811

._crit_edge.loopexit.i811:                        ; preds = %._crit_edge.loopexit.i811.unr-lcssa, %.lr.ph.i807.epil.preheader
  %.lcssa1418 = phi i64 [ %i.axc, %._crit_edge.loopexit.i811.unr-lcssa ], [ %i.axl, %.lr.ph.i807.epil.preheader ]
  %i.axm = urem i64 %.lcssa1418, 2147483647
  %i.axn = or i64 %i.axm, 1073741824
  br label %.thread982

bb.fc:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit805
  store ptr %storemerge357, ptr %i.b, align 8, !tbaa !975
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !974
  %i.axq = ptrtoint ptr %storemerge357 to i64
  %i.axr = ptrtoint ptr %i.axp to i64
  %i.axs = sub i64 %i.axq, %i.axr
  %i.axt = ashr exact i64 %i.axs, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.axt)
  br label %.critedge

bb.fd:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit468.thread, %bb.ez, %bb.ay
  %i.axu = tail call noundef i32 @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE13parse_optionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 5 uses
  %i.axv = load ptr, ptr %i.b, align 8, !tbaa !975 ; 3 uses
  %i.axw = load ptr, ptr %i.e, align 8, !tbaa !976
  %i.axx = icmp eq ptr %i.axv, %i.axw
  br i1 %i.axx, label %.preheader1031, label %bb.ff

.preheader1031:                                   ; preds = %bb.fd
  %i.axy = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.axz = load ptr, ptr %i.axy, align 8, !tbaa !848 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 48
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !121 ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axz, i64 40 ; 2 uses
  %.not10.i.i.i.i.i814 = icmp eq ptr %i.ayb, null
  br label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread: ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge, %.preheader1031
  %.pn353 = phi ptr [ %i.axv, %.preheader1031 ], [ %storemerge351, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge ]
  %storemerge351 = getelementptr inbounds i8, ptr %.pn353, i64 -4 ; 4 uses
  %i.ayd = load i32, ptr %storemerge351, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i814, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge, label %.lr.ph.i.i.i.i.i815

.lr.ph.i.i.i.i.i815:                              ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread, %.lr.ph.i.i.i.i.i815
  %.012.i.i.i.i.i816 = phi ptr [ %.1.i.i.i.i.i821, %.lr.ph.i.i.i.i.i815 ], [ %i.ayb, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread ] ; 3 uses
  %.0811.i.i.i.i.i817 = phi ptr [ %.19.i.i.i.i.i818, %.lr.ph.i.i.i.i.i815 ], [ %i.ayc, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread ]
  %i.aye = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i816, i64 32
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !808
  %i.ayg = icmp slt i32 %i.ayf, %i.ayd            ; 2 uses
  %.19.i.i.i.i.i818 = select i1 %i.ayg, ptr %.0811.i.i.i.i.i817, ptr %.012.i.i.i.i.i816 ; 4 uses
  %.1.in.v.i.i.i.i.i819 = select i1 %i.ayg, i64 24, i64 16
  %.1.in.i.i.i.i.i820 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i816, i64 %.1.in.v.i.i.i.i.i819
  %.1.i.i.i.i.i821 = load ptr, ptr %.1.in.i.i.i.i.i820, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i822 = icmp eq ptr %.1.i.i.i.i.i821, null
  br i1 %.not.i.i.i.i.i822, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i823, label %.lr.ph.i.i.i.i.i815, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i823: ; preds = %.lr.ph.i.i.i.i.i815
  %i.ayh = icmp eq ptr %.19.i.i.i.i.i818, %i.ayc
  br i1 %i.ayh, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i824

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i823, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread, %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i824, %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825
  br label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread, !llvm.loop !1128

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i824: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i823
  %i.ayi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i818, i64 32
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !808
  %i.ayk = icmp slt i32 %i.ayd, %i.ayj
  br i1 %i.ayk, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825

_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825: ; preds = %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i824
  %i.ayl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i818, i64 36
  %i.aym = load i8, ptr %i.ayl, align 4, !tbaa !918
  %.not352 = icmp eq i8 %i.aym, 1
  br i1 %.not352, label %bb.fe, label %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825.thread.backedge

bb.fe:                                            ; preds = %_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw.exit825
  store ptr %storemerge351, ptr %i.b, align 8, !tbaa !975
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !974
  %i.ayp = ptrtoint ptr %storemerge351 to i64
  %i.ayq = ptrtoint ptr %i.ayo to i64
  %i.ayr = sub i64 %i.ayp, %i.ayq
  %i.ays = ashr exact i64 %i.ayr, 2
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 20, i64 noundef %i.ays)
  br label %.critedge

bb.ff:                                            ; preds = %bb.fd
  %i.ayt = and i32 %i.axu, 1048576                ; 2 uses
  %i.ayu = load ptr, ptr %0, align 8, !tbaa !969
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 40
  %i.ayw = load i32, ptr %i.ayv, align 8, !tbaa !970
  %i.ayx = and i32 %i.ayw, 1048576
  %i.ayy = icmp ne i32 %i.ayt, %i.ayx
  %i.ayz = zext i1 %i.ayy to i8
  store i8 %i.ayz, ptr %i.eg, align 8, !tbaa !1027
  %i.aza = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 0, ptr %i.aza, align 8, !tbaa !318
  %i.azb = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.azc = load i32, ptr %i.axv, align 4, !tbaa !808
  %i.azd = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.azb, i32 noundef signext %i.azc)
  %i.aze = icmp ne i8 %i.azd, 2                   ; 3 uses
  br i1 %i.aze, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.azf = load ptr, ptr %0, align 8, !tbaa !969
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 40
  store i32 %i.axu, ptr %i.azg, align 8, !tbaa !970
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.azi = load i8, ptr %i.azh, align 8, !tbaa !973, !range !321, !noundef !48
  %i.azj = zext nneg i8 %i.azi to i32
  %i.azk = lshr i32 %i.axu, 20
  %.lobit.i = and i32 %i.azk, 1                   ; 2 uses
  %.not.i826 = icmp eq i32 %.lobit.i, %i.azj
  br i1 %.not.i826, label %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE5flagsEj.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.azl = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.azl, ptr %i.azh, align 8, !tbaa !973
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE5flagsEj.exit

_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE5flagsEj.exit: ; preds = %bb.fg, %bb.fh
  %i.azm = load i8, ptr %i.eg, align 8, !tbaa !1027, !range !321, !noundef !48 ; 2 uses
  %i.azn = or i8 %i.azm, %i.eh
  br label %bb.fm

bb.fi:                                            ; preds = %bb.ff
  %i.azo = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.azp = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !808
  %i.azr = tail call noundef zeroext i8 @_ZNK5boost16cpp_regex_traitsIwE11syntax_typeEw(ptr noundef nonnull align 8 dereferenceable(16) %i.azo, i32 noundef signext %i.azq)
  %i.azs = icmp eq i8 %i.azr, 36
  br i1 %i.azs, label %bb.fj, label %.preheader1042

.preheader1042:                                   ; preds = %bb.fi
  %i.azt = load ptr, ptr %i.h, align 8, !tbaa !991, !nonnull !48, !align !49
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !848 ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 48
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !121 ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 40 ; 2 uses
  %.not10.i.i.i.i.i830 = icmp eq ptr %i.azw, null
  %.promoted1177 = load ptr, ptr %i.b, align 8, !tbaa !975
  br label %.backedge1043

bb.fj:                                            ; preds = %bb.fi
  %i.azy = load ptr, ptr %0, align 8, !tbaa !969
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 40
  store i32 %i.axu, ptr %i.azz, align 8, !tbaa !970
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bab = load i8, ptr %i.baa, align 8, !tbaa !973, !range !321, !noundef !48
  %i.bac = zext nneg i8 %i.bab to i32
  %i.bad = lshr i32 %i.axu, 20
  %.lobit.i827 = and i32 %i.bad, 1                ; 2 uses
  %.not.i828 = icmp eq i32 %.lobit.i827, %i.bac
  br i1 %.not.i828, label %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE5flagsEj.exit829, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.bae = trunc nuw nsw i32 %.lobit.i827 to i8
  store i8 %i.bae, ptr %i.baa, align 8, !tbaa !973
  br label %_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE5flagsEj.exit829

_ZN5boost13re_detail_60019basic_regex_creatorIwNS_12regex_traitsIwNS_16cpp_regex_traitsIwEEEEE5flagsEj.exit829: ; preds = %bb.fj, %bb.fk
  %i.baf = load ptr, ptr %i.b, align 8, !tbaa !975
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 4
  store ptr %i.bag, ptr %i.b, align 8, !tbaa !975
  %.pre1229 = load i8, ptr %i.eg, align 8, !tbaa !1027, !range !321
  br label %bb.fm

.backedge1043:                                    ; preds = %.backedge1043.backedge, %.preheader1042
  %.pn3501178 = phi ptr [ %.promoted1177, %.preheader1042 ], [ %storemerge348, %.backedge1043.backedge ]
  %storemerge348 = getelementptr inbounds i8, ptr %.pn3501178, i64 -4 ; 4 uses
  %i.bah = load i32, ptr %storemerge348, align 4, !tbaa !808 ; 2 uses
  br i1 %.not10.i.i.i.i.i830, label %.backedge1043.backedge, label %.lr.ph.i.i.i.i.i831

.lr.ph.i.i.i.i.i831:                              ; preds = %.backedge1043, %.lr.ph.i.i.i.i.i831
  %.012.i.i.i.i.i832 = phi ptr [ %.1.i.i.i.i.i837, %.lr.ph.i.i.i.i.i831 ], [ %i.azw, %.backedge1043 ] ; 3 uses
  %.0811.i.i.i.i.i833 = phi ptr [ %.19.i.i.i.i.i834, %.lr.ph.i.i.i.i.i831 ], [ %i.azx, %.backedge1043 ]
  %i.bai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i832, i64 32
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !808
  %i.bak = icmp slt i32 %i.baj, %i.bah            ; 2 uses
  %.19.i.i.i.i.i834 = select i1 %i.bak, ptr %.0811.i.i.i.i.i833, ptr %.012.i.i.i.i.i832 ; 4 uses
  %.1.in.v.i.i.i.i.i835 = select i1 %i.bak, i64 24, i64 16
  %.1.in.i.i.i.i.i836 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i832, i64 %.1.in.v.i.i.i.i.i835
  %.1.i.i.i.i.i837 = load ptr, ptr %.1.in.i.i.i.i.i836, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i838 = icmp eq ptr %.1.i.i.i.i.i837, null
  br i1 %.not.i.i.i.i.i838, label %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i839, label %.lr.ph.i.i.i.i.i831, !llvm.loop !1007

_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i839: ; preds = %.lr.ph.i.i.i.i.i831
  %i.bal = icmp eq ptr %.19.i.i.i.i.i834, %i.azx
  br i1 %i.bal, label %.backedge1043.backedge, label %_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i840

_ZNKSt3mapIwhSt4lessIwESaISt4pairIKwhEEE4findERS3_.exit.i.i840: ; preds = %_ZNKSt8_Rb_treeIwSt4pairIKwhESt10_Select1stIS2_ESt4lessIwESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i839
  %i.bam = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i834, i64 32
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !808
end_hunk_1
