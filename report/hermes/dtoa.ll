inline.NumInlined: 101
inline.NumDeleted: 16
begin_hunk_0_@hermes_g_strtod:bb.a

cmp.exit644.thread.i:                             ; preds = %bb.ft, %bb.fs, %bb.fo, %cmp.exit644.thread728._crit_edge.i, %cmp.exit644.i, %bb.eb, %bb.dx, %bb.dw, %.thread725.i, %bb.du, %bb.ec, %cmp.exit644.thread728._crit_edge.i.thread, %bb.fd, %bb.ev, %bb.en, %bb.em, %.loopexit, %bb.ek
  %.sroa.17.0.i = phi i32 [ %i.xz, %bb.ev ], [ 0, %cmp.exit644.thread728._crit_edge.i.thread ], [ %i.us, %bb.em ], [ 0, %bb.ek ], [ 0, %.loopexit ], [ 0, %bb.fd ], [ %i.us, %bb.en ], [ 0, %bb.ec ], [ %i.us, %.thread725.i ], [ %i.us, %bb.du ], [ %i.us, %bb.fo ], [ %i.us, %bb.fs ], [ 0, %bb.ft ], [ 0, %bb.eb ], [ 0, %cmp.exit644.i ], [ 0, %cmp.exit644.thread728._crit_edge.i ], [ 0, %bb.dx ], [ 0, %bb.dw ]
  %.5.i = phi ptr [ %i.uq, %bb.ev ], [ %i.uq, %cmp.exit644.thread728._crit_edge.i.thread ], [ %i.uq, %bb.em ], [ %i.uq, %bb.ek ], [ %i.uq, %.loopexit ], [ %i.uq, %bb.fd ], [ %i.uq, %bb.en ], [ %i.vs, %bb.ec ], [ %i.uq, %.thread725.i ], [ %i.uq, %bb.du ], [ %i.uq, %bb.fo ], [ %i.uq, %bb.fs ], [ %i.uq, %bb.ft ], [ %i.vs, %bb.eb ], [ %i.vs, %cmp.exit644.i ], [ %i.vs, %cmp.exit644.thread728._crit_edge.i ], [ %i.uq, %bb.dx ], [ %i.uq, %bb.dw ] ; 6 uses
  %.not588.i = phi i1 [ true, %bb.ev ], [ true, %cmp.exit644.thread728._crit_edge.i.thread ], [ true, %bb.em ], [ true, %bb.ek ], [ true, %.loopexit ], [ true, %bb.fd ], [ true, %bb.en ], [ true, %bb.ec ], [ true, %.thread725.i ], [ false, %bb.du ], [ false, %bb.fo ], [ true, %bb.fs ], [ true, %bb.ft ], [ true, %bb.eb ], [ true, %cmp.exit644.i ], [ true, %cmp.exit644.thread728._crit_edge.i ], [ true, %bb.dx ], [ true, %bb.dw ]
  %.not.i670.i = icmp eq ptr %.4421.i, null
  br i1 %.not.i670.i, label %Bfree.exit671.i, label %bb.gg

bb.gg:                                            ; preds = %cmp.exit644.thread.i
  %i.aci = getelementptr inbounds nuw i8, ptr %.4421.i, i64 8
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !29 ; 2 uses
  %i.ack = icmp sgt i32 %i.acj, 7
  br i1 %i.ack, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call void @free(ptr noundef nonnull %.4421.i) #17
  br label %Bfree.exit671.i

bb.gi:                                            ; preds = %bb.gg
  %i.acl = sext i32 %i.acj to i64
  %i.acm = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.acl ; 2 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !13
  store ptr %i.acn, ptr %.4421.i, align 8, !tbaa !15
  store ptr %.4421.i, ptr %i.acm, align 8, !tbaa !13
  br label %Bfree.exit671.i

Bfree.exit671.i:                                  ; preds = %bb.gi, %bb.gh, %cmp.exit644.thread.i
  %.not.i672.i = icmp eq ptr %.4414.i, null
  br i1 %.not.i672.i, label %Bfree.exit673.i, label %bb.gj

