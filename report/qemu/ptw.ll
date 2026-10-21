Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ptw?download=true
inline.NumInlined: 386
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_phys_addr_nogpc:bb.a
  %i.ze = lshr i64 -1, %i.zd                      ; 2 uses
  %.neg369.i.neg = sub nsw i32 4, %.2.i
  %.neg370.i.neg325 = mul i32 %.neg369.i.neg, %i.yj
  %reass.sub556 = sub i32 %.neg370.i.neg325, %.1336.i
  %i.zf = add i32 %reass.sub556, 64
  %i.zg = zext nneg i32 %i.zf to i64
  %i.zh = lshr i64 -1, %i.zg                      ; 2 uses
  %i.zi = and i64 %.0.i173, 281474976710655       ; 3 uses
  %i.zj = icmp samesign ugt i32 %.2339.i, 48      ; 2 uses
  br i1 %i.zj, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.zk = shl i64 %.0.i173, 46
  %i.zl = and i64 %i.zk, 4222124650659840
  %i.zm = or disjoint i64 %i.zl, %i.zi
  br label %bb.gu

bb.gs:                                            ; preds = %bb.gq
  %i.zn = zext nneg i32 %.2339.i to i64
  %i.zo = lshr i64 %i.zi, %i.zn
  %.not371.i = icmp eq i64 %i.zo, 0
  br i1 %.not371.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i32 7, ptr %6, align 8
  br label %.loopexit260

bb.gu:                                            ; preds = %bb.gs, %bb.gr
  %.0321.i = phi i64 [ %i.zm, %bb.gr ], [ %i.zi, %bb.gs ]
  %i.zp = xor i64 %i.zh, -1
  %i.zq = and i64 %.0321.i, %i.zp
  %i.zr = and i32 %.sroa.0172.0.i, 262144
  %i.zs = icmp ne i32 %i.zr, 0                    ; 5 uses
  br i1 %i.zs, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.val.i144 = load i64, ptr %i.de, align 16
  %i.zt = and i64 %.val.i144, 16777216
  %.not372.i = icmp eq i64 %i.zt, 0
  %.402.i = select i1 %.not372.i, i64 1099511627775, i64 281474976710655
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %.0353.i = phi i64 [ 1125899906842623, %bb.gu ], [ %.402.i, %bb.gv ]
  %i.zu = xor i64 %i.ze, -1
  %i.zv = and i64 %.0353.i, %i.zu
  %i.zw = zext nneg i32 %.2339.i to i64
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zy = and i32 %.sroa.0172.0.i, 524288
  %.not378.i = icmp eq i32 %i.zy, 0               ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.aaa = and i32 %.sroa.0172.0.i, 1048576
  %.not381.i = icmp eq i32 %i.aaa, 0              ; 2 uses
  %i.aab = icmp eq i32 %3, 1                      ; 2 uses
  %i.aac = and i32 %.sroa.0172.0.i, 65536
  %.not382.i = icmp eq i32 %i.aac, 0
  %i.aad = and i32 %.sroa.0172.0.i, 8388608
  %.not388.i = icmp ne i32 %i.aad, 0              ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.aah = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 7 uses
  %i.aai = getelementptr i8, ptr %0, i64 79768
  %i.aaj = and i32 %i.sr, 2048
  %.not255 = icmp eq i32 %i.aaj, 0
  %i.aak = icmp eq i32 %i.sv, 1
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aam = and i32 %.sroa.0172.0.i, 16777216
  %.not386.i = icmp eq i32 %i.aam, 0
  %i.aan = zext nneg i32 %i.sv to i64
  %i.aao = getelementptr i8, ptr %0, i64 79776
  %i.aap = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aaq = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.aar = and i32 %4, 224                        ; 2 uses
  %trunc.i165 = trunc nuw i32 %i.aar to i8
  %i.aas = and i32 %4, 7
  %i.aat = lshr exact i32 %i.aar, 5
  %i.aau = getelementptr inbounds nuw i8, ptr %1, i64 19
  %or.cond413.i.not = select i1 %i.aab, i1 %.not388.i, i1 false
  %i.aav = and i32 %.sroa.0172.0.i, 1572864
  %or.cond415.i.not = icmp eq i32 %i.aav, 1572864
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aan
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 79872
  %i.aax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 78912 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.abc = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.abd = getelementptr inbounds nuw i8, ptr %6, i64 37
  %i.abe = getelementptr inbounds nuw i8, ptr %6, i64 38
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %6, i64 39 ; 4 uses
  br label %bb.gx

