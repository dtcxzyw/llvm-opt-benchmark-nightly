inline.NumInlined: 148
inline.NumDeleted: 44
begin_hunk_0_@pack_unpack_internal:bb.a
  %i.yt = and i8 %i.xb, 3
  %.not1044 = icmp eq i8 %i.yt, 0
  br i1 %.not1044, label %.thread1270, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.yu = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.yu, ptr noundef nonnull @.str.24) #13
  unreachable

.preheader1334:                                   ; preds = %.preheader1343, %bb.ha
  %.318191557 = phi ptr [ %i.aae, %bb.ha ], [ %.07881675, %.preheader1343 ]
  %.19061556 = phi ptr [ %i.aap, %bb.ha ], [ %i.vt, %.preheader1343 ] ; 12 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.preheader1334
  %.32820 = phi ptr [ %i.zc, %bb.gt ], [ %.318191557, %.preheader1334 ] ; 5 uses
  %i.yv = load i8, ptr %.32820, align 1, !tbaa !15
  %i.yw = zext i8 %i.yv to i64
  %i.yx = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.yw
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !15  ; 4 uses
  %i.yz = icmp eq i8 %i.yy, -1
  %i.za = icmp ult ptr %.32820, %i.w              ; 2 uses
  %i.zb = select i1 %i.yz, i1 %i.za, i1 false
  %i.zc = getelementptr i8, ptr %.32820, i64 1
  br i1 %i.zb, label %bb.gt, label %bb.gu, !llvm.loop !71

bb.gu:                                            ; preds = %bb.gt
  %i.zd = sext i8 %i.yy to i32                    ; 3 uses
  br i1 %i.za, label %.preheader1333, label %.thread1270

.preheader1333:                                   ; preds = %bb.gu, %.preheader1333
  %.32820.pn = phi ptr [ %.33821, %.preheader1333 ], [ %.32820, %bb.gu ]
  %.33821 = getelementptr i8, ptr %.32820.pn, i64 1 ; 6 uses
  %i.ze = load i8, ptr %.33821, align 1, !tbaa !15
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !15  ; 4 uses
  %i.zi = icmp eq i8 %i.zh, -1
  %i.zj = icmp ult ptr %.33821, %i.w              ; 2 uses
  %i.zk = select i1 %i.zi, i1 %i.zj, i1 false
  br i1 %i.zk, label %.preheader1333, label %bb.gv, !llvm.loop !72

bb.gv:                                            ; preds = %.preheader1333
  %i.zl = sext i8 %i.zh to i32                    ; 5 uses
  br i1 %i.zj, label %.preheader, label %.thread1282

.preheader:                                       ; preds = %bb.gv, %.preheader
  %.33821.pn = phi ptr [ %.34822, %.preheader ], [ %.33821, %bb.gv ] ; 2 uses
  %.34822 = getelementptr i8, ptr %.33821.pn, i64 1 ; 4 uses
  %i.zm = load i8, ptr %.34822, align 1, !tbaa !15 ; 2 uses
  %i.zn = zext i8 %i.zm to i64
  %i.zo = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !15  ; 3 uses
  %i.zq = icmp eq i8 %i.zp, -1                    ; 2 uses
  %i.zr = icmp ult ptr %.34822, %i.w              ; 2 uses
  %i.zs = select i1 %i.zq, i1 %i.zr, i1 false
  %i.zt = icmp ne i8 %i.zm, 61                    ; 2 uses
  %or.cond1094.not = and i1 %i.zt, %i.zs
  br i1 %or.cond1094.not, label %.preheader, label %bb.gw, !llvm.loop !73