bb.gj:                                            ; preds = %Bfree.exit671.i
  %i.aco = getelementptr inbounds nuw i8, ptr %.4414.i, i64 8
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !29 ; 2 uses
  %i.acq = icmp sgt i32 %i.acp, 7
  br i1 %i.acq, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  call void @free(ptr noundef nonnull %.4414.i) #17
  br label %Bfree.exit673.i

bb.gl:                                            ; preds = %bb.gj
  %i.acr = sext i32 %i.acp to i64
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.acr ; 2 uses
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !13
  store ptr %i.act, ptr %.4414.i, align 8, !tbaa !15
  store ptr %.4414.i, ptr %i.acs, align 8, !tbaa !13
  br label %Bfree.exit673.i

Bfree.exit673.i:                                  ; preds = %bb.gl, %bb.gk, %Bfree.exit671.i
  %.not.i674.i = icmp eq ptr %.4406.i, null
  br i1 %.not.i674.i, label %Bfree.exit675.i, label %bb.gm

bb.gm:                                            ; preds = %Bfree.exit673.i
  %i.acu = getelementptr inbounds nuw i8, ptr %.4406.i, i64 8
  %i.acv = load i32, ptr %i.acu, align 8, !tbaa !29 ; 2 uses
  %i.acw = icmp sgt i32 %i.acv, 7
  br i1 %i.acw, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void @free(ptr noundef nonnull %.4406.i) #17
  br label %Bfree.exit675.i

bb.go:                                            ; preds = %bb.gm
  %i.acx = sext i32 %i.acv to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.acx ; 2 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !13
  store ptr %i.acz, ptr %.4406.i, align 8, !tbaa !15
  store ptr %.4406.i, ptr %i.acy, align 8, !tbaa !13
  br label %Bfree.exit675.i

Bfree.exit675.i:                                  ; preds = %bb.go, %bb.gn, %Bfree.exit673.i
  %.not.i676.i = icmp eq ptr %.234.lcssa.i.i, null
  br i1 %.not.i676.i, label %Bfree.exit677.i, label %bb.gp

bb.gp:                                            ; preds = %Bfree.exit675.i
  %i.ada = load i32, ptr %i.qo, align 8, !tbaa !29 ; 2 uses
  %i.adb = icmp sgt i32 %i.ada, 7
  br i1 %i.adb, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @free(ptr noundef nonnull %.234.lcssa.i.i) #17
  br label %Bfree.exit677.i

bb.gr:                                            ; preds = %bb.gp
  %i.adc = sext i32 %i.ada to i64
  %i.add = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.adc ; 2 uses
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !13
  store ptr %i.ade, ptr %.234.lcssa.i.i, align 8, !tbaa !15
  store ptr %.234.lcssa.i.i, ptr %i.add, align 8, !tbaa !13
  br label %Bfree.exit677.i

Bfree.exit677.i:                                  ; preds = %Bfree.exit675.i, %bb.gq, %bb.gr
  %i.adf = getelementptr inbounds nuw i8, ptr %.5.i, i64 8
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !29 ; 2 uses
  %i.adh = icmp sgt i32 %i.adg, 7
  br i1 %i.adh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %Bfree.exit677.i
  call void @free(ptr noundef nonnull %.5.i) #17
  br label %Bfree.exit679.i

bb.gt:                                            ; preds = %Bfree.exit677.i
  %i.adi = sext i32 %i.adg to i64
  %i.adj = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.adi ; 2 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !13
  store ptr %i.adk, ptr %.5.i, align 8, !tbaa !15
  store ptr %.5.i, ptr %i.adj, align 8, !tbaa !13
  br label %Bfree.exit679.i

Bfree.exit679.i:                                  ; preds = %bb.gt, %bb.gs
  br i1 %.not588.i, label %bb.ix, label %bb.gu