bb.gx:                                            ; preds = %bb.hp, %bb.gw
  %.0326.i = phi i32 [ 0, %bb.gw ], [ %i.adf, %bb.hp ] ; 4 uses
  %.0324.i = phi i64 [ %i.zh, %bb.gw ], [ %i.ze, %bb.hp ]
  %.1322.i = phi i64 [ %i.zq, %bb.gw ], [ %.2323.i, %bb.hp ]
  %.3.i = phi i32 [ %.2.i, %bb.gw ], [ %i.adg, %bb.hp ] ; 20 uses
  %i.abj = sub nsw i32 4, %.3.i
  %i.abk = mul i32 %i.abj, %i.yj                  ; 2 uses
  %i.abl = zext nneg i32 %i.abk to i64
  %i.abm = lshr i64 %.0111, %i.abl
  %i.abn = and i64 %i.abm, %.0324.i
  %i.abo = or i64 %i.abn, %.1322.i
  %i.abp = and i64 %i.abo, -8
  %i.abq = load i32, ptr %i.e, align 4
  %i.abr = or i32 %i.abq, %i.yu
  %brmerge.not = icmp ne i32 %i.abr, 0
  %.not373.i = icmp samesign ult i32 %.0326.i, 16
  %or.cond257 = select i1 %brmerge.not, i1 true, i1 %.not373.i
  br i1 %or.cond257, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.abs = load i32, ptr %i.cs, align 4
  %i.abt = add i32 %i.abs, 1
  store i32 %i.abt, ptr %i.cs, align 4
  store i32 1, ptr %i.e, align 4
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gx, %bb.gy
  %i.abu = tail call fastcc zeroext i1 @S1_ptw_translate(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.abp, ptr noundef nonnull %6), !inline_history !18
  br i1 %i.abu, label %bb.ha, label %.loopexit260

bb.ha:                                            ; preds = %bb.gz
  %i.abv = tail call fastcc i64 @arm_ldq_ptw(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6), !inline_history !18
  %i.abw = load i32, ptr %6, align 8
  %.not374.i = icmp eq i32 %i.abw, 0
  br i1 %.not374.i, label %.preheader, label %.loopexit260

.preheader:                                       ; preds = %bb.ha
  %i.abx = icmp slt i32 %.3.i, 3
  %i.aby = zext nneg i32 %.0326.i to i64          ; 2 uses
  %i.abz = shl nuw nsw i64 %i.aby, 53
  %i.aca = and i64 %i.abz, 27021597764222976
  %i.acb = shl nuw nsw i64 %i.aby, 4
  %i.acc = and i64 %i.acb, 64
  %i.acd = xor i64 %i.acc, -1
  %i.ace = shl nuw nsw i32 %.0326.i, 4
  %i.acf = and i32 %i.ace, 128
  %i.acg = zext nneg i32 %i.acf to i64
  %i.ach = icmp eq i32 %.3.i, 1
  %or.cond5.i = and i1 %i.zs, %i.ach
  %i.aci = icmp eq i32 %.3.i, 2
  %i.acj = or i1 %i.aci, %or.cond5.i
  %i.ack = icmp eq i32 %.3.i, 0
  %or.cond.i475 = and i1 %i.zs, %i.ack
  %i.acl = add nsw i32 %.3.i, -1
  %i.acm = icmp ult i32 %i.acl, 2
  %spec.select.i476 = or i1 %or.cond.i475, %i.acm
  br label %bb.hb

bb.hb:                                            ; preds = %.preheader, %bb.kh
  %.0349.i = phi i64 [ %.2.i478, %bb.kh ], [ %i.abv, %.preheader ] ; 25 uses
  %i.acn = and i64 %.0349.i, 1
  %.not375.i = icmp eq i64 %i.acn, 0
  br i1 %.not375.i, label %.loopexit, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.aco = and i64 %.0349.i, 2
  %i.acp = icmp ne i64 %i.aco, 0                  ; 2 uses
  br i1 %i.acp, label %lpae_block_desc_valid.exit.thread, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  switch i32 %i.yi, label %default.unreachable662 [
    i32 0, label %.split482
    i32 2, label %lpae_block_desc_valid.exit
    i32 1, label %bb.he
    i32 3, label %bb.hi
  ]

.split482:                                        ; preds = %bb.hd
  br i1 %spec.select.i476, label %lpae_block_desc_valid.exit.thread, label %.loopexit

bb.he:                                            ; preds = %bb.hd
  switch i32 %.3.i, label %.loopexit [
    i32 1, label %bb.hf
    i32 2, label %lpae_block_desc_valid.exit.thread
  ]

bb.hf:                                            ; preds = %bb.he
  %.val9.i.i = load i64, ptr %i.de, align 16
  %i.acq = and i64 %.val9.i.i, 33554432
  %.not.i.i474 = icmp eq i64 %i.acq, 0
  br i1 %.not.i.i474, label %.loopexit, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.acr = load i64, ptr %i.aaw, align 16
  %i.acs = and i64 %i.acr, 15                     ; 2 uses
  %i.act = icmp samesign ult i64 %i.acs, 7
  br i1 %i.act, label %arm_pamax.exit.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_pamax) #11
  unreachable