bb.gw:                                            ; preds = %.preheader
  %i.zu = sext i8 %i.zp to i32                    ; 2 uses
  %or.cond1095 = select i1 %i.zt, i1 %i.zr, i1 false
  br i1 %or.cond1095, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %bb.gw
  %i.zv = getelementptr i8, ptr %.33821.pn, i64 2
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gy, %bb.gx
  %.35823 = phi ptr [ %i.zv, %bb.gx ], [ %i.aae, %bb.gy ] ; 4 uses
  %i.zw = load i8, ptr %.35823, align 1, !tbaa !15 ; 2 uses
  %i.zx = zext i8 %i.zw to i64
  %i.zy = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !15  ; 2 uses
  %i.aaa = icmp eq i8 %i.zz, -1
  %i.aab = icmp ult ptr %.35823, %i.w             ; 2 uses
  %i.aac = select i1 %i.aaa, i1 %i.aab, i1 false
  %i.aad = icmp ne i8 %i.zw, 61                   ; 2 uses
  %or.cond1097.not = and i1 %i.aad, %i.aac
  %i.aae = getelementptr i8, ptr %.35823, i64 1   ; 4 uses
  br i1 %or.cond1097.not, label %bb.gy, label %bb.gz, !llvm.loop !74

bb.gz:                                            ; preds = %bb.gy
  %or.cond1098 = select i1 %i.aad, i1 %i.aab, i1 false
  br i1 %or.cond1098, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.aaf = shl nsw i32 %i.zd, 2
  %i.aag = lshr i32 %i.zl, 4
  %i.aah = or i32 %i.aag, %i.aaf
  %i.aai = trunc i32 %i.aah to i8
  %i.aaj = getelementptr i8, ptr %.19061556, i64 1
  store i8 %i.aai, ptr %.19061556, align 1, !tbaa !15
  %i.aak = shl nsw i32 %i.zl, 4
  %i.aal = lshr i32 %i.zu, 2
  %i.aam = or i32 %i.aal, %i.aak
  %i.aan = trunc i32 %i.aam to i8
  %i.aao = getelementptr i8, ptr %.19061556, i64 2
  store i8 %i.aan, ptr %i.aaj, align 1, !tbaa !15
  %.tr = shl i8 %i.zp, 6
  %.narrow = or i8 %i.zz, %.tr
  %i.aap = getelementptr i8, ptr %.19061556, i64 3 ; 2 uses
  store i8 %.narrow, ptr %i.aao, align 1, !tbaa !15
  %i.aaq = icmp ult ptr %i.aae, %i.w
  br i1 %i.aaq, label %.preheader1334, label %.thread1270, !llvm.loop !75

bb.hb:                                            ; preds = %bb.gz, %bb.gw
  %.36824 = phi ptr [ %.35823, %bb.gz ], [ %.34822, %bb.gw ] ; 3 uses
  %i.aar = icmp ne i8 %i.yy, -1
  %i.aas = icmp ne i8 %i.zh, -1
  %or.cond63 = and i1 %i.aar, %i.aas
  br i1 %or.cond63, label %bb.hc, label %.thread1270

.thread1282:                                      ; preds = %bb.gv
  %i.aat = icmp ne i8 %i.yy, -1
  %i.aau = icmp ne i8 %i.zh, -1
  %or.cond631287 = and i1 %i.aat, %i.aau
  br i1 %or.cond631287, label %.thread1292, label %.thread1270

bb.hc:                                            ; preds = %bb.hb
  br i1 %i.zq, label %.thread1292, label %bb.hd

.thread1292:                                      ; preds = %.thread1282, %bb.hc
  %.3682412911295 = phi ptr [ %.36824, %bb.hc ], [ %.33821, %.thread1282 ]
  %i.aav = shl nsw i32 %i.zd, 2
  %i.aaw = lshr i32 %i.zl, 4
  %i.aax = or i32 %i.aaw, %i.aav
  %i.aay = trunc i32 %i.aax to i8
  %i.aaz = getelementptr i8, ptr %.19061556, i64 1
  store i8 %i.aay, ptr %.19061556, align 1, !tbaa !15
  br label %.thread1270

bb.hd:                                            ; preds = %bb.hc
  %i.aba = shl nsw i32 %i.zd, 2
  %i.abb = lshr i32 %i.zl, 4
  %i.abc = or i32 %i.abb, %i.aba
  %i.abd = trunc i32 %i.abc to i8
  %i.abe = getelementptr i8, ptr %.19061556, i64 1
  store i8 %i.abd, ptr %.19061556, align 1, !tbaa !15
  %i.abf = shl nsw i32 %i.zl, 4
  %i.abg = lshr i32 %i.zu, 2
  %i.abh = or i32 %i.abg, %i.abf
  %i.abi = trunc i32 %i.abh to i8
  %i.abj = getelementptr i8, ptr %.19061556, i64 2
  store i8 %i.abi, ptr %i.abe, align 1, !tbaa !15
  br label %.thread1270

