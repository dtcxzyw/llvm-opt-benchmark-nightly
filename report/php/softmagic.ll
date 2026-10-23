Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/softmagic?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mget:bb.a
  br label %.sink.split.i151.i

bb.hc:                                            ; preds = %bb.gy
  %i.abt = add i64 %i.abk, %i.abm
  br label %.sink.split.i151.i

bb.hd:                                            ; preds = %bb.gy
  %i.abu = sub i64 %i.abk, %i.abm
  br label %.sink.split.i151.i

bb.he:                                            ; preds = %bb.gy
  %i.abv = mul i64 %i.abk, %i.abm
  br label %.sink.split.i151.i

bb.hf:                                            ; preds = %bb.gy
  %i.abw = udiv i64 %i.abk, %i.abm
  br label %.sink.split.i151.i

bb.hg:                                            ; preds = %bb.gy
  %i.abx = urem i64 %i.abk, %i.abm
  br label %.sink.split.i151.i

.sink.split.i151.i:                               ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz
  %.sink.i152.i = phi i64 [ %i.abq, %bb.gz ], [ %i.abr, %bb.ha ], [ %i.abs, %bb.hb ], [ %i.abt, %bb.hc ], [ %i.abu, %bb.hd ], [ %i.abv, %bb.he ], [ %i.abw, %bb.hf ], [ %i.abx, %bb.hg ] ; 2 uses
  store i64 %.sink.i152.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.hh

bb.hh:                                            ; preds = %.sink.split.i151.i, %cvt_flip.exit.thread.i
  %i.aby = phi i64 [ %.sink.i152.i, %.sink.split.i151.i ], [ %i.abk, %cvt_flip.exit.thread.i ]
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !52
  %i.acb = and i8 %i.aca, 64
  %.not24.i153.i = icmp eq i8 %i.acb, 0
  br i1 %.not24.i153.i, label %.critedge577, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.acc = xor i64 %i.aby, -1
  store i64 %i.acc, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