arm_pamax.exit.i:                                 ; preds = %bb.hg
  %8 = getelementptr inbounds nuw i8, ptr @pamax_map, i64 %i.acs
  %9 = load i8, ptr %8, align 1
  %i.acu = icmp eq i8 %9, 52
  br i1 %i.acu, label %lpae_block_desc_valid.exit.thread, label %.loopexit

bb.hi:                                            ; preds = %bb.hd
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1921, ptr noundef nonnull @__func__.lpae_block_desc_valid, ptr noundef null) #11
  unreachable

lpae_block_desc_valid.exit:                       ; preds = %bb.hd
  br i1 %i.acj, label %lpae_block_desc_valid.exit.thread, label %.loopexit

lpae_block_desc_valid.exit.thread:                ; preds = %bb.he, %arm_pamax.exit.i, %.split482, %lpae_block_desc_valid.exit, %bb.hc
  %i.acv = and i64 %i.zv, %.0349.i                ; 4 uses
  br i1 %i.zj, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %lpae_block_desc_valid.exit.thread
  br i1 %i.zs, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.acw = shl i64 %.0349.i, 42
  %i.acx = and i64 %i.acw, 3377699720527872
  %i.acy = or disjoint i64 %i.acx, %i.acv
  br label %bb.ho

bb.hl:                                            ; preds = %bb.hj
  %i.acz = shl i64 %.0349.i, 36
  %i.ada = and i64 %i.acz, 4222124650659840
  %i.adb = or i64 %i.ada, %i.acv
  br label %bb.ho

bb.hm:                                            ; preds = %lpae_block_desc_valid.exit.thread
  %i.adc = lshr i64 %i.acv, %i.zw
  %.not376.i = icmp eq i64 %i.adc, 0
  br i1 %.not376.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  store i32 7, ptr %6, align 8
  br label %.loopexit260

bb.ho:                                            ; preds = %bb.hm, %bb.hl, %bb.hk
  %.2323.i = phi i64 [ %i.acy, %bb.hk ], [ %i.adb, %bb.hl ], [ %i.acv, %bb.hm ] ; 2 uses
  %or.cond.i145 = select i1 %i.acp, i1 %i.abx, i1 false
  br i1 %or.cond.i145, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.add = lshr i64 %.0349.i, 59
  %i.ade = trunc nuw nsw i64 %i.add to i32
  %i.adf = or i32 %.0326.i, %i.ade
  %i.adg = add nsw i32 %.3.i, 1
  br label %bb.gx

bb.hq:                                            ; preds = %bb.ho
  %i.adh = load i8, ptr %i.zx, align 8, !range !8, !noundef !9
  %i.adi = trunc nuw i8 %i.adh to i1
  %.not403.i = xor i1 %i.adi, true
  %i.adj = and i64 %.0349.i, 1024
  %.not377.i = icmp eq i64 %i.adj, 0              ; 2 uses
  %or.cond404.i = and i1 %.not377.i, %.not403.i
  %or.cond405.i = select i1 %or.cond404.i, i1 %.not378.i, i1 false, !prof !20
  br i1 %or.cond405.i, label %bb.hr, label %bb.hs, !prof !20

bb.hr:                                            ; preds = %bb.hq
  store i32 1, ptr %6, align 8
  br label %.loopexit260

bb.hs:                                            ; preds = %bb.hq
  %i.adk = load i8, ptr %i.zz, align 1, !range !8, !noundef !9
  %i.adl = trunc nuw i8 %i.adk to i1
  br i1 %i.adl, label %bb.hy, label %bb.ht, !prof !12