.thread1270:                                      ; preds = %bb.ha, %bb.gu, %bb.gp, %.preheader1342, %.preheader1343, %.thread1282, %bb.hb, %bb.hd, %.thread1292, %.thread1253, %bb.gr
  %.2907 = phi ptr [ %i.yg, %.thread1253 ], [ %i.ys, %bb.gr ], [ %i.ya, %bb.gp ], [ %i.aaz, %.thread1292 ], [ %i.abj, %bb.hd ], [ %.19061556, %bb.hb ], [ %.19061556, %.thread1282 ], [ %i.vt, %.preheader1343 ], [ %i.vt, %.preheader1342 ], [ %.19061556, %bb.gu ], [ %i.aap, %bb.ha ]
  %.37 = phi ptr [ %i.wh, %.thread1253 ], [ %i.wy, %bb.gr ], [ %i.xg, %bb.gp ], [ %.3682412911295, %.thread1292 ], [ %.36824, %bb.hd ], [ %.36824, %bb.hb ], [ %.33821, %.thread1282 ], [ %.07881675, %.preheader1343 ], [ %.07881675, %.preheader1342 ], [ %.32820, %bb.gu ], [ %i.aae, %bb.ha ] ; 2 uses
  %i.abk = load i64, ptr %i.vo, align 8, !tbaa !13
  %i.abl = and i64 %i.abk, 8192
  %.not.i1141 = icmp eq i64 %i.abl, 0
  br i1 %.not.i1141, label %RSTRING_PTR.exit1142, label %bb.he

bb.he:                                            ; preds = %.thread1270
  %i.abm = load ptr, ptr %i.vr, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1142

RSTRING_PTR.exit1142:                             ; preds = %.thread1270, %bb.he
  %i.abn = phi ptr [ %i.abm, %bb.he ], [ %i.vr, %.thread1270 ]
  %i.abo = ptrtoint ptr %.2907 to i64
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = sub i64 %i.abo, %i.abp
  call void @rb_str_set_len(i64 noundef %i.vn, i64 noundef %i.abq) #12
  br i1 %i.ao, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %RSTRING_PTR.exit1142
  %i.abr = call i64 @rb_yield(i64 noundef %i.vn) #12 ; 0 uses
  br label %.thread1178

bb.hg:                                            ; preds = %RSTRING_PTR.exit1142
  br i1 %i.ai, label %bb.hh, label %.thread1320

bb.hh:                                            ; preds = %bb.hg
  %i.abs = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.vn) #12 ; 0 uses
  br label %.thread1178

bb.hi:                                            ; preds = %bb.u
  %i.abt = ptrtoint ptr %.07881675 to i64
  %i.abu = sub i64 %i.an, %i.abt
  %i.abv = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.abu) #12, !callees !42 ; 7 uses
  %i.abw = inttoptr i64 %i.abv to ptr             ; 5 uses
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !13
  %i.aby = and i64 %i.abx, 8192                   ; 2 uses
  %.not.i1143 = icmp eq i64 %i.aby, 0
  %i.abz = getelementptr i8, ptr %i.abw, i64 24   ; 4 uses
  br i1 %.not.i1143, label %RSTRING_PTR.exit1144, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1144

RSTRING_PTR.exit1144:                             ; preds = %bb.hi, %bb.hj
  %i.acb = phi ptr [ %i.aca, %bb.hj ], [ %i.abz, %bb.hi ] ; 2 uses
  %i.acc = icmp ult ptr %.07881675, %i.w
  br i1 %i.acc, label %.lr.ph1526, label %._crit_edge