bb.gu:                                            ; preds = %Bfree.exit679.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.adl = add i32 %i.ej, %.5489.i                ; 5 uses
  %i.adm = add nsw i32 %i.adl, -1
  %i.adn = load double, ptr %2, align 8, !tbaa !19
  %i.ado = fcmp une double %i.adn, 0.000000e+00   ; 2 uses
  br i1 %i.ado, label %bb.hb, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.adp = load ptr, ptr %i.qr, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !15 ; 2 uses
  store ptr %i.adq, ptr %i.qr, align 8, !tbaa !13
  br label %i2b.exit.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.adr = load ptr, ptr %i.h, align 8, !tbaa !11 ; 3 uses
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = sub i64 %i.ads, %i.qv
  %i.adu = ashr exact i64 %i.adt, 3
  %i.adv = add nsw i64 %i.adu, 5
  %i.adw = load i32, ptr %3, align 8, !tbaa !7
  %i.adx = sext i32 %i.adw to i64
  %.not26.i.i.i.i = icmp sgt i64 %i.adv, %i.adx
  br i1 %.not26.i.i.i.i, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adr, i64 40
  store ptr %i.ady, ptr %i.h, align 8, !tbaa !11
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.adz = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19
  store i32 1, ptr %i.qw, align 4, !tbaa !12
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.0.i.i.i.i = phi ptr [ %i.adr, %bb.gy ], [ %i.adz, %bb.gz ] ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i32 1, ptr %i.aea, align 8, !tbaa !29
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 12
  store i32 2, ptr %i.aeb, align 4, !tbaa !38
  br label %i2b.exit.i.i

i2b.exit.i.i:                                     ; preds = %bb.ha, %bb.gw
  %i.aec = phi ptr [ %i.adq, %bb.gw ], [ null, %bb.ha ]
  %.1.i.i.i.i = phi ptr [ %i.adp, %bb.gw ], [ %.0.i.i.i.i, %bb.ha ] ; 4 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 20
  %i.aee = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  store i32 0, ptr %i.aee, align 8, !tbaa !39
  %i.aef = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 24
  store i32 1, ptr %i.aef, align 8, !tbaa !3
  store i32 1, ptr %i.aed, align 4, !tbaa !40
  store i32 1, ptr %i.a, align 4, !tbaa !3
  store i32 57671680, ptr %i.qz, align 4, !tbaa !19
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gu
  %i.aeg = call fastcc ptr @d2b(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef %i.b, ptr noundef %i.a)
  %i.aeh = load i32, ptr %i.b, align 4, !tbaa !3
  %i.aei = sub nsw i32 %i.aeh, %.sroa.44711.1.i   ; 2 uses
  %i.aej = load i32, ptr %i.a, align 4, !tbaa !3
  %i.aek = sub nsw i32 53, %i.aej
  %i.ael = add nsw i32 %i.aei, 1074
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %i.aek, i32 %i.ael) ; 2 uses
  %.neg218.i.i = xor i32 %spec.select.i.i, -1
  %i.aem = add nsw i32 %spec.select.i.i, 1
  %i.aen = call fastcc ptr @lshift(ptr noundef nonnull %3, ptr noundef %i.aeg, i32 noundef %i.aem) ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 24 ; 2 uses
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !3
  %i.aeq = or i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aeo, align 8, !tbaa !3
  %i.aer = icmp eq i32 %.sroa.17.0.i, 0
  %.pre.i = load ptr, ptr %i.qr, align 8, !tbaa !13
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %i2b.exit.i.i
  %i.aes = phi ptr [ %i.aec, %i2b.exit.i.i ], [ %.pre.i, %bb.hb ] ; 3 uses
  %i.aet = phi i32 [ -1075, %i2b.exit.i.i ], [ %i.aei, %bb.hb ]
  %.0111.i.i = phi i1 [ true, %i2b.exit.i.i ], [ %i.aer, %bb.hb ] ; 3 uses
  %.1108.neg219.i.i = phi i32 [ 0, %i2b.exit.i.i ], [ %.neg218.i.i, %bb.hb ]
  %.0102.i.i = phi ptr [ %.1.i.i.i.i, %i2b.exit.i.i ], [ %i.aen, %bb.hb ] ; 3 uses
  %reass.sub183 = sub i32 %i.aet, %i.adl
  %.neg185.i.i = add i32 %reass.sub183, 1
  %i.aeu = add i32 %.neg185.i.i, %.1108.neg219.i.i ; 4 uses
  store i32 %i.aeu, ptr %i.b, align 4, !tbaa !3
  %.not.i.i156.i.i = icmp eq ptr %i.aes, null
  br i1 %.not.i.i156.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aev = load ptr, ptr %i.aes, align 8, !tbaa !15
  store ptr %i.aev, ptr %i.qr, align 8, !tbaa !13
  br label %i2b.exit160.i.i