cvt_flip.exit.thread193.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.acd = tail call fastcc i32 @cvt_16(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.ace = icmp eq i32 %i.acd, -1
  br i1 %i.ace, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread187.i:                        ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.er, %bb.er, %bb.er
  %i.acf = load i32, ptr %i.e, align 8            ; 9 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !35 ; 2 uses
  %.not.i156.i = icmp eq i64 %i.ach, 0
  br i1 %.not.i156.i, label %bb.hu, label %bb.hj

bb.hj:                                            ; preds = %cvt_flip.exit.thread187.i
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.acj = load i8, ptr %i.aci, align 1, !tbaa !52
  %i.ack = and i8 %i.acj, 7
  %i.acl = trunc i64 %i.ach to i32                ; 10 uses
  switch i8 %i.ack, label %default.unreachable [
    i8 0, label %bb.hk
    i8 1, label %bb.hl
    i8 2, label %bb.hm
    i8 3, label %bb.hn
    i8 4, label %bb.ho
    i8 5, label %bb.hp
    i8 6, label %bb.hq
    i8 7, label %bb.hs
  ]

bb.hk:                                            ; preds = %bb.hj
  %i.acm = and i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.hl:                                            ; preds = %bb.hj
  %i.acn = or i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.hm:                                            ; preds = %bb.hj
  %i.aco = xor i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.hn:                                            ; preds = %bb.hj
  %i.acp = add i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.ho:                                            ; preds = %bb.hj
  %i.acq = sub i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.hp:                                            ; preds = %bb.hj
  %i.acr = mul i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.hq:                                            ; preds = %bb.hj
  %i.acs = icmp eq i32 %i.acl, 0
  br i1 %i.acs, label %cvt_16.exit.thread.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.act = udiv i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

bb.hs:                                            ; preds = %bb.hj
  %i.acu = icmp eq i32 %i.acl, 0
  br i1 %i.acu, label %cvt_16.exit.thread.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.acv = urem i32 %i.acf, %i.acl
  br label %.sink.split.i157.i

.sink.split.i157.i:                               ; preds = %bb.ht, %bb.hr, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %.sink.i158.i = phi i32 [ %i.acm, %bb.hk ], [ %i.acn, %bb.hl ], [ %i.aco, %bb.hm ], [ %i.acp, %bb.hn ], [ %i.acq, %bb.ho ], [ %i.acr, %bb.hp ], [ %i.act, %bb.hr ], [ %i.acv, %bb.ht ] ; 2 uses
  store i32 %.sink.i158.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.hu

bb.hu:                                            ; preds = %.sink.split.i157.i, %cvt_flip.exit.thread187.i
  %i.acw = phi i32 [ %.sink.i158.i, %.sink.split.i157.i ], [ %i.acf, %cvt_flip.exit.thread187.i ]
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.acy = load i8, ptr %i.acx, align 1, !tbaa !52
  %i.acz = and i8 %i.acy, 64
  %.not26.i159.i = icmp eq i8 %i.acz, 0
  br i1 %.not26.i159.i, label %.critedge577, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ada = xor i32 %i.acw, -1
  store i32 %i.ada, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

cvt_flip.exit.thread179.i:                        ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.er, %bb.er, %bb.er, %bb.er
  %i.adb = load i64, ptr %i.e, align 8            ; 9 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !35 ; 9 uses
  %.not.i163.i = icmp eq i64 %i.add, 0
  br i1 %.not.i163.i, label %bb.if, label %bb.hw

bb.hw:                                            ; preds = %cvt_flip.exit.thread179.i
  %i.ade = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !52
  %i.adg = and i8 %i.adf, 7
  switch i8 %i.adg, label %default.unreachable [
    i8 0, label %bb.hx
    i8 1, label %bb.hy
    i8 2, label %bb.hz
    i8 3, label %bb.ia
    i8 4, label %bb.ib
    i8 5, label %bb.ic
    i8 6, label %bb.id
    i8 7, label %bb.ie
  ]

bb.hx:                                            ; preds = %bb.hw
  %i.adh = and i64 %i.add, %i.adb
  br label %.sink.split.i164.i

bb.hy:                                            ; preds = %bb.hw
  %i.adi = or i64 %i.add, %i.adb
  br label %.sink.split.i164.i

bb.hz:                                            ; preds = %bb.hw
  %i.adj = xor i64 %i.add, %i.adb
  br label %.sink.split.i164.i

bb.ia:                                            ; preds = %bb.hw
  %i.adk = add i64 %i.add, %i.adb
  br label %.sink.split.i164.i

bb.ib:                                            ; preds = %bb.hw
  %i.adl = sub i64 %i.adb, %i.add
  br label %.sink.split.i164.i

bb.ic:                                            ; preds = %bb.hw
  %i.adm = mul i64 %i.add, %i.adb
  br label %.sink.split.i164.i

bb.id:                                            ; preds = %bb.hw
  %i.adn = udiv i64 %i.adb, %i.add
  br label %.sink.split.i164.i

bb.ie:                                            ; preds = %bb.hw
  %i.ado = urem i64 %i.adb, %i.add
  br label %.sink.split.i164.i

.sink.split.i164.i:                               ; preds = %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx
  %.sink.i165.i = phi i64 [ %i.adh, %bb.hx ], [ %i.adi, %bb.hy ], [ %i.adj, %bb.hz ], [ %i.adk, %bb.ia ], [ %i.adl, %bb.ib ], [ %i.adm, %bb.ic ], [ %i.adn, %bb.id ], [ %i.ado, %bb.ie ] ; 2 uses
  store i64 %.sink.i165.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.if

bb.if:                                            ; preds = %.sink.split.i164.i, %cvt_flip.exit.thread179.i
  %i.adp = phi i64 [ %.sink.i165.i, %.sink.split.i164.i ], [ %i.adb, %cvt_flip.exit.thread179.i ]
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !52
  %i.ads = and i8 %i.adr, 64
  %.not24.i166.i = icmp eq i8 %i.ads, 0
  br i1 %.not24.i166.i, label %.critedge577, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.adt = xor i64 %i.adp, -1
  store i64 %i.adt, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

bb.ih:                                            ; preds = %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i
  %i.adu = load i16, ptr %i.e, align 8
  %19 = zext i16 %i.adu to i32
  %20 = shl nuw i32 %19, 16
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 139
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %i.adv = zext i8 %22 to i32
  %i.adw = shl nuw nsw i32 %i.adv, 8
  %23 = or disjoint i32 %i.adw, %20
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 138
  %24 = load i8, ptr %i.adx, align 2, !tbaa !35
  %i.ady = zext i8 %24 to i32
  %i.adz = or disjoint i32 %23, %i.ady            ; 10 uses
  store i32 %i.adz, ptr %i.e, align 8, !tbaa !35
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !35 ; 2 uses
  %.not.i169.i = icmp eq i64 %i.aeb, 0
  br i1 %.not.i169.i, label %bb.it, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aed = load i8, ptr %i.aec, align 1, !tbaa !52
  %i.aee = and i8 %i.aed, 7
  %i.aef = trunc i64 %i.aeb to i32                ; 10 uses
  switch i8 %i.aee, label %default.unreachable [
    i8 0, label %bb.ij
    i8 1, label %bb.ik
    i8 2, label %bb.il
    i8 3, label %bb.im
    i8 4, label %bb.in
    i8 5, label %bb.io
    i8 6, label %bb.ip
    i8 7, label %bb.ir
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.aeg = and i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.ik:                                            ; preds = %bb.ii
  %i.aeh = or i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.il:                                            ; preds = %bb.ii
  %i.aei = xor i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.im:                                            ; preds = %bb.ii
  %i.aej = add i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.in:                                            ; preds = %bb.ii
  %i.aek = sub i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.io:                                            ; preds = %bb.ii
  %i.ael = mul i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.ip:                                            ; preds = %bb.ii
  %i.aem = icmp eq i32 %i.aef, 0
  br i1 %i.aem, label %cvt_16.exit.thread.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aen = udiv i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

bb.ir:                                            ; preds = %bb.ii
  %i.aeo = icmp eq i32 %i.aef, 0
  br i1 %i.aeo, label %cvt_16.exit.thread.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aep = urem i32 %i.adz, %i.aef
  br label %.sink.split.i170.i

.sink.split.i170.i:                               ; preds = %bb.is, %bb.iq, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij
  %.sink.i171.i = phi i32 [ %i.aeg, %bb.ij ], [ %i.aeh, %bb.ik ], [ %i.aei, %bb.il ], [ %i.aej, %bb.im ], [ %i.aek, %bb.in ], [ %i.ael, %bb.io ], [ %i.aen, %bb.iq ], [ %i.aep, %bb.is ] ; 2 uses
  store i32 %.sink.i171.i, ptr %i.e, align 8, !tbaa !35
  br label %bb.it

bb.it:                                            ; preds = %.sink.split.i170.i, %bb.ih
  %i.aeq = phi i32 [ %.sink.i171.i, %.sink.split.i170.i ], [ %i.adz, %bb.ih ]
  %i.aer = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aes = load i8, ptr %i.aer, align 1, !tbaa !52
  %i.aet = and i8 %i.aes, 64
  %.not26.i172.i = icmp eq i8 %i.aet, 0
  br i1 %.not26.i172.i, label %.critedge577, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aeu = xor i32 %i.aeq, -1
  store i32 %i.aeu, ptr %i.e, align 8, !tbaa !35
  br label %.critedge577

bb.iv:                                            ; preds = %cvt_flip.exit.i
  %i.aev = tail call fastcc i32 @cvt_float(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.aew = icmp eq i32 %i.aev, -1
  br i1 %i.aew, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread196.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.aex = load i32, ptr %i.e, align 8
  %i.aey = tail call i32 @llvm.bswap.i32(i32 %i.aex)
  store i32 %i.aey, ptr %i.e, align 8, !tbaa !35
  %i.aez = tail call fastcc i32 @cvt_float(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.afa = icmp eq i32 %i.aez, -1
  br i1 %i.afa, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread199.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.afb = tail call fastcc i32 @cvt_float(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.afc = icmp eq i32 %i.afb, -1
  br i1 %i.afc, label %cvt_16.exit.thread.i, label %.critedge577

bb.iw:                                            ; preds = %cvt_flip.exit.i
  %i.afd = tail call fastcc i32 @cvt_double(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.afe = icmp eq i32 %i.afd, -1
  br i1 %i.afe, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread202.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.aff = load i8, ptr %i.e, align 8, !tbaa !35
  %i.afg = zext i8 %i.aff to i64
  %i.afh = shl nuw i64 %i.afg, 56
  %i.afi = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !35
  %i.afk = zext i8 %i.afj to i64
  %i.afl = shl nuw nsw i64 %i.afk, 48
  %i.afm = or disjoint i64 %i.afl, %i.afh
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.afo = load i8, ptr %i.afn, align 2, !tbaa !35
  %i.afp = zext i8 %i.afo to i64
  %i.afq = shl nuw nsw i64 %i.afp, 40
  %i.afr = or disjoint i64 %i.afm, %i.afq
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !35
  %i.afu = zext i8 %i.aft to i64
  %i.afv = shl nuw nsw i64 %i.afu, 32
  %i.afw = or disjoint i64 %i.afr, %i.afv
  %i.afx = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.afy = load i8, ptr %i.afx, align 4, !tbaa !35
  %i.afz = zext i8 %i.afy to i64
  %i.aga = shl nuw nsw i64 %i.afz, 24
  %i.agb = or disjoint i64 %i.afw, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.agd = load i8, ptr %i.agc, align 1, !tbaa !35
  %i.age = zext i8 %i.agd to i64
  %i.agf = shl nuw nsw i64 %i.age, 16
  %i.agg = or disjoint i64 %i.agb, %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.agi = load i8, ptr %i.agh, align 2, !tbaa !35
  %i.agj = zext i8 %i.agi to i64
  %i.agk = shl nuw nsw i64 %i.agj, 8
  %i.agl = or i64 %i.agg, %i.agk
  %i.agm = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !35
  %i.ago = zext i8 %i.agn to i64
  %i.agp = or i64 %i.agl, %i.ago
  store i64 %i.agp, ptr %i.e, align 8, !tbaa !35
  %i.agq = tail call fastcc i32 @cvt_double(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.agr = icmp eq i32 %i.agq, -1
  br i1 %i.agr, label %cvt_16.exit.thread.i, label %.critedge577

cvt_flip.exit.thread205.i:                        ; preds = %cvt_flip.exit.i, %bb.er
  %i.ags = tail call fastcc i32 @cvt_double(ptr noundef nonnull %i.e, ptr noundef nonnull %1)
  %i.agt = icmp eq i32 %i.ags, -1
  br i1 %i.agt, label %cvt_16.exit.thread.i, label %.critedge577

bb.ix:                                            ; preds = %cvt_flip.exit.i
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, i32 noundef %i.tn) #20
  br label %.critedge577

cvt_16.exit.thread.i:                             ; preds = %cvt_flip.exit.thread205.i, %cvt_flip.exit.thread202.i, %bb.iw, %cvt_flip.exit.thread199.i, %cvt_flip.exit.thread196.i, %bb.iv, %bb.ir, %bb.ip, %bb.hs, %bb.hq, %cvt_flip.exit.thread193.i, %bb.gu, %bb.gs, %cvt_flip.exit.thread190.i, %bb.fr, %bb.fp, %bb.fd, %bb.fb, %bb.es
  tail call void (ptr, ptr, ...) @file_magerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #20
  br label %.critedge577

.critedge577:                                     ; preds = %cvt_flip.exit592.thread634.thread, %bb.iu, %bb.it, %bb.if, %bb.hu, %bb.hh, %bb.gw, %bb.gf, %bb.ft, %bb.ff, %._crit_edge.i, %cvt_flip.exit.thread202.i, %bb.iw, %cvt_flip.exit.thread199.i, %cvt_flip.exit.thread196.i, %bb.iv, %bb.ig, %bb.hi, %bb.hv, %cvt_flip.exit.thread193.i, %bb.gg, %bb.gx, %cvt_flip.exit.thread190.i, %bb.fg, %bb.gh, %bb.fu, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %cvt_flip.exit.i, %bb.es, %cvt_flip.exit.thread205.i, %cvt_16.exit.thread.i, %bb.ix, %bb.gj, %bb.gi, %.thread, %bb.cs, %bb.cq, %bb.bs, %cvt_flip.exit592.thread, %bb.cw, %bb.cz, %bb.bt, %cvt_flip.exit592.thread624, %bb.bx, %cvt_flip.exit592.thread627, %bb.by, %bb.bz, %bb.ca, %cvt_flip.exit592.thread630, %bb.cd, %cvt_flip.exit592.thread634, %bb.cg, %bb.ch, %bb.cl, %bb.cm, %bb.cn, %cvt_flip.exit592.thread638, %bb.co, %cvt_flip.exit592.thread641, %bb.cp, %bb.cr, %bb.ct, %bb.cx, %bb.da, %bb.ba, %bb.ay, %cvt_flip.exit.thread615, %bb.ar, %cvt_flip.exit.thread612, %cvt_flip.exit.thread609, %bb.aj, %cvt_flip.exit.thread606, %cvt_flip.exit.thread603, %bb.ab, %bb.x, %cvt_flip.exit.thread, %cvt_flip.exit.thread618, %bb.ax, %bb.ep, %bb.eo, %bb.em, %bb.en, %bb.ee, %bb.ec, %bb.ed, %bb.ea, %bb.eb, %bb.dx, %bb.dy, %bb.dt, %bb.do, %bb.dn, %bb.dm, %bb.dk, %bb.dl, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.ei, %bb.eg, %bb.d, %bb.b
  %.3 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %.1439, %bb.ed ], [ 1, %bb.em ], [ 1, %.thread ], [ 1, %bb.eo ], [ 0, %bb.df ], [ 0, %bb.dg ], [ 0, %bb.dh ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dk ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.cs ], [ -1, %bb.do ], [ -1, %bb.dt ], [ -1, %bb.dx ], [ -1, %bb.ea ], [ %.1439, %bb.ec ], [ -1, %bb.eg ], [ -1, %bb.ei ], [ 0, %bb.ee ], [ %i.th, %bb.en ], [ %., %bb.ep ], [ 0, %bb.dl ], [ -1, %bb.dy ], [ -1, %bb.eb ], [ 0, %bb.ax ], [ 0, %cvt_flip.exit.thread618 ], [ 0, %cvt_flip.exit.thread ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %cvt_flip.exit.thread603 ], [ 0, %cvt_flip.exit.thread606 ], [ 0, %bb.aj ], [ 0, %cvt_flip.exit.thread609 ], [ 0, %cvt_flip.exit.thread612 ], [ 0, %bb.ar ], [ 0, %cvt_flip.exit.thread615 ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %bb.da ], [ 0, %bb.cx ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.cp ], [ 0, %cvt_flip.exit592.thread641 ], [ 0, %bb.co ], [ 0, %cvt_flip.exit592.thread638 ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %cvt_flip.exit592.thread634 ], [ 0, %bb.cd ], [ 0, %cvt_flip.exit592.thread630 ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.by ], [ 0, %cvt_flip.exit592.thread627 ], [ 0, %bb.bx ], [ 0, %cvt_flip.exit592.thread624 ], [ 0, %bb.bt ], [ 0, %bb.cz ], [ 0, %bb.cw ], [ 0, %cvt_flip.exit592.thread ], [ 0, %bb.bs ], [ 0, %bb.cq ], [ 0, %bb.gi ], [ 0, %cvt_16.exit.thread.i ], [ 0, %bb.ix ], [ 0, %bb.gj ], [ 1, %cvt_flip.exit.thread205.i ], [ 1, %bb.es ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %cvt_flip.exit.i ], [ 1, %bb.fu ], [ 1, %bb.gh ], [ 1, %bb.fg ], [ 1, %cvt_flip.exit.thread190.i ], [ 1, %bb.gx ], [ 1, %bb.gg ], [ 1, %cvt_flip.exit.thread193.i ], [ 1, %bb.hv ], [ 1, %bb.hi ], [ 1, %bb.ig ], [ 1, %bb.iv ], [ 1, %cvt_flip.exit.thread196.i ], [ 1, %cvt_flip.exit.thread199.i ], [ 1, %bb.iw ], [ 1, %cvt_flip.exit.thread202.i ], [ 1, %._crit_edge.i ], [ 1, %bb.ff ], [ 1, %bb.ft ], [ 1, %bb.gf ], [ 1, %bb.gw ], [ 1, %bb.hh ], [ 1, %bb.hu ], [ 1, %bb.if ], [ 1, %bb.it ], [ 1, %bb.iu ], [ 0, %cvt_flip.exit592.thread634.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @magiccheck(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 6 uses
  %3 = alloca %struct._zval_struct, align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = load i8, ptr %i.d, align 2, !tbaa !34    ; 2 uses
  %i.f = trunc i64 %i.b to i8                     ; 2 uses
  %i.g = bitcast i64 %i.b to double               ; 4 uses
  %i.h = trunc i64 %i.b to i32
  %i.i = bitcast i32 %i.h to float                ; 4 uses
  switch i8 %i.e, label %bb.bw [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 7, label %bb.c
    i8 10, label %bb.c
    i8 53, label %bb.c
    i8 54, label %bb.c
    i8 55, label %bb.c
    i8 56, label %bb.c
    i8 57, label %bb.c
    i8 58, label %bb.c
    i8 4, label %bb.d
    i8 8, label %bb.d
    i8 11, label %bb.d
    i8 23, label %bb.d
    i8 6, label %bb.d
    i8 9, label %bb.d
    i8 12, label %bb.d
end_hunk_0