.lr.ph1526:                                       ; preds = %RSTRING_PTR.exit1144, %thread-pre-split.thread
  %.381525 = phi ptr [ %i.adl, %thread-pre-split.thread ], [ %.07881675, %RSTRING_PTR.exit1144 ] ; 9 uses
  %.08811524 = phi i32 [ %.1882, %thread-pre-split.thread ], [ 0, %RSTRING_PTR.exit1144 ] ; 8 uses
  %.08841523 = phi ptr [ %.1885, %thread-pre-split.thread ], [ %i.acb, %RSTRING_PTR.exit1144 ] ; 10 uses
  %i.acd = load i8, ptr %.381525, align 1, !tbaa !15 ; 3 uses
  %i.ace = icmp eq i8 %i.acd, 61
  br i1 %i.ace, label %bb.hk, label %bb.hq

bb.hk:                                            ; preds = %.lr.ph1526
  %i.acf = getelementptr i8, ptr %.381525, i64 1  ; 5 uses
  %i.acg = icmp eq ptr %i.acf, %i.w
  br i1 %i.acg, label %._crit_edge.loopexit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ach = getelementptr i8, ptr %.381525, i64 2  ; 3 uses
  %i.aci = icmp ult ptr %i.ach, %i.w
  %i.acj = load i8, ptr %i.acf, align 1, !tbaa !15 ; 3 uses
  %i.ack = icmp eq i8 %i.acj, 13
  %or.cond2147 = select i1 %i.aci, i1 %i.ack, i1 false
  br i1 %or.cond2147, label %bb.hm, label %thread-pre-split

bb.hm:                                            ; preds = %bb.hl
  %i.acl = load i8, ptr %i.ach, align 1, !tbaa !15
  %i.acm = icmp eq i8 %i.acl, 10
  br i1 %i.acm, label %thread-pre-split.thread, label %thread-pre-split.thread1956

thread-pre-split:                                 ; preds = %bb.hl
  %.not1038 = icmp eq i8 %i.acj, 10
  br i1 %.not1038, label %thread-pre-split.thread, label %thread-pre-split.thread1956

thread-pre-split.thread1956:                      ; preds = %bb.hm, %thread-pre-split
  %i.acn = phi i8 [ %i.acj, %thread-pre-split ], [ 13, %bb.hm ]
  %i.aco = zext i8 %i.acn to i64
  %i.acp = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.aco
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !15 ; 2 uses
  %i.acr = icmp sgt i8 %i.acq, 15
  %narrow.i1145 = select i1 %i.acr, i8 -1, i8 %i.acq ; 2 uses
  %spec.store.select.i = sext i8 %narrow.i1145 to i32
  %i.acs = icmp eq i8 %narrow.i1145, -1
  br i1 %i.acs, label %._crit_edge.loopexit, label %bb.hn

bb.hn:                                            ; preds = %thread-pre-split.thread1956
  %i.act = getelementptr i8, ptr %.381525, i64 2  ; 5 uses
  %i.acu = icmp eq ptr %i.act, %i.w
  br i1 %i.acu, label %._crit_edge.loopexit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.acv = load i8, ptr %i.act, align 1, !tbaa !15
  %i.acw = zext i8 %i.acv to i64
  %i.acx = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.acw
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !15 ; 3 uses
  %i.acz = icmp sgt i8 %i.acy, 15
  %i.ada = icmp eq i8 %i.acy, -1
  %i.adb = or i1 %i.acz, %i.ada
  br i1 %i.adb, label %._crit_edge.loopexit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %spec.store.select.i11471953 = zext i8 %i.acy to i32
  %i.adc = shl nsw i32 %spec.store.select.i, 4
  %i.add = or i32 %i.adc, %spec.store.select.i11471953 ; 2 uses
  %i.ade = trunc i32 %i.add to i8
  %i.adf = getelementptr i8, ptr %.08841523, i64 1
  store i8 %i.ade, ptr %.08841523, align 1, !tbaa !15
  %sext = shl i32 %i.add, 24
  %i.adg = ashr exact i32 %sext, 24
  %i.adh = or i32 %i.adg, %.08811524
  br label %thread-pre-split.thread