bb.he:                                            ; preds = %bb.hc
  %i.aew = load ptr, ptr %i.h, align 8, !tbaa !11 ; 3 uses
  %i.aex = ptrtoint ptr %i.aew to i64
  %i.aey = sub i64 %i.aex, %i.qv
  %i.aez = ashr exact i64 %i.aey, 3
  %i.afa = add nsw i64 %i.aez, 5
  %i.afb = load i32, ptr %3, align 8, !tbaa !7
  %i.afc = sext i32 %i.afb to i64
  %.not26.i.i158.i.i = icmp sgt i64 %i.afa, %i.afc
  br i1 %.not26.i.i158.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aew, i64 40
  store ptr %i.afd, ptr %i.h, align 8, !tbaa !11
  br label %bb.hh

bb.hg:                                            ; preds = %bb.he
  %i.afe = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19
  store i32 1, ptr %i.qw, align 4, !tbaa !12
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.0.i.i159.i.i = phi ptr [ %i.aew, %bb.hf ], [ %i.afe, %bb.hg ] ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.0.i.i159.i.i, i64 8
  store i32 1, ptr %i.aff, align 8, !tbaa !29
  %i.afg = getelementptr inbounds nuw i8, ptr %.0.i.i159.i.i, i64 12
  store i32 2, ptr %i.afg, align 4, !tbaa !38
  br label %i2b.exit160.i.i

i2b.exit160.i.i:                                  ; preds = %bb.hh, %bb.hd
  %.1.i.i157.i.i = phi ptr [ %i.aes, %bb.hd ], [ %.0.i.i159.i.i, %bb.hh ] ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.1.i.i157.i.i, i64 20
  %i.afi = getelementptr inbounds nuw i8, ptr %.1.i.i157.i.i, i64 16
  store i32 0, ptr %i.afi, align 8, !tbaa !39
  %i.afj = getelementptr inbounds nuw i8, ptr %.1.i.i157.i.i, i64 24
  store i32 1, ptr %i.afj, align 8, !tbaa !3
  store i32 1, ptr %i.afh, align 4, !tbaa !40
  %i.afk = icmp sgt i32 %i.adl, 1
  br i1 %i.afk, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %i2b.exit160.i.i
  %i.afl = call fastcc ptr @pow5mult(ptr noundef nonnull %3, ptr noundef nonnull %.1.i.i157.i.i, i32 noundef %i.adm)
  br label %bb.hl