bb.ht:                                            ; preds = %bb.hs
  %.not377.i.not = xor i1 %.not377.i, true
  %or.cond406.i = select i1 %.not377.i.not, i1 true, i1 %.not378.i
  %i.adm = or disjoint i64 %.0349.i, 1024
  %.1350.i = select i1 %or.cond406.i, i64 %.0349.i, i64 %i.adm ; 4 uses
  br i1 %.not381.i, label %bb.hy, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.adn = and i64 %.0349.i, 2251799813685248
  %i.ado = icmp ne i64 %i.adn, 0
  %or.cond3.i = and i1 %i.aab, %i.ado
  br i1 %or.cond3.i, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  br i1 %.not252, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.adp = or i64 %.1350.i, 128
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  %i.adq = and i64 %.1350.i, -129
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw, %bb.hu, %bb.ht, %bb.hs
  %.2351.i = phi i64 [ %i.adp, %bb.hw ], [ %i.adq, %bb.hx ], [ %.1350.i, %bb.hu ], [ %.1350.i, %bb.ht ], [ %.0349.i, %bb.hs ] ; 8 uses
  %i.adr = and i64 %.2351.i, -1125899906838532    ; 2 uses
  %i.ads = or i64 %i.adr, %i.aca
  %i.adt = and i64 %i.ads, %i.acd
  %i.adu = or i64 %i.adt, %i.acg
  %.0332.i = select i1 %.not382.i, i64 %i.adu, i64 %i.adr ; 17 uses
  %i.adv = trunc i64 %.0332.i to i32              ; 3 uses
  %i.adw = lshr i32 %i.adv, 6                     ; 2 uses
  %i.adx = and i32 %i.adw, 3                      ; 3 uses
  %i.ady = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %.not252, label %bb.ie, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  br i1 %.not388.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.adz = lshr i64 %.0332.i, 6
  %i.aea = and i64 %i.adz, 1
  %i.aeb = lshr i64 %.0332.i, 50
  %i.aec = and i64 %i.aeb, 2
  %i.aed = or disjoint i64 %i.aea, %i.aec
  %i.aee = lshr i64 %.0332.i, 51
  %i.aef = and i64 %i.aee, 12
  %i.aeg = or disjoint i64 %i.aed, %i.aef
  %i.aeh = trunc nuw nsw i64 %i.aeg to i32
  %i.aei = load i8, ptr %i.aae, align 2, !range !8, !noundef !9
  %i.aej = trunc nuw i8 %i.aei to i1
  %i.aek = tail call fastcc i32 @get_S2prot_indirect(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %i.aeh, i1 noundef zeroext %i.aej)
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hz
  %i.ael = lshr i64 %.0332.i, 53
  %i.aem = trunc nuw nsw i64 %i.ael to i32
  %i.aen = and i32 %i.aem, 3
  %i.aeo = load i8, ptr %i.aae, align 2, !range !8, !noundef !9
  %i.aep = trunc nuw i8 %i.aeo to i1
  %i.aeq = tail call fastcc i32 @get_S2prot(ptr noundef %0, i32 noundef %i.adx, i32 noundef %i.aen, i1 noundef zeroext %i.aep), !inline_history !18 ; 2 uses
  %i.aer = trunc nuw nsw i32 %i.aeq to i8
  %i.aes = and i8 %i.aer, 3
  store i8 %i.aes, ptr %i.aaf, align 8
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.0341.i = phi i32 [ %i.aek, %bb.ia ], [ %i.aeq, %bb.ib ] ; 3 uses
  %i.aet = icmp eq i32 %i.ady, 3
  br i1 %i.aet, label %bb.id, label %.split227

bb.id:                                            ; preds = %bb.ic
  %i.aeu = and i64 %.0332.i, 36028797018963968
  %.not389.i = icmp eq i64 %i.aeu, 0              ; 2 uses
  %i.aev = and i32 %.0341.i, 251
  %spec.select407.i = select i1 %.not389.i, i32 3, i32 1
  %spec.select408.i = select i1 %.not389.i, i32 %.0341.i, i32 %i.aev
  br label %.split227

.split227:                                        ; preds = %bb.id, %bb.ic
  %.0346.i = phi i32 [ %i.ady, %bb.ic ], [ %spec.select407.i, %bb.id ] ; 2 uses
  %.1342.i = phi i32 [ %.0341.i, %bb.ic ], [ %spec.select408.i, %bb.id ] ; 3 uses
  store i32 %.1342.i, ptr %i.aag, align 4
  %i.aew = load i16, ptr %i.aah, align 8
  %i.aex = trunc i64 %.0332.i to i16
  %i.aey = lshr exact i16 %i.aex, 2
  %i.aez = and i16 %i.aey, 15
  %i.afa = and i16 %i.aew, -1280
  %i.afb = or disjoint i16 %i.aez, %i.afa
  %i.afc = or disjoint i16 %i.afb, 1024
  store i16 %i.afc, ptr %i.aah, align 8
  %i.afd = tail call i64 @arm_hcr_el2_eff(ptr noundef %0) #12, !inline_history !18
  %i.afe = load i16, ptr %i.aah, align 8          ; 3 uses
  %i.aff = trunc i16 %i.afe to i8
  %i.afg = and i64 %i.afd, 70368744177664
  %.not.i168 = icmp eq i64 %i.afg, 0
  %.0.in.v.i169 = select i1 %.not.i168, i8 12, i8 4
  %.0.in.i170 = and i8 %.0.in.v.i169, %i.aff
  %.0.i171 = icmp eq i8 %.0.in.i170, 0
  br i1 %.0.i171, label %bb.iw, label %.thread234