bb.hq:                                            ; preds = %.lr.ph1526
  %i.adi = sext i8 %i.acd to i32
  %i.adj = getelementptr i8, ptr %.08841523, i64 1
  store i8 %i.acd, ptr %.08841523, align 1, !tbaa !15
  %i.adk = or i32 %.08811524, %i.adi
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.hm, %thread-pre-split, %bb.hp, %bb.hq
  %.1885 = phi ptr [ %i.adf, %bb.hp ], [ %.08841523, %thread-pre-split ], [ %i.adj, %bb.hq ], [ %.08841523, %bb.hm ] ; 2 uses
  %.1882 = phi i32 [ %i.adh, %bb.hp ], [ %.08811524, %thread-pre-split ], [ %i.adk, %bb.hq ], [ %.08811524, %bb.hm ] ; 2 uses
  %.40 = phi ptr [ %i.act, %bb.hp ], [ %i.acf, %thread-pre-split ], [ %.381525, %bb.hq ], [ %i.ach, %bb.hm ]
  %i.adl = getelementptr i8, ptr %.40, i64 1      ; 4 uses
  %i.adm = icmp ult ptr %i.adl, %i.w
  br i1 %i.adm, label %.lr.ph1526, label %._crit_edge.loopexit, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %bb.ho, %bb.hn, %thread-pre-split.thread1956, %bb.hk, %thread-pre-split.thread
  %.0884.lcssa.ph = phi ptr [ %.1885, %thread-pre-split.thread ], [ %.08841523, %bb.hk ], [ %.08841523, %thread-pre-split.thread1956 ], [ %.08841523, %bb.hn ], [ %.08841523, %bb.ho ]
  %.0881.lcssa.ph = phi i32 [ %.1882, %thread-pre-split.thread ], [ %.08811524, %bb.hk ], [ %.08811524, %thread-pre-split.thread1956 ], [ %.08811524, %bb.hn ], [ %.08811524, %bb.ho ]
  %.38.lcssa.ph = phi ptr [ %i.adl, %thread-pre-split.thread ], [ %.381525, %bb.hk ], [ %.381525, %thread-pre-split.thread1956 ], [ %.381525, %bb.hn ], [ %.381525, %bb.ho ]
  %.41.ph = phi ptr [ %i.adl, %thread-pre-split.thread ], [ %i.acf, %bb.hk ], [ %i.acf, %thread-pre-split.thread1956 ], [ %i.act, %bb.hn ], [ %i.act, %bb.ho ]
  %.pre1866 = load i64, ptr %i.abw, align 8, !tbaa !13
  %.pre1869 = and i64 %.pre1866, 8192
  %i.adn = icmp ugt i32 %.0881.lcssa.ph, 127
  %i.ado = select i1 %i.adn, i64 2097152, i64 1048576
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %RSTRING_PTR.exit1144
  %.pre-phi1870 = phi i64 [ %.pre1869, %._crit_edge.loopexit ], [ %i.aby, %RSTRING_PTR.exit1144 ]
  %.0884.lcssa = phi ptr [ %.0884.lcssa.ph, %._crit_edge.loopexit ], [ %i.acb, %RSTRING_PTR.exit1144 ]
  %.0881.lcssa = phi i64 [ %i.ado, %._crit_edge.loopexit ], [ 1048576, %RSTRING_PTR.exit1144 ]
  %.38.lcssa = phi ptr [ %.38.lcssa.ph, %._crit_edge.loopexit ], [ %.07881675, %RSTRING_PTR.exit1144 ] ; 2 uses
  %.41 = phi ptr [ %.41.ph, %._crit_edge.loopexit ], [ %.07881675, %RSTRING_PTR.exit1144 ] ; 2 uses
  %.not.i1148 = icmp eq i64 %.pre-phi1870, 0
  br i1 %.not.i1148, label %RSTRING_PTR.exit1149, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge
  %i.adp = load ptr, ptr %i.abz, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1149