bb.hj:                                            ; preds = %i2b.exit160.i.i
  %.not.i680.i = icmp eq i32 %i.adl, 1
  br i1 %.not.i680.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.afm = sub nsw i32 1, %i.adl
  %i.afn = call fastcc ptr @pow5mult(ptr noundef nonnull %3, ptr noundef nonnull %.0102.i.i, i32 noundef %i.afm)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.0103.i.i = phi ptr [ %i.afl, %bb.hi ], [ %.1.i.i157.i.i, %bb.hk ], [ %.1.i.i157.i.i, %bb.hj ] ; 4 uses
  %.1.i681.i = phi ptr [ %.0102.i.i, %bb.hi ], [ %i.afn, %bb.hk ], [ %.0102.i.i, %bb.hj ] ; 2 uses
  %4 = icmp sgt i32 %i.aeu, 0
  %5 = sub nsw i32 0, %i.aeu
  %.0118.i.i = select i1 %4, i32 0, i32 %5        ; 2 uses
  %.0105.i.i = call i32 @llvm.smax.i32(i32 %i.aeu, i32 0)
  %i.afo = getelementptr inbounds nuw i8, ptr %.0103.i.i, i64 20
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !40
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr [4 x i8], ptr %.0103.i.i, i64 %i.afq
  %i.afs = getelementptr i8, ptr %i.afr, i64 20
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !3 ; 3 uses
  %.not.i.i161.i.i = icmp ult i32 %i.aft, 65536   ; 2 uses
  %i.afu = shl nuw i32 %i.aft, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i161.i.i, i32 %i.afu, i32 %i.aft ; 3 uses
  %spec.select26.i.i.i.i = select i1 %.not.i.i161.i.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i.i.i = icmp ult i32 %spec.select.i.i.i.i, 16777216 ; 2 uses
  %i.afv = or disjoint i32 %spec.select26.i.i.i.i, 8
  %i.afw = shl nuw i32 %spec.select.i.i.i.i, 8
  %.117.i.i.i.i = select i1 %.not21.i.i.i.i, i32 %i.afw, i32 %spec.select.i.i.i.i ; 3 uses
  %.1.i.i162.i.i = select i1 %.not21.i.i.i.i, i32 %i.afv, i32 %spec.select26.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp ult i32 %.117.i.i.i.i, 268435456 ; 2 uses
  %i.afx = or disjoint i32 %.1.i.i162.i.i, 4
  %i.afy = shl nuw i32 %.117.i.i.i.i, 4
  %.218.i.i.i.i = select i1 %.not22.i.i.i.i, i32 %i.afy, i32 %.117.i.i.i.i ; 3 uses
  %.2.i.i.i.i = select i1 %.not22.i.i.i.i, i32 %i.afx, i32 %.1.i.i162.i.i ; 2 uses
  %.not23.i.i.i.i = icmp ult i32 %.218.i.i.i.i, 1073741824 ; 2 uses
  %i.afz = or disjoint i32 %.2.i.i.i.i, 2
  %i.aga = shl nuw i32 %.218.i.i.i.i, 2
  %.319.i.i.i.i = select i1 %.not23.i.i.i.i, i32 %i.aga, i32 %.218.i.i.i.i ; 2 uses
  %.3.i.i.i.i = select i1 %.not23.i.i.i.i, i32 %i.afz, i32 %.2.i.i.i.i ; 2 uses
  %i.agb = add nuw nsw i32 %.3.i.i.i.i, 1
  %.not25.i.i.i.i = icmp ult i32 %.319.i.i.i.i, 1073741824
  %spec.select27.i.i.i.i = select i1 %.not25.i.i.i.i, i32 1073741824, i32 %i.agb
  %.not2428.i.i.i.i = icmp slt i32 %.319.i.i.i.i, 0
  %.020.i.i.i.i = select i1 %.not2428.i.i.i.i, i32 %.3.i.i.i.i, i32 %spec.select27.i.i.i.i
  %6 = call i32 @llvm.smax.i32(i32 range(i32 -2147483646, -2147483648) %.0118.i.i, i32 0)
  %reass.sub184 = sub nsw i32 %.020.i.i.i.i, %6
  %spec.select.i.i.i = add nsw i32 %reass.sub184, 28
  %i.agc = and i32 %spec.select.i.i.i, 31         ; 2 uses
  %i.agd = add nuw nsw i32 %i.agc, %.0105.i.i     ; 2 uses
  %.not184.i.i = icmp eq i32 %i.agd, 0
  br i1 %.not184.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.age = call fastcc ptr @lshift(ptr noundef nonnull %3, ptr noundef %.1.i681.i, i32 noundef %i.agd)
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %.2.i.i = phi ptr [ %i.age, %bb.hm ], [ %.1.i681.i, %bb.hl ] ; 3 uses
  %7 = add nuw nsw i32 %i.agc, %.0118.i.i         ; 2 uses
  %.not136.i.i = icmp eq i32 %7, 0
  br i1 %.not136.i.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.agf = call fastcc ptr @lshift(ptr noundef nonnull %3, ptr noundef nonnull %.0103.i.i, i32 noundef %7)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.1104.i.i = phi ptr [ %i.agf, %bb.ho ], [ %.0103.i.i, %bb.hn ] ; 9 uses
  %i.agg = call fastcc i32 @quorem(ptr noundef %.2.i.i, ptr noundef %.1104.i.i) ; 2 uses
  %.not137.i.i = icmp eq i32 %i.agg, 0
  br i1 %.not137.i.i, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.agh = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef %.2.i.i, i32 noundef 10, i32 noundef 0) ; 2 uses
  %i.agi = call fastcc i32 @quorem(ptr noundef %i.agh, ptr noundef %.1104.i.i)
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.0112.i.i = phi i32 [ %i.agg, %bb.hp ], [ %i.agi, %bb.hq ] ; 2 uses
  %.3.i.i = phi ptr [ %.2.i.i, %bb.hp ], [ %i.agh, %bb.hq ] ; 2 uses
  %i.agj = icmp sgt i32 %spec.select597.i, 0
  br i1 %i.agj, label %.lr.ph.preheader.i.i, label %._crit_edge.i682.i