bb.ie:                                            ; preds = %bb.hy
  %i.afh = lshr i32 %i.adv, 5
  %i.afi = and i32 %i.afh, 1                      ; 3 uses
  switch i32 %i.ady, label %bb.il [
    i32 2, label %bb.if
    i32 0, label %bb.ih
    i32 3, label %bb.ii
    i32 1, label %bb.im
  ]

bb.if:                                            ; preds = %bb.ie
  %i.afj = lshr i32 %i.adv, 10
  %i.afk = and i32 %i.afj, 2
  %i.afl = or disjoint i32 %i.afk, %i.afi         ; 2 uses
  %i.afm = icmp eq i32 %i.afl, 0
  br i1 %i.afm, label %bb.ig, label %bb.im

bb.ig:                                            ; preds = %bb.if
  %.val417.i = load i64, ptr %i.aai, align 8
  %i.afn = and i64 %.val417.i, 1030792151040
  %.not254 = icmp eq i64 %i.afn, 0
  %spec.select409.i = zext i1 %.not254 to i32
  br label %bb.im

bb.ih:                                            ; preds = %bb.ie
  br label %bb.im

bb.ii:                                            ; preds = %bb.ie
  switch i8 %trunc251, label %bb.ik [
    i8 64, label %bb.im
end_hunk_0
begin_hunk_1_@combine_cacheattrs:bb.a
  %i.ae = and i32 %.sroa.020.0.insert.ext27, 240
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = trunc i16 %spec.select to i8
  %spec.select.i = select i1 %i.af, i8 %i.ag, i8 68
  br label %combined_attrs_fwb.exit

bb.r:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ah = shl nuw nsw i8 %trunc.i, 2
  br label %combined_attrs_fwb.exit

bb.s:                                             ; preds = %bb.j
  %.sroa.0.0.insert.ext12 = zext i16 %.sroa.0.0 to i32 ; 4 uses
  %i.ai = and i32 %.sroa.0.0.insert.ext12, 1024
  %.not.i68 = icmp eq i32 %i.ai, 0
  br i1 %.not.i68, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = lshr i32 %.sroa.0.0.insert.ext12, 2
  %i.ak = and i32 %i.aj, 3                        ; 3 uses
  %i.al = and i32 %.sroa.0.0.insert.ext12, 3      ; 3 uses
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %convert_stage2_attrs.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = and i64 %0, 4294967296
  %.not14.i.i = icmp eq i64 %i.am, 0
  br i1 %.not14.i.i, label %bb.v, label %convert_stage2_attrs.exit.i

bb.v:                                             ; preds = %bb.u
  %.not15.i.i = icmp eq i32 %i.ak, 1
  %spec.select.i.i = select i1 %.not15.i.i, i32 0, i32 48
  %.not16.i.i = icmp eq i32 %i.al, 1
  %spec.select17.i.i = select i1 %.not16.i.i, i32 0, i32 3
  %i.an = shl nuw nsw i32 %i.ak, 6
  %i.ao = or disjoint i32 %spec.select.i.i, %i.an
  br label %convert_stage2_attrs.exit.i

convert_stage2_attrs.exit.i:                      ; preds = %bb.v, %bb.u, %bb.t
  %.012.i.i = phi i32 [ 0, %bb.t ], [ 64, %bb.u ], [ %i.ao, %bb.v ]
  %.011.i.i = phi i32 [ %i.al, %bb.t ], [ 1, %bb.u ], [ %i.al, %bb.v ]
  %.0.i.i69 = phi i32 [ 0, %bb.t ], [ 0, %bb.u ], [ %spec.select17.i.i, %bb.v ]
  %i.ap = shl nuw nsw i32 %.011.i.i, 2
  %i.aq = or i32 %i.ap, %.012.i.i
  %i.ar = or disjoint i32 %i.aq, %.0.i.i69
  br label %bb.w

bb.w:                                             ; preds = %convert_stage2_attrs.exit.i, %bb.s
  %.031.in.i = phi i32 [ %i.ar, %convert_stage2_attrs.exit.i ], [ %.sroa.0.0.insert.ext12, %bb.s ] ; 4 uses
  %i.as = and i32 %.sroa.020.0.insert.ext27, 15   ; 5 uses
  %i.at = and i32 %.031.in.i, 15                  ; 4 uses
  %i.au = lshr i32 %.sroa.020.0.insert.ext27, 4
  %i.av = and i32 %i.au, 15                       ; 3 uses
  %i.aw = lshr i32 %.031.in.i, 4
  %i.ax = and i32 %i.aw, 15                       ; 2 uses
  %i.ay = icmp eq i32 %i.av, 0
  %i.az = icmp eq i32 %i.ax, 0
  %or.cond.i70 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond.i70, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ba = icmp eq i32 %i.as, 0
  %i.bb = icmp eq i32 %i.at, 0
  %or.cond5.i = select i1 %i.ba, i1 true, i1 %i.bb
  br i1 %or.cond5.i, label %combined_attrs_fwb.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = icmp eq i32 %i.as, 4
  %i.bd = icmp eq i32 %i.at, 4
  %or.cond8.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond8.i, label %combined_attrs_fwb.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = icmp eq i32 %i.as, 8
  %i.bf = icmp eq i32 %i.at, 8
  %or.cond11.i = select i1 %i.be, i1 true, i1 %i.bf
  %..i = select i1 %or.cond11.i, i8 8, i8 12
  br label %combined_attrs_fwb.exit

bb.aa:                                            ; preds = %bb.w
  %i.bg = trunc nuw nsw i32 %i.as to i8           ; 5 uses
  %i.bh = trunc nuw nsw i32 %i.av to i8           ; 5 uses
  %i.bi = icmp eq i32 %i.av, 4
  %i.bj = icmp eq i32 %i.ax, 4
  %or.cond.i.i71 = or i1 %i.bi, %i.bj
  br i1 %or.cond.i.i71, label %combine_cacheattr_nibble.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = lshr i8 %i.bh, 2
  switch i8 %i.bk, label %bb.ac [
    i8 0, label %combine_cacheattr_nibble.exit.i
    i8 2, label %combine_cacheattr_nibble.exit.i
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bl = and i32 %.031.in.i, 192
  %i.bm = icmp eq i32 %i.bl, 128
  br i1 %i.bm, label %bb.ad, label %combine_cacheattr_nibble.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.bn = and i8 %i.bh, 3
  %i.bo = or disjoint i8 %i.bn, 8
  br label %combine_cacheattr_nibble.exit.i

combine_cacheattr_nibble.exit.i:                  ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.ab, %bb.aa
  %.0.i34.i = phi i8 [ %i.bh, %bb.ab ], [ 4, %bb.aa ], [ %i.bo, %bb.ad ], [ %i.bh, %bb.ab ], [ %i.bh, %bb.ac ]
  %i.bp = shl nuw i8 %.0.i34.i, 4
  %i.bq = icmp eq i32 %i.as, 4
  %i.br = icmp eq i32 %i.at, 4
  %or.cond.i35.i = or i1 %i.bq, %i.br
  br i1 %or.cond.i35.i, label %combine_cacheattr_nibble.exit37.i, label %bb.ae

bb.ae:                                            ; preds = %combine_cacheattr_nibble.exit.i
  %i.bs = lshr i8 %i.bg, 2
  switch i8 %i.bs, label %bb.af [
    i8 0, label %combine_cacheattr_nibble.exit37.i
    i8 2, label %combine_cacheattr_nibble.exit37.i
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bt = and i32 %.031.in.i, 12
  %i.bu = icmp eq i32 %i.bt, 8
  br i1 %i.bu, label %bb.ag, label %combine_cacheattr_nibble.exit37.i

bb.ag:                                            ; preds = %bb.af
  %i.bv = and i8 %i.bg, 3
  %i.bw = or disjoint i8 %i.bv, 8
  br label %combine_cacheattr_nibble.exit37.i

combine_cacheattr_nibble.exit37.i:                ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ae, %combine_cacheattr_nibble.exit.i
  %.0.i36.i = phi i8 [ %i.bg, %bb.ae ], [ 4, %combine_cacheattr_nibble.exit.i ], [ %i.bw, %bb.ag ], [ %i.bg, %bb.ae ], [ %i.bg, %bb.af ]
  %i.bx = or i8 %.0.i36.i, %i.bp
  br label %combined_attrs_fwb.exit

combined_attrs_fwb.exit:                          ; preds = %combine_cacheattr_nibble.exit37.i, %bb.z, %bb.y, %bb.x, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.pn.in = phi i8 [ -1, %bb.o ], [ %spec.select.i, %bb.q ], [ %i.v, %bb.n ], [ %i.ah, %bb.r ], [ %i.ad, %bb.p ], [ 0, %bb.m ], [ %i.bx, %combine_cacheattr_nibble.exit37.i ], [ 0, %bb.x ], [ %..i, %bb.z ], [ 4, %bb.y ] ; 4 uses
  %.pn = zext i8 %.pn.in to i32
  %i.by = icmp ult i8 %.pn.in, 16
  %i.bz = icmp eq i8 %.pn.in, 68
  %or.cond64 = or i1 %i.by, %i.bz
  %.sroa.035.2.v = select i1 %or.cond64, i32 512, i32 %.sroa.035.0
  %i.ca = icmp eq i8 %.pn.in, -1
  %or.cond66 = select i1 %i.c, i1 %i.ca, i1 false
  %.sroa.035.3.v = select i1 %or.cond66, i32 %.0, i32 %.pn
  %.sroa.035.3 = or disjoint i32 %.sroa.035.2.v, %.sroa.035.3.v
  ret i32 %.sroa.035.3
}

declare i32 @aa64_va_parameters(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, -2147483647) i32 @check_s2_mmu_setup(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, i64 noundef %2, i1 noundef zeroext %3, i32 noundef range(i32 -223, 65) %4, i32 noundef range(i32 9, 14) %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = lshr i32 %i.a, 6
  %i.c = and i32 %i.b, 3                          ; 9 uses
  br i1 %1, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  switch i32 %5, label %bb.u [
    i32 9, label %bb.c
    i32 11, label %bb.j
    i32 13, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %2, 8589934592
  %i.e = icmp ne i64 %i.d, 0
  %or.cond = and i1 %3, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.z, label %arm_pamax.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.f = sub nuw nsw i32 2, %i.c
  switch i32 %i.c, label %bb.z [
    i32 2, label %bb.f
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %0, i64 95424
  %.val9.i = load i64, ptr %i.g, align 16
  %i.h = and i64 %.val9.i, 33554432
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %arm_pamax.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96368
  %i.j = load i64, ptr %i.i, align 16
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 7
  br i1 %i.l, label %arm_pamax.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_pamax) #11
  unreachable

arm_pamax.exit:                                   ; preds = %bb.g
  %6 = getelementptr inbounds nuw i8, ptr @pamax_map, i64 %i.k
  %7 = load i8, ptr %6, align 1
  %i.m = icmp ult i8 %7, 44
  br i1 %i.m, label %arm_pamax.exit.thread, label %bb.z

bb.i:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 96384
  %.val = load i64, ptr %i.n, align 8
  %i.o = and i64 %.val, 4026531840
  %.not56 = icmp eq i64 %i.o, 0
  br i1 %.not56, label %arm_pamax.exit.thread, label %bb.z

bb.j:                                             ; preds = %bb.b
  switch i32 %i.c, label %bb.o [
    i32 2, label %bb.k
    i32 3, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %0, i64 95424
  %.val9.i41 = load i64, ptr %i.p, align 16
  %i.q = and i64 %.val9.i41, 33554432
  %.not.i42 = icmp eq i64 %i.q, 0
  br i1 %.not.i42, label %arm_pamax.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96368
  %i.s = load i64, ptr %i.r, align 16
  %i.t = and i64 %i.s, 15                         ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, 7
  br i1 %i.u, label %arm_pamax.exit46, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_pamax) #11
  unreachable

arm_pamax.exit46:                                 ; preds = %bb.l
  %8 = getelementptr inbounds nuw i8, ptr @pamax_map, i64 %i.t
  %9 = load i8, ptr %8, align 1
  %i.v = icmp ult i8 %9, 42
  br i1 %i.v, label %arm_pamax.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.j
  br i1 %3, label %bb.o, label %arm_pamax.exit.thread

bb.o:                                             ; preds = %bb.n, %arm_pamax.exit46, %bb.j
  %i.w = xor i32 %i.c, 3
  br label %bb.z

bb.p:                                             ; preds = %bb.b
  switch i32 %i.c, label %bb.t [
    i32 2, label %bb.q
    i32 3, label %arm_pamax.exit.thread
  ]

bb.q:                                             ; preds = %bb.p
  %i.x = getelementptr i8, ptr %0, i64 95424
  %.val9.i47 = load i64, ptr %i.x, align 16
  %i.y = and i64 %.val9.i47, 33554432
  %.not.i48 = icmp eq i64 %i.y, 0
  br i1 %.not.i48, label %arm_pamax.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96368
  %i.aa = load i64, ptr %i.z, align 16
  %i.ab = and i64 %i.aa, 15                       ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, 7
  br i1 %i.ac, label %arm_pamax.exit52, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_pamax) #11
  unreachable

arm_pamax.exit52:                                 ; preds = %bb.r
  %10 = getelementptr inbounds nuw i8, ptr @pamax_map, i64 %i.ab
  %11 = load i8, ptr %10, align 1
  %i.ad = icmp ult i8 %11, 44
  br i1 %i.ad, label %arm_pamax.exit.thread, label %bb.t

bb.t:                                             ; preds = %arm_pamax.exit52, %bb.p
  %i.ae = xor i32 %i.c, 3
  br label %bb.z

bb.u:                                             ; preds = %bb.b
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1876, ptr noundef nonnull @__func__.check_s2_mmu_setup, ptr noundef null) #11
  unreachable

bb.v:                                             ; preds = %bb.a
  %i.af = icmp eq i32 %5, 9
  br i1 %i.af, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef 1884, ptr noundef nonnull @__PRETTY_FUNCTION__.check_s2_mmu_setup) #11
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ag = icmp samesign ugt i32 %i.c, 1
  br i1 %i.ag, label %arm_pamax.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ah = sub nuw nsw i32 2, %i.c
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %bb.d, %bb.o, %bb.t, %bb.e, %arm_pamax.exit, %bb.y
  %.036 = phi i32 [ %i.ah, %bb.y ], [ %i.f, %bb.e ], [ 0, %arm_pamax.exit ], [ -1, %bb.d ], [ %i.w, %bb.o ], [ %i.ae, %bb.t ], [ 3, %bb.i ] ; 2 uses
  %i.ai = sub nsw i32 3, %.036
  %i.aj = add nuw nsw i32 %5, 3
  %i.ak = mul nuw nsw i32 %i.ai, %5
  %i.al = add nuw nsw i32 %i.aj, %i.ak            ; 2 uses
  %.not39.not = icmp sgt i32 %4, %i.al
  br i1 %.not39.not, label %bb.aa, label %arm_pamax.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.am = add nuw nsw i32 %5, 4
  %i.an = add nuw nsw i32 %i.am, %i.al
  %.not40 = icmp samesign ugt i32 %4, %i.an
  br i1 %.not40, label %arm_pamax.exit.thread, label %bb.ab

arm_pamax.exit.thread:                            ; preds = %bb.q, %bb.k, %bb.f, %bb.z, %bb.aa, %bb.x, %bb.p, %arm_pamax.exit52, %bb.n, %arm_pamax.exit46, %bb.i, %arm_pamax.exit, %bb.d
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %arm_pamax.exit.thread
  %.0 = phi i32 [ -2147483648, %arm_pamax.exit.thread ], [ %.036, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @S1_ptw_translate(ptr noundef %0, ptr noundef nonnull initializes((32, 40)) %1, i64 noundef range(i64 0, -7) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.S1Translate, align 8        ; 10 uses
  %5 = alloca %struct.GetPhysAddrResult, align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call fastcc i32 @S2_security_space(i32 noundef %i.j, i32 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  store i32 %i.d, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = tail call fastcc i32 @ptw_idx_for_stage_2(ptr noundef %0, i32 noundef %i.d)
  store i32 %i.n, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.k, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 19
  store i8 1, ptr %i.q, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.r = call fastcc zeroext i1 @get_phys_addr_gpc(ptr noundef %0, ptr noundef %4, i64 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef %5, ptr noundef %3)
  br i1 %i.r, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = load i16, ptr %i.v, align 8
  %i.x = trunc i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = and i32 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ad, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !annotation !7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 78912 ; 2 uses
  store ptr %3, ptr %i.af, align 16
  %i.ag = and i32 %i.d, 31                        ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 22
  br i1 %i.ah, label %arm_to_core_mmu_idx.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.14, i32 noundef 1022, ptr noundef nonnull @__PRETTY_FUNCTION__.arm_to_core_mmu_idx) #11
  unreachable

arm_to_core_mmu_idx.exit:                         ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = call i32 @probe_access_full_mmu(ptr noundef nonnull %0, i64 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.a) #12
  store ptr null, ptr %i.af, align 16
  %i.ak = and i32 %i.aj, 64
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.thread74, label %bb.f, !prof !11

.thread74:                                        ; preds = %arm_to_core_mmu_idx.exit
  %i.al = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 8), align 8
  %i.ap = xor i64 %i.ao, -1
  %sext = shl i64 %i.ap, 32
  %i.aq = ashr exact i64 %sext, 32
  %i.ar = and i64 %i.aq, %2
  %i.as = or i64 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ax = lshr i8 %i.av, 1
  %.lobit = and i8 %i.ax, 1
  store i8 %.lobit, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 38
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = and i32 %i.bc, 3
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.bd, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.f:                                             ; preds = %arm_to_core_mmu_idx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.k

bb.g:                                             ; preds = %.thread74, %.thread
  %.264 = phi i8 [ %i.x, %.thread ], [ %i.az, %.thread74 ]
  %i.bf = zext nneg i32 %i.d to i64
  %i.bg = icmp ult i32 %i.d, 136
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @arm_mmuidx_table, i64 %i.bf
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 1024
  %.not79 = icmp eq i32 %i.bj, 0
  br i1 %.not79, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = call i64 @arm_hcr_el2_eff_secstate(ptr noundef %0, i32 noundef %i.bl) #12 ; 2 uses
  %i.bn = and i64 %i.bm, 4
  %.not69 = icmp eq i64 %i.bn, 0
  br i1 %.not69, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = and i64 %i.bm, 70368744177664
  %.not.i = icmp eq i64 %i.bo, 0
  %.0.in.v.i = select i1 %.not.i, i8 12, i8 4
  %.0.in.i = and i8 %.0.in.v.i, %.264
  %.0.i = icmp eq i8 %.0.in.i, 0
  br i1 %.0.i, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.i
  store i32 5, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 36
end_hunk_1