RSTRING_PTR.exit1149:                             ; preds = %._crit_edge, %bb.hr
  %i.adq = phi ptr [ %i.adp, %bb.hr ], [ %i.abz, %._crit_edge ]
  %i.adr = ptrtoint ptr %.0884.lcssa to i64
  %i.ads = ptrtoint ptr %i.adq to i64
  %i.adt = sub i64 %i.adr, %i.ads
  call void @rb_str_set_len(i64 noundef %i.abv, i64 noundef %i.adt) #12
  %i.adu = ptrtoint ptr %.38.lcssa to i64
  %i.adv = sub i64 %i.an, %i.adu
  %i.adw = call i64 @rb_str_cat(i64 noundef %i.abv, ptr noundef %.38.lcssa, i64 noundef %i.adv) #12 ; 0 uses
  %i.adx = tail call i32 @rb_ascii8bit_encindex() #17
  call void @rb_enc_set_index(i64 noundef %i.abv, i32 noundef %i.adx) #12
  %i.ady = load i64, ptr %i.abw, align 8, !tbaa !13
  %i.adz = and i64 %i.ady, -3145729
  %i.aea = or disjoint i64 %i.adz, %.0881.lcssa
  store i64 %i.aea, ptr %i.abw, align 8, !tbaa !13
  br i1 %i.ao, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %RSTRING_PTR.exit1149
  %i.aeb = call i64 @rb_yield(i64 noundef %i.abv) #12 ; 0 uses
  br label %.thread1178

bb.ht:                                            ; preds = %RSTRING_PTR.exit1149
  br i1 %i.ai, label %bb.hu, label %.thread1320

bb.hu:                                            ; preds = %bb.ht
  %i.aec = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.abv) #12 ; 0 uses
  br label %.thread1178

bb.hv:                                            ; preds = %bb.u
  %i.aed = load i64, ptr %i.a, align 8, !tbaa !11
  %i.aee = inttoptr i64 %i.aed to ptr             ; 3 uses
  %i.aef = getelementptr i8, ptr %i.aee, i64 16
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !19
  %i.aeh = icmp sgt i64 %.0835, %i.aeg
  br i1 %i.aeh, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.aei = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aei, ptr noundef nonnull @.str.25) #13
  unreachable

bb.hx:                                            ; preds = %bb.hv
  %i.aej = load i64, ptr %i.aee, align 8, !tbaa !13
  %i.aek = and i64 %i.aej, 8192
  %.not.i1150 = icmp eq i64 %i.aek, 0
  %i.ael = getelementptr i8, ptr %i.aee, i64 24   ; 2 uses
  br i1 %.not.i1150, label %RSTRING_PTR.exit1151, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1151

RSTRING_PTR.exit1151:                             ; preds = %bb.hx, %bb.hy
  %i.aen = phi ptr [ %i.aem, %bb.hy ], [ %i.ael, %bb.hx ]
  %i.aeo = getelementptr i8, ptr %i.aen, i64 %.0835
  br label %.thread1178

bb.hz:                                            ; preds = %bb.u
  %i.aep = load i64, ptr %i.a, align 8, !tbaa !11
  %i.aeq = inttoptr i64 %i.aep to ptr             ; 2 uses
  %i.aer = load i64, ptr %i.aeq, align 8, !tbaa !13
  %i.aes = and i64 %i.aer, 8192
  %.not.i1152 = icmp eq i64 %i.aes, 0
  %i.aet = getelementptr i8, ptr %i.aeq, i64 24   ; 2 uses
  br i1 %.not.i1152, label %RSTRING_PTR.exit1153, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1153

RSTRING_PTR.exit1153:                             ; preds = %bb.hz, %bb.ia
  %i.aev = phi ptr [ %i.aeu, %bb.ia ], [ %i.aet, %bb.hz ]
  %i.aew = ptrtoint ptr %.07881675 to i64
  %i.aex = ptrtoint ptr %i.aev to i64
  %i.aey = sub i64 %i.aew, %i.aex
  %i.aez = icmp sgt i64 %.0835, %i.aey
  br i1 %i.aez, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %RSTRING_PTR.exit1153
  %i.afa = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.afa, ptr noundef nonnull @.str.12) #13
  unreachable

bb.ic:                                            ; preds = %RSTRING_PTR.exit1153
  %i.afb = sub i64 0, %.0835
  %i.afc = getelementptr i8, ptr %.07881675, i64 %i.afb
  br label %.thread1178