.lr.ph.preheader.i.i:                             ; preds = %bb.hr
  %wide.trip.count.i.i = zext nneg i32 %spec.select597.i to i64
  br label %.lr.ph.i687.i

.lr.ph.i687.i:                                    ; preds = %bb.hv, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.hv ] ; 2 uses
  %.4207.i.i = phi ptr [ %.3.i.i, %.lr.ph.preheader.i.i ], [ %i.agv, %bb.hv ] ; 5 uses
  %.1113205.i.i = phi i32 [ %.0112.i.i, %.lr.ph.preheader.i.i ], [ %i.agw, %bb.hv ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.2450.i, i64 %indvars.iv.i.i
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !19
  %i.agm = sext i8 %i.agl to i32
  %reass.sub221.i.i = sub i32 %i.agm, %.1113205.i.i
  %i.agn = add i32 %reass.sub221.i.i, -48         ; 2 uses
  %.not141.i.i = icmp eq i32 %i.agn, 0
  br i1 %.not141.i.i, label %bb.hs, label %.loopexit.i.i

bb.hs:                                            ; preds = %.lr.ph.i687.i
  %i.ago = getelementptr inbounds nuw i8, ptr %.4207.i.i, i64 24
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !3
  %.not142.i.i = icmp eq i32 %i.agp, 0
  br i1 %.not142.i.i, label %bb.ht, label %bb.hv

bb.ht:                                            ; preds = %bb.hs
  %i.agq = getelementptr inbounds nuw i8, ptr %.4207.i.i, i64 20
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !40
  %i.ags = icmp eq i32 %i.agr, 1
  br i1 %i.ags, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.agt = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.agu = icmp sgt i32 %i.lh, %i.agt
  %spec.select151.i.i = zext i1 %i.agu to i32
  br label %.thread.i.i

bb.hv:                                            ; preds = %bb.ht, %bb.hs
  %i.agv = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef nonnull %.4207.i.i, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.agw = call fastcc i32 @quorem(ptr noundef %i.agv, ptr noundef %.1104.i.i) ; 2 uses
  %exitcond.not.i688.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i688.i, label %._crit_edge.i682.i, label %.lr.ph.i687.i, !llvm.loop !43

._crit_edge.i682.i:                               ; preds = %bb.hv, %bb.hr
  %.1113.lcssa.i.i = phi i32 [ %.0112.i.i, %bb.hr ], [ %i.agw, %bb.hv ] ; 2 uses
  %.2109.lcssa.i.i = phi i32 [ 0, %bb.hr ], [ %spec.select597.i, %bb.hv ] ; 2 uses
  %.4.lcssa.i.i = phi ptr [ %.3.i.i, %bb.hr ], [ %i.agv, %bb.hv ] ; 2 uses
  %i.agx = icmp slt i32 %.2109.lcssa.i.i, %i.lh
  br i1 %i.agx, label %.lr.ph214.preheader.i.i, label %._crit_edge215.i.i

.lr.ph214.preheader.i.i:                          ; preds = %._crit_edge.i682.i
  %i.agy = sext i32 %.sroa.6.2.i to i64
  br label %.lr.ph214.i.i

.lr.ph214.i.i:                                    ; preds = %bb.hz, %.lr.ph214.preheader.i.i
  %indvars.iv244.i.i = phi i64 [ %i.agy, %.lr.ph214.preheader.i.i ], [ %indvars.iv.next245.i.i, %bb.hz ] ; 2 uses
  %.in.i.i = phi i32 [ %.2109.lcssa.i.i, %.lr.ph214.preheader.i.i ], [ %i.agz, %bb.hz ]
  %.5212.i.i = phi ptr [ %.4.lcssa.i.i, %.lr.ph214.preheader.i.i ], [ %i.ahk, %bb.hz ] ; 5 uses
  %.2114210.i.i = phi i32 [ %.1113.lcssa.i.i, %.lr.ph214.preheader.i.i ], [ %i.ahl, %bb.hz ]
  %i.agz = add nuw i32 %.in.i.i, 1                ; 3 uses
  %indvars.iv.next245.i.i = add nsw i64 %indvars.iv244.i.i, 1
  %i.aha = getelementptr inbounds i8, ptr %.2450.i, i64 %indvars.iv244.i.i
  %i.ahb = load i8, ptr %i.aha, align 1, !tbaa !19
  %i.ahc = sext i8 %i.ahb to i32
  %reass.sub222.i.i = sub i32 %i.ahc, %.2114210.i.i
  %i.ahd = add i32 %reass.sub222.i.i, -48         ; 2 uses
  %.not139.i.i = icmp eq i32 %i.ahd, 0
  br i1 %.not139.i.i, label %bb.hw, label %.loopexit.i.i

bb.hw:                                            ; preds = %.lr.ph214.i.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %.5212.i.i, i64 24
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !3
  %.not140.i.i = icmp eq i32 %i.ahf, 0
  br i1 %.not140.i.i, label %bb.hx, label %bb.hz

bb.hx:                                            ; preds = %bb.hw
  %i.ahg = getelementptr inbounds nuw i8, ptr %.5212.i.i, i64 20
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !40
  %i.ahi = icmp eq i32 %i.ahh, 1
  br i1 %i.ahi, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.ahj = icmp slt i32 %i.agz, %i.lh
  %spec.select152.i.i = zext i1 %i.ahj to i32
  br label %.thread.i.i

bb.hz:                                            ; preds = %bb.hx, %bb.hw
  %i.ahk = call fastcc ptr @multadd(ptr noundef nonnull %3, ptr noundef nonnull %.5212.i.i, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.ahl = call fastcc i32 @quorem(ptr noundef %i.ahk, ptr noundef %.1104.i.i) ; 2 uses
  %exitcond247.not.i.i = icmp eq i32 %i.agz, %i.lh
  br i1 %exitcond247.not.i.i, label %._crit_edge215.i.i, label %.lr.ph214.i.i, !llvm.loop !44

._crit_edge215.i.i:                               ; preds = %bb.hz, %._crit_edge.i682.i
  %.2114.lcssa.i.i = phi i32 [ %.1113.lcssa.i.i, %._crit_edge.i682.i ], [ %i.ahl, %bb.hz ]
  %.5.lcssa.i.i = phi ptr [ %.4.lcssa.i.i, %._crit_edge.i682.i ], [ %i.ahk, %bb.hz ] ; 5 uses
  %i.ahm = icmp sgt i32 %.2114.lcssa.i.i, 0
  br i1 %i.ahm, label %.loopexit.i.i, label %bb.ia

bb.ia:                                            ; preds = %._crit_edge215.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %.5.lcssa.i.i, i64 24
  %i.aho = load i32, ptr %i.ahn, align 8, !tbaa !3
  %.not138.i.i = icmp eq i32 %i.aho, 0
  br i1 %.not138.i.i, label %bb.ib, label %.thread180.i.i

bb.ib:                                            ; preds = %bb.ia
  %i.ahp = getelementptr inbounds nuw i8, ptr %.5.lcssa.i.i, i64 20
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !40
  %i.ahr = icmp sgt i32 %i.ahq, 1
  br i1 %i.ahr, label %.thread180.i.i, label %.thread.i.i

.thread180.i.i:                                   ; preds = %bb.ib, %bb.ia
  br label %.thread.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i687.i, %.lr.ph214.i.i, %._crit_edge215.i.i
  %.2117.i.i = phi i32 [ %i.ahd, %.lr.ph214.i.i ], [ -1, %._crit_edge215.i.i ], [ %i.agn, %.lr.ph.i687.i ] ; 2 uses
  %.6.i.i = phi ptr [ %.5212.i.i, %.lr.ph214.i.i ], [ %.5.lcssa.i.i, %._crit_edge215.i.i ], [ %.4207.i.i, %.lr.ph.i687.i ] ; 2 uses
  %.not.i.i686.i = icmp eq ptr %.6.i.i, null
  br i1 %.not.i.i686.i, label %Bfree.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.i.i, %.thread180.i.i, %bb.ib, %bb.hy, %bb.hu
  %.6178.i.i = phi ptr [ %.6.i.i, %.loopexit.i.i ], [ %.5212.i.i, %bb.hy ], [ %.4207.i.i, %bb.hu ], [ %.5.lcssa.i.i, %bb.ib ], [ %.5.lcssa.i.i, %.thread180.i.i ] ; 4 uses
  %.2117176.i.i = phi i32 [ %.2117.i.i, %.loopexit.i.i ], [ %spec.select152.i.i, %bb.hy ], [ %spec.select151.i.i, %bb.hu ], [ 0, %bb.ib ], [ -1, %.thread180.i.i ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.6178.i.i, i64 8
  %i.aht = load i32, ptr %i.ahs, align 8, !tbaa !29 ; 2 uses
  %i.ahu = icmp sgt i32 %i.aht, 7
  br i1 %i.ahu, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %.thread.i.i
  call void @free(ptr noundef nonnull %.6178.i.i) #17
  br label %Bfree.exit.i.i

bb.id:                                            ; preds = %.thread.i.i
  %i.ahv = sext i32 %i.aht to i64
  %i.ahw = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.ahv ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !13
  store ptr %i.ahx, ptr %.6178.i.i, align 8, !tbaa !15
  store ptr %.6178.i.i, ptr %i.ahw, align 8, !tbaa !13
  br label %Bfree.exit.i.i

Bfree.exit.i.i:                                   ; preds = %bb.id, %bb.ic, %.loopexit.i.i
  %.2117177.i.i = phi i32 [ %.2117.i.i, %.loopexit.i.i ], [ %.2117176.i.i, %bb.ic ], [ %.2117176.i.i, %bb.id ] ; 3 uses
  %.not.i163.i.i = icmp eq ptr %.1104.i.i, null
  br i1 %.not.i163.i.i, label %Bfree.exit164.i.i, label %bb.ie

bb.ie:                                            ; preds = %Bfree.exit.i.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %.1104.i.i, i64 8
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !29 ; 2 uses
  %i.aia = icmp sgt i32 %i.ahz, 7
  br i1 %i.aia, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  call void @free(ptr noundef nonnull %.1104.i.i) #17
  br label %Bfree.exit164.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.aib = sext i32 %i.ahz to i64
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.qu, i64 %i.aib ; 2 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !13
  store ptr %i.aid, ptr %.1104.i.i, align 8, !tbaa !15
  store ptr %.1104.i.i, ptr %i.aic, align 8, !tbaa !13
  br label %Bfree.exit164.i.i

Bfree.exit164.i.i:                                ; preds = %bb.ig, %bb.if, %Bfree.exit.i.i
  br i1 %i.ado, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %Bfree.exit164.i.i
  %i.aie = icmp slt i32 %.2117177.i.i, 1
  br i1 %i.aie, label %.sink.split.i.i, label %.bigcomp.exit_crit_edge.i

.bigcomp.exit_crit_edge.i:                        ; preds = %bb.ih
  %.pre1074.i = load i32, ptr %i.qz, align 4, !tbaa !19
  br label %bigcomp.exit.i

bb.ii:                                            ; preds = %Bfree.exit164.i.i
  %i.aif = icmp slt i32 %.2117177.i.i, 0
  br i1 %i.aif, label %bb.ij, label %bb.im

bb.ij:                                            ; preds = %bb.ii
  %.pre1075.i = load i32, ptr %i.qz, align 4, !tbaa !19 ; 2 uses
  br i1 %.0111.i.i, label %._crit_edge252.i.i, label %bigcomp.exit.i

._crit_edge252.i.i:                               ; preds = %bb.iv, %bb.ij
  %.val154.i.i = phi i32 [ %i.ais, %bb.iv ], [ %.pre1075.i, %bb.ij ] ; 2 uses
end_hunk_0