bb.id:                                            ; preds = %bb.u
  %i.afd = ptrtoint ptr %.07881675 to i64
  %i.afe = sub i64 %i.an, %i.afd
  %i.aff = icmp sgt i64 %.0835, %i.afe
  br i1 %i.aff, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.afg = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.afg, ptr noundef nonnull @.str.26) #13
  unreachable

bb.if:                                            ; preds = %bb.id
  %i.afh = getelementptr i8, ptr %.07881675, i64 %.0835
  br label %.thread1178

bb.ig:                                            ; preds = %bb.u
  %i.afi = ptrtoint ptr %.07881675 to i64
  %i.afj = sub i64 %i.an, %i.afi
  %i.afk = icmp ugt i64 %i.afj, 7
  br i1 %i.afk, label %bb.ih, label %.thread1178

bb.ih:                                            ; preds = %bb.ig
  %i.afl = load i64, ptr %.07881675, align 1      ; 2 uses
  %i.afm = inttoptr i64 %i.afl to ptr             ; 2 uses
  %i.afn = getelementptr i8, ptr %.07881675, i64 8 ; 2 uses
  %.not1036 = icmp eq i64 %i.afl, 0
  br i1 %.not1036, label %bb.iq, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %.not1037 = icmp eq i64 %.08261674, 0
  br i1 %.not1037, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.afo = load i64, ptr %i.a, align 8, !tbaa !11
  %i.afp = call fastcc i64 @str_associated(i64 noundef %i.afo)
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.1827 = phi i64 [ %.08261674, %bb.ii ], [ %i.afp, %bb.ij ] ; 4 uses
  %i.afq = inttoptr i64 %.1827 to ptr             ; 4 uses
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !13 ; 2 uses
  %i.afs = and i64 %i.afr, 8192
  %.not.i.i = icmp eq i64 %i.afs, 0
  br i1 %.not.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aft = getelementptr i8, ptr %i.afq, i64 16
  %i.afu = lshr i64 %i.afr, 15
  %i.afv = and i64 %i.afu, 127
  br label %rb_array_len.exit.i

bb.im:                                            ; preds = %bb.ik
  %i.afw = getelementptr i8, ptr %i.afq, i64 32
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !15
  %i.afy = getelementptr i8, ptr %i.afq, i64 16
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !15
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.im, %bb.il
  %.0.i1419.i = phi ptr [ %i.aft, %bb.il ], [ %i.afx, %bb.im ] ; 3 uses
  %.0.i16.i = phi i64 [ %i.afv, %bb.il ], [ %i.afz, %bb.im ]
  %i.aga = getelementptr [8 x i8], ptr %.0.i1419.i, i64 %.0.i16.i ; 2 uses
  %i.agb = icmp ult ptr %.0.i1419.i, %i.aga
  br i1 %i.agb, label %.lr.ph.i1155, label %._crit_edge.i1154

.lr.ph.i1155:                                     ; preds = %rb_array_len.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.01325.i = phi ptr [ %i.agq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %.0.i1419.i, %rb_array_len.exit.i ] ; 2 uses
  %i.agc = load i64, ptr %.01325.i, align 8, !tbaa !11 ; 4 uses
  %i.agd = icmp eq i64 %i.agc, 0
  %i.age = and i64 %i.agc, 7
  %i.agf = icmp ne i64 %i.age, 0
  %i.agg = or i1 %i.agd, %i.agf
  br i1 %i.agg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.lr.ph.i1155
  %i.agh = inttoptr i64 %i.agc to ptr             ; 3 uses
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !13 ; 2 uses
  %i.agj = and i64 %i.agi, 31
  %i.agk = icmp eq i64 %i.agj, 5
  br i1 %i.agk, label %bb.in, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.in:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.agl = and i64 %i.agi, 8192
  %.not.i17.i = icmp eq i64 %i.agl, 0
  %i.agm = getelementptr i8, ptr %i.agh, i64 24   ; 2 uses
  br i1 %.not.i17.i, label %RSTRING_PTR.exit.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !15
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.io, %bb.in
  %i.ago = phi ptr [ %i.agn, %bb.io ], [ %i.agm, %bb.in ]
end_hunk_0
