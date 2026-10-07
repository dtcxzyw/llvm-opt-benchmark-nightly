Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_0?download=true
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 94
begin_hunk_0_@BlitBtoNAlphaKey:bb.a
  %i.zg = add nuw nsw i32 %i.zf, %i.zd
  %i.zh = lshr i32 %i.zg, 8
  %i.zi = and i32 %i.zh, 255                      ; 3 uses
  switch i8 %i.ag, label %bb.am [
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.zj = load i8, ptr %i.ax, align 4
  %i.zk = zext i8 %i.zj to i32
  %i.zl = sub nsw i32 8, %i.zk
  %i.zm = lshr i32 %i.ye, %i.zl
  %i.zn = load i8, ptr %i.az, align 4
  %i.zo = zext nneg i8 %i.zn to i32
  %i.zp = shl i32 %i.zm, %i.zo
  %i.zq = load i8, ptr %i.ba, align 1
  %i.zr = zext i8 %i.zq to i32
  %i.zs = sub nsw i32 8, %i.zr
  %i.zt = lshr i32 %i.yo, %i.zs
  %i.zu = load i8, ptr %i.bc, align 1
  %i.zv = zext nneg i8 %i.zu to i32
  %i.zw = shl i32 %i.zt, %i.zv
  %i.zx = or i32 %i.zw, %i.zp
  %i.zy = load i8, ptr %i.bd, align 2
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = sub nsw i32 8, %i.zz
  %i.aab = lshr i32 %i.yy, %i.aaa
  %i.aac = load i8, ptr %i.bf, align 2
  %i.aad = zext nneg i8 %i.aac to i32
  %i.aae = shl i32 %i.aab, %i.aad
  %i.aaf = or i32 %i.zx, %i.aae
  %i.aag = load i8, ptr %i.bg, align 1
  %i.aah = zext i8 %i.aag to i32
  %i.aai = sub nsw i32 8, %i.aah
  %i.aaj = lshr i32 %i.zi, %i.aai
  %i.aak = load i8, ptr %i.bi, align 1
  %i.aal = zext nneg i8 %i.aak to i32
  %i.aam = shl i32 %i.aaj, %i.aal
  %i.aan = or i32 %i.aaf, %i.aam
  %i.aao = trunc i32 %i.aan to i8
  store i8 %i.aao, ptr %.3391436, align 1
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.aap = load i8, ptr %i.ax, align 4
  %i.aaq = zext i8 %i.aap to i32
  %i.aar = sub nsw i32 8, %i.aaq
  %i.aas = lshr i32 %i.ye, %i.aar
  %i.aat = load i8, ptr %i.az, align 4
  %i.aau = zext nneg i8 %i.aat to i32
  %i.aav = shl i32 %i.aas, %i.aau
  %i.aaw = load i8, ptr %i.ba, align 1
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = sub nsw i32 8, %i.aax
  %i.aaz = lshr i32 %i.yo, %i.aay
  %i.aba = load i8, ptr %i.bc, align 1
  %i.abb = zext nneg i8 %i.aba to i32
  %i.abc = shl i32 %i.aaz, %i.abb
  %i.abd = or i32 %i.abc, %i.aav
  %i.abe = load i8, ptr %i.bd, align 2
  %i.abf = zext i8 %i.abe to i32
  %i.abg = sub nsw i32 8, %i.abf
  %i.abh = lshr i32 %i.yy, %i.abg
  %i.abi = load i8, ptr %i.bf, align 2
  %i.abj = zext nneg i8 %i.abi to i32
  %i.abk = shl i32 %i.abh, %i.abj
  %i.abl = or i32 %i.abd, %i.abk
  %i.abm = load i8, ptr %i.bg, align 1
  %i.abn = zext i8 %i.abm to i32
  %i.abo = sub nsw i32 8, %i.abn
  %i.abp = lshr i32 %i.zi, %i.abo
  %i.abq = load i8, ptr %i.bi, align 1
  %i.abr = zext nneg i8 %i.abq to i32
  %i.abs = shl i32 %i.abp, %i.abr
  %i.abt = or i32 %i.abl, %i.abs
  %i.abu = trunc i32 %i.abt to i16
  store i16 %i.abu, ptr %.3391436, align 2
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.abv = trunc i32 %i.yd to i8
  %i.abw = load i8, ptr %i.az, align 4
  %i.abx = lshr i8 %i.abw, 3
  %i.aby = zext nneg i8 %i.abx to i64
  %i.abz = getelementptr inbounds nuw i8, ptr %.3391436, i64 %i.aby
  store i8 %i.abv, ptr %i.abz, align 1
  %i.aca = trunc i32 %i.yn to i8
  %i.acb = load i8, ptr %i.bc, align 1
  %i.acc = lshr i8 %i.acb, 3
  %i.acd = zext nneg i8 %i.acc to i64
  %i.ace = getelementptr inbounds nuw i8, ptr %.3391436, i64 %i.acd
  store i8 %i.aca, ptr %i.ace, align 1
  %i.acf = trunc i32 %i.yx to i8
  %i.acg = load i8, ptr %i.bf, align 2
  %i.ach = lshr i8 %i.acg, 3
  %i.aci = zext nneg i8 %i.ach to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %.3391436, i64 %i.aci
  store i8 %i.acf, ptr %i.acj, align 1
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.ack = load i8, ptr %i.ax, align 4
  %i.acl = zext i8 %i.ack to i32
  %i.acm = sub nsw i32 8, %i.acl
  %i.acn = lshr i32 %i.ye, %i.acm
  %i.aco = load i8, ptr %i.az, align 4
  %i.acp = zext nneg i8 %i.aco to i32
  %i.acq = shl i32 %i.acn, %i.acp
  %i.acr = load i8, ptr %i.ba, align 1
  %i.acs = zext i8 %i.acr to i32
  %i.act = sub nsw i32 8, %i.acs
  %i.acu = lshr i32 %i.yo, %i.act
  %i.acv = load i8, ptr %i.bc, align 1
  %i.acw = zext nneg i8 %i.acv to i32
  %i.acx = shl i32 %i.acu, %i.acw
  %i.acy = or i32 %i.acx, %i.acq
  %i.acz = load i8, ptr %i.bd, align 2
  %i.ada = zext i8 %i.acz to i32
  %i.adb = sub nsw i32 8, %i.ada
  %i.adc = lshr i32 %i.yy, %i.adb
  %i.add = load i8, ptr %i.bf, align 2
  %i.ade = zext nneg i8 %i.add to i32
  %i.adf = shl i32 %i.adc, %i.ade
  %i.adg = or i32 %i.acy, %i.adf
  %i.adh = load i8, ptr %i.bg, align 1
  %i.adi = zext i8 %i.adh to i32
  %i.adj = sub nsw i32 8, %i.adi
  %i.adk = lshr i32 %i.zi, %i.adj
  %i.adl = load i8, ptr %i.bi, align 1
  %i.adm = zext nneg i8 %i.adl to i32
  %i.adn = shl i32 %i.adk, %i.adm
  %i.ado = or i32 %i.adg, %i.adn
  store i32 %i.ado, ptr %.3391436, align 4
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.ab
  %i.adp = shl i32 %i.ra, %i.ae
  %i.adq = trunc i32 %i.adp to i8
  %i.adr = getelementptr inbounds nuw i8, ptr %.3391436, i64 %i.bj ; 2 uses
  %i.ads = add nuw nsw i32 %.3400434, 1           ; 2 uses
  %exitcond469.not = icmp eq i32 %i.ads, %i.ab
  br i1 %exitcond469.not, label %._crit_edge, label %.lr.ph438, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.am, %.preheader425
  %.3391.lcssa = phi ptr [ %.2390442, %.preheader425 ], [ %i.adr, %bb.am ]
  %.8.lcssa = phi ptr [ %.6.lcssa, %.preheader425 ], [ %.9, %bb.am ]
  %i.adt = getelementptr inbounds i8, ptr %.8.lcssa, i64 %i.bk
  %i.adu = getelementptr inbounds i8, ptr %.3391.lcssa, i64 %i.bl
  %.not = icmp eq i32 %i.py, 0
  br i1 %.not, label %.loopexit, label %.preheader426, !llvm.loop !75

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge456, %.preheader427, %.preheader424
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit1bto1(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 9 uses
  %i.q = add i32 %i.p, %i.b                       ; 10 uses
  %i.r = add nsw i32 %i.q, 7
  %.neg.i = sdiv i32 %i.r, -8
  %i.s = add i32 %i.q, %i.h
  %i.t = add i32 %i.s, %.neg.i                    ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 15728640
  %i.y = icmp eq i32 %i.x, 1048576                ; 2 uses
  %.not177.i81 = icmp eq i32 %i.d, 0              ; 4 uses
  br i1 %.not.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.y, label %.preheader9, label %.preheader13

.preheader13:                                     ; preds = %bb.b
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader12.lr.ph

.preheader12.lr.ph:                               ; preds = %.preheader13
  %i.z = sext i32 %i.t to i64
  %i.aa = sext i32 %i.l to i64
  %i.ab = add i32 %i.p, %i.b
  %i.ac = add i32 %i.p, %i.b
  br label %.preheader12

.preheader9:                                      ; preds = %bb.b
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader8.lr.ph

.preheader8.lr.ph:                                ; preds = %.preheader9
  %i.ad = sext i32 %i.t to i64
  %i.ae = sext i32 %i.l to i64
  %i.af = add i32 %i.p, %i.b
  %i.ag = add i32 %i.p, %i.b
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.lr.ph, %._crit_edge42
  %.in84 = phi i32 [ %i.d, %.preheader8.lr.ph ], [ %i.ah, %._crit_edge42 ]
  %.0146.i47 = phi ptr [ %i.j, %.preheader8.lr.ph ], [ %i.cb, %._crit_edge42 ] ; 4 uses
  %.0150.i46 = phi ptr [ %i.f, %.preheader8.lr.ph ], [ %i.ca, %._crit_edge42 ] ; 3 uses
  %i.ah = add nsw i32 %.in84, -1                  ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8             ; 7 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph33.preheader, label %.preheader7

.lr.ph33.preheader:                               ; preds = %.preheader8
  %xtraiter164 = and i32 %i.ai, 1
  %i.ak = icmp eq i32 %i.ai, 1
  br i1 %i.ak, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter169 = and i32 %i.ai, 2147483646
  br label %.lr.ph33

.preheader7.loopexit.unr-lcssa:                   ; preds = %.lr.ph33.1
  %lcmp.mod165.not = icmp eq i32 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.preheader7, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %.preheader7.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.0141.i32.epil.init = phi i8 [ 0, %.lr.ph33.preheader ], [ %i.bf, %.preheader7.loopexit.unr-lcssa ]
  %.1151.i31.epil.init = phi ptr [ %.0150.i46, %.lr.ph33.preheader ], [ %.2152.i, %.preheader7.loopexit.unr-lcssa ] ; 3 uses
  %.0162.i30.epil.init = phi i32 [ 0, %.lr.ph33.preheader ], [ %i.bg, %.preheader7.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.al = and i32 %.0162.i30.epil.init, 7
  %.not185.i.epil = icmp eq i32 %i.al, 0
  br i1 %.not185.i.epil, label %bb.c, label %.preheader7.loopexit.epilog-lcssa

bb.c:                                             ; preds = %.lr.ph33.epil.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.1151.i31.epil.init, i64 1
  %i.an = load i8, ptr %.1151.i31.epil.init, align 1
  br label %.preheader7.loopexit.epilog-lcssa

.preheader7.loopexit.epilog-lcssa:                ; preds = %bb.c, %.lr.ph33.epil.preheader
  %.2152.i.epil = phi ptr [ %.1151.i31.epil.init, %.lr.ph33.epil.preheader ], [ %i.am, %bb.c ]
  %.1142.i.epil = phi i8 [ %.0141.i32.epil.init, %.lr.ph33.epil.preheader ], [ %i.an, %bb.c ]
  %i.ao = lshr i8 %.1142.i.epil, 1
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit.epilog-lcssa, %.preheader7.loopexit.unr-lcssa, %.preheader8
  %.0162.i.lcssa = phi i32 [ 0, %.preheader8 ], [ %i.ai, %.preheader7.loopexit.unr-lcssa ], [ %i.ai, %.preheader7.loopexit.epilog-lcssa ] ; 6 uses
  %.1151.i.lcssa = phi ptr [ %.0150.i46, %.preheader8 ], [ %.2152.i, %.preheader7.loopexit.unr-lcssa ], [ %.2152.i.epil, %.preheader7.loopexit.epilog-lcssa ] ; 5 uses
  %.0141.i.lcssa = phi i8 [ 0, %.preheader8 ], [ %i.bf, %.preheader7.loopexit.unr-lcssa ], [ %i.ao, %.preheader7.loopexit.epilog-lcssa ] ; 2 uses
  %i.ap = icmp slt i32 %.0162.i.lcssa, %i.q
  br i1 %i.ap, label %.lr.ph41.preheader, label %._crit_edge42

.lr.ph41.preheader:                               ; preds = %.preheader7
  %i.aq = sub i32 %i.af, %.0162.i.lcssa
  %.neg191 = add nuw i32 %.0162.i.lcssa, 1
  %xtraiter171 = and i32 %i.aq, 1
  %lcmp.mod172.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.ar = and i32 %.0162.i.lcssa, 7
  %.not184.i.prol = icmp eq i32 %i.ar, 0
  br i1 %.not184.i.prol, label %bb.d, label %.lr.ph41.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %.lr.ph41.prol
  %i.as = getelementptr inbounds nuw i8, ptr %.1151.i.lcssa, i64 1
  %i.at = load i8, ptr %.1151.i.lcssa, align 1
  br label %.lr.ph41.prol.loopexit.unr-lcssa

.lr.ph41.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph41.prol
  %.4154.i.prol = phi ptr [ %.1151.i.lcssa, %.lr.ph41.prol ], [ %i.as, %bb.d ] ; 2 uses
  %.3144.i.prol = phi i8 [ %.0141.i.lcssa, %.lr.ph41.prol ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = and i8 %.3144.i.prol, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  store i8 %i.ax, ptr %.0146.i47, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0146.i47, i64 1 ; 2 uses
  %i.az = lshr i8 %.3144.i.prol, 1
  %i.ba = add nuw nsw i32 %.0162.i.lcssa, 1
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol.loopexit.unr-lcssa, %.lr.ph41.preheader
  %.4154.i.lcssa.unr = phi ptr [ poison, %.lr.ph41.preheader ], [ %.4154.i.prol, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph41.preheader ], [ %i.ay, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.2143.i40.unr = phi i8 [ %.0141.i.lcssa, %.lr.ph41.preheader ], [ %i.az, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.1147.i39.unr = phi ptr [ %.0146.i47, %.lr.ph41.preheader ], [ %i.ay, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.3153.i38.unr = phi ptr [ %.1151.i.lcssa, %.lr.ph41.preheader ], [ %.4154.i.prol, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.1163.i37.unr = phi i32 [ %.0162.i.lcssa, %.lr.ph41.preheader ], [ %i.ba, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %i.bb = icmp eq i32 %i.ag, %.neg191
  br i1 %i.bb, label %._crit_edge42, label %.lr.ph41

.lr.ph33:                                         ; preds = %.lr.ph33.1, %.lr.ph33.preheader.new
  %.0141.i32 = phi i8 [ 0, %.lr.ph33.preheader.new ], [ %i.bf, %.lr.ph33.1 ]
  %.1151.i31 = phi ptr [ %.0150.i46, %.lr.ph33.preheader.new ], [ %.2152.i, %.lr.ph33.1 ] ; 3 uses
  %.0162.i30 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %i.bg, %.lr.ph33.1 ] ; 2 uses
  %niter170 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %niter170.next.1, %.lr.ph33.1 ]
  %i.bc = and i32 %.0162.i30, 6
  %.not185.i = icmp eq i32 %i.bc, 0
  br i1 %.not185.i, label %bb.e, label %.lr.ph33.1

bb.e:                                             ; preds = %.lr.ph33
  %i.bd = getelementptr inbounds nuw i8, ptr %.1151.i31, i64 1
  %i.be = load i8, ptr %.1151.i31, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %.lr.ph33, %bb.e
  %.2152.i = phi ptr [ %.1151.i31, %.lr.ph33 ], [ %i.bd, %bb.e ] ; 3 uses
  %.1142.i = phi i8 [ %.0141.i32, %.lr.ph33 ], [ %i.be, %bb.e ]
  %i.bf = lshr i8 %.1142.i, 2                     ; 3 uses
  %i.bg = add nuw nsw i32 %.0162.i30, 2           ; 2 uses
  %niter170.next.1 = add nuw nsw i32 %niter170, 2 ; 2 uses
  %niter170.ncmp.1 = icmp eq i32 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !0

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %bb.h
  %.2143.i40 = phi i8 [ %i.by, %bb.h ], [ %.2143.i40.unr, %.lr.ph41.prol.loopexit ]
  %.1147.i39 = phi ptr [ %i.bx, %bb.h ], [ %.1147.i39.unr, %.lr.ph41.prol.loopexit ] ; 3 uses
  %.3153.i38 = phi ptr [ %.4154.i.1, %bb.h ], [ %.3153.i38.unr, %.lr.ph41.prol.loopexit ] ; 3 uses
  %.1163.i37 = phi i32 [ %i.bz, %bb.h ], [ %.1163.i37.unr, %.lr.ph41.prol.loopexit ] ; 3 uses
  %i.bh = and i32 %.1163.i37, 7
  %.not184.i = icmp eq i32 %i.bh, 0
  br i1 %.not184.i, label %bb.f, label %.lr.ph41.1

bb.f:                                             ; preds = %.lr.ph41
  %i.bi = getelementptr inbounds nuw i8, ptr %.3153.i38, i64 1
  %i.bj = load i8, ptr %.3153.i38, align 1
  br label %.lr.ph41.1

.lr.ph41.1:                                       ; preds = %bb.f, %.lr.ph41
  %.4154.i = phi ptr [ %.3153.i38, %.lr.ph41 ], [ %i.bi, %bb.f ] ; 3 uses
  %.3144.i = phi i8 [ %.2143.i40, %.lr.ph41 ], [ %i.bj, %bb.f ] ; 2 uses
  %i.bk = and i8 %.3144.i, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %.1147.i39, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.1147.i39, i64 1
  %i.bp = lshr i8 %.3144.i, 1
  %i.bq = and i32 %.1163.i37, 7
  %.not184.i.1 = icmp eq i32 %i.bq, 7
  br i1 %.not184.i.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph41.1
  %i.br = getelementptr inbounds nuw i8, ptr %.4154.i, i64 1
  %i.bs = load i8, ptr %.4154.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph41.1
  %.4154.i.1 = phi ptr [ %.4154.i, %.lr.ph41.1 ], [ %i.br, %bb.g ] ; 2 uses
  %.3144.i.1 = phi i8 [ %i.bp, %.lr.ph41.1 ], [ %i.bs, %bb.g ] ; 2 uses
  %i.bt = and i8 %.3144.i.1, 1
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  store i8 %i.bw, ptr %i.bo, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.1147.i39, i64 2 ; 2 uses
  %i.by = lshr i8 %.3144.i.1, 1
  %i.bz = add nuw nsw i32 %.1163.i37, 2           ; 2 uses
  %exitcond103.not.1 = icmp eq i32 %i.bz, %i.q
  br i1 %exitcond103.not.1, label %._crit_edge42, label %.lr.ph41, !llvm.loop !1

._crit_edge42:                                    ; preds = %.lr.ph41.prol.loopexit, %bb.h, %.preheader7
  %.3153.i.lcssa = phi ptr [ %.1151.i.lcssa, %.preheader7 ], [ %.4154.i.lcssa.unr, %.lr.ph41.prol.loopexit ], [ %.4154.i.1, %bb.h ]
  %.1147.i.lcssa = phi ptr [ %.0146.i47, %.preheader7 ], [ %.lcssa155.unr, %.lr.ph41.prol.loopexit ], [ %i.bx, %bb.h ]
  %i.ca = getelementptr inbounds i8, ptr %.3153.i.lcssa, i64 %i.ad
  %i.cb = getelementptr inbounds i8, ptr %.1147.i.lcssa, i64 %i.ae
  %.not183.i = icmp eq i32 %i.ah, 0
  br i1 %.not183.i, label %BlitBto1.exit, label %.preheader8, !llvm.loop !2

.preheader12:                                     ; preds = %.preheader12.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader12.lr.ph ], [ %i.cc, %._crit_edge ]
  %.2148.i29 = phi ptr [ %i.j, %.preheader12.lr.ph ], [ %i.dw, %._crit_edge ] ; 4 uses
  %.5155.i28 = phi ptr [ %i.f, %.preheader12.lr.ph ], [ %i.dv, %._crit_edge ] ; 3 uses
  %i.cc = add nsw i32 %.in, -1                    ; 2 uses
  %i.cd = load i32, ptr %i.o, align 8             ; 7 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader, label %.preheader11

.lr.ph.preheader:                                 ; preds = %.preheader12
  %xtraiter = and i32 %i.cd, 1
  %i.cf = icmp eq i32 %i.cd, 1
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.cd, 2147483646
  br label %.lr.ph

.preheader11.loopexit.unr-lcssa:                  ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader11, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader11.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0137.i17.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.da, %.preheader11.loopexit.unr-lcssa ]
  %.6156.i16.epil.init = phi ptr [ %.5155.i28, %.lr.ph.preheader ], [ %.7157.i, %.preheader11.loopexit.unr-lcssa ] ; 3 uses
  %.2164.i15.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.db, %.preheader11.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.cg = and i32 %.2164.i15.epil.init, 7
  %.not182.i.epil = icmp eq i32 %i.cg, 0
  br i1 %.not182.i.epil, label %bb.i, label %.preheader11.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %.6156.i16.epil.init, i64 1
  %i.ci = load i8, ptr %.6156.i16.epil.init, align 1
  br label %.preheader11.loopexit.epilog-lcssa

.preheader11.loopexit.epilog-lcssa:               ; preds = %bb.i, %.lr.ph.epil.preheader
  %.7157.i.epil = phi ptr [ %.6156.i16.epil.init, %.lr.ph.epil.preheader ], [ %i.ch, %bb.i ]
  %.1138.i.epil = phi i8 [ %.0137.i17.epil.init, %.lr.ph.epil.preheader ], [ %i.ci, %bb.i ]
  %i.cj = shl i8 %.1138.i.epil, 1
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit.epilog-lcssa, %.preheader11.loopexit.unr-lcssa, %.preheader12
  %.2164.i.lcssa = phi i32 [ 0, %.preheader12 ], [ %i.cd, %.preheader11.loopexit.unr-lcssa ], [ %i.cd, %.preheader11.loopexit.epilog-lcssa ] ; 6 uses
  %.6156.i.lcssa = phi ptr [ %.5155.i28, %.preheader12 ], [ %.7157.i, %.preheader11.loopexit.unr-lcssa ], [ %.7157.i.epil, %.preheader11.loopexit.epilog-lcssa ] ; 5 uses
  %.0137.i.lcssa = phi i8 [ 0, %.preheader12 ], [ %i.da, %.preheader11.loopexit.unr-lcssa ], [ %i.cj, %.preheader11.loopexit.epilog-lcssa ] ; 2 uses
  %i.ck = icmp slt i32 %.2164.i.lcssa, %i.q
  br i1 %i.ck, label %.lr.ph24.preheader, label %._crit_edge

.lr.ph24.preheader:                               ; preds = %.preheader11
  %i.cl = sub i32 %i.ab, %.2164.i.lcssa
  %.neg = add nuw i32 %.2164.i.lcssa, 1
  %xtraiter162 = and i32 %i.cl, 1
  %lcmp.mod163.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph24.prol.loopexit, label %.lr.ph24.prol

.lr.ph24.prol:                                    ; preds = %.lr.ph24.preheader
  %i.cm = and i32 %.2164.i.lcssa, 7
  %.not181.i.prol = icmp eq i32 %i.cm, 0
  br i1 %.not181.i.prol, label %bb.j, label %.lr.ph24.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.lr.ph24.prol
  %i.cn = getelementptr inbounds nuw i8, ptr %.6156.i.lcssa, i64 1
  %i.co = load i8, ptr %.6156.i.lcssa, align 1
  br label %.lr.ph24.prol.loopexit.unr-lcssa

.lr.ph24.prol.loopexit.unr-lcssa:                 ; preds = %bb.j, %.lr.ph24.prol
  %.9.i.prol = phi ptr [ %.6156.i.lcssa, %.lr.ph24.prol ], [ %i.cn, %bb.j ] ; 2 uses
  %.3140.i.prol = phi i8 [ %.0137.i.lcssa, %.lr.ph24.prol ], [ %i.co, %bb.j ] ; 2 uses
  %i.cp = lshr i8 %.3140.i.prol, 7
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  store i8 %i.cs, ptr %.2148.i29, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.2148.i29, i64 1 ; 2 uses
  %i.cu = shl i8 %.3140.i.prol, 1
  %i.cv = add nuw nsw i32 %.2164.i.lcssa, 1
  br label %.lr.ph24.prol.loopexit

.lr.ph24.prol.loopexit:                           ; preds = %.lr.ph24.prol.loopexit.unr-lcssa, %.lr.ph24.preheader
  %.9.i.lcssa.unr = phi ptr [ poison, %.lr.ph24.preheader ], [ %.9.i.prol, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.lcssa158.unr = phi ptr [ poison, %.lr.ph24.preheader ], [ %i.ct, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.2139.i23.unr = phi i8 [ %.0137.i.lcssa, %.lr.ph24.preheader ], [ %i.cu, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.3149.i22.unr = phi ptr [ %.2148.i29, %.lr.ph24.preheader ], [ %i.ct, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.8.i21.unr = phi ptr [ %.6156.i.lcssa, %.lr.ph24.preheader ], [ %.9.i.prol, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.3165.i20.unr = phi i32 [ %.2164.i.lcssa, %.lr.ph24.preheader ], [ %i.cv, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %i.cw = icmp eq i32 %i.ac, %.neg
  br i1 %i.cw, label %._crit_edge, label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0137.i17 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.da, %.lr.ph.1 ]
  %.6156.i16 = phi ptr [ %.5155.i28, %.lr.ph.preheader.new ], [ %.7157.i, %.lr.ph.1 ] ; 3 uses
  %.2164.i15 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.db, %.lr.ph.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.cx = and i32 %.2164.i15, 6
  %.not182.i = icmp eq i32 %i.cx, 0
  br i1 %.not182.i, label %bb.k, label %.lr.ph.1

bb.k:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %.6156.i16, i64 1
  %i.cz = load i8, ptr %.6156.i16, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.k, %.lr.ph
  %.7157.i = phi ptr [ %.6156.i16, %.lr.ph ], [ %i.cy, %bb.k ] ; 3 uses
  %.1138.i = phi i8 [ %.0137.i17, %.lr.ph ], [ %i.cz, %bb.k ]
  %i.da = shl i8 %.1138.i, 2                      ; 3 uses
  %i.db = add nuw nsw i32 %.2164.i15, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader11.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

.lr.ph24:                                         ; preds = %.lr.ph24.prol.loopexit, %bb.n
  %.2139.i23 = phi i8 [ %i.dt, %bb.n ], [ %.2139.i23.unr, %.lr.ph24.prol.loopexit ]
  %.3149.i22 = phi ptr [ %i.ds, %bb.n ], [ %.3149.i22.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %.8.i21 = phi ptr [ %.9.i.1, %bb.n ], [ %.8.i21.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %.3165.i20 = phi i32 [ %i.du, %bb.n ], [ %.3165.i20.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %i.dc = and i32 %.3165.i20, 7
  %.not181.i = icmp eq i32 %i.dc, 0
  br i1 %.not181.i, label %bb.l, label %.lr.ph24.1

bb.l:                                             ; preds = %.lr.ph24
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.i21, i64 1
  %i.de = load i8, ptr %.8.i21, align 1
  br label %.lr.ph24.1

.lr.ph24.1:                                       ; preds = %bb.l, %.lr.ph24
  %.9.i = phi ptr [ %.8.i21, %.lr.ph24 ], [ %i.dd, %bb.l ] ; 3 uses
  %.3140.i = phi i8 [ %.2139.i23, %.lr.ph24 ], [ %i.de, %bb.l ] ; 2 uses
  %i.df = lshr i8 %.3140.i, 7
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  store i8 %i.di, ptr %.3149.i22, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.3149.i22, i64 1
  %i.dk = shl i8 %.3140.i, 1
  %i.dl = and i32 %.3165.i20, 7
  %.not181.i.1 = icmp eq i32 %i.dl, 7
  br i1 %.not181.i.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph24.1
  %i.dm = getelementptr inbounds nuw i8, ptr %.9.i, i64 1
  %i.dn = load i8, ptr %.9.i, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph24.1
  %.9.i.1 = phi ptr [ %.9.i, %.lr.ph24.1 ], [ %i.dm, %bb.m ] ; 2 uses
  %.3140.i.1 = phi i8 [ %i.dk, %.lr.ph24.1 ], [ %i.dn, %bb.m ] ; 2 uses
  %i.do = lshr i8 %.3140.i.1, 7
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  store i8 %i.dr, ptr %i.dj, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.3149.i22, i64 2 ; 2 uses
  %i.dt = shl i8 %.3140.i.1, 1
  %i.du = add nuw nsw i32 %.3165.i20, 2           ; 2 uses
  %exitcond101.not.1 = icmp eq i32 %i.du, %i.q
  br i1 %exitcond101.not.1, label %._crit_edge, label %.lr.ph24, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph24.prol.loopexit, %bb.n, %.preheader11
  %.8.i.lcssa = phi ptr [ %.6156.i.lcssa, %.preheader11 ], [ %.9.i.lcssa.unr, %.lr.ph24.prol.loopexit ], [ %.9.i.1, %bb.n ]
  %.3149.i.lcssa = phi ptr [ %.2148.i29, %.preheader11 ], [ %.lcssa158.unr, %.lr.ph24.prol.loopexit ], [ %i.ds, %bb.n ]
  %i.dv = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.z
  %i.dw = getelementptr inbounds i8, ptr %.3149.i.lcssa, i64 %i.aa
  %.not180.i = icmp eq i32 %i.cc, 0
  br i1 %.not180.i, label %BlitBto1.exit, label %.preheader12, !llvm.loop !5

bb.o:                                             ; preds = %bb.a
  br i1 %i.y, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.o
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.dx = sext i32 %i.t to i64
  %i.dy = sext i32 %i.l to i64
  %i.dz = add i32 %i.p, %i.b
  %i.ea = add i32 %i.p, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.o
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.eb = sext i32 %i.t to i64
  %i.ec = sext i32 %i.l to i64
  %i.ed = add i32 %i.p, %i.b
  %i.ee = add i32 %i.p, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge78
  %.in86 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ef, %._crit_edge78 ]
  %.4.i83 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.fq, %._crit_edge78 ] ; 4 uses
  %.10.i82 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.fp, %._crit_edge78 ] ; 3 uses
  %i.ef = add nsw i32 %.in86, -1                  ; 2 uses
  %i.eg = load i32, ptr %i.o, align 8             ; 7 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %.preheader1
  %xtraiter182 = and i32 %i.eg, 1
  %i.ei = icmp eq i32 %i.eg, 1
  br i1 %i.ei, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter187 = and i32 %i.eg, 2147483646
  br label %.lr.ph69

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph69.1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.preheader, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.0133.i68.epil.init = phi i8 [ 0, %.lr.ph69.preheader ], [ %i.fa, %.preheader.loopexit.unr-lcssa ]
  %.11.i67.epil.init = phi ptr [ %.10.i82, %.lr.ph69.preheader ], [ %.12.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.4166.i66.epil.init = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.fb, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.ej = and i32 %.4166.i66.epil.init, 7
  %.not179.i.epil = icmp eq i32 %i.ej, 0
  br i1 %.not179.i.epil, label %bb.p, label %.preheader.loopexit.epilog-lcssa

bb.p:                                             ; preds = %.lr.ph69.epil.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %.11.i67.epil.init, i64 1
  %i.el = load i8, ptr %.11.i67.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.p, %.lr.ph69.epil.preheader
  %.12.i.epil = phi ptr [ %.11.i67.epil.init, %.lr.ph69.epil.preheader ], [ %i.ek, %bb.p ]
  %.1134.i.epil = phi i8 [ %.0133.i68.epil.init, %.lr.ph69.epil.preheader ], [ %i.el, %bb.p ]
  %i.em = lshr i8 %.1134.i.epil, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.4166.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.eg, %.preheader.loopexit.unr-lcssa ], [ %i.eg, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.11.i.lcssa = phi ptr [ %.10.i82, %.preheader1 ], [ %.12.i, %.preheader.loopexit.unr-lcssa ], [ %.12.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.0133.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.fa, %.preheader.loopexit.unr-lcssa ], [ %i.em, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.en = icmp slt i32 %.4166.i.lcssa, %i.q
  br i1 %i.en, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.eo = sub i32 %i.ed, %.4166.i.lcssa
  %.neg193 = add nuw i32 %.4166.i.lcssa, 1
  %xtraiter189 = and i32 %i.eo, 1
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader
  %i.ep = and i32 %.4166.i.lcssa, 7
  %.not178.i.prol = icmp eq i32 %i.ep, 0
  br i1 %.not178.i.prol, label %bb.q, label %.lr.ph77.prol.loopexit.unr-lcssa

bb.q:                                             ; preds = %.lr.ph77.prol
  %i.eq = getelementptr inbounds nuw i8, ptr %.11.i.lcssa, i64 1
  %i.er = load i8, ptr %.11.i.lcssa, align 1
  br label %.lr.ph77.prol.loopexit.unr-lcssa

.lr.ph77.prol.loopexit.unr-lcssa:                 ; preds = %bb.q, %.lr.ph77.prol
  %.14.i.prol = phi ptr [ %.11.i.lcssa, %.lr.ph77.prol ], [ %i.eq, %bb.q ] ; 2 uses
  %.3136.i.prol = phi i8 [ %.0133.i.lcssa, %.lr.ph77.prol ], [ %i.er, %bb.q ] ; 2 uses
  %i.es = and i8 %.3136.i.prol, 1
  store i8 %i.es, ptr %.4.i83, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.4.i83, i64 1 ; 2 uses
  %i.eu = lshr i8 %.3136.i.prol, 1
  %i.ev = add nuw nsw i32 %.4166.i.lcssa, 1
  br label %.lr.ph77.prol.loopexit

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.14.i.lcssa.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.et, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.2135.i76.unr = phi i8 [ %.0133.i.lcssa, %.lr.ph77.preheader ], [ %i.eu, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5.i75.unr = phi ptr [ %.4.i83, %.lr.ph77.preheader ], [ %i.et, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.13.i74.unr = phi ptr [ %.11.i.lcssa, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5167.i73.unr = phi i32 [ %.4166.i.lcssa, %.lr.ph77.preheader ], [ %i.ev, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %i.ew = icmp eq i32 %i.ee, %.neg193
  br i1 %i.ew, label %._crit_edge78, label %.lr.ph77

.lr.ph69:                                         ; preds = %.lr.ph69.1, %.lr.ph69.preheader.new
  %.0133.i68 = phi i8 [ 0, %.lr.ph69.preheader.new ], [ %i.fa, %.lr.ph69.1 ]
  %.11.i67 = phi ptr [ %.10.i82, %.lr.ph69.preheader.new ], [ %.12.i, %.lr.ph69.1 ] ; 3 uses
  %.4166.i66 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %i.fb, %.lr.ph69.1 ] ; 2 uses
  %niter188 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %niter188.next.1, %.lr.ph69.1 ]
  %i.ex = and i32 %.4166.i66, 6
  %.not179.i = icmp eq i32 %i.ex, 0
  br i1 %.not179.i, label %bb.r, label %.lr.ph69.1

bb.r:                                             ; preds = %.lr.ph69
  %i.ey = getelementptr inbounds nuw i8, ptr %.11.i67, i64 1
  %i.ez = load i8, ptr %.11.i67, align 1
  br label %.lr.ph69.1

.lr.ph69.1:                                       ; preds = %.lr.ph69, %bb.r
  %.12.i = phi ptr [ %.11.i67, %.lr.ph69 ], [ %i.ey, %bb.r ] ; 3 uses
  %.1134.i = phi i8 [ %.0133.i68, %.lr.ph69 ], [ %i.ez, %bb.r ]
  %i.fa = lshr i8 %.1134.i, 2                     ; 3 uses
  %i.fb = add nuw nsw i32 %.4166.i66, 2           ; 2 uses
  %niter188.next.1 = add nuw nsw i32 %niter188, 2 ; 2 uses
  %niter188.ncmp.1 = icmp eq i32 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !6

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %bb.u
  %.2135.i76 = phi i8 [ %i.fn, %bb.u ], [ %.2135.i76.unr, %.lr.ph77.prol.loopexit ]
  %.5.i75 = phi ptr [ %i.fm, %bb.u ], [ %.5.i75.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.13.i74 = phi ptr [ %.14.i.1, %bb.u ], [ %.13.i74.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.5167.i73 = phi i32 [ %i.fo, %bb.u ], [ %.5167.i73.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %i.fc = and i32 %.5167.i73, 7
  %.not178.i = icmp eq i32 %i.fc, 0
  br i1 %.not178.i, label %bb.s, label %.lr.ph77.1

bb.s:                                             ; preds = %.lr.ph77
  %i.fd = getelementptr inbounds nuw i8, ptr %.13.i74, i64 1
  %i.fe = load i8, ptr %.13.i74, align 1
  br label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %bb.s, %.lr.ph77
  %.14.i = phi ptr [ %.13.i74, %.lr.ph77 ], [ %i.fd, %bb.s ] ; 3 uses
  %.3136.i = phi i8 [ %.2135.i76, %.lr.ph77 ], [ %i.fe, %bb.s ] ; 2 uses
  %i.ff = and i8 %.3136.i, 1
  store i8 %i.ff, ptr %.5.i75, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.5.i75, i64 1
  %i.fh = lshr i8 %.3136.i, 1
  %i.fi = and i32 %.5167.i73, 7
  %.not178.i.1 = icmp eq i32 %i.fi, 7
  br i1 %.not178.i.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph77.1
  %i.fj = getelementptr inbounds nuw i8, ptr %.14.i, i64 1
  %i.fk = load i8, ptr %.14.i, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph77.1
  %.14.i.1 = phi ptr [ %.14.i, %.lr.ph77.1 ], [ %i.fj, %bb.t ] ; 2 uses
  %.3136.i.1 = phi i8 [ %i.fh, %.lr.ph77.1 ], [ %i.fk, %bb.t ] ; 2 uses
  %i.fl = and i8 %.3136.i.1, 1
  store i8 %i.fl, ptr %i.fg, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.5.i75, i64 2 ; 2 uses
  %i.fn = lshr i8 %.3136.i.1, 1
  %i.fo = add nuw nsw i32 %.5167.i73, 2           ; 2 uses
  %exitcond107.not.1 = icmp eq i32 %i.fo, %i.q
  br i1 %exitcond107.not.1, label %._crit_edge78, label %.lr.ph77, !llvm.loop !7

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %bb.u, %.preheader
  %.13.i.lcssa = phi ptr [ %.11.i.lcssa, %.preheader ], [ %.14.i.lcssa.unr, %.lr.ph77.prol.loopexit ], [ %.14.i.1, %bb.u ]
  %.5.i.lcssa = phi ptr [ %.4.i83, %.preheader ], [ %.lcssa149.unr, %.lr.ph77.prol.loopexit ], [ %i.fm, %bb.u ]
  %i.fp = getelementptr inbounds i8, ptr %.13.i.lcssa, i64 %i.eb
  %i.fq = getelementptr inbounds i8, ptr %.5.i.lcssa, i64 %i.ec
  %.not177.i = icmp eq i32 %i.ef, 0
  br i1 %.not177.i, label %BlitBto1.exit, label %.preheader1, !llvm.loop !8

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge60
  %.in85 = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.fr, %._crit_edge60 ]
  %.6.i65 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.hc, %._crit_edge60 ] ; 4 uses
  %.15.i64 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.hb, %._crit_edge60 ] ; 3 uses
  %i.fr = add nsw i32 %.in85, -1                  ; 2 uses
  %i.fs = load i32, ptr %i.o, align 8             ; 7 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph51.preheader, label %.preheader3

.lr.ph51.preheader:                               ; preds = %.preheader4
  %xtraiter173 = and i32 %i.fs, 1
  %i.fu = icmp eq i32 %i.fs, 1
  br i1 %i.fu, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
  %unroll_iter178 = and i32 %i.fs, 2147483646
  br label %.lr.ph51

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph51.1
  %lcmp.mod174.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.preheader3, label %.lr.ph51.epil.preheader

.lr.ph51.epil.preheader:                          ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph51.preheader
  %.0.i50.epil.init = phi i8 [ 0, %.lr.ph51.preheader ], [ %i.gm, %.preheader3.loopexit.unr-lcssa ]
  %.16.i49.epil.init = phi ptr [ %.15.i64, %.lr.ph51.preheader ], [ %.17.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.6168.i48.epil.init = phi i32 [ 0, %.lr.ph51.preheader ], [ %i.gn, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod177 = trunc i32 %i.fs to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.fv = and i32 %.6168.i48.epil.init, 7
  %.not176.i.epil = icmp eq i32 %i.fv, 0
  br i1 %.not176.i.epil, label %bb.v, label %.preheader3.loopexit.epilog-lcssa

bb.v:                                             ; preds = %.lr.ph51.epil.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %.16.i49.epil.init, i64 1
  %i.fx = load i8, ptr %.16.i49.epil.init, align 1
  br label %.preheader3.loopexit.epilog-lcssa

.preheader3.loopexit.epilog-lcssa:                ; preds = %bb.v, %.lr.ph51.epil.preheader
  %.17.i.epil = phi ptr [ %.16.i49.epil.init, %.lr.ph51.epil.preheader ], [ %i.fw, %bb.v ]
  %.1.i.epil = phi i8 [ %.0.i50.epil.init, %.lr.ph51.epil.preheader ], [ %i.fx, %bb.v ]
  %i.fy = shl i8 %.1.i.epil, 1
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.epilog-lcssa, %.preheader3.loopexit.unr-lcssa, %.preheader4
  %.6168.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.fs, %.preheader3.loopexit.unr-lcssa ], [ %i.fs, %.preheader3.loopexit.epilog-lcssa ] ; 6 uses
  %.16.i.lcssa = phi ptr [ %.15.i64, %.preheader4 ], [ %.17.i, %.preheader3.loopexit.unr-lcssa ], [ %.17.i.epil, %.preheader3.loopexit.epilog-lcssa ] ; 5 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ %i.gm, %.preheader3.loopexit.unr-lcssa ], [ %i.fy, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %i.fz = icmp slt i32 %.6168.i.lcssa, %i.q
  br i1 %i.fz, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %.preheader3
  %i.ga = sub i32 %i.dz, %.6168.i.lcssa
  %.neg192 = add nuw i32 %.6168.i.lcssa, 1
  %xtraiter180 = and i32 %i.ga, 1
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol

.lr.ph59.prol:                                    ; preds = %.lr.ph59.preheader
  %i.gb = and i32 %.6168.i.lcssa, 7
  %.not175.i.prol = icmp eq i32 %i.gb, 0
  br i1 %.not175.i.prol, label %bb.w, label %.lr.ph59.prol.loopexit.unr-lcssa

bb.w:                                             ; preds = %.lr.ph59.prol
  %i.gc = getelementptr inbounds nuw i8, ptr %.16.i.lcssa, i64 1
  %i.gd = load i8, ptr %.16.i.lcssa, align 1
  br label %.lr.ph59.prol.loopexit.unr-lcssa

.lr.ph59.prol.loopexit.unr-lcssa:                 ; preds = %bb.w, %.lr.ph59.prol
  %.19.i.prol = phi ptr [ %.16.i.lcssa, %.lr.ph59.prol ], [ %i.gc, %bb.w ] ; 2 uses
  %.3.i.prol = phi i8 [ %.0.i.lcssa, %.lr.ph59.prol ], [ %i.gd, %bb.w ] ; 2 uses
  %i.ge = lshr i8 %.3.i.prol, 7
  store i8 %i.ge, ptr %.6.i65, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.6.i65, i64 1 ; 2 uses
  %i.gg = shl i8 %.3.i.prol, 1
  %i.gh = add nuw nsw i32 %.6168.i.lcssa, 1
  br label %.lr.ph59.prol.loopexit

.lr.ph59.prol.loopexit:                           ; preds = %.lr.ph59.prol.loopexit.unr-lcssa, %.lr.ph59.preheader
  %.19.i.lcssa.unr = phi ptr [ poison, %.lr.ph59.preheader ], [ %.19.i.prol, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.lcssa152.unr = phi ptr [ poison, %.lr.ph59.preheader ], [ %i.gf, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.2.i58.unr = phi i8 [ %.0.i.lcssa, %.lr.ph59.preheader ], [ %i.gg, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.7.i57.unr = phi ptr [ %.6.i65, %.lr.ph59.preheader ], [ %i.gf, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.18.i56.unr = phi ptr [ %.16.i.lcssa, %.lr.ph59.preheader ], [ %.19.i.prol, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.7169.i55.unr = phi i32 [ %.6168.i.lcssa, %.lr.ph59.preheader ], [ %i.gh, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %i.gi = icmp eq i32 %i.ea, %.neg192
  br i1 %i.gi, label %._crit_edge60, label %.lr.ph59

.lr.ph51:                                         ; preds = %.lr.ph51.1, %.lr.ph51.preheader.new
  %.0.i50 = phi i8 [ 0, %.lr.ph51.preheader.new ], [ %i.gm, %.lr.ph51.1 ]
  %.16.i49 = phi ptr [ %.15.i64, %.lr.ph51.preheader.new ], [ %.17.i, %.lr.ph51.1 ] ; 3 uses
  %.6168.i48 = phi i32 [ 0, %.lr.ph51.preheader.new ], [ %i.gn, %.lr.ph51.1 ] ; 2 uses
  %niter179 = phi i32 [ 0, %.lr.ph51.preheader.new ], [ %niter179.next.1, %.lr.ph51.1 ]
  %i.gj = and i32 %.6168.i48, 6
  %.not176.i = icmp eq i32 %i.gj, 0
  br i1 %.not176.i, label %bb.x, label %.lr.ph51.1

bb.x:                                             ; preds = %.lr.ph51
  %i.gk = getelementptr inbounds nuw i8, ptr %.16.i49, i64 1
  %i.gl = load i8, ptr %.16.i49, align 1
  br label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %bb.x, %.lr.ph51
  %.17.i = phi ptr [ %.16.i49, %.lr.ph51 ], [ %i.gk, %bb.x ] ; 3 uses
  %.1.i = phi i8 [ %.0.i50, %.lr.ph51 ], [ %i.gl, %bb.x ]
  %i.gm = shl i8 %.1.i, 2                         ; 3 uses
  %i.gn = add nuw nsw i32 %.6168.i48, 2           ; 2 uses
  %niter179.next.1 = add nuw nsw i32 %niter179, 2 ; 2 uses
  %niter179.ncmp.1 = icmp eq i32 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph51, !llvm.loop !9

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %bb.aa
  %.2.i58 = phi i8 [ %i.gz, %bb.aa ], [ %.2.i58.unr, %.lr.ph59.prol.loopexit ]
  %.7.i57 = phi ptr [ %i.gy, %bb.aa ], [ %.7.i57.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.18.i56 = phi ptr [ %.19.i.1, %bb.aa ], [ %.18.i56.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.7169.i55 = phi i32 [ %i.ha, %bb.aa ], [ %.7169.i55.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %i.go = and i32 %.7169.i55, 7
  %.not175.i = icmp eq i32 %i.go, 0
  br i1 %.not175.i, label %bb.y, label %.lr.ph59.1

bb.y:                                             ; preds = %.lr.ph59
  %i.gp = getelementptr inbounds nuw i8, ptr %.18.i56, i64 1
  %i.gq = load i8, ptr %.18.i56, align 1
  br label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %bb.y, %.lr.ph59
  %.19.i = phi ptr [ %.18.i56, %.lr.ph59 ], [ %i.gp, %bb.y ] ; 3 uses
  %.3.i = phi i8 [ %.2.i58, %.lr.ph59 ], [ %i.gq, %bb.y ] ; 2 uses
  %i.gr = lshr i8 %.3.i, 7
  store i8 %i.gr, ptr %.7.i57, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.7.i57, i64 1
  %i.gt = shl i8 %.3.i, 1
  %i.gu = and i32 %.7169.i55, 7
  %.not175.i.1 = icmp eq i32 %i.gu, 7
  br i1 %.not175.i.1, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph59.1
  %i.gv = getelementptr inbounds nuw i8, ptr %.19.i, i64 1
  %i.gw = load i8, ptr %.19.i, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph59.1
  %.19.i.1 = phi ptr [ %.19.i, %.lr.ph59.1 ], [ %i.gv, %bb.z ] ; 2 uses
  %.3.i.1 = phi i8 [ %i.gt, %.lr.ph59.1 ], [ %i.gw, %bb.z ] ; 2 uses
  %i.gx = lshr i8 %.3.i.1, 7
  store i8 %i.gx, ptr %i.gs, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.7.i57, i64 2 ; 2 uses
  %i.gz = shl i8 %.3.i.1, 1
  %i.ha = add nuw nsw i32 %.7169.i55, 2           ; 2 uses
  %exitcond105.not.1 = icmp eq i32 %i.ha, %i.q
  br i1 %exitcond105.not.1, label %._crit_edge60, label %.lr.ph59, !llvm.loop !10

._crit_edge60:                                    ; preds = %.lr.ph59.prol.loopexit, %bb.aa, %.preheader3
  %.18.i.lcssa = phi ptr [ %.16.i.lcssa, %.preheader3 ], [ %.19.i.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %.19.i.1, %bb.aa ]
  %.7.i.lcssa = phi ptr [ %.6.i65, %.preheader3 ], [ %.lcssa152.unr, %.lr.ph59.prol.loopexit ], [ %i.gy, %bb.aa ]
  %i.hb = getelementptr inbounds i8, ptr %.18.i.lcssa, i64 %i.dx
  %i.hc = getelementptr inbounds i8, ptr %.7.i.lcssa, i64 %i.dy
  %.not174.i = icmp eq i32 %i.fr, 0
  br i1 %.not174.i, label %BlitBto1.exit, label %.preheader4, !llvm.loop !11

BlitBto1.exit:                                    ; preds = %._crit_edge, %._crit_edge42, %._crit_edge60, %._crit_edge78, %.preheader13, %.preheader9, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit1bto2(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 2                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = add i32 %i.q, %i.b                       ; 6 uses
  %i.s = add nsw i32 %i.r, 7
  %.neg.i = sdiv i32 %i.s, -8
  %i.t = add i32 %i.r, %i.h
  %i.u = add i32 %i.t, %.neg.i                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 15728640
  %i.z = icmp eq i32 %i.y, 1048576
  %.not102.i37 = icmp eq i32 %i.d, 0              ; 2 uses
  br i1 %i.z, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto2.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %i.m to i64
  %i.ac = add i32 %i.q, %i.b
  %i.ad = add i32 %i.q, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto2.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.ae = sext i32 %i.u to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = add i32 %i.q, %i.b
  %i.ah = add i32 %i.q, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge34
  %.in40 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ai, %._crit_edge34 ]
  %.083.i39 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.cc, %._crit_edge34 ] ; 4 uses
  %.087.i38 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.cb, %._crit_edge34 ] ; 3 uses
  %i.ai = add nsw i32 %.in40, -1                  ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8             ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader1
  %xtraiter77 = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter82 = and i32 %i.aj, 2147483646
  br label %.lr.ph25

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph25.1
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.078.i24.epil.init = phi i8 [ 0, %.lr.ph25.preheader ], [ %i.bg, %.preheader.loopexit.unr-lcssa ]
  %.188.i23.epil.init = phi ptr [ %.087.i38, %.lr.ph25.preheader ], [ %.289.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.093.i22.epil.init = phi i32 [ 0, %.lr.ph25.preheader ], [ %i.bh, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.am = and i32 %.093.i22.epil.init, 7
  %.not104.i.epil = icmp eq i32 %i.am, 0
  br i1 %.not104.i.epil, label %bb.b, label %.preheader.loopexit.epilog-lcssa

bb.b:                                             ; preds = %.lr.ph25.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.188.i23.epil.init, i64 1
  %i.ao = load i8, ptr %.188.i23.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.b, %.lr.ph25.epil.preheader
  %.289.i.epil = phi ptr [ %.188.i23.epil.init, %.lr.ph25.epil.preheader ], [ %i.an, %bb.b ]
  %.179.i.epil = phi i8 [ %.078.i24.epil.init, %.lr.ph25.epil.preheader ], [ %i.ao, %bb.b ]
  %i.ap = lshr i8 %.179.i.epil, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.093.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.aj, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.188.i.lcssa = phi ptr [ %.087.i38, %.preheader1 ], [ %.289.i, %.preheader.loopexit.unr-lcssa ], [ %.289.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.078.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.bg, %.preheader.loopexit.unr-lcssa ], [ %i.ap, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.aq = icmp slt i32 %.093.i.lcssa, %i.r
  br i1 %i.aq, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.ar = sub i32 %i.ag, %.093.i.lcssa
  %.neg86 = add nuw i32 %.093.i.lcssa, 1
  %xtraiter84 = and i32 %i.ar, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %i.as = and i32 %.093.i.lcssa, 7
  %.not103.i.prol = icmp eq i32 %i.as, 0
  br i1 %.not103.i.prol, label %bb.c, label %.lr.ph33.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph33.prol
  %i.at = getelementptr inbounds nuw i8, ptr %.188.i.lcssa, i64 1
  %i.au = load i8, ptr %.188.i.lcssa, align 1
  br label %.lr.ph33.prol.loopexit.unr-lcssa

.lr.ph33.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph33.prol
  %.4.i.prol = phi ptr [ %.188.i.lcssa, %.lr.ph33.prol ], [ %i.at, %bb.c ] ; 2 uses
  %.381.i.prol = phi i8 [ %.078.i.lcssa, %.lr.ph33.prol ], [ %i.au, %bb.c ] ; 2 uses
  %i.av = and i8 %.381.i.prol, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  store i16 %i.ay, ptr %.083.i39, align 2
  %i.az = lshr i8 %.381.i.prol, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.083.i39, i64 2 ; 2 uses
  %i.bb = add nuw nsw i32 %.093.i.lcssa, 1
  br label %.lr.ph33.prol.loopexit

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.4.i.lcssa.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.280.i32.unr = phi i8 [ %.078.i.lcssa, %.lr.ph33.preheader ], [ %i.az, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.184.i31.unr = phi ptr [ %.083.i39, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.390.i30.unr = phi ptr [ %.188.i.lcssa, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.194.i29.unr = phi i32 [ %.093.i.lcssa, %.lr.ph33.preheader ], [ %i.bb, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i32 %i.ah, %.neg86
  br i1 %i.bc, label %._crit_edge34, label %.lr.ph33

.lr.ph25:                                         ; preds = %.lr.ph25.1, %.lr.ph25.preheader.new
  %.078.i24 = phi i8 [ 0, %.lr.ph25.preheader.new ], [ %i.bg, %.lr.ph25.1 ]
  %.188.i23 = phi ptr [ %.087.i38, %.lr.ph25.preheader.new ], [ %.289.i, %.lr.ph25.1 ] ; 3 uses
  %.093.i22 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.bh, %.lr.ph25.1 ] ; 2 uses
  %niter83 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter83.next.1, %.lr.ph25.1 ]
  %i.bd = and i32 %.093.i22, 6
  %.not104.i = icmp eq i32 %i.bd, 0
  br i1 %.not104.i, label %bb.d, label %.lr.ph25.1

bb.d:                                             ; preds = %.lr.ph25
  %i.be = getelementptr inbounds nuw i8, ptr %.188.i23, i64 1
  %i.bf = load i8, ptr %.188.i23, align 1
  br label %.lr.ph25.1

.lr.ph25.1:                                       ; preds = %.lr.ph25, %bb.d
  %.289.i = phi ptr [ %.188.i23, %.lr.ph25 ], [ %i.be, %bb.d ] ; 3 uses
  %.179.i = phi i8 [ %.078.i24, %.lr.ph25 ], [ %i.bf, %bb.d ]
  %i.bg = lshr i8 %.179.i, 2                      ; 3 uses
  %i.bh = add nuw nsw i32 %.093.i22, 2            ; 2 uses
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !12

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %bb.g
  %.280.i32 = phi i8 [ %i.by, %bb.g ], [ %.280.i32.unr, %.lr.ph33.prol.loopexit ]
  %.184.i31 = phi ptr [ %i.bz, %bb.g ], [ %.184.i31.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.390.i30 = phi ptr [ %.4.i.1, %bb.g ], [ %.390.i30.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.194.i29 = phi i32 [ %i.ca, %bb.g ], [ %.194.i29.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %i.bi = and i32 %.194.i29, 7
  %.not103.i = icmp eq i32 %i.bi, 0
  br i1 %.not103.i, label %bb.e, label %.lr.ph33.1

bb.e:                                             ; preds = %.lr.ph33
  %i.bj = getelementptr inbounds nuw i8, ptr %.390.i30, i64 1
  %i.bk = load i8, ptr %.390.i30, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %bb.e, %.lr.ph33
  %.4.i = phi ptr [ %.390.i30, %.lr.ph33 ], [ %i.bj, %bb.e ] ; 3 uses
  %.381.i = phi i8 [ %.280.i32, %.lr.ph33 ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bl = and i8 %.381.i, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  store i16 %i.bo, ptr %.184.i31, align 2
  %i.bp = lshr i8 %.381.i, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.184.i31, i64 2
  %i.br = and i32 %.194.i29, 7
  %.not103.i.1 = icmp eq i32 %i.br, 7
  br i1 %.not103.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph33.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bt = load i8, ptr %.4.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph33.1
  %.4.i.1 = phi ptr [ %.4.i, %.lr.ph33.1 ], [ %i.bs, %bb.f ] ; 2 uses
  %.381.i.1 = phi i8 [ %i.bp, %.lr.ph33.1 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.bu = and i8 %.381.i.1, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2
  store i16 %i.bx, ptr %i.bq, align 2
  %i.by = lshr i8 %.381.i.1, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.184.i31, i64 4 ; 2 uses
  %i.ca = add nuw nsw i32 %.194.i29, 2            ; 2 uses
  %exitcond49.not.1 = icmp eq i32 %i.ca, %i.r
  br i1 %exitcond49.not.1, label %._crit_edge34, label %.lr.ph33, !llvm.loop !13

._crit_edge34:                                    ; preds = %.lr.ph33.prol.loopexit, %bb.g, %.preheader
  %.390.i.lcssa = phi ptr [ %.188.i.lcssa, %.preheader ], [ %.4.i.lcssa.unr, %.lr.ph33.prol.loopexit ], [ %.4.i.1, %bb.g ]
  %.184.i.lcssa = phi ptr [ %.083.i39, %.preheader ], [ %.lcssa68.unr, %.lr.ph33.prol.loopexit ], [ %i.bz, %bb.g ]
  %i.cb = getelementptr inbounds i8, ptr %.390.i.lcssa, i64 %i.ae
  %i.cc = getelementptr inbounds [2 x i8], ptr %.184.i.lcssa, i64 %i.af
  %.not102.i = icmp eq i32 %i.ai, 0
  br i1 %.not102.i, label %BlitBto2.exit, label %.preheader1, !llvm.loop !14

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.cd, %._crit_edge ]
  %.285.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.dx, %._crit_edge ] ; 4 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.dw, %._crit_edge ] ; 3 uses
  %i.cd = add nsw i32 %.in, -1                    ; 2 uses
  %i.ce = load i32, ptr %i.p, align 8             ; 7 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.ce, 1
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ce, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.db, %.preheader3.loopexit.unr-lcssa ]
  %.6.i8.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.295.i7.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dc, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.ch = and i32 %.295.i7.epil.init, 7
  %.not101.i.epil = icmp eq i32 %i.ch, 0
end_hunk_0
begin_hunk_1_@Blit1bto3:bb.a
  %.not117.i = icmp eq i32 %i.ar, 0
  br i1 %.not117.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph33
  %i.as = getelementptr inbounds nuw i8, ptr %.3104.i30, i64 1
  %i.at = load i8, ptr %.3104.i30, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph33
  %.4.i = phi ptr [ %.3104.i30, %.lr.ph33 ], [ %i.as, %bb.d ] ; 2 uses
  %.395.i = phi i8 [ %.294.i32, %.lr.ph33 ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = zext i8 %.395.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = and i64 %i.av, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1
  store i8 %i.ay, ptr %.198.i31, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.198.i31, i64 1
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.198.i31, i64 2
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = lshr i8 %.395.i, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.198.i31, i64 3 ; 2 uses
  %i.bh = add nuw nsw i32 %.1108.i29, 1           ; 2 uses
  %exitcond49.not = icmp eq i32 %i.bh, %i.q
  br i1 %exitcond49.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !19

._crit_edge34:                                    ; preds = %bb.e, %.preheader
  %.3104.i.lcssa = phi ptr [ %.1102.i.lcssa, %.preheader ], [ %.4.i, %bb.e ]
  %.198.i.lcssa = phi ptr [ %.097.i39, %.preheader ], [ %i.bg, %bb.e ]
  %i.bi = getelementptr inbounds i8, ptr %.3104.i.lcssa, i64 %i.ab
  %i.bj = getelementptr inbounds i8, ptr %.198.i.lcssa, i64 %i.ac
  %.not116.i = icmp eq i32 %i.ad, 0
  br i1 %.not116.i, label %BlitBto3.exit, label %.preheader1, !llvm.loop !20

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.bk, %._crit_edge ]
  %.299.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.cq, %._crit_edge ] ; 2 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.cp, %._crit_edge ] ; 3 uses
  %i.bk = add nsw i32 %.in, -1                    ; 2 uses
  %i.bl = load i32, ptr %i.o, align 8             ; 7 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.bl, 1
  br i1 %i.bn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bl, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.bw, %.preheader3.loopexit.unr-lcssa ]
  %.6.i8.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.2109.i7.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bx, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bo = and i32 %.2109.i7.epil.init, 7
  %.not115.i.epil = icmp eq i32 %i.bo, 0
  br i1 %.not115.i.epil, label %bb.f, label %.preheader3.loopexit.epilog-lcssa

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %.6.i8.epil.init, i64 1
  %i.bq = load i8, ptr %.6.i8.epil.init, align 1
  br label %.preheader3.loopexit.epilog-lcssa

.preheader3.loopexit.epilog-lcssa:                ; preds = %bb.f, %.lr.ph.epil.preheader
  %.7.i.epil = phi ptr [ %.6.i8.epil.init, %.lr.ph.epil.preheader ], [ %i.bp, %bb.f ]
  %.1.i.epil = phi i8 [ %.0.i9.epil.init, %.lr.ph.epil.preheader ], [ %i.bq, %bb.f ]
  %i.br = shl i8 %.1.i.epil, 1
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.epilog-lcssa, %.preheader3.loopexit.unr-lcssa, %.preheader4
  %.2109.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.bl, %.preheader3.loopexit.unr-lcssa ], [ %i.bl, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ], [ %.7.i.epil, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ %i.bw, %.preheader3.loopexit.unr-lcssa ], [ %i.br, %.preheader3.loopexit.epilog-lcssa ]
  %i.bs = icmp slt i32 %.2109.i.lcssa, %i.q
  br i1 %i.bs, label %.lr.ph16, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0.i9 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph.1 ]
  %.6.i8 = phi ptr [ %.5.i20, %.lr.ph.preheader.new ], [ %.7.i, %.lr.ph.1 ] ; 3 uses
  %.2109.i7 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.bt = and i32 %.2109.i7, 6
  %.not115.i = icmp eq i32 %i.bt, 0
  br i1 %.not115.i, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.6.i8, i64 1
  %i.bv = load i8, ptr %.6.i8, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %.7.i = phi ptr [ %.6.i8, %.lr.ph ], [ %i.bu, %bb.g ] ; 3 uses
  %.1.i = phi i8 [ %.0.i9, %.lr.ph ], [ %i.bv, %bb.g ]
  %i.bw = shl i8 %.1.i, 2                         ; 3 uses
  %i.bx = add nuw nsw i32 %.2109.i7, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

.lr.ph16:                                         ; preds = %.preheader3, %bb.i
  %.2.i15 = phi i8 [ %i.cm, %bb.i ], [ %.0.i.lcssa, %.preheader3 ]
  %.3100.i14 = phi ptr [ %i.cn, %bb.i ], [ %.299.i21, %.preheader3 ] ; 4 uses
  %.8.i13 = phi ptr [ %.9.i, %bb.i ], [ %.6.i.lcssa, %.preheader3 ] ; 3 uses
  %.3110.i12 = phi i32 [ %i.co, %bb.i ], [ %.2109.i.lcssa, %.preheader3 ] ; 2 uses
  %i.by = and i32 %.3110.i12, 7
  %.not114.i = icmp eq i32 %i.by, 0
  br i1 %.not114.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph16
  %i.bz = getelementptr inbounds nuw i8, ptr %.8.i13, i64 1
  %i.ca = load i8, ptr %.8.i13, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph16
  %.9.i = phi ptr [ %.8.i13, %.lr.ph16 ], [ %i.bz, %bb.h ] ; 2 uses
  %.3.i = phi i8 [ %.2.i15, %.lr.ph16 ], [ %i.ca, %bb.h ] ; 2 uses
  %i.cb = lshr i8 %.3.i, 5
  %i.cc = and i8 %i.cb, 4
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1
  store i8 %i.cf, ptr %.3100.i14, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 1
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 2
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = shl i8 %.3.i, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 3 ; 2 uses
  %i.co = add nuw nsw i32 %.3110.i12, 1           ; 2 uses
  %exitcond47.not = icmp eq i32 %i.co, %i.q
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.i, %.preheader3
  %.8.i.lcssa = phi ptr [ %.6.i.lcssa, %.preheader3 ], [ %.9.i, %bb.i ]
  %.3100.i.lcssa = phi ptr [ %.299.i21, %.preheader3 ], [ %i.cn, %bb.i ]
  %i.cp = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.z
  %i.cq = getelementptr inbounds i8, ptr %.3100.i.lcssa, i64 %i.aa
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %BlitBto3.exit, label %.preheader4, !llvm.loop !23

BlitBto3.exit:                                    ; preds = %._crit_edge, %._crit_edge34, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit1bto4(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 4                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = add i32 %i.q, %i.b                       ; 6 uses
  %i.s = add nsw i32 %i.r, 7
  %.neg.i = sdiv i32 %i.s, -8
  %i.t = add i32 %i.r, %i.h
  %i.u = add i32 %i.t, %.neg.i                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 15728640
  %i.z = icmp eq i32 %i.y, 1048576
  %.not102.i37 = icmp eq i32 %i.d, 0              ; 2 uses
  br i1 %i.z, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto4.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %i.m to i64
  %i.ac = add i32 %i.q, %i.b
  %i.ad = add i32 %i.q, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto4.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.ae = sext i32 %i.u to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = add i32 %i.q, %i.b
  %i.ah = add i32 %i.q, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge34
  %.in40 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ai, %._crit_edge34 ]
  %.087.i39 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.cc, %._crit_edge34 ] ; 4 uses
  %.091.i38 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.cb, %._crit_edge34 ] ; 3 uses
  %i.ai = add nsw i32 %.in40, -1                  ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8             ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader1
  %xtraiter77 = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter82 = and i32 %i.aj, 2147483646
  br label %.lr.ph25

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph25.1
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.078.i24.epil.init = phi i8 [ 0, %.lr.ph25.preheader ], [ %i.bg, %.preheader.loopexit.unr-lcssa ]
  %.082.i23.epil.init = phi i32 [ 0, %.lr.ph25.preheader ], [ %i.bh, %.preheader.loopexit.unr-lcssa ]
  %.192.i22.epil.init = phi ptr [ %.091.i38, %.lr.ph25.preheader ], [ %.293.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod81 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.am = and i32 %.082.i23.epil.init, 7
  %.not104.i.epil = icmp eq i32 %i.am, 0
  br i1 %.not104.i.epil, label %bb.b, label %.preheader.loopexit.epilog-lcssa

bb.b:                                             ; preds = %.lr.ph25.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.192.i22.epil.init, i64 1
  %i.ao = load i8, ptr %.192.i22.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.b, %.lr.ph25.epil.preheader
  %.293.i.epil = phi ptr [ %.192.i22.epil.init, %.lr.ph25.epil.preheader ], [ %i.an, %bb.b ]
  %.179.i.epil = phi i8 [ %.078.i24.epil.init, %.lr.ph25.epil.preheader ], [ %i.ao, %bb.b ]
  %i.ap = lshr i8 %.179.i.epil, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.192.i.lcssa = phi ptr [ %.091.i38, %.preheader1 ], [ %.293.i, %.preheader.loopexit.unr-lcssa ], [ %.293.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.082.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.aj, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.078.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.bg, %.preheader.loopexit.unr-lcssa ], [ %i.ap, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.aq = icmp slt i32 %.082.i.lcssa, %i.r
  br i1 %i.aq, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.ar = sub i32 %i.ag, %.082.i.lcssa
  %.neg86 = add nuw i32 %.082.i.lcssa, 1
  %xtraiter84 = and i32 %i.ar, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %i.as = and i32 %.082.i.lcssa, 7
  %.not103.i.prol = icmp eq i32 %i.as, 0
  br i1 %.not103.i.prol, label %bb.c, label %.lr.ph33.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph33.prol
  %i.at = getelementptr inbounds nuw i8, ptr %.192.i.lcssa, i64 1
  %i.au = load i8, ptr %.192.i.lcssa, align 1
  br label %.lr.ph33.prol.loopexit.unr-lcssa

.lr.ph33.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph33.prol
  %.4.i.prol = phi ptr [ %.192.i.lcssa, %.lr.ph33.prol ], [ %i.at, %bb.c ] ; 2 uses
  %.381.i.prol = phi i8 [ %.078.i.lcssa, %.lr.ph33.prol ], [ %i.au, %bb.c ] ; 2 uses
  %i.av = and i8 %.381.i.prol, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr %.087.i39, align 4
  %i.az = lshr i8 %.381.i.prol, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.087.i39, i64 4 ; 2 uses
  %i.bb = add nuw nsw i32 %.082.i.lcssa, 1
  br label %.lr.ph33.prol.loopexit

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.4.i.lcssa.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.280.i32.unr = phi i8 [ %.078.i.lcssa, %.lr.ph33.preheader ], [ %i.az, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.183.i31.unr = phi i32 [ %.082.i.lcssa, %.lr.ph33.preheader ], [ %i.bb, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.188.i30.unr = phi ptr [ %.087.i39, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.394.i29.unr = phi ptr [ %.192.i.lcssa, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i32 %i.ah, %.neg86
  br i1 %i.bc, label %._crit_edge34, label %.lr.ph33

.lr.ph25:                                         ; preds = %.lr.ph25.1, %.lr.ph25.preheader.new
  %.078.i24 = phi i8 [ 0, %.lr.ph25.preheader.new ], [ %i.bg, %.lr.ph25.1 ]
  %.082.i23 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.bh, %.lr.ph25.1 ] ; 2 uses
  %.192.i22 = phi ptr [ %.091.i38, %.lr.ph25.preheader.new ], [ %.293.i, %.lr.ph25.1 ] ; 3 uses
  %niter83 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter83.next.1, %.lr.ph25.1 ]
  %i.bd = and i32 %.082.i23, 6
  %.not104.i = icmp eq i32 %i.bd, 0
  br i1 %.not104.i, label %bb.d, label %.lr.ph25.1

bb.d:                                             ; preds = %.lr.ph25
  %i.be = getelementptr inbounds nuw i8, ptr %.192.i22, i64 1
  %i.bf = load i8, ptr %.192.i22, align 1
  br label %.lr.ph25.1

.lr.ph25.1:                                       ; preds = %.lr.ph25, %bb.d
  %.293.i = phi ptr [ %.192.i22, %.lr.ph25 ], [ %i.be, %bb.d ] ; 3 uses
  %.179.i = phi i8 [ %.078.i24, %.lr.ph25 ], [ %i.bf, %bb.d ]
  %i.bg = lshr i8 %.179.i, 2                      ; 3 uses
  %i.bh = add nuw nsw i32 %.082.i23, 2            ; 2 uses
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !24

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %bb.g
  %.280.i32 = phi i8 [ %i.by, %bb.g ], [ %.280.i32.unr, %.lr.ph33.prol.loopexit ]
  %.183.i31 = phi i32 [ %i.ca, %bb.g ], [ %.183.i31.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.188.i30 = phi ptr [ %i.bz, %bb.g ], [ %.188.i30.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.394.i29 = phi ptr [ %.4.i.1, %bb.g ], [ %.394.i29.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %i.bi = and i32 %.183.i31, 7
  %.not103.i = icmp eq i32 %i.bi, 0
  br i1 %.not103.i, label %bb.e, label %.lr.ph33.1

bb.e:                                             ; preds = %.lr.ph33
  %i.bj = getelementptr inbounds nuw i8, ptr %.394.i29, i64 1
  %i.bk = load i8, ptr %.394.i29, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %bb.e, %.lr.ph33
  %.4.i = phi ptr [ %.394.i29, %.lr.ph33 ], [ %i.bj, %bb.e ] ; 3 uses
  %.381.i = phi i8 [ %.280.i32, %.lr.ph33 ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bl = and i8 %.381.i, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  store i32 %i.bo, ptr %.188.i30, align 4
  %i.bp = lshr i8 %.381.i, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.188.i30, i64 4
  %i.br = and i32 %.183.i31, 7
  %.not103.i.1 = icmp eq i32 %i.br, 7
  br i1 %.not103.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph33.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bt = load i8, ptr %.4.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph33.1
  %.4.i.1 = phi ptr [ %.4.i, %.lr.ph33.1 ], [ %i.bs, %bb.f ] ; 2 uses
  %.381.i.1 = phi i8 [ %i.bp, %.lr.ph33.1 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.bu = and i8 %.381.i.1, 1
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  store i32 %i.bx, ptr %i.bq, align 4
  %i.by = lshr i8 %.381.i.1, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.188.i30, i64 8 ; 2 uses
  %i.ca = add nuw nsw i32 %.183.i31, 2            ; 2 uses
  %exitcond49.not.1 = icmp eq i32 %i.ca, %i.r
  br i1 %exitcond49.not.1, label %._crit_edge34, label %.lr.ph33, !llvm.loop !25

._crit_edge34:                                    ; preds = %.lr.ph33.prol.loopexit, %bb.g, %.preheader
  %.394.i.lcssa = phi ptr [ %.192.i.lcssa, %.preheader ], [ %.4.i.lcssa.unr, %.lr.ph33.prol.loopexit ], [ %.4.i.1, %bb.g ]
  %.188.i.lcssa = phi ptr [ %.087.i39, %.preheader ], [ %.lcssa68.unr, %.lr.ph33.prol.loopexit ], [ %i.bz, %bb.g ]
  %i.cb = getelementptr inbounds i8, ptr %.394.i.lcssa, i64 %i.ae
  %i.cc = getelementptr inbounds [4 x i8], ptr %.188.i.lcssa, i64 %i.af
  %.not102.i = icmp eq i32 %i.ai, 0
  br i1 %.not102.i, label %BlitBto4.exit, label %.preheader1, !llvm.loop !26

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.cd, %._crit_edge ]
  %.289.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.dx, %._crit_edge ] ; 4 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.dw, %._crit_edge ] ; 3 uses
  %i.cd = add nsw i32 %.in, -1                    ; 2 uses
  %i.ce = load i32, ptr %i.p, align 8             ; 7 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.ce, 1
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ce, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.db, %.preheader3.loopexit.unr-lcssa ]
  %.284.i8.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dc, %.preheader3.loopexit.unr-lcssa ]
  %.6.i7.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.ch = and i32 %.284.i8.epil.init, 7
  %.not101.i.epil = icmp eq i32 %i.ch, 0
end_hunk_1
begin_hunk_2_@Blit1bto1Key:bb.a
.preheader7:                                      ; preds = %.preheader7.loopexit.epilog-lcssa, %.preheader7.loopexit.unr-lcssa, %.preheader8
  %.1168.i.lcssa = phi ptr [ %.0167.i46, %.preheader8 ], [ %.2169.i, %.preheader7.loopexit.unr-lcssa ], [ %.2169.i.epil, %.preheader7.loopexit.epilog-lcssa ] ; 2 uses
  %.0154.i.lcssa = phi i32 [ 0, %.preheader8 ], [ %i.ag, %.preheader7.loopexit.unr-lcssa ], [ %i.ag, %.preheader7.loopexit.epilog-lcssa ] ; 2 uses
  %.0150.i.lcssa = phi i8 [ 0, %.preheader8 ], [ %i.ar, %.preheader7.loopexit.unr-lcssa ], [ %i.am, %.preheader7.loopexit.epilog-lcssa ]
  %i.an = icmp slt i32 %.0154.i.lcssa, %i.s
  br i1 %i.an, label %.lr.ph41, label %._crit_edge42

.lr.ph33:                                         ; preds = %.lr.ph33.1, %.lr.ph33.preheader.new
  %.0150.i32 = phi i8 [ 0, %.lr.ph33.preheader.new ], [ %i.ar, %.lr.ph33.1 ]
  %.0154.i31 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %i.as, %.lr.ph33.1 ] ; 2 uses
  %.1168.i30 = phi ptr [ %.0167.i46, %.lr.ph33.preheader.new ], [ %.2169.i, %.lr.ph33.1 ] ; 3 uses
  %niter168 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %niter168.next.1, %.lr.ph33.1 ]
  %i.ao = and i32 %.0154.i31, 6
  %.not198.i = icmp eq i32 %i.ao, 0
  br i1 %.not198.i, label %bb.d, label %.lr.ph33.1

bb.d:                                             ; preds = %.lr.ph33
  %i.ap = getelementptr inbounds nuw i8, ptr %.1168.i30, i64 1
  %i.aq = load i8, ptr %.1168.i30, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %.lr.ph33, %bb.d
  %.2169.i = phi ptr [ %.1168.i30, %.lr.ph33 ], [ %i.ap, %bb.d ] ; 3 uses
  %.1151.i = phi i8 [ %.0150.i32, %.lr.ph33 ], [ %i.aq, %bb.d ]
  %i.ar = lshr i8 %.1151.i, 2                     ; 3 uses
  %i.as = add nuw nsw i32 %.0154.i31, 2           ; 2 uses
  %niter168.next.1 = add nuw nsw i32 %niter168, 2 ; 2 uses
  %niter168.ncmp.1 = icmp eq i32 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !30

.lr.ph41:                                         ; preds = %.preheader7, %bb.h
  %.2152.i40 = phi i8 [ %i.bc, %bb.h ], [ %.0150.i.lcssa, %.preheader7 ]
  %.1155.i39 = phi i32 [ %i.bd, %bb.h ], [ %.0154.i.lcssa, %.preheader7 ] ; 2 uses
  %.1160.i38 = phi ptr [ %i.bb, %bb.h ], [ %.0159.i47, %.preheader7 ] ; 2 uses
  %.3170.i37 = phi ptr [ %.4171.i, %bb.h ], [ %.1168.i.lcssa, %.preheader7 ] ; 3 uses
  %i.at = and i32 %.1155.i39, 7
  %.not196.i = icmp eq i32 %i.at, 0
  br i1 %.not196.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph41
  %i.au = getelementptr inbounds nuw i8, ptr %.3170.i37, i64 1
  %i.av = load i8, ptr %.3170.i37, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph41
  %.4171.i = phi ptr [ %.3170.i37, %.lr.ph41 ], [ %i.au, %bb.e ] ; 2 uses
  %.3153.i = phi i8 [ %.2152.i40, %.lr.ph41 ], [ %i.av, %bb.e ] ; 2 uses
  %i.aw = and i8 %.3153.i, 1                      ; 2 uses
  %i.ax = zext nneg i8 %i.aw to i32
  %.not197.i = icmp eq i32 %i.n, %i.ax
  br i1 %.not197.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  store i8 %i.ba, ptr %.1160.i38, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.1160.i38, i64 1 ; 2 uses
  %i.bc = lshr i8 %.3153.i, 1
  %i.bd = add nuw nsw i32 %.1155.i39, 1           ; 2 uses
  %exitcond103.not = icmp eq i32 %i.bd, %i.s
  br i1 %exitcond103.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !31

._crit_edge42:                                    ; preds = %bb.h, %.preheader7
  %.3170.i.lcssa = phi ptr [ %.1168.i.lcssa, %.preheader7 ], [ %.4171.i, %bb.h ]
  %.1160.i.lcssa = phi ptr [ %.0159.i47, %.preheader7 ], [ %i.bb, %bb.h ]
  %i.be = getelementptr inbounds i8, ptr %.3170.i.lcssa, i64 %i.ad
  %i.bf = getelementptr inbounds i8, ptr %.1160.i.lcssa, i64 %i.ae
  %.not195.i = icmp eq i32 %i.af, 0
  br i1 %.not195.i, label %BlitBto1Key.exit, label %.preheader8, !llvm.loop !32

.preheader12:                                     ; preds = %.preheader12.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader12.lr.ph ], [ %i.bg, %._crit_edge ]
  %.2161.i29 = phi ptr [ %i.h, %.preheader12.lr.ph ], [ %i.cg, %._crit_edge ] ; 2 uses
  %.5172.i28 = phi ptr [ %i.f, %.preheader12.lr.ph ], [ %i.cf, %._crit_edge ] ; 3 uses
  %i.bg = add nsw i32 %.in, -1                    ; 2 uses
  %i.bh = load i32, ptr %i.q, align 8             ; 7 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %.preheader11

.lr.ph.preheader:                                 ; preds = %.preheader12
  %xtraiter = and i32 %i.bh, 1
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bh, 2147483646
  br label %.lr.ph

.preheader11.loopexit.unr-lcssa:                  ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader11, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader11.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0146.i17.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.bs, %.preheader11.loopexit.unr-lcssa ]
  %.2156.i16.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bt, %.preheader11.loopexit.unr-lcssa ]
  %.6173.i15.epil.init = phi ptr [ %.5172.i28, %.lr.ph.preheader ], [ %.7174.i, %.preheader11.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod161 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.bk = and i32 %.2156.i16.epil.init, 7
  %.not194.i.epil = icmp eq i32 %i.bk, 0
  br i1 %.not194.i.epil, label %bb.i, label %.preheader11.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %.6173.i15.epil.init, i64 1
  %i.bm = load i8, ptr %.6173.i15.epil.init, align 1
  br label %.preheader11.loopexit.epilog-lcssa

.preheader11.loopexit.epilog-lcssa:               ; preds = %bb.i, %.lr.ph.epil.preheader
  %.7174.i.epil = phi ptr [ %.6173.i15.epil.init, %.lr.ph.epil.preheader ], [ %i.bl, %bb.i ]
  %.1147.i.epil = phi i8 [ %.0146.i17.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %bb.i ]
  %i.bn = shl i8 %.1147.i.epil, 1
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit.epilog-lcssa, %.preheader11.loopexit.unr-lcssa, %.preheader12
  %.6173.i.lcssa = phi ptr [ %.5172.i28, %.preheader12 ], [ %.7174.i, %.preheader11.loopexit.unr-lcssa ], [ %.7174.i.epil, %.preheader11.loopexit.epilog-lcssa ] ; 2 uses
  %.2156.i.lcssa = phi i32 [ 0, %.preheader12 ], [ %i.bh, %.preheader11.loopexit.unr-lcssa ], [ %i.bh, %.preheader11.loopexit.epilog-lcssa ] ; 2 uses
  %.0146.i.lcssa = phi i8 [ 0, %.preheader12 ], [ %i.bs, %.preheader11.loopexit.unr-lcssa ], [ %i.bn, %.preheader11.loopexit.epilog-lcssa ]
  %i.bo = icmp slt i32 %.2156.i.lcssa, %i.s
  br i1 %i.bo, label %.lr.ph24, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0146.i17 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph.1 ]
  %.2156.i16 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph.1 ] ; 2 uses
  %.6173.i15 = phi ptr [ %.5172.i28, %.lr.ph.preheader.new ], [ %.7174.i, %.lr.ph.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.bp = and i32 %.2156.i16, 6
  %.not194.i = icmp eq i32 %i.bp, 0
  br i1 %.not194.i, label %bb.j, label %.lr.ph.1

bb.j:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.6173.i15, i64 1
  %i.br = load i8, ptr %.6173.i15, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %.7174.i = phi ptr [ %.6173.i15, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.1147.i = phi i8 [ %.0146.i17, %.lr.ph ], [ %i.br, %bb.j ]
  %i.bs = shl i8 %.1147.i, 2                      ; 3 uses
  %i.bt = add nuw nsw i32 %.2156.i16, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader11.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

.lr.ph24:                                         ; preds = %.preheader11, %bb.n
  %.2148.i23 = phi i8 [ %i.cd, %bb.n ], [ %.0146.i.lcssa, %.preheader11 ]
  %.3157.i22 = phi i32 [ %i.ce, %bb.n ], [ %.2156.i.lcssa, %.preheader11 ] ; 2 uses
  %.3162.i21 = phi ptr [ %i.cc, %bb.n ], [ %.2161.i29, %.preheader11 ] ; 2 uses
  %.8.i20 = phi ptr [ %.9.i, %bb.n ], [ %.6173.i.lcssa, %.preheader11 ] ; 3 uses
  %i.bu = and i32 %.3157.i22, 7
  %.not192.i = icmp eq i32 %i.bu, 0
  br i1 %.not192.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph24
  %i.bv = getelementptr inbounds nuw i8, ptr %.8.i20, i64 1
  %i.bw = load i8, ptr %.8.i20, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph24
  %.9.i = phi ptr [ %.8.i20, %.lr.ph24 ], [ %i.bv, %bb.k ] ; 2 uses
  %.3149.i = phi i8 [ %.2148.i23, %.lr.ph24 ], [ %i.bw, %bb.k ] ; 2 uses
  %i.bx = lshr i8 %.3149.i, 7                     ; 2 uses
  %i.by = zext nneg i8 %i.bx to i32
  %.not193.i = icmp eq i32 %i.n, %i.by
  br i1 %.not193.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  store i8 %i.cb, ptr %.3162.i21, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.3162.i21, i64 1 ; 2 uses
  %i.cd = shl i8 %.3149.i, 1
  %i.ce = add nuw nsw i32 %.3157.i22, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.ce, %i.s
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph24, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.n, %.preheader11
  %.8.i.lcssa = phi ptr [ %.6173.i.lcssa, %.preheader11 ], [ %.9.i, %bb.n ]
  %.3162.i.lcssa = phi ptr [ %.2161.i29, %.preheader11 ], [ %i.cc, %bb.n ]
  %i.cf = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.ab
  %i.cg = getelementptr inbounds i8, ptr %.3162.i.lcssa, i64 %i.ac
  %.not191.i = icmp eq i32 %i.bg, 0
  br i1 %.not191.i, label %BlitBto1Key.exit, label %.preheader12, !llvm.loop !35

bb.o:                                             ; preds = %bb.a
  br i1 %i.aa, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.o
  br i1 %.not187.i81, label %BlitBto1Key.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.ch = sext i32 %i.v to i64
  %i.ci = sext i32 %i.l to i64
  %i.cj = add i32 %i.r, %i.b
  %i.ck = add i32 %i.r, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.o
  br i1 %.not187.i81, label %BlitBto1Key.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.cl = sext i32 %i.v to i64
  %i.cm = sext i32 %i.l to i64
  %i.cn = add i32 %i.r, %i.b
  %i.co = add i32 %i.r, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge78
  %.in86 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.cp, %._crit_edge78 ]
  %.4163.i83 = phi ptr [ %i.h, %.preheader1.lr.ph ], [ %i.ed, %._crit_edge78 ] ; 4 uses
  %.10.i82 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.ec, %._crit_edge78 ] ; 3 uses
  %i.cp = add nsw i32 %.in86, -1                  ; 2 uses
  %i.cq = load i32, ptr %i.q, align 8             ; 7 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %.preheader1
  %xtraiter178 = and i32 %i.cq, 1
  %i.cs = icmp eq i32 %i.cq, 1
  br i1 %i.cs, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter183 = and i32 %i.cq, 2147483646
  br label %.lr.ph69

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph69.1
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.preheader, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.0142.i68.epil.init = phi i8 [ 0, %.lr.ph69.preheader ], [ %i.dl, %.preheader.loopexit.unr-lcssa ]
  %.4.i67.epil.init = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.dm, %.preheader.loopexit.unr-lcssa ]
  %.11.i66.epil.init = phi ptr [ %.10.i82, %.lr.ph69.preheader ], [ %.12.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod182 = trunc i32 %i.cq to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.ct = and i32 %.4.i67.epil.init, 7
  %.not190.i.epil = icmp eq i32 %i.ct, 0
  br i1 %.not190.i.epil, label %bb.p, label %.preheader.loopexit.epilog-lcssa

bb.p:                                             ; preds = %.lr.ph69.epil.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.11.i66.epil.init, i64 1
  %i.cv = load i8, ptr %.11.i66.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.p, %.lr.ph69.epil.preheader
  %.12.i.epil = phi ptr [ %.11.i66.epil.init, %.lr.ph69.epil.preheader ], [ %i.cu, %bb.p ]
  %.1143.i.epil = phi i8 [ %.0142.i68.epil.init, %.lr.ph69.epil.preheader ], [ %i.cv, %bb.p ]
  %i.cw = lshr i8 %.1143.i.epil, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.11.i.lcssa = phi ptr [ %.10.i82, %.preheader1 ], [ %.12.i, %.preheader.loopexit.unr-lcssa ], [ %.12.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.4.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.cq, %.preheader.loopexit.unr-lcssa ], [ %i.cq, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.0142.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.dl, %.preheader.loopexit.unr-lcssa ], [ %i.cw, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.cx = icmp slt i32 %.4.i.lcssa, %i.s
  br i1 %i.cx, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.cy = sub i32 %i.cn, %.4.i.lcssa
  %.neg187 = add nuw i32 %.4.i.lcssa, 1
  %xtraiter185 = and i32 %i.cy, 1
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader
  %i.cz = and i32 %.4.i.lcssa, 7
  %.not188.i.prol = icmp eq i32 %i.cz, 0
  br i1 %.not188.i.prol, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph77.prol
  %i.da = getelementptr inbounds nuw i8, ptr %.11.i.lcssa, i64 1
  %i.db = load i8, ptr %.11.i.lcssa, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph77.prol
  %.14.i.prol = phi ptr [ %.11.i.lcssa, %.lr.ph77.prol ], [ %i.da, %bb.q ] ; 2 uses
  %.3145.i.prol = phi i8 [ %.0142.i.lcssa, %.lr.ph77.prol ], [ %i.db, %bb.q ] ; 2 uses
  %i.dc = and i8 %.3145.i.prol, 1                 ; 2 uses
  %i.dd = zext nneg i8 %i.dc to i32
  %.not189.i.prol = icmp eq i32 %i.n, %i.dd
  br i1 %.not189.i.prol, label %.lr.ph77.prol.loopexit.unr-lcssa, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 %i.dc, ptr %.4163.i83, align 1
  br label %.lr.ph77.prol.loopexit.unr-lcssa

.lr.ph77.prol.loopexit.unr-lcssa:                 ; preds = %bb.s, %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.4163.i83, i64 1 ; 2 uses
  %i.df = lshr i8 %.3145.i.prol, 1
  %i.dg = add nuw nsw i32 %.4.i.lcssa, 1
  br label %.lr.ph77.prol.loopexit

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.de, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.14.i.lcssa.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.2144.i76.unr = phi i8 [ %.0142.i.lcssa, %.lr.ph77.preheader ], [ %i.df, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5.i75.unr = phi i32 [ %.4.i.lcssa, %.lr.ph77.preheader ], [ %i.dg, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5164.i74.unr = phi ptr [ %.4163.i83, %.lr.ph77.preheader ], [ %i.de, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.13.i73.unr = phi ptr [ %.11.i.lcssa, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %i.dh = icmp eq i32 %i.co, %.neg187
  br i1 %i.dh, label %._crit_edge78, label %.lr.ph77

.lr.ph69:                                         ; preds = %.lr.ph69.1, %.lr.ph69.preheader.new
  %.0142.i68 = phi i8 [ 0, %.lr.ph69.preheader.new ], [ %i.dl, %.lr.ph69.1 ]
  %.4.i67 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %i.dm, %.lr.ph69.1 ] ; 2 uses
  %.11.i66 = phi ptr [ %.10.i82, %.lr.ph69.preheader.new ], [ %.12.i, %.lr.ph69.1 ] ; 3 uses
  %niter184 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %niter184.next.1, %.lr.ph69.1 ]
  %i.di = and i32 %.4.i67, 6
  %.not190.i = icmp eq i32 %i.di, 0
  br i1 %.not190.i, label %bb.t, label %.lr.ph69.1

bb.t:                                             ; preds = %.lr.ph69
  %i.dj = getelementptr inbounds nuw i8, ptr %.11.i66, i64 1
  %i.dk = load i8, ptr %.11.i66, align 1
  br label %.lr.ph69.1

.lr.ph69.1:                                       ; preds = %.lr.ph69, %bb.t
  %.12.i = phi ptr [ %.11.i66, %.lr.ph69 ], [ %i.dj, %bb.t ] ; 3 uses
  %.1143.i = phi i8 [ %.0142.i68, %.lr.ph69 ], [ %i.dk, %bb.t ]
  %i.dl = lshr i8 %.1143.i, 2                     ; 3 uses
  %i.dm = add nuw nsw i32 %.4.i67, 2              ; 2 uses
  %niter184.next.1 = add nuw nsw i32 %niter184, 2 ; 2 uses
  %niter184.ncmp.1 = icmp eq i32 %niter184.next.1, %unroll_iter183
  br i1 %niter184.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !36

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %bb.aa
  %.2144.i76 = phi i8 [ %i.ea, %bb.aa ], [ %.2144.i76.unr, %.lr.ph77.prol.loopexit ]
  %.5.i75 = phi i32 [ %i.eb, %bb.aa ], [ %.5.i75.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.5164.i74 = phi ptr [ %i.dz, %bb.aa ], [ %.5164.i74.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.13.i73 = phi ptr [ %.14.i.1, %bb.aa ], [ %.13.i73.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %i.dn = and i32 %.5.i75, 7
  %.not188.i = icmp eq i32 %i.dn, 0
  br i1 %.not188.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph77
  %i.do = getelementptr inbounds nuw i8, ptr %.13.i73, i64 1
  %i.dp = load i8, ptr %.13.i73, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph77
  %.14.i = phi ptr [ %.13.i73, %.lr.ph77 ], [ %i.do, %bb.u ] ; 3 uses
  %.3145.i = phi i8 [ %.2144.i76, %.lr.ph77 ], [ %i.dp, %bb.u ] ; 2 uses
  %i.dq = and i8 %.3145.i, 1                      ; 2 uses
  %i.dr = zext nneg i8 %i.dq to i32
  %.not189.i = icmp eq i32 %i.n, %i.dr
  br i1 %.not189.i, label %.lr.ph77.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 %i.dq, ptr %.5164.i74, align 1
  br label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %bb.w, %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.5164.i74, i64 1
  %i.dt = lshr i8 %.3145.i, 1
  %i.du = and i32 %.5.i75, 7
  %.not188.i.1 = icmp eq i32 %i.du, 7
  br i1 %.not188.i.1, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph77.1
  %i.dv = getelementptr inbounds nuw i8, ptr %.14.i, i64 1
  %i.dw = load i8, ptr %.14.i, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph77.1
  %.14.i.1 = phi ptr [ %.14.i, %.lr.ph77.1 ], [ %i.dv, %bb.x ] ; 2 uses
  %.3145.i.1 = phi i8 [ %i.dt, %.lr.ph77.1 ], [ %i.dw, %bb.x ] ; 2 uses
  %i.dx = and i8 %.3145.i.1, 1                    ; 2 uses
  %i.dy = zext nneg i8 %i.dx to i32
  %.not189.i.1 = icmp eq i32 %i.n, %i.dy
  br i1 %.not189.i.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 %i.dx, ptr %i.ds, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %.5164.i74, i64 2 ; 2 uses
  %i.ea = lshr i8 %.3145.i.1, 1
  %i.eb = add nuw nsw i32 %.5.i75, 2              ; 2 uses
  %exitcond107.not.1 = icmp eq i32 %i.eb, %i.s
  br i1 %exitcond107.not.1, label %._crit_edge78, label %.lr.ph77, !llvm.loop !37

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %bb.aa, %.preheader
  %.13.i.lcssa = phi ptr [ %.11.i.lcssa, %.preheader ], [ %.14.i.lcssa.unr, %.lr.ph77.prol.loopexit ], [ %.14.i.1, %bb.aa ]
  %.5164.i.lcssa = phi ptr [ %.4163.i83, %.preheader ], [ %.lcssa149.unr, %.lr.ph77.prol.loopexit ], [ %i.dz, %bb.aa ]
  %i.ec = getelementptr inbounds i8, ptr %.13.i.lcssa, i64 %i.cl
  %i.ed = getelementptr inbounds i8, ptr %.5164.i.lcssa, i64 %i.cm
  %.not187.i = icmp eq i32 %i.cp, 0
  br i1 %.not187.i, label %BlitBto1Key.exit, label %.preheader1, !llvm.loop !38

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge60
  %.in85 = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.ee, %._crit_edge60 ]
  %.6165.i65 = phi ptr [ %i.h, %.preheader4.lr.ph ], [ %i.fs, %._crit_edge60 ] ; 4 uses
  %.15.i64 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.fr, %._crit_edge60 ] ; 3 uses
  %i.ee = add nsw i32 %.in85, -1                  ; 2 uses
  %i.ef = load i32, ptr %i.q, align 8             ; 7 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph51.preheader, label %.preheader3

.lr.ph51.preheader:                               ; preds = %.preheader4
  %xtraiter169 = and i32 %i.ef, 1
  %i.eh = icmp eq i32 %i.ef, 1
  br i1 %i.eh, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
end_hunk_2
begin_hunk_3_@Blit1bto4Key:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %.3100.i29, i64 1
  %i.aw = load i8, ptr %.3100.i29, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph33
  %.4.i = phi ptr [ %.3100.i29, %.lr.ph33 ], [ %i.av, %bb.d ] ; 2 uses
  %.387.i = phi i8 [ %.286.i32, %.lr.ph33 ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ax = and i8 %.387.i, 1                       ; 2 uses
  %i.ay = zext nneg i8 %i.ax to i32
  %.not111.i = icmp eq i32 %i.n, %i.ay
  br i1 %.not111.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = zext nneg i8 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  store i32 %i.bb, ptr %.194.i30, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = lshr i8 %.387.i, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.194.i30, i64 4 ; 2 uses
  %i.be = add nuw nsw i32 %.189.i31, 1            ; 2 uses
  %exitcond49.not = icmp eq i32 %i.be, %i.s
  br i1 %exitcond49.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !55

._crit_edge34:                                    ; preds = %bb.g, %.preheader
  %.3100.i.lcssa = phi ptr [ %.198.i.lcssa, %.preheader ], [ %.4.i, %bb.g ]
  %.194.i.lcssa = phi ptr [ %.093.i39, %.preheader ], [ %i.bd, %bb.g ]
  %i.bf = getelementptr inbounds i8, ptr %.3100.i.lcssa, i64 %i.ae
  %i.bg = getelementptr inbounds [4 x i8], ptr %.194.i.lcssa, i64 %i.af
  %.not109.i = icmp eq i32 %i.ag, 0
  br i1 %.not109.i, label %BlitBto4Key.exit, label %.preheader1, !llvm.loop !56

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.bh, %._crit_edge ]
  %.295.i21 = phi ptr [ %i.h, %.preheader4.lr.ph ], [ %i.ch, %._crit_edge ] ; 2 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.cg, %._crit_edge ] ; 3 uses
  %i.bh = add nsw i32 %.in, -1                    ; 2 uses
  %i.bi = load i32, ptr %i.q, align 8             ; 7 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.bi, 1
  %i.bk = icmp eq i32 %i.bi, 1
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bi, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.bt, %.preheader3.loopexit.unr-lcssa ]
  %.290.i8.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bu, %.preheader3.loopexit.unr-lcssa ]
  %.6.i7.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bl = and i32 %.290.i8.epil.init, 7
  %.not108.i.epil = icmp eq i32 %i.bl, 0
  br i1 %.not108.i.epil, label %bb.h, label %.preheader3.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %.6.i7.epil.init, i64 1
  %i.bn = load i8, ptr %.6.i7.epil.init, align 1
  br label %.preheader3.loopexit.epilog-lcssa

.preheader3.loopexit.epilog-lcssa:                ; preds = %bb.h, %.lr.ph.epil.preheader
  %.7.i.epil = phi ptr [ %.6.i7.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %bb.h ]
  %.1.i.epil = phi i8 [ %.0.i9.epil.init, %.lr.ph.epil.preheader ], [ %i.bn, %bb.h ]
  %i.bo = shl i8 %.1.i.epil, 1
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.epilog-lcssa, %.preheader3.loopexit.unr-lcssa, %.preheader4
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ], [ %.7.i.epil, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.290.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.bi, %.preheader3.loopexit.unr-lcssa ], [ %i.bi, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ %i.bt, %.preheader3.loopexit.unr-lcssa ], [ %i.bo, %.preheader3.loopexit.epilog-lcssa ]
  %i.bp = icmp slt i32 %.290.i.lcssa, %i.s
  br i1 %i.bp, label %.lr.ph16, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0.i9 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph.1 ]
  %.290.i8 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bu, %.lr.ph.1 ] ; 2 uses
  %.6.i7 = phi ptr [ %.5.i20, %.lr.ph.preheader.new ], [ %.7.i, %.lr.ph.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.bq = and i32 %.290.i8, 6
  %.not108.i = icmp eq i32 %i.bq, 0
  br i1 %.not108.i, label %bb.i, label %.lr.ph.1

bb.i:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.6.i7, i64 1
  %i.bs = load i8, ptr %.6.i7, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.i, %.lr.ph
  %.7.i = phi ptr [ %.6.i7, %.lr.ph ], [ %i.br, %bb.i ] ; 3 uses
  %.1.i = phi i8 [ %.0.i9, %.lr.ph ], [ %i.bs, %bb.i ]
  %i.bt = shl i8 %.1.i, 2                         ; 3 uses
  %i.bu = add nuw nsw i32 %.290.i8, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

.lr.ph16:                                         ; preds = %.preheader3, %bb.m
  %.2.i15 = phi i8 [ %i.cd, %bb.m ], [ %.0.i.lcssa, %.preheader3 ]
  %.391.i14 = phi i32 [ %i.cf, %bb.m ], [ %.290.i.lcssa, %.preheader3 ] ; 2 uses
  %.396.i13 = phi ptr [ %i.ce, %bb.m ], [ %.295.i21, %.preheader3 ] ; 2 uses
  %.8.i12 = phi ptr [ %.9.i, %bb.m ], [ %.6.i.lcssa, %.preheader3 ] ; 3 uses
  %i.bv = and i32 %.391.i14, 7
  %.not106.i = icmp eq i32 %i.bv, 0
  br i1 %.not106.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph16
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.i12, i64 1
  %i.bx = load i8, ptr %.8.i12, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph16
  %.9.i = phi ptr [ %.8.i12, %.lr.ph16 ], [ %i.bw, %bb.j ] ; 2 uses
  %.3.i = phi i8 [ %.2.i15, %.lr.ph16 ], [ %i.bx, %bb.j ] ; 2 uses
  %i.by = lshr i8 %.3.i, 7                        ; 2 uses
  %i.bz = zext nneg i8 %i.by to i32
  %.not107.i = icmp eq i32 %i.n, %i.bz
  br i1 %.not107.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = zext nneg i8 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4
  store i32 %i.cc, ptr %.396.i13, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = shl i8 %.3.i, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.396.i13, i64 4 ; 2 uses
  %i.cf = add nuw nsw i32 %.391.i14, 1            ; 2 uses
  %exitcond47.not = icmp eq i32 %i.cf, %i.s
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.m, %.preheader3
  %.8.i.lcssa = phi ptr [ %.6.i.lcssa, %.preheader3 ], [ %.9.i, %bb.m ]
  %.396.i.lcssa = phi ptr [ %.295.i21, %.preheader3 ], [ %i.ce, %bb.m ]
  %i.cg = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.ac
  %i.ch = getelementptr inbounds [4 x i8], ptr %.396.i.lcssa, i64 %i.ad
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %BlitBto4Key.exit, label %.preheader4, !llvm.loop !59

BlitBto4Key.exit:                                 ; preds = %._crit_edge, %._crit_edge34, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit2bto1(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 9 uses
  %i.q = add i32 %i.p, %i.b                       ; 10 uses
  %i.r = add nsw i32 %i.q, 3
  %.neg172.i = sdiv i32 %i.r, -4
  %i.s = add i32 %i.q, %i.h
  %i.t = add i32 %i.s, %.neg172.i                 ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 15728640
  %i.y = icmp eq i32 %i.x, 1048576                ; 2 uses
  %.not177.i81 = icmp eq i32 %i.d, 0              ; 4 uses
  br i1 %.not.i, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.y, label %.preheader9, label %.preheader13

.preheader13:                                     ; preds = %bb.b
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader12.lr.ph

.preheader12.lr.ph:                               ; preds = %.preheader13
  %i.z = sext i32 %i.t to i64
  %i.aa = sext i32 %i.l to i64
  %i.ab = add i32 %i.p, %i.b
  %i.ac = add i32 %i.p, %i.b
  br label %.preheader12

.preheader9:                                      ; preds = %bb.b
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader8.lr.ph

.preheader8.lr.ph:                                ; preds = %.preheader9
  %i.ad = sext i32 %i.t to i64
  %i.ae = sext i32 %i.l to i64
  %i.af = add i32 %i.p, %i.b
  %i.ag = add i32 %i.p, %i.b
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.lr.ph, %._crit_edge42
  %.in84 = phi i32 [ %i.d, %.preheader8.lr.ph ], [ %i.ah, %._crit_edge42 ]
  %.0146.i47 = phi ptr [ %i.j, %.preheader8.lr.ph ], [ %i.cb, %._crit_edge42 ] ; 4 uses
  %.0150.i46 = phi ptr [ %i.f, %.preheader8.lr.ph ], [ %i.ca, %._crit_edge42 ] ; 3 uses
  %i.ah = add nsw i32 %.in84, -1                  ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8             ; 7 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph33.preheader, label %.preheader7

.lr.ph33.preheader:                               ; preds = %.preheader8
  %xtraiter164 = and i32 %i.ai, 1
  %i.ak = icmp eq i32 %i.ai, 1
  br i1 %i.ak, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter169 = and i32 %i.ai, 2147483646
  br label %.lr.ph33

.preheader7.loopexit.unr-lcssa:                   ; preds = %.lr.ph33.1
  %lcmp.mod165.not = icmp eq i32 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.preheader7, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %.preheader7.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.0141.i32.epil.init = phi i8 [ 0, %.lr.ph33.preheader ], [ %i.bf, %.preheader7.loopexit.unr-lcssa ]
  %.1151.i31.epil.init = phi ptr [ %.0150.i46, %.lr.ph33.preheader ], [ %.2152.i, %.preheader7.loopexit.unr-lcssa ] ; 3 uses
  %.0162.i30.epil.init = phi i32 [ 0, %.lr.ph33.preheader ], [ %i.bg, %.preheader7.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.al = and i32 %.0162.i30.epil.init, 3
  %.not185.i.epil = icmp eq i32 %i.al, 0
  br i1 %.not185.i.epil, label %bb.c, label %.preheader7.loopexit.epilog-lcssa

bb.c:                                             ; preds = %.lr.ph33.epil.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.1151.i31.epil.init, i64 1
  %i.an = load i8, ptr %.1151.i31.epil.init, align 1
  br label %.preheader7.loopexit.epilog-lcssa

.preheader7.loopexit.epilog-lcssa:                ; preds = %bb.c, %.lr.ph33.epil.preheader
  %.2152.i.epil = phi ptr [ %.1151.i31.epil.init, %.lr.ph33.epil.preheader ], [ %i.am, %bb.c ]
  %.1142.i.epil = phi i8 [ %.0141.i32.epil.init, %.lr.ph33.epil.preheader ], [ %i.an, %bb.c ]
  %i.ao = lshr i8 %.1142.i.epil, 2
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit.epilog-lcssa, %.preheader7.loopexit.unr-lcssa, %.preheader8
  %.0162.i.lcssa = phi i32 [ 0, %.preheader8 ], [ %i.ai, %.preheader7.loopexit.unr-lcssa ], [ %i.ai, %.preheader7.loopexit.epilog-lcssa ] ; 6 uses
  %.1151.i.lcssa = phi ptr [ %.0150.i46, %.preheader8 ], [ %.2152.i, %.preheader7.loopexit.unr-lcssa ], [ %.2152.i.epil, %.preheader7.loopexit.epilog-lcssa ] ; 5 uses
  %.0141.i.lcssa = phi i8 [ 0, %.preheader8 ], [ %i.bf, %.preheader7.loopexit.unr-lcssa ], [ %i.ao, %.preheader7.loopexit.epilog-lcssa ] ; 2 uses
  %i.ap = icmp slt i32 %.0162.i.lcssa, %i.q
  br i1 %i.ap, label %.lr.ph41.preheader, label %._crit_edge42

.lr.ph41.preheader:                               ; preds = %.preheader7
  %i.aq = sub i32 %i.af, %.0162.i.lcssa
  %.neg191 = add nuw i32 %.0162.i.lcssa, 1
  %xtraiter171 = and i32 %i.aq, 1
  %lcmp.mod172.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.ar = and i32 %.0162.i.lcssa, 3
  %.not184.i.prol = icmp eq i32 %i.ar, 0
  br i1 %.not184.i.prol, label %bb.d, label %.lr.ph41.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %.lr.ph41.prol
  %i.as = getelementptr inbounds nuw i8, ptr %.1151.i.lcssa, i64 1
  %i.at = load i8, ptr %.1151.i.lcssa, align 1
  br label %.lr.ph41.prol.loopexit.unr-lcssa

.lr.ph41.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph41.prol
  %.4154.i.prol = phi ptr [ %.1151.i.lcssa, %.lr.ph41.prol ], [ %i.as, %bb.d ] ; 2 uses
  %.3144.i.prol = phi i8 [ %.0141.i.lcssa, %.lr.ph41.prol ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = and i8 %.3144.i.prol, 3
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  store i8 %i.ax, ptr %.0146.i47, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0146.i47, i64 1 ; 2 uses
  %i.az = lshr i8 %.3144.i.prol, 2
  %i.ba = add nuw nsw i32 %.0162.i.lcssa, 1
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol.loopexit.unr-lcssa, %.lr.ph41.preheader
  %.4154.i.lcssa.unr = phi ptr [ poison, %.lr.ph41.preheader ], [ %.4154.i.prol, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph41.preheader ], [ %i.ay, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.2143.i40.unr = phi i8 [ %.0141.i.lcssa, %.lr.ph41.preheader ], [ %i.az, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.1147.i39.unr = phi ptr [ %.0146.i47, %.lr.ph41.preheader ], [ %i.ay, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.3153.i38.unr = phi ptr [ %.1151.i.lcssa, %.lr.ph41.preheader ], [ %.4154.i.prol, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.1163.i37.unr = phi i32 [ %.0162.i.lcssa, %.lr.ph41.preheader ], [ %i.ba, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %i.bb = icmp eq i32 %i.ag, %.neg191
  br i1 %i.bb, label %._crit_edge42, label %.lr.ph41

.lr.ph33:                                         ; preds = %.lr.ph33.1, %.lr.ph33.preheader.new
  %.0141.i32 = phi i8 [ 0, %.lr.ph33.preheader.new ], [ %i.bf, %.lr.ph33.1 ]
  %.1151.i31 = phi ptr [ %.0150.i46, %.lr.ph33.preheader.new ], [ %.2152.i, %.lr.ph33.1 ] ; 3 uses
  %.0162.i30 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %i.bg, %.lr.ph33.1 ] ; 2 uses
  %niter170 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %niter170.next.1, %.lr.ph33.1 ]
  %i.bc = and i32 %.0162.i30, 2
  %.not185.i = icmp eq i32 %i.bc, 0
  br i1 %.not185.i, label %bb.e, label %.lr.ph33.1

bb.e:                                             ; preds = %.lr.ph33
  %i.bd = getelementptr inbounds nuw i8, ptr %.1151.i31, i64 1
  %i.be = load i8, ptr %.1151.i31, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %.lr.ph33, %bb.e
  %.2152.i = phi ptr [ %.1151.i31, %.lr.ph33 ], [ %i.bd, %bb.e ] ; 3 uses
  %.1142.i = phi i8 [ %.0141.i32, %.lr.ph33 ], [ %i.be, %bb.e ]
  %i.bf = lshr i8 %.1142.i, 4                     ; 3 uses
  %i.bg = add nuw nsw i32 %.0162.i30, 2           ; 2 uses
  %niter170.next.1 = add nuw nsw i32 %niter170, 2 ; 2 uses
  %niter170.ncmp.1 = icmp eq i32 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !0

.lr.ph41:                                         ; preds = %.lr.ph41.prol.loopexit, %bb.h
  %.2143.i40 = phi i8 [ %i.by, %bb.h ], [ %.2143.i40.unr, %.lr.ph41.prol.loopexit ]
  %.1147.i39 = phi ptr [ %i.bx, %bb.h ], [ %.1147.i39.unr, %.lr.ph41.prol.loopexit ] ; 3 uses
  %.3153.i38 = phi ptr [ %.4154.i.1, %bb.h ], [ %.3153.i38.unr, %.lr.ph41.prol.loopexit ] ; 3 uses
  %.1163.i37 = phi i32 [ %i.bz, %bb.h ], [ %.1163.i37.unr, %.lr.ph41.prol.loopexit ] ; 3 uses
  %i.bh = and i32 %.1163.i37, 3
  %.not184.i = icmp eq i32 %i.bh, 0
  br i1 %.not184.i, label %bb.f, label %.lr.ph41.1

bb.f:                                             ; preds = %.lr.ph41
  %i.bi = getelementptr inbounds nuw i8, ptr %.3153.i38, i64 1
  %i.bj = load i8, ptr %.3153.i38, align 1
  br label %.lr.ph41.1

.lr.ph41.1:                                       ; preds = %bb.f, %.lr.ph41
  %.4154.i = phi ptr [ %.3153.i38, %.lr.ph41 ], [ %i.bi, %bb.f ] ; 3 uses
  %.3144.i = phi i8 [ %.2143.i40, %.lr.ph41 ], [ %i.bj, %bb.f ] ; 2 uses
  %i.bk = and i8 %.3144.i, 3
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  store i8 %i.bn, ptr %.1147.i39, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.1147.i39, i64 1
  %i.bp = lshr i8 %.3144.i, 2
  %i.bq = and i32 %.1163.i37, 3
  %.not184.i.1 = icmp eq i32 %i.bq, 3
  br i1 %.not184.i.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph41.1
  %i.br = getelementptr inbounds nuw i8, ptr %.4154.i, i64 1
  %i.bs = load i8, ptr %.4154.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph41.1
  %.4154.i.1 = phi ptr [ %.4154.i, %.lr.ph41.1 ], [ %i.br, %bb.g ] ; 2 uses
  %.3144.i.1 = phi i8 [ %i.bp, %.lr.ph41.1 ], [ %i.bs, %bb.g ] ; 2 uses
  %i.bt = and i8 %.3144.i.1, 3
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  store i8 %i.bw, ptr %i.bo, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.1147.i39, i64 2 ; 2 uses
  %i.by = lshr i8 %.3144.i.1, 2
  %i.bz = add nuw nsw i32 %.1163.i37, 2           ; 2 uses
  %exitcond103.not.1 = icmp eq i32 %i.bz, %i.q
  br i1 %exitcond103.not.1, label %._crit_edge42, label %.lr.ph41, !llvm.loop !1

._crit_edge42:                                    ; preds = %.lr.ph41.prol.loopexit, %bb.h, %.preheader7
  %.3153.i.lcssa = phi ptr [ %.1151.i.lcssa, %.preheader7 ], [ %.4154.i.lcssa.unr, %.lr.ph41.prol.loopexit ], [ %.4154.i.1, %bb.h ]
  %.1147.i.lcssa = phi ptr [ %.0146.i47, %.preheader7 ], [ %.lcssa155.unr, %.lr.ph41.prol.loopexit ], [ %i.bx, %bb.h ]
  %i.ca = getelementptr inbounds i8, ptr %.3153.i.lcssa, i64 %i.ad
  %i.cb = getelementptr inbounds i8, ptr %.1147.i.lcssa, i64 %i.ae
  %.not183.i = icmp eq i32 %i.ah, 0
  br i1 %.not183.i, label %BlitBto1.exit, label %.preheader8, !llvm.loop !2

.preheader12:                                     ; preds = %.preheader12.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader12.lr.ph ], [ %i.cc, %._crit_edge ]
  %.2148.i29 = phi ptr [ %i.j, %.preheader12.lr.ph ], [ %i.dw, %._crit_edge ] ; 4 uses
  %.5155.i28 = phi ptr [ %i.f, %.preheader12.lr.ph ], [ %i.dv, %._crit_edge ] ; 3 uses
  %i.cc = add nsw i32 %.in, -1                    ; 2 uses
  %i.cd = load i32, ptr %i.o, align 8             ; 7 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.preheader, label %.preheader11

.lr.ph.preheader:                                 ; preds = %.preheader12
  %xtraiter = and i32 %i.cd, 1
  %i.cf = icmp eq i32 %i.cd, 1
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.cd, 2147483646
  br label %.lr.ph

.preheader11.loopexit.unr-lcssa:                  ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader11, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader11.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0137.i17.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.da, %.preheader11.loopexit.unr-lcssa ]
  %.6156.i16.epil.init = phi ptr [ %.5155.i28, %.lr.ph.preheader ], [ %.7157.i, %.preheader11.loopexit.unr-lcssa ] ; 3 uses
  %.2164.i15.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.db, %.preheader11.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.cg = and i32 %.2164.i15.epil.init, 3
  %.not182.i.epil = icmp eq i32 %i.cg, 0
  br i1 %.not182.i.epil, label %bb.i, label %.preheader11.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.ch = getelementptr inbounds nuw i8, ptr %.6156.i16.epil.init, i64 1
  %i.ci = load i8, ptr %.6156.i16.epil.init, align 1
  br label %.preheader11.loopexit.epilog-lcssa

.preheader11.loopexit.epilog-lcssa:               ; preds = %bb.i, %.lr.ph.epil.preheader
  %.7157.i.epil = phi ptr [ %.6156.i16.epil.init, %.lr.ph.epil.preheader ], [ %i.ch, %bb.i ]
  %.1138.i.epil = phi i8 [ %.0137.i17.epil.init, %.lr.ph.epil.preheader ], [ %i.ci, %bb.i ]
  %i.cj = shl i8 %.1138.i.epil, 2
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit.epilog-lcssa, %.preheader11.loopexit.unr-lcssa, %.preheader12
  %.2164.i.lcssa = phi i32 [ 0, %.preheader12 ], [ %i.cd, %.preheader11.loopexit.unr-lcssa ], [ %i.cd, %.preheader11.loopexit.epilog-lcssa ] ; 6 uses
  %.6156.i.lcssa = phi ptr [ %.5155.i28, %.preheader12 ], [ %.7157.i, %.preheader11.loopexit.unr-lcssa ], [ %.7157.i.epil, %.preheader11.loopexit.epilog-lcssa ] ; 5 uses
  %.0137.i.lcssa = phi i8 [ 0, %.preheader12 ], [ %i.da, %.preheader11.loopexit.unr-lcssa ], [ %i.cj, %.preheader11.loopexit.epilog-lcssa ] ; 2 uses
  %i.ck = icmp slt i32 %.2164.i.lcssa, %i.q
  br i1 %i.ck, label %.lr.ph24.preheader, label %._crit_edge

.lr.ph24.preheader:                               ; preds = %.preheader11
  %i.cl = sub i32 %i.ab, %.2164.i.lcssa
  %.neg = add nuw i32 %.2164.i.lcssa, 1
  %xtraiter162 = and i32 %i.cl, 1
  %lcmp.mod163.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph24.prol.loopexit, label %.lr.ph24.prol

.lr.ph24.prol:                                    ; preds = %.lr.ph24.preheader
  %i.cm = and i32 %.2164.i.lcssa, 3
  %.not181.i.prol = icmp eq i32 %i.cm, 0
  br i1 %.not181.i.prol, label %bb.j, label %.lr.ph24.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.lr.ph24.prol
  %i.cn = getelementptr inbounds nuw i8, ptr %.6156.i.lcssa, i64 1
  %i.co = load i8, ptr %.6156.i.lcssa, align 1
  br label %.lr.ph24.prol.loopexit.unr-lcssa

.lr.ph24.prol.loopexit.unr-lcssa:                 ; preds = %bb.j, %.lr.ph24.prol
  %.9.i.prol = phi ptr [ %.6156.i.lcssa, %.lr.ph24.prol ], [ %i.cn, %bb.j ] ; 2 uses
  %.3140.i.prol = phi i8 [ %.0137.i.lcssa, %.lr.ph24.prol ], [ %i.co, %bb.j ] ; 2 uses
  %i.cp = lshr i8 %.3140.i.prol, 6
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  store i8 %i.cs, ptr %.2148.i29, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.2148.i29, i64 1 ; 2 uses
  %i.cu = shl i8 %.3140.i.prol, 2
  %i.cv = add nuw nsw i32 %.2164.i.lcssa, 1
  br label %.lr.ph24.prol.loopexit

.lr.ph24.prol.loopexit:                           ; preds = %.lr.ph24.prol.loopexit.unr-lcssa, %.lr.ph24.preheader
  %.9.i.lcssa.unr = phi ptr [ poison, %.lr.ph24.preheader ], [ %.9.i.prol, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.lcssa158.unr = phi ptr [ poison, %.lr.ph24.preheader ], [ %i.ct, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.2139.i23.unr = phi i8 [ %.0137.i.lcssa, %.lr.ph24.preheader ], [ %i.cu, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.3149.i22.unr = phi ptr [ %.2148.i29, %.lr.ph24.preheader ], [ %i.ct, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.8.i21.unr = phi ptr [ %.6156.i.lcssa, %.lr.ph24.preheader ], [ %.9.i.prol, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.3165.i20.unr = phi i32 [ %.2164.i.lcssa, %.lr.ph24.preheader ], [ %i.cv, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %i.cw = icmp eq i32 %i.ac, %.neg
  br i1 %i.cw, label %._crit_edge, label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0137.i17 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.da, %.lr.ph.1 ]
  %.6156.i16 = phi ptr [ %.5155.i28, %.lr.ph.preheader.new ], [ %.7157.i, %.lr.ph.1 ] ; 3 uses
  %.2164.i15 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.db, %.lr.ph.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.cx = and i32 %.2164.i15, 2
  %.not182.i = icmp eq i32 %i.cx, 0
  br i1 %.not182.i, label %bb.k, label %.lr.ph.1

bb.k:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %.6156.i16, i64 1
  %i.cz = load i8, ptr %.6156.i16, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.k, %.lr.ph
  %.7157.i = phi ptr [ %.6156.i16, %.lr.ph ], [ %i.cy, %bb.k ] ; 3 uses
  %.1138.i = phi i8 [ %.0137.i17, %.lr.ph ], [ %i.cz, %bb.k ]
  %i.da = shl i8 %.1138.i, 4                      ; 3 uses
  %i.db = add nuw nsw i32 %.2164.i15, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader11.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

.lr.ph24:                                         ; preds = %.lr.ph24.prol.loopexit, %bb.n
  %.2139.i23 = phi i8 [ %i.dt, %bb.n ], [ %.2139.i23.unr, %.lr.ph24.prol.loopexit ]
  %.3149.i22 = phi ptr [ %i.ds, %bb.n ], [ %.3149.i22.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %.8.i21 = phi ptr [ %.9.i.1, %bb.n ], [ %.8.i21.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %.3165.i20 = phi i32 [ %i.du, %bb.n ], [ %.3165.i20.unr, %.lr.ph24.prol.loopexit ] ; 3 uses
  %i.dc = and i32 %.3165.i20, 3
  %.not181.i = icmp eq i32 %i.dc, 0
  br i1 %.not181.i, label %bb.l, label %.lr.ph24.1

bb.l:                                             ; preds = %.lr.ph24
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.i21, i64 1
  %i.de = load i8, ptr %.8.i21, align 1
  br label %.lr.ph24.1

.lr.ph24.1:                                       ; preds = %bb.l, %.lr.ph24
  %.9.i = phi ptr [ %.8.i21, %.lr.ph24 ], [ %i.dd, %bb.l ] ; 3 uses
  %.3140.i = phi i8 [ %.2139.i23, %.lr.ph24 ], [ %i.de, %bb.l ] ; 2 uses
  %i.df = lshr i8 %.3140.i, 6
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  store i8 %i.di, ptr %.3149.i22, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.3149.i22, i64 1
  %i.dk = shl i8 %.3140.i, 2
  %i.dl = and i32 %.3165.i20, 3
  %.not181.i.1 = icmp eq i32 %i.dl, 3
  br i1 %.not181.i.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph24.1
  %i.dm = getelementptr inbounds nuw i8, ptr %.9.i, i64 1
  %i.dn = load i8, ptr %.9.i, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph24.1
  %.9.i.1 = phi ptr [ %.9.i, %.lr.ph24.1 ], [ %i.dm, %bb.m ] ; 2 uses
  %.3140.i.1 = phi i8 [ %i.dk, %.lr.ph24.1 ], [ %i.dn, %bb.m ] ; 2 uses
  %i.do = lshr i8 %.3140.i.1, 6
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1
  store i8 %i.dr, ptr %i.dj, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.3149.i22, i64 2 ; 2 uses
  %i.dt = shl i8 %.3140.i.1, 2
  %i.du = add nuw nsw i32 %.3165.i20, 2           ; 2 uses
  %exitcond101.not.1 = icmp eq i32 %i.du, %i.q
  br i1 %exitcond101.not.1, label %._crit_edge, label %.lr.ph24, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph24.prol.loopexit, %bb.n, %.preheader11
  %.8.i.lcssa = phi ptr [ %.6156.i.lcssa, %.preheader11 ], [ %.9.i.lcssa.unr, %.lr.ph24.prol.loopexit ], [ %.9.i.1, %bb.n ]
  %.3149.i.lcssa = phi ptr [ %.2148.i29, %.preheader11 ], [ %.lcssa158.unr, %.lr.ph24.prol.loopexit ], [ %i.ds, %bb.n ]
  %i.dv = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.z
  %i.dw = getelementptr inbounds i8, ptr %.3149.i.lcssa, i64 %i.aa
  %.not180.i = icmp eq i32 %i.cc, 0
  br i1 %.not180.i, label %BlitBto1.exit, label %.preheader12, !llvm.loop !5

bb.o:                                             ; preds = %bb.a
  br i1 %i.y, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.o
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.dx = sext i32 %i.t to i64
  %i.dy = sext i32 %i.l to i64
  %i.dz = add i32 %i.p, %i.b
  %i.ea = add i32 %i.p, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.o
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.eb = sext i32 %i.t to i64
  %i.ec = sext i32 %i.l to i64
  %i.ed = add i32 %i.p, %i.b
  %i.ee = add i32 %i.p, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge78
  %.in86 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ef, %._crit_edge78 ]
  %.4.i83 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.fq, %._crit_edge78 ] ; 4 uses
  %.10.i82 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.fp, %._crit_edge78 ] ; 3 uses
  %i.ef = add nsw i32 %.in86, -1                  ; 2 uses
  %i.eg = load i32, ptr %i.o, align 8             ; 7 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %.preheader1
  %xtraiter182 = and i32 %i.eg, 1
  %i.ei = icmp eq i32 %i.eg, 1
  br i1 %i.ei, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter187 = and i32 %i.eg, 2147483646
  br label %.lr.ph69

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph69.1
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.preheader, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.0133.i68.epil.init = phi i8 [ 0, %.lr.ph69.preheader ], [ %i.fa, %.preheader.loopexit.unr-lcssa ]
  %.11.i67.epil.init = phi ptr [ %.10.i82, %.lr.ph69.preheader ], [ %.12.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.4166.i66.epil.init = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.fb, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.ej = and i32 %.4166.i66.epil.init, 3
  %.not179.i.epil = icmp eq i32 %i.ej, 0
  br i1 %.not179.i.epil, label %bb.p, label %.preheader.loopexit.epilog-lcssa

bb.p:                                             ; preds = %.lr.ph69.epil.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %.11.i67.epil.init, i64 1
  %i.el = load i8, ptr %.11.i67.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.p, %.lr.ph69.epil.preheader
  %.12.i.epil = phi ptr [ %.11.i67.epil.init, %.lr.ph69.epil.preheader ], [ %i.ek, %bb.p ]
  %.1134.i.epil = phi i8 [ %.0133.i68.epil.init, %.lr.ph69.epil.preheader ], [ %i.el, %bb.p ]
  %i.em = lshr i8 %.1134.i.epil, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.4166.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.eg, %.preheader.loopexit.unr-lcssa ], [ %i.eg, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.11.i.lcssa = phi ptr [ %.10.i82, %.preheader1 ], [ %.12.i, %.preheader.loopexit.unr-lcssa ], [ %.12.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.0133.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.fa, %.preheader.loopexit.unr-lcssa ], [ %i.em, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.en = icmp slt i32 %.4166.i.lcssa, %i.q
  br i1 %i.en, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.eo = sub i32 %i.ed, %.4166.i.lcssa
  %.neg193 = add nuw i32 %.4166.i.lcssa, 1
  %xtraiter189 = and i32 %i.eo, 1
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader
  %i.ep = and i32 %.4166.i.lcssa, 3
  %.not178.i.prol = icmp eq i32 %i.ep, 0
  br i1 %.not178.i.prol, label %bb.q, label %.lr.ph77.prol.loopexit.unr-lcssa

bb.q:                                             ; preds = %.lr.ph77.prol
  %i.eq = getelementptr inbounds nuw i8, ptr %.11.i.lcssa, i64 1
  %i.er = load i8, ptr %.11.i.lcssa, align 1
  br label %.lr.ph77.prol.loopexit.unr-lcssa

.lr.ph77.prol.loopexit.unr-lcssa:                 ; preds = %bb.q, %.lr.ph77.prol
  %.14.i.prol = phi ptr [ %.11.i.lcssa, %.lr.ph77.prol ], [ %i.eq, %bb.q ] ; 2 uses
  %.3136.i.prol = phi i8 [ %.0133.i.lcssa, %.lr.ph77.prol ], [ %i.er, %bb.q ] ; 2 uses
  %i.es = and i8 %.3136.i.prol, 3
  store i8 %i.es, ptr %.4.i83, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.4.i83, i64 1 ; 2 uses
  %i.eu = lshr i8 %.3136.i.prol, 2
  %i.ev = add nuw nsw i32 %.4166.i.lcssa, 1
  br label %.lr.ph77.prol.loopexit

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.14.i.lcssa.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.et, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.2135.i76.unr = phi i8 [ %.0133.i.lcssa, %.lr.ph77.preheader ], [ %i.eu, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5.i75.unr = phi ptr [ %.4.i83, %.lr.ph77.preheader ], [ %i.et, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.13.i74.unr = phi ptr [ %.11.i.lcssa, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5167.i73.unr = phi i32 [ %.4166.i.lcssa, %.lr.ph77.preheader ], [ %i.ev, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %i.ew = icmp eq i32 %i.ee, %.neg193
  br i1 %i.ew, label %._crit_edge78, label %.lr.ph77

.lr.ph69:                                         ; preds = %.lr.ph69.1, %.lr.ph69.preheader.new
  %.0133.i68 = phi i8 [ 0, %.lr.ph69.preheader.new ], [ %i.fa, %.lr.ph69.1 ]
  %.11.i67 = phi ptr [ %.10.i82, %.lr.ph69.preheader.new ], [ %.12.i, %.lr.ph69.1 ] ; 3 uses
  %.4166.i66 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %i.fb, %.lr.ph69.1 ] ; 2 uses
  %niter188 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %niter188.next.1, %.lr.ph69.1 ]
  %i.ex = and i32 %.4166.i66, 2
  %.not179.i = icmp eq i32 %i.ex, 0
  br i1 %.not179.i, label %bb.r, label %.lr.ph69.1

bb.r:                                             ; preds = %.lr.ph69
  %i.ey = getelementptr inbounds nuw i8, ptr %.11.i67, i64 1
  %i.ez = load i8, ptr %.11.i67, align 1
  br label %.lr.ph69.1

.lr.ph69.1:                                       ; preds = %.lr.ph69, %bb.r
  %.12.i = phi ptr [ %.11.i67, %.lr.ph69 ], [ %i.ey, %bb.r ] ; 3 uses
  %.1134.i = phi i8 [ %.0133.i68, %.lr.ph69 ], [ %i.ez, %bb.r ]
  %i.fa = lshr i8 %.1134.i, 4                     ; 3 uses
  %i.fb = add nuw nsw i32 %.4166.i66, 2           ; 2 uses
  %niter188.next.1 = add nuw nsw i32 %niter188, 2 ; 2 uses
  %niter188.ncmp.1 = icmp eq i32 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !6

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %bb.u
  %.2135.i76 = phi i8 [ %i.fn, %bb.u ], [ %.2135.i76.unr, %.lr.ph77.prol.loopexit ]
  %.5.i75 = phi ptr [ %i.fm, %bb.u ], [ %.5.i75.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.13.i74 = phi ptr [ %.14.i.1, %bb.u ], [ %.13.i74.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.5167.i73 = phi i32 [ %i.fo, %bb.u ], [ %.5167.i73.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %i.fc = and i32 %.5167.i73, 3
  %.not178.i = icmp eq i32 %i.fc, 0
  br i1 %.not178.i, label %bb.s, label %.lr.ph77.1

bb.s:                                             ; preds = %.lr.ph77
  %i.fd = getelementptr inbounds nuw i8, ptr %.13.i74, i64 1
  %i.fe = load i8, ptr %.13.i74, align 1
  br label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %bb.s, %.lr.ph77
  %.14.i = phi ptr [ %.13.i74, %.lr.ph77 ], [ %i.fd, %bb.s ] ; 3 uses
  %.3136.i = phi i8 [ %.2135.i76, %.lr.ph77 ], [ %i.fe, %bb.s ] ; 2 uses
  %i.ff = and i8 %.3136.i, 3
  store i8 %i.ff, ptr %.5.i75, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.5.i75, i64 1
  %i.fh = lshr i8 %.3136.i, 2
  %i.fi = and i32 %.5167.i73, 3
  %.not178.i.1 = icmp eq i32 %i.fi, 3
  br i1 %.not178.i.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph77.1
  %i.fj = getelementptr inbounds nuw i8, ptr %.14.i, i64 1
  %i.fk = load i8, ptr %.14.i, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph77.1
  %.14.i.1 = phi ptr [ %.14.i, %.lr.ph77.1 ], [ %i.fj, %bb.t ] ; 2 uses
  %.3136.i.1 = phi i8 [ %i.fh, %.lr.ph77.1 ], [ %i.fk, %bb.t ] ; 2 uses
  %i.fl = and i8 %.3136.i.1, 3
  store i8 %i.fl, ptr %i.fg, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.5.i75, i64 2 ; 2 uses
  %i.fn = lshr i8 %.3136.i.1, 2
  %i.fo = add nuw nsw i32 %.5167.i73, 2           ; 2 uses
  %exitcond107.not.1 = icmp eq i32 %i.fo, %i.q
  br i1 %exitcond107.not.1, label %._crit_edge78, label %.lr.ph77, !llvm.loop !7

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %bb.u, %.preheader
  %.13.i.lcssa = phi ptr [ %.11.i.lcssa, %.preheader ], [ %.14.i.lcssa.unr, %.lr.ph77.prol.loopexit ], [ %.14.i.1, %bb.u ]
  %.5.i.lcssa = phi ptr [ %.4.i83, %.preheader ], [ %.lcssa149.unr, %.lr.ph77.prol.loopexit ], [ %i.fm, %bb.u ]
  %i.fp = getelementptr inbounds i8, ptr %.13.i.lcssa, i64 %i.eb
  %i.fq = getelementptr inbounds i8, ptr %.5.i.lcssa, i64 %i.ec
  %.not177.i = icmp eq i32 %i.ef, 0
  br i1 %.not177.i, label %BlitBto1.exit, label %.preheader1, !llvm.loop !8

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge60
  %.in85 = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.fr, %._crit_edge60 ]
  %.6.i65 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.hc, %._crit_edge60 ] ; 4 uses
  %.15.i64 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.hb, %._crit_edge60 ] ; 3 uses
  %i.fr = add nsw i32 %.in85, -1                  ; 2 uses
  %i.fs = load i32, ptr %i.o, align 8             ; 7 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph51.preheader, label %.preheader3

.lr.ph51.preheader:                               ; preds = %.preheader4
  %xtraiter173 = and i32 %i.fs, 1
  %i.fu = icmp eq i32 %i.fs, 1
  br i1 %i.fu, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
  %unroll_iter178 = and i32 %i.fs, 2147483646
  br label %.lr.ph51

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph51.1
  %lcmp.mod174.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.preheader3, label %.lr.ph51.epil.preheader

.lr.ph51.epil.preheader:                          ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph51.preheader
  %.0.i50.epil.init = phi i8 [ 0, %.lr.ph51.preheader ], [ %i.gm, %.preheader3.loopexit.unr-lcssa ]
  %.16.i49.epil.init = phi ptr [ %.15.i64, %.lr.ph51.preheader ], [ %.17.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.6168.i48.epil.init = phi i32 [ 0, %.lr.ph51.preheader ], [ %i.gn, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod177 = trunc i32 %i.fs to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.fv = and i32 %.6168.i48.epil.init, 3
  %.not176.i.epil = icmp eq i32 %i.fv, 0
  br i1 %.not176.i.epil, label %bb.v, label %.preheader3.loopexit.epilog-lcssa

bb.v:                                             ; preds = %.lr.ph51.epil.preheader
  %i.fw = getelementptr inbounds nuw i8, ptr %.16.i49.epil.init, i64 1
  %i.fx = load i8, ptr %.16.i49.epil.init, align 1
  br label %.preheader3.loopexit.epilog-lcssa

.preheader3.loopexit.epilog-lcssa:                ; preds = %bb.v, %.lr.ph51.epil.preheader
  %.17.i.epil = phi ptr [ %.16.i49.epil.init, %.lr.ph51.epil.preheader ], [ %i.fw, %bb.v ]
  %.1.i.epil = phi i8 [ %.0.i50.epil.init, %.lr.ph51.epil.preheader ], [ %i.fx, %bb.v ]
  %i.fy = shl i8 %.1.i.epil, 2
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.epilog-lcssa, %.preheader3.loopexit.unr-lcssa, %.preheader4
  %.6168.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.fs, %.preheader3.loopexit.unr-lcssa ], [ %i.fs, %.preheader3.loopexit.epilog-lcssa ] ; 6 uses
  %.16.i.lcssa = phi ptr [ %.15.i64, %.preheader4 ], [ %.17.i, %.preheader3.loopexit.unr-lcssa ], [ %.17.i.epil, %.preheader3.loopexit.epilog-lcssa ] ; 5 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ %i.gm, %.preheader3.loopexit.unr-lcssa ], [ %i.fy, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %i.fz = icmp slt i32 %.6168.i.lcssa, %i.q
  br i1 %i.fz, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %.preheader3
  %i.ga = sub i32 %i.dz, %.6168.i.lcssa
  %.neg192 = add nuw i32 %.6168.i.lcssa, 1
  %xtraiter180 = and i32 %i.ga, 1
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol

.lr.ph59.prol:                                    ; preds = %.lr.ph59.preheader
  %i.gb = and i32 %.6168.i.lcssa, 3
  %.not175.i.prol = icmp eq i32 %i.gb, 0
  br i1 %.not175.i.prol, label %bb.w, label %.lr.ph59.prol.loopexit.unr-lcssa

bb.w:                                             ; preds = %.lr.ph59.prol
  %i.gc = getelementptr inbounds nuw i8, ptr %.16.i.lcssa, i64 1
  %i.gd = load i8, ptr %.16.i.lcssa, align 1
  br label %.lr.ph59.prol.loopexit.unr-lcssa

.lr.ph59.prol.loopexit.unr-lcssa:                 ; preds = %bb.w, %.lr.ph59.prol
  %.19.i.prol = phi ptr [ %.16.i.lcssa, %.lr.ph59.prol ], [ %i.gc, %bb.w ] ; 2 uses
  %.3.i.prol = phi i8 [ %.0.i.lcssa, %.lr.ph59.prol ], [ %i.gd, %bb.w ] ; 2 uses
  %i.ge = lshr i8 %.3.i.prol, 6
  store i8 %i.ge, ptr %.6.i65, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.6.i65, i64 1 ; 2 uses
  %i.gg = shl i8 %.3.i.prol, 2
  %i.gh = add nuw nsw i32 %.6168.i.lcssa, 1
  br label %.lr.ph59.prol.loopexit

.lr.ph59.prol.loopexit:                           ; preds = %.lr.ph59.prol.loopexit.unr-lcssa, %.lr.ph59.preheader
  %.19.i.lcssa.unr = phi ptr [ poison, %.lr.ph59.preheader ], [ %.19.i.prol, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.lcssa152.unr = phi ptr [ poison, %.lr.ph59.preheader ], [ %i.gf, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.2.i58.unr = phi i8 [ %.0.i.lcssa, %.lr.ph59.preheader ], [ %i.gg, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.7.i57.unr = phi ptr [ %.6.i65, %.lr.ph59.preheader ], [ %i.gf, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.18.i56.unr = phi ptr [ %.16.i.lcssa, %.lr.ph59.preheader ], [ %.19.i.prol, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.7169.i55.unr = phi i32 [ %.6168.i.lcssa, %.lr.ph59.preheader ], [ %i.gh, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %i.gi = icmp eq i32 %i.ea, %.neg192
  br i1 %i.gi, label %._crit_edge60, label %.lr.ph59

.lr.ph51:                                         ; preds = %.lr.ph51.1, %.lr.ph51.preheader.new
  %.0.i50 = phi i8 [ 0, %.lr.ph51.preheader.new ], [ %i.gm, %.lr.ph51.1 ]
  %.16.i49 = phi ptr [ %.15.i64, %.lr.ph51.preheader.new ], [ %.17.i, %.lr.ph51.1 ] ; 3 uses
  %.6168.i48 = phi i32 [ 0, %.lr.ph51.preheader.new ], [ %i.gn, %.lr.ph51.1 ] ; 2 uses
  %niter179 = phi i32 [ 0, %.lr.ph51.preheader.new ], [ %niter179.next.1, %.lr.ph51.1 ]
  %i.gj = and i32 %.6168.i48, 2
  %.not176.i = icmp eq i32 %i.gj, 0
  br i1 %.not176.i, label %bb.x, label %.lr.ph51.1

bb.x:                                             ; preds = %.lr.ph51
  %i.gk = getelementptr inbounds nuw i8, ptr %.16.i49, i64 1
  %i.gl = load i8, ptr %.16.i49, align 1
  br label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %bb.x, %.lr.ph51
  %.17.i = phi ptr [ %.16.i49, %.lr.ph51 ], [ %i.gk, %bb.x ] ; 3 uses
  %.1.i = phi i8 [ %.0.i50, %.lr.ph51 ], [ %i.gl, %bb.x ]
  %i.gm = shl i8 %.1.i, 4                         ; 3 uses
  %i.gn = add nuw nsw i32 %.6168.i48, 2           ; 2 uses
  %niter179.next.1 = add nuw nsw i32 %niter179, 2 ; 2 uses
  %niter179.ncmp.1 = icmp eq i32 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph51, !llvm.loop !9

.lr.ph59:                                         ; preds = %.lr.ph59.prol.loopexit, %bb.aa
  %.2.i58 = phi i8 [ %i.gz, %bb.aa ], [ %.2.i58.unr, %.lr.ph59.prol.loopexit ]
  %.7.i57 = phi ptr [ %i.gy, %bb.aa ], [ %.7.i57.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.18.i56 = phi ptr [ %.19.i.1, %bb.aa ], [ %.18.i56.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %.7169.i55 = phi i32 [ %i.ha, %bb.aa ], [ %.7169.i55.unr, %.lr.ph59.prol.loopexit ] ; 3 uses
  %i.go = and i32 %.7169.i55, 3
  %.not175.i = icmp eq i32 %i.go, 0
  br i1 %.not175.i, label %bb.y, label %.lr.ph59.1

bb.y:                                             ; preds = %.lr.ph59
  %i.gp = getelementptr inbounds nuw i8, ptr %.18.i56, i64 1
  %i.gq = load i8, ptr %.18.i56, align 1
  br label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %bb.y, %.lr.ph59
  %.19.i = phi ptr [ %.18.i56, %.lr.ph59 ], [ %i.gp, %bb.y ] ; 3 uses
  %.3.i = phi i8 [ %.2.i58, %.lr.ph59 ], [ %i.gq, %bb.y ] ; 2 uses
  %i.gr = lshr i8 %.3.i, 6
  store i8 %i.gr, ptr %.7.i57, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.7.i57, i64 1
  %i.gt = shl i8 %.3.i, 2
  %i.gu = and i32 %.7169.i55, 3
  %.not175.i.1 = icmp eq i32 %i.gu, 3
  br i1 %.not175.i.1, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph59.1
  %i.gv = getelementptr inbounds nuw i8, ptr %.19.i, i64 1
  %i.gw = load i8, ptr %.19.i, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph59.1
  %.19.i.1 = phi ptr [ %.19.i, %.lr.ph59.1 ], [ %i.gv, %bb.z ] ; 2 uses
  %.3.i.1 = phi i8 [ %i.gt, %.lr.ph59.1 ], [ %i.gw, %bb.z ] ; 2 uses
  %i.gx = lshr i8 %.3.i.1, 6
  store i8 %i.gx, ptr %i.gs, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.7.i57, i64 2 ; 2 uses
  %i.gz = shl i8 %.3.i.1, 2
  %i.ha = add nuw nsw i32 %.7169.i55, 2           ; 2 uses
  %exitcond105.not.1 = icmp eq i32 %i.ha, %i.q
  br i1 %exitcond105.not.1, label %._crit_edge60, label %.lr.ph59, !llvm.loop !10

._crit_edge60:                                    ; preds = %.lr.ph59.prol.loopexit, %bb.aa, %.preheader3
  %.18.i.lcssa = phi ptr [ %.16.i.lcssa, %.preheader3 ], [ %.19.i.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %.19.i.1, %bb.aa ]
  %.7.i.lcssa = phi ptr [ %.6.i65, %.preheader3 ], [ %.lcssa152.unr, %.lr.ph59.prol.loopexit ], [ %i.gy, %bb.aa ]
  %i.hb = getelementptr inbounds i8, ptr %.18.i.lcssa, i64 %i.dx
  %i.hc = getelementptr inbounds i8, ptr %.7.i.lcssa, i64 %i.dy
  %.not174.i = icmp eq i32 %i.fr, 0
  br i1 %.not174.i, label %BlitBto1.exit, label %.preheader4, !llvm.loop !11

BlitBto1.exit:                                    ; preds = %._crit_edge, %._crit_edge42, %._crit_edge60, %._crit_edge78, %.preheader13, %.preheader9, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit2bto2(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 2                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = add i32 %i.q, %i.b                       ; 6 uses
  %i.s = add nsw i32 %i.r, 3
  %.neg98.i = sdiv i32 %i.s, -4
  %i.t = add i32 %i.r, %i.h
  %i.u = add i32 %i.t, %.neg98.i                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 15728640
  %i.z = icmp eq i32 %i.y, 1048576
  %.not102.i37 = icmp eq i32 %i.d, 0              ; 2 uses
  br i1 %i.z, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto2.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %i.m to i64
  %i.ac = add i32 %i.q, %i.b
  %i.ad = add i32 %i.q, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto2.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.ae = sext i32 %i.u to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = add i32 %i.q, %i.b
  %i.ah = add i32 %i.q, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge34
  %.in40 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ai, %._crit_edge34 ]
  %.083.i39 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.cc, %._crit_edge34 ] ; 4 uses
  %.087.i38 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.cb, %._crit_edge34 ] ; 3 uses
  %i.ai = add nsw i32 %.in40, -1                  ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8             ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader1
  %xtraiter77 = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter82 = and i32 %i.aj, 2147483646
  br label %.lr.ph25

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph25.1
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.078.i24.epil.init = phi i8 [ 0, %.lr.ph25.preheader ], [ %i.bg, %.preheader.loopexit.unr-lcssa ]
  %.188.i23.epil.init = phi ptr [ %.087.i38, %.lr.ph25.preheader ], [ %.289.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.093.i22.epil.init = phi i32 [ 0, %.lr.ph25.preheader ], [ %i.bh, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.am = and i32 %.093.i22.epil.init, 3
  %.not104.i.epil = icmp eq i32 %i.am, 0
  br i1 %.not104.i.epil, label %bb.b, label %.preheader.loopexit.epilog-lcssa

bb.b:                                             ; preds = %.lr.ph25.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.188.i23.epil.init, i64 1
  %i.ao = load i8, ptr %.188.i23.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.b, %.lr.ph25.epil.preheader
  %.289.i.epil = phi ptr [ %.188.i23.epil.init, %.lr.ph25.epil.preheader ], [ %i.an, %bb.b ]
  %.179.i.epil = phi i8 [ %.078.i24.epil.init, %.lr.ph25.epil.preheader ], [ %i.ao, %bb.b ]
  %i.ap = lshr i8 %.179.i.epil, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.093.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.aj, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.188.i.lcssa = phi ptr [ %.087.i38, %.preheader1 ], [ %.289.i, %.preheader.loopexit.unr-lcssa ], [ %.289.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.078.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.bg, %.preheader.loopexit.unr-lcssa ], [ %i.ap, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.aq = icmp slt i32 %.093.i.lcssa, %i.r
  br i1 %i.aq, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.ar = sub i32 %i.ag, %.093.i.lcssa
  %.neg86 = add nuw i32 %.093.i.lcssa, 1
  %xtraiter84 = and i32 %i.ar, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %i.as = and i32 %.093.i.lcssa, 3
  %.not103.i.prol = icmp eq i32 %i.as, 0
  br i1 %.not103.i.prol, label %bb.c, label %.lr.ph33.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph33.prol
  %i.at = getelementptr inbounds nuw i8, ptr %.188.i.lcssa, i64 1
  %i.au = load i8, ptr %.188.i.lcssa, align 1
  br label %.lr.ph33.prol.loopexit.unr-lcssa

.lr.ph33.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph33.prol
  %.4.i.prol = phi ptr [ %.188.i.lcssa, %.lr.ph33.prol ], [ %i.at, %bb.c ] ; 2 uses
  %.381.i.prol = phi i8 [ %.078.i.lcssa, %.lr.ph33.prol ], [ %i.au, %bb.c ] ; 2 uses
  %i.av = and i8 %.381.i.prol, 3
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  store i16 %i.ay, ptr %.083.i39, align 2
  %i.az = lshr i8 %.381.i.prol, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.083.i39, i64 2 ; 2 uses
  %i.bb = add nuw nsw i32 %.093.i.lcssa, 1
  br label %.lr.ph33.prol.loopexit

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.4.i.lcssa.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.280.i32.unr = phi i8 [ %.078.i.lcssa, %.lr.ph33.preheader ], [ %i.az, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.184.i31.unr = phi ptr [ %.083.i39, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.390.i30.unr = phi ptr [ %.188.i.lcssa, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.194.i29.unr = phi i32 [ %.093.i.lcssa, %.lr.ph33.preheader ], [ %i.bb, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i32 %i.ah, %.neg86
  br i1 %i.bc, label %._crit_edge34, label %.lr.ph33

.lr.ph25:                                         ; preds = %.lr.ph25.1, %.lr.ph25.preheader.new
  %.078.i24 = phi i8 [ 0, %.lr.ph25.preheader.new ], [ %i.bg, %.lr.ph25.1 ]
  %.188.i23 = phi ptr [ %.087.i38, %.lr.ph25.preheader.new ], [ %.289.i, %.lr.ph25.1 ] ; 3 uses
  %.093.i22 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.bh, %.lr.ph25.1 ] ; 2 uses
  %niter83 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter83.next.1, %.lr.ph25.1 ]
  %i.bd = and i32 %.093.i22, 2
  %.not104.i = icmp eq i32 %i.bd, 0
  br i1 %.not104.i, label %bb.d, label %.lr.ph25.1

bb.d:                                             ; preds = %.lr.ph25
  %i.be = getelementptr inbounds nuw i8, ptr %.188.i23, i64 1
  %i.bf = load i8, ptr %.188.i23, align 1
  br label %.lr.ph25.1

.lr.ph25.1:                                       ; preds = %.lr.ph25, %bb.d
  %.289.i = phi ptr [ %.188.i23, %.lr.ph25 ], [ %i.be, %bb.d ] ; 3 uses
  %.179.i = phi i8 [ %.078.i24, %.lr.ph25 ], [ %i.bf, %bb.d ]
  %i.bg = lshr i8 %.179.i, 4                      ; 3 uses
  %i.bh = add nuw nsw i32 %.093.i22, 2            ; 2 uses
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !12

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %bb.g
  %.280.i32 = phi i8 [ %i.by, %bb.g ], [ %.280.i32.unr, %.lr.ph33.prol.loopexit ]
  %.184.i31 = phi ptr [ %i.bz, %bb.g ], [ %.184.i31.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.390.i30 = phi ptr [ %.4.i.1, %bb.g ], [ %.390.i30.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.194.i29 = phi i32 [ %i.ca, %bb.g ], [ %.194.i29.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %i.bi = and i32 %.194.i29, 3
  %.not103.i = icmp eq i32 %i.bi, 0
  br i1 %.not103.i, label %bb.e, label %.lr.ph33.1

bb.e:                                             ; preds = %.lr.ph33
  %i.bj = getelementptr inbounds nuw i8, ptr %.390.i30, i64 1
  %i.bk = load i8, ptr %.390.i30, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %bb.e, %.lr.ph33
  %.4.i = phi ptr [ %.390.i30, %.lr.ph33 ], [ %i.bj, %bb.e ] ; 3 uses
  %.381.i = phi i8 [ %.280.i32, %.lr.ph33 ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bl = and i8 %.381.i, 3
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  store i16 %i.bo, ptr %.184.i31, align 2
  %i.bp = lshr i8 %.381.i, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.184.i31, i64 2
  %i.br = and i32 %.194.i29, 3
  %.not103.i.1 = icmp eq i32 %i.br, 3
  br i1 %.not103.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph33.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bt = load i8, ptr %.4.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph33.1
  %.4.i.1 = phi ptr [ %.4.i, %.lr.ph33.1 ], [ %i.bs, %bb.f ] ; 2 uses
  %.381.i.1 = phi i8 [ %i.bp, %.lr.ph33.1 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.bu = and i8 %.381.i.1, 3
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2
  store i16 %i.bx, ptr %i.bq, align 2
  %i.by = lshr i8 %.381.i.1, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.184.i31, i64 4 ; 2 uses
  %i.ca = add nuw nsw i32 %.194.i29, 2            ; 2 uses
  %exitcond49.not.1 = icmp eq i32 %i.ca, %i.r
  br i1 %exitcond49.not.1, label %._crit_edge34, label %.lr.ph33, !llvm.loop !13

._crit_edge34:                                    ; preds = %.lr.ph33.prol.loopexit, %bb.g, %.preheader
  %.390.i.lcssa = phi ptr [ %.188.i.lcssa, %.preheader ], [ %.4.i.lcssa.unr, %.lr.ph33.prol.loopexit ], [ %.4.i.1, %bb.g ]
  %.184.i.lcssa = phi ptr [ %.083.i39, %.preheader ], [ %.lcssa68.unr, %.lr.ph33.prol.loopexit ], [ %i.bz, %bb.g ]
  %i.cb = getelementptr inbounds i8, ptr %.390.i.lcssa, i64 %i.ae
  %i.cc = getelementptr inbounds [2 x i8], ptr %.184.i.lcssa, i64 %i.af
  %.not102.i = icmp eq i32 %i.ai, 0
  br i1 %.not102.i, label %BlitBto2.exit, label %.preheader1, !llvm.loop !14

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.cd, %._crit_edge ]
  %.285.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.dx, %._crit_edge ] ; 4 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.dw, %._crit_edge ] ; 3 uses
  %i.cd = add nsw i32 %.in, -1                    ; 2 uses
  %i.ce = load i32, ptr %i.p, align 8             ; 7 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.ce, 1
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ce, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.db, %.preheader3.loopexit.unr-lcssa ]
  %.6.i8.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.295.i7.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dc, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.ch = and i32 %.295.i7.epil.init, 3
  %.not101.i.epil = icmp eq i32 %i.ch, 0
end_hunk_3
begin_hunk_4_@Blit2bto3:bb.a
  %.not117.i = icmp eq i32 %i.ar, 0
  br i1 %.not117.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph33
  %i.as = getelementptr inbounds nuw i8, ptr %.3104.i30, i64 1
  %i.at = load i8, ptr %.3104.i30, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph33
  %.4.i = phi ptr [ %.3104.i30, %.lr.ph33 ], [ %i.as, %bb.d ] ; 2 uses
  %.395.i = phi i8 [ %.294.i32, %.lr.ph33 ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = zext i8 %.395.i to i64
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = and i64 %i.av, 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1
  store i8 %i.ay, ptr %.198.i31, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.198.i31, i64 1
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.198.i31, i64 2
  store i8 %i.bd, ptr %i.be, align 1
  %i.bf = lshr i8 %.395.i, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.198.i31, i64 3 ; 2 uses
  %i.bh = add nuw nsw i32 %.1108.i29, 1           ; 2 uses
  %exitcond49.not = icmp eq i32 %i.bh, %i.q
  br i1 %exitcond49.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !19

._crit_edge34:                                    ; preds = %bb.e, %.preheader
  %.3104.i.lcssa = phi ptr [ %.1102.i.lcssa, %.preheader ], [ %.4.i, %bb.e ]
  %.198.i.lcssa = phi ptr [ %.097.i39, %.preheader ], [ %i.bg, %bb.e ]
  %i.bi = getelementptr inbounds i8, ptr %.3104.i.lcssa, i64 %i.ab
  %i.bj = getelementptr inbounds i8, ptr %.198.i.lcssa, i64 %i.ac
  %.not116.i = icmp eq i32 %i.ad, 0
  br i1 %.not116.i, label %BlitBto3.exit, label %.preheader1, !llvm.loop !20

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.bk, %._crit_edge ]
  %.299.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.cq, %._crit_edge ] ; 2 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.cp, %._crit_edge ] ; 3 uses
  %i.bk = add nsw i32 %.in, -1                    ; 2 uses
  %i.bl = load i32, ptr %i.o, align 8             ; 7 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.bl, 1
  %i.bn = icmp eq i32 %i.bl, 1
  br i1 %i.bn, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bl, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.bw, %.preheader3.loopexit.unr-lcssa ]
  %.6.i8.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.2109.i7.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bx, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.bl to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bo = and i32 %.2109.i7.epil.init, 3
  %.not115.i.epil = icmp eq i32 %i.bo, 0
  br i1 %.not115.i.epil, label %bb.f, label %.preheader3.loopexit.epilog-lcssa

bb.f:                                             ; preds = %.lr.ph.epil.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %.6.i8.epil.init, i64 1
  %i.bq = load i8, ptr %.6.i8.epil.init, align 1
  br label %.preheader3.loopexit.epilog-lcssa

.preheader3.loopexit.epilog-lcssa:                ; preds = %bb.f, %.lr.ph.epil.preheader
  %.7.i.epil = phi ptr [ %.6.i8.epil.init, %.lr.ph.epil.preheader ], [ %i.bp, %bb.f ]
  %.1.i.epil = phi i8 [ %.0.i9.epil.init, %.lr.ph.epil.preheader ], [ %i.bq, %bb.f ]
  %i.br = shl i8 %.1.i.epil, 2
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.epilog-lcssa, %.preheader3.loopexit.unr-lcssa, %.preheader4
  %.2109.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.bl, %.preheader3.loopexit.unr-lcssa ], [ %i.bl, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ], [ %.7.i.epil, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ %i.bw, %.preheader3.loopexit.unr-lcssa ], [ %i.br, %.preheader3.loopexit.epilog-lcssa ]
  %i.bs = icmp slt i32 %.2109.i.lcssa, %i.q
  br i1 %i.bs, label %.lr.ph16, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0.i9 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.bw, %.lr.ph.1 ]
  %.6.i8 = phi ptr [ %.5.i20, %.lr.ph.preheader.new ], [ %.7.i, %.lr.ph.1 ] ; 3 uses
  %.2109.i7 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bx, %.lr.ph.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.bt = and i32 %.2109.i7, 2
  %.not115.i = icmp eq i32 %i.bt, 0
  br i1 %.not115.i, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %.6.i8, i64 1
  %i.bv = load i8, ptr %.6.i8, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %.7.i = phi ptr [ %.6.i8, %.lr.ph ], [ %i.bu, %bb.g ] ; 3 uses
  %.1.i = phi i8 [ %.0.i9, %.lr.ph ], [ %i.bv, %bb.g ]
  %i.bw = shl i8 %.1.i, 4                         ; 3 uses
  %i.bx = add nuw nsw i32 %.2109.i7, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

.lr.ph16:                                         ; preds = %.preheader3, %bb.i
  %.2.i15 = phi i8 [ %i.cm, %bb.i ], [ %.0.i.lcssa, %.preheader3 ]
  %.3100.i14 = phi ptr [ %i.cn, %bb.i ], [ %.299.i21, %.preheader3 ] ; 4 uses
  %.8.i13 = phi ptr [ %.9.i, %bb.i ], [ %.6.i.lcssa, %.preheader3 ] ; 3 uses
  %.3110.i12 = phi i32 [ %i.co, %bb.i ], [ %.2109.i.lcssa, %.preheader3 ] ; 2 uses
  %i.by = and i32 %.3110.i12, 3
  %.not114.i = icmp eq i32 %i.by, 0
  br i1 %.not114.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph16
  %i.bz = getelementptr inbounds nuw i8, ptr %.8.i13, i64 1
  %i.ca = load i8, ptr %.8.i13, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph16
  %.9.i = phi ptr [ %.8.i13, %.lr.ph16 ], [ %i.bz, %bb.h ] ; 2 uses
  %.3.i = phi i8 [ %.2.i15, %.lr.ph16 ], [ %i.ca, %bb.h ] ; 2 uses
  %i.cb = lshr i8 %.3.i, 4
  %i.cc = and i8 %i.cb, 12
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cd ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1
  store i8 %i.cf, ptr %.3100.i14, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 1
  store i8 %i.ch, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 2
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = shl i8 %.3.i, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 3 ; 2 uses
  %i.co = add nuw nsw i32 %.3110.i12, 1           ; 2 uses
  %exitcond47.not = icmp eq i32 %i.co, %i.q
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.i, %.preheader3
  %.8.i.lcssa = phi ptr [ %.6.i.lcssa, %.preheader3 ], [ %.9.i, %bb.i ]
  %.3100.i.lcssa = phi ptr [ %.299.i21, %.preheader3 ], [ %i.cn, %bb.i ]
  %i.cp = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.z
  %i.cq = getelementptr inbounds i8, ptr %.3100.i.lcssa, i64 %i.aa
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %BlitBto3.exit, label %.preheader4, !llvm.loop !23

BlitBto3.exit:                                    ; preds = %._crit_edge, %._crit_edge34, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit2bto4(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 4                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = add i32 %i.q, %i.b                       ; 6 uses
  %i.s = add nsw i32 %i.r, 3
  %.neg98.i = sdiv i32 %i.s, -4
  %i.t = add i32 %i.r, %i.h
  %i.u = add i32 %i.t, %.neg98.i                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 15728640
  %i.z = icmp eq i32 %i.y, 1048576
  %.not102.i37 = icmp eq i32 %i.d, 0              ; 2 uses
  br i1 %i.z, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto4.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %i.m to i64
  %i.ac = add i32 %i.q, %i.b
  %i.ad = add i32 %i.q, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto4.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.ae = sext i32 %i.u to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = add i32 %i.q, %i.b
  %i.ah = add i32 %i.q, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge34
  %.in40 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ai, %._crit_edge34 ]
  %.087.i39 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.cc, %._crit_edge34 ] ; 4 uses
  %.091.i38 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.cb, %._crit_edge34 ] ; 3 uses
  %i.ai = add nsw i32 %.in40, -1                  ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8             ; 7 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader1
  %xtraiter77 = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter82 = and i32 %i.aj, 2147483646
  br label %.lr.ph25

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph25.1
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.078.i24.epil.init = phi i8 [ 0, %.lr.ph25.preheader ], [ %i.bg, %.preheader.loopexit.unr-lcssa ]
  %.082.i23.epil.init = phi i32 [ 0, %.lr.ph25.preheader ], [ %i.bh, %.preheader.loopexit.unr-lcssa ]
  %.192.i22.epil.init = phi ptr [ %.091.i38, %.lr.ph25.preheader ], [ %.293.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod81 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.am = and i32 %.082.i23.epil.init, 3
  %.not104.i.epil = icmp eq i32 %i.am, 0
  br i1 %.not104.i.epil, label %bb.b, label %.preheader.loopexit.epilog-lcssa

bb.b:                                             ; preds = %.lr.ph25.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.192.i22.epil.init, i64 1
  %i.ao = load i8, ptr %.192.i22.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.b, %.lr.ph25.epil.preheader
  %.293.i.epil = phi ptr [ %.192.i22.epil.init, %.lr.ph25.epil.preheader ], [ %i.an, %bb.b ]
  %.179.i.epil = phi i8 [ %.078.i24.epil.init, %.lr.ph25.epil.preheader ], [ %i.ao, %bb.b ]
  %i.ap = lshr i8 %.179.i.epil, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.192.i.lcssa = phi ptr [ %.091.i38, %.preheader1 ], [ %.293.i, %.preheader.loopexit.unr-lcssa ], [ %.293.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.082.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.aj, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.078.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.bg, %.preheader.loopexit.unr-lcssa ], [ %i.ap, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.aq = icmp slt i32 %.082.i.lcssa, %i.r
  br i1 %i.aq, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.ar = sub i32 %i.ag, %.082.i.lcssa
  %.neg86 = add nuw i32 %.082.i.lcssa, 1
  %xtraiter84 = and i32 %i.ar, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %i.as = and i32 %.082.i.lcssa, 3
  %.not103.i.prol = icmp eq i32 %i.as, 0
  br i1 %.not103.i.prol, label %bb.c, label %.lr.ph33.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph33.prol
  %i.at = getelementptr inbounds nuw i8, ptr %.192.i.lcssa, i64 1
  %i.au = load i8, ptr %.192.i.lcssa, align 1
  br label %.lr.ph33.prol.loopexit.unr-lcssa

.lr.ph33.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph33.prol
  %.4.i.prol = phi ptr [ %.192.i.lcssa, %.lr.ph33.prol ], [ %i.at, %bb.c ] ; 2 uses
  %.381.i.prol = phi i8 [ %.078.i.lcssa, %.lr.ph33.prol ], [ %i.au, %bb.c ] ; 2 uses
  %i.av = and i8 %.381.i.prol, 3
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr %.087.i39, align 4
  %i.az = lshr i8 %.381.i.prol, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.087.i39, i64 4 ; 2 uses
  %i.bb = add nuw nsw i32 %.082.i.lcssa, 1
  br label %.lr.ph33.prol.loopexit

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.4.i.lcssa.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.280.i32.unr = phi i8 [ %.078.i.lcssa, %.lr.ph33.preheader ], [ %i.az, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.183.i31.unr = phi i32 [ %.082.i.lcssa, %.lr.ph33.preheader ], [ %i.bb, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.188.i30.unr = phi ptr [ %.087.i39, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.394.i29.unr = phi ptr [ %.192.i.lcssa, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i32 %i.ah, %.neg86
  br i1 %i.bc, label %._crit_edge34, label %.lr.ph33

.lr.ph25:                                         ; preds = %.lr.ph25.1, %.lr.ph25.preheader.new
  %.078.i24 = phi i8 [ 0, %.lr.ph25.preheader.new ], [ %i.bg, %.lr.ph25.1 ]
  %.082.i23 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.bh, %.lr.ph25.1 ] ; 2 uses
  %.192.i22 = phi ptr [ %.091.i38, %.lr.ph25.preheader.new ], [ %.293.i, %.lr.ph25.1 ] ; 3 uses
  %niter83 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter83.next.1, %.lr.ph25.1 ]
  %i.bd = and i32 %.082.i23, 2
  %.not104.i = icmp eq i32 %i.bd, 0
  br i1 %.not104.i, label %bb.d, label %.lr.ph25.1

bb.d:                                             ; preds = %.lr.ph25
  %i.be = getelementptr inbounds nuw i8, ptr %.192.i22, i64 1
  %i.bf = load i8, ptr %.192.i22, align 1
  br label %.lr.ph25.1

.lr.ph25.1:                                       ; preds = %.lr.ph25, %bb.d
  %.293.i = phi ptr [ %.192.i22, %.lr.ph25 ], [ %i.be, %bb.d ] ; 3 uses
  %.179.i = phi i8 [ %.078.i24, %.lr.ph25 ], [ %i.bf, %bb.d ]
  %i.bg = lshr i8 %.179.i, 4                      ; 3 uses
  %i.bh = add nuw nsw i32 %.082.i23, 2            ; 2 uses
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !24

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %bb.g
  %.280.i32 = phi i8 [ %i.by, %bb.g ], [ %.280.i32.unr, %.lr.ph33.prol.loopexit ]
  %.183.i31 = phi i32 [ %i.ca, %bb.g ], [ %.183.i31.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.188.i30 = phi ptr [ %i.bz, %bb.g ], [ %.188.i30.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %.394.i29 = phi ptr [ %.4.i.1, %bb.g ], [ %.394.i29.unr, %.lr.ph33.prol.loopexit ] ; 3 uses
  %i.bi = and i32 %.183.i31, 3
  %.not103.i = icmp eq i32 %i.bi, 0
  br i1 %.not103.i, label %bb.e, label %.lr.ph33.1

bb.e:                                             ; preds = %.lr.ph33
  %i.bj = getelementptr inbounds nuw i8, ptr %.394.i29, i64 1
  %i.bk = load i8, ptr %.394.i29, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %bb.e, %.lr.ph33
  %.4.i = phi ptr [ %.394.i29, %.lr.ph33 ], [ %i.bj, %bb.e ] ; 3 uses
  %.381.i = phi i8 [ %.280.i32, %.lr.ph33 ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bl = and i8 %.381.i, 3
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  store i32 %i.bo, ptr %.188.i30, align 4
  %i.bp = lshr i8 %.381.i, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.188.i30, i64 4
  %i.br = and i32 %.183.i31, 3
  %.not103.i.1 = icmp eq i32 %i.br, 3
  br i1 %.not103.i.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph33.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bt = load i8, ptr %.4.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph33.1
  %.4.i.1 = phi ptr [ %.4.i, %.lr.ph33.1 ], [ %i.bs, %bb.f ] ; 2 uses
  %.381.i.1 = phi i8 [ %i.bp, %.lr.ph33.1 ], [ %i.bt, %bb.f ] ; 2 uses
  %i.bu = and i8 %.381.i.1, 3
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4
  store i32 %i.bx, ptr %i.bq, align 4
  %i.by = lshr i8 %.381.i.1, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.188.i30, i64 8 ; 2 uses
  %i.ca = add nuw nsw i32 %.183.i31, 2            ; 2 uses
  %exitcond49.not.1 = icmp eq i32 %i.ca, %i.r
  br i1 %exitcond49.not.1, label %._crit_edge34, label %.lr.ph33, !llvm.loop !25

._crit_edge34:                                    ; preds = %.lr.ph33.prol.loopexit, %bb.g, %.preheader
  %.394.i.lcssa = phi ptr [ %.192.i.lcssa, %.preheader ], [ %.4.i.lcssa.unr, %.lr.ph33.prol.loopexit ], [ %.4.i.1, %bb.g ]
  %.188.i.lcssa = phi ptr [ %.087.i39, %.preheader ], [ %.lcssa68.unr, %.lr.ph33.prol.loopexit ], [ %i.bz, %bb.g ]
  %i.cb = getelementptr inbounds i8, ptr %.394.i.lcssa, i64 %i.ae
  %i.cc = getelementptr inbounds [4 x i8], ptr %.188.i.lcssa, i64 %i.af
  %.not102.i = icmp eq i32 %i.ai, 0
  br i1 %.not102.i, label %BlitBto4.exit, label %.preheader1, !llvm.loop !26

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.cd, %._crit_edge ]
  %.289.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.dx, %._crit_edge ] ; 4 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.dw, %._crit_edge ] ; 3 uses
  %i.cd = add nsw i32 %.in, -1                    ; 2 uses
  %i.ce = load i32, ptr %i.p, align 8             ; 7 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.ce, 1
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ce, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.db, %.preheader3.loopexit.unr-lcssa ]
  %.284.i8.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.dc, %.preheader3.loopexit.unr-lcssa ]
  %.6.i7.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.ch = and i32 %.284.i8.epil.init, 3
  %.not101.i.epil = icmp eq i32 %i.ch, 0
end_hunk_4
begin_hunk_5_@Blit2bto1Key:bb.a
.preheader7:                                      ; preds = %.preheader7.loopexit.epilog-lcssa, %.preheader7.loopexit.unr-lcssa, %.preheader8
  %.1168.i.lcssa = phi ptr [ %.0167.i46, %.preheader8 ], [ %.2169.i, %.preheader7.loopexit.unr-lcssa ], [ %.2169.i.epil, %.preheader7.loopexit.epilog-lcssa ] ; 2 uses
  %.0154.i.lcssa = phi i32 [ 0, %.preheader8 ], [ %i.ag, %.preheader7.loopexit.unr-lcssa ], [ %i.ag, %.preheader7.loopexit.epilog-lcssa ] ; 2 uses
  %.0150.i.lcssa = phi i8 [ 0, %.preheader8 ], [ %i.ar, %.preheader7.loopexit.unr-lcssa ], [ %i.am, %.preheader7.loopexit.epilog-lcssa ]
  %i.an = icmp slt i32 %.0154.i.lcssa, %i.s
  br i1 %i.an, label %.lr.ph41, label %._crit_edge42

.lr.ph33:                                         ; preds = %.lr.ph33.1, %.lr.ph33.preheader.new
  %.0150.i32 = phi i8 [ 0, %.lr.ph33.preheader.new ], [ %i.ar, %.lr.ph33.1 ]
  %.0154.i31 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %i.as, %.lr.ph33.1 ] ; 2 uses
  %.1168.i30 = phi ptr [ %.0167.i46, %.lr.ph33.preheader.new ], [ %.2169.i, %.lr.ph33.1 ] ; 3 uses
  %niter168 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %niter168.next.1, %.lr.ph33.1 ]
  %i.ao = and i32 %.0154.i31, 2
  %.not198.i = icmp eq i32 %i.ao, 0
  br i1 %.not198.i, label %bb.d, label %.lr.ph33.1

bb.d:                                             ; preds = %.lr.ph33
  %i.ap = getelementptr inbounds nuw i8, ptr %.1168.i30, i64 1
  %i.aq = load i8, ptr %.1168.i30, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %.lr.ph33, %bb.d
  %.2169.i = phi ptr [ %.1168.i30, %.lr.ph33 ], [ %i.ap, %bb.d ] ; 3 uses
  %.1151.i = phi i8 [ %.0150.i32, %.lr.ph33 ], [ %i.aq, %bb.d ]
  %i.ar = lshr i8 %.1151.i, 4                     ; 3 uses
  %i.as = add nuw nsw i32 %.0154.i31, 2           ; 2 uses
  %niter168.next.1 = add nuw nsw i32 %niter168, 2 ; 2 uses
  %niter168.ncmp.1 = icmp eq i32 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !30

.lr.ph41:                                         ; preds = %.preheader7, %bb.h
  %.2152.i40 = phi i8 [ %i.bc, %bb.h ], [ %.0150.i.lcssa, %.preheader7 ]
  %.1155.i39 = phi i32 [ %i.bd, %bb.h ], [ %.0154.i.lcssa, %.preheader7 ] ; 2 uses
  %.1160.i38 = phi ptr [ %i.bb, %bb.h ], [ %.0159.i47, %.preheader7 ] ; 2 uses
  %.3170.i37 = phi ptr [ %.4171.i, %bb.h ], [ %.1168.i.lcssa, %.preheader7 ] ; 3 uses
  %i.at = and i32 %.1155.i39, 3
  %.not196.i = icmp eq i32 %i.at, 0
  br i1 %.not196.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph41
  %i.au = getelementptr inbounds nuw i8, ptr %.3170.i37, i64 1
  %i.av = load i8, ptr %.3170.i37, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph41
  %.4171.i = phi ptr [ %.3170.i37, %.lr.ph41 ], [ %i.au, %bb.e ] ; 2 uses
  %.3153.i = phi i8 [ %.2152.i40, %.lr.ph41 ], [ %i.av, %bb.e ] ; 2 uses
  %i.aw = and i8 %.3153.i, 3                      ; 2 uses
  %i.ax = zext nneg i8 %i.aw to i32
  %.not197.i = icmp eq i32 %i.n, %i.ax
  br i1 %.not197.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  store i8 %i.ba, ptr %.1160.i38, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %.1160.i38, i64 1 ; 2 uses
  %i.bc = lshr i8 %.3153.i, 2
  %i.bd = add nuw nsw i32 %.1155.i39, 1           ; 2 uses
  %exitcond103.not = icmp eq i32 %i.bd, %i.s
  br i1 %exitcond103.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !31

._crit_edge42:                                    ; preds = %bb.h, %.preheader7
  %.3170.i.lcssa = phi ptr [ %.1168.i.lcssa, %.preheader7 ], [ %.4171.i, %bb.h ]
  %.1160.i.lcssa = phi ptr [ %.0159.i47, %.preheader7 ], [ %i.bb, %bb.h ]
  %i.be = getelementptr inbounds i8, ptr %.3170.i.lcssa, i64 %i.ad
  %i.bf = getelementptr inbounds i8, ptr %.1160.i.lcssa, i64 %i.ae
  %.not195.i = icmp eq i32 %i.af, 0
  br i1 %.not195.i, label %BlitBto1Key.exit, label %.preheader8, !llvm.loop !32

.preheader12:                                     ; preds = %.preheader12.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader12.lr.ph ], [ %i.bg, %._crit_edge ]
  %.2161.i29 = phi ptr [ %i.h, %.preheader12.lr.ph ], [ %i.cg, %._crit_edge ] ; 2 uses
  %.5172.i28 = phi ptr [ %i.f, %.preheader12.lr.ph ], [ %i.cf, %._crit_edge ] ; 3 uses
  %i.bg = add nsw i32 %.in, -1                    ; 2 uses
  %i.bh = load i32, ptr %i.q, align 8             ; 7 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %.preheader11

.lr.ph.preheader:                                 ; preds = %.preheader12
  %xtraiter = and i32 %i.bh, 1
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bh, 2147483646
  br label %.lr.ph

.preheader11.loopexit.unr-lcssa:                  ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader11, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader11.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0146.i17.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.bs, %.preheader11.loopexit.unr-lcssa ]
  %.2156.i16.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bt, %.preheader11.loopexit.unr-lcssa ]
  %.6173.i15.epil.init = phi ptr [ %.5172.i28, %.lr.ph.preheader ], [ %.7174.i, %.preheader11.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod161 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.bk = and i32 %.2156.i16.epil.init, 3
  %.not194.i.epil = icmp eq i32 %i.bk, 0
  br i1 %.not194.i.epil, label %bb.i, label %.preheader11.loopexit.epilog-lcssa

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %.6173.i15.epil.init, i64 1
  %i.bm = load i8, ptr %.6173.i15.epil.init, align 1
  br label %.preheader11.loopexit.epilog-lcssa

.preheader11.loopexit.epilog-lcssa:               ; preds = %bb.i, %.lr.ph.epil.preheader
  %.7174.i.epil = phi ptr [ %.6173.i15.epil.init, %.lr.ph.epil.preheader ], [ %i.bl, %bb.i ]
  %.1147.i.epil = phi i8 [ %.0146.i17.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %bb.i ]
  %i.bn = shl i8 %.1147.i.epil, 2
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit.epilog-lcssa, %.preheader11.loopexit.unr-lcssa, %.preheader12
  %.6173.i.lcssa = phi ptr [ %.5172.i28, %.preheader12 ], [ %.7174.i, %.preheader11.loopexit.unr-lcssa ], [ %.7174.i.epil, %.preheader11.loopexit.epilog-lcssa ] ; 2 uses
  %.2156.i.lcssa = phi i32 [ 0, %.preheader12 ], [ %i.bh, %.preheader11.loopexit.unr-lcssa ], [ %i.bh, %.preheader11.loopexit.epilog-lcssa ] ; 2 uses
  %.0146.i.lcssa = phi i8 [ 0, %.preheader12 ], [ %i.bs, %.preheader11.loopexit.unr-lcssa ], [ %i.bn, %.preheader11.loopexit.epilog-lcssa ]
  %i.bo = icmp slt i32 %.2156.i.lcssa, %i.s
  br i1 %i.bo, label %.lr.ph24, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0146.i17 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.bs, %.lr.ph.1 ]
  %.2156.i16 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph.1 ] ; 2 uses
  %.6173.i15 = phi ptr [ %.5172.i28, %.lr.ph.preheader.new ], [ %.7174.i, %.lr.ph.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.bp = and i32 %.2156.i16, 2
  %.not194.i = icmp eq i32 %i.bp, 0
  br i1 %.not194.i, label %bb.j, label %.lr.ph.1

bb.j:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %.6173.i15, i64 1
  %i.br = load i8, ptr %.6173.i15, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.j, %.lr.ph
  %.7174.i = phi ptr [ %.6173.i15, %.lr.ph ], [ %i.bq, %bb.j ] ; 3 uses
  %.1147.i = phi i8 [ %.0146.i17, %.lr.ph ], [ %i.br, %bb.j ]
  %i.bs = shl i8 %.1147.i, 4                      ; 3 uses
  %i.bt = add nuw nsw i32 %.2156.i16, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader11.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

.lr.ph24:                                         ; preds = %.preheader11, %bb.n
  %.2148.i23 = phi i8 [ %i.cd, %bb.n ], [ %.0146.i.lcssa, %.preheader11 ]
  %.3157.i22 = phi i32 [ %i.ce, %bb.n ], [ %.2156.i.lcssa, %.preheader11 ] ; 2 uses
  %.3162.i21 = phi ptr [ %i.cc, %bb.n ], [ %.2161.i29, %.preheader11 ] ; 2 uses
  %.8.i20 = phi ptr [ %.9.i, %bb.n ], [ %.6173.i.lcssa, %.preheader11 ] ; 3 uses
  %i.bu = and i32 %.3157.i22, 3
  %.not192.i = icmp eq i32 %i.bu, 0
  br i1 %.not192.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph24
  %i.bv = getelementptr inbounds nuw i8, ptr %.8.i20, i64 1
  %i.bw = load i8, ptr %.8.i20, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph24
  %.9.i = phi ptr [ %.8.i20, %.lr.ph24 ], [ %i.bv, %bb.k ] ; 2 uses
  %.3149.i = phi i8 [ %.2148.i23, %.lr.ph24 ], [ %i.bw, %bb.k ] ; 2 uses
  %i.bx = lshr i8 %.3149.i, 6                     ; 2 uses
  %i.by = zext nneg i8 %i.bx to i32
  %.not193.i = icmp eq i32 %i.n, %i.by
  br i1 %.not193.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = zext nneg i8 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  store i8 %i.cb, ptr %.3162.i21, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %.3162.i21, i64 1 ; 2 uses
  %i.cd = shl i8 %.3149.i, 2
  %i.ce = add nuw nsw i32 %.3157.i22, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.ce, %i.s
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph24, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.n, %.preheader11
  %.8.i.lcssa = phi ptr [ %.6173.i.lcssa, %.preheader11 ], [ %.9.i, %bb.n ]
  %.3162.i.lcssa = phi ptr [ %.2161.i29, %.preheader11 ], [ %i.cc, %bb.n ]
  %i.cf = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.ab
  %i.cg = getelementptr inbounds i8, ptr %.3162.i.lcssa, i64 %i.ac
  %.not191.i = icmp eq i32 %i.bg, 0
  br i1 %.not191.i, label %BlitBto1Key.exit, label %.preheader12, !llvm.loop !35

bb.o:                                             ; preds = %bb.a
  br i1 %i.aa, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.o
  br i1 %.not187.i81, label %BlitBto1Key.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.ch = sext i32 %i.v to i64
  %i.ci = sext i32 %i.l to i64
  %i.cj = add i32 %i.r, %i.b
  %i.ck = add i32 %i.r, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.o
  br i1 %.not187.i81, label %BlitBto1Key.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.cl = sext i32 %i.v to i64
  %i.cm = sext i32 %i.l to i64
  %i.cn = add i32 %i.r, %i.b
  %i.co = add i32 %i.r, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge78
  %.in86 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.cp, %._crit_edge78 ]
  %.4163.i83 = phi ptr [ %i.h, %.preheader1.lr.ph ], [ %i.ed, %._crit_edge78 ] ; 4 uses
  %.10.i82 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.ec, %._crit_edge78 ] ; 3 uses
  %i.cp = add nsw i32 %.in86, -1                  ; 2 uses
  %i.cq = load i32, ptr %i.q, align 8             ; 7 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %.preheader1
  %xtraiter178 = and i32 %i.cq, 1
  %i.cs = icmp eq i32 %i.cq, 1
  br i1 %i.cs, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter183 = and i32 %i.cq, 2147483646
  br label %.lr.ph69

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph69.1
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.preheader, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.0142.i68.epil.init = phi i8 [ 0, %.lr.ph69.preheader ], [ %i.dl, %.preheader.loopexit.unr-lcssa ]
  %.4.i67.epil.init = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.dm, %.preheader.loopexit.unr-lcssa ]
  %.11.i66.epil.init = phi ptr [ %.10.i82, %.lr.ph69.preheader ], [ %.12.i, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod182 = trunc i32 %i.cq to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.ct = and i32 %.4.i67.epil.init, 3
  %.not190.i.epil = icmp eq i32 %i.ct, 0
  br i1 %.not190.i.epil, label %bb.p, label %.preheader.loopexit.epilog-lcssa

bb.p:                                             ; preds = %.lr.ph69.epil.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.11.i66.epil.init, i64 1
  %i.cv = load i8, ptr %.11.i66.epil.init, align 1
  br label %.preheader.loopexit.epilog-lcssa

.preheader.loopexit.epilog-lcssa:                 ; preds = %bb.p, %.lr.ph69.epil.preheader
  %.12.i.epil = phi ptr [ %.11.i66.epil.init, %.lr.ph69.epil.preheader ], [ %i.cu, %bb.p ]
  %.1143.i.epil = phi i8 [ %.0142.i68.epil.init, %.lr.ph69.epil.preheader ], [ %i.cv, %bb.p ]
  %i.cw = lshr i8 %.1143.i.epil, 2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.epilog-lcssa, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.11.i.lcssa = phi ptr [ %.10.i82, %.preheader1 ], [ %.12.i, %.preheader.loopexit.unr-lcssa ], [ %.12.i.epil, %.preheader.loopexit.epilog-lcssa ] ; 5 uses
  %.4.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.cq, %.preheader.loopexit.unr-lcssa ], [ %i.cq, %.preheader.loopexit.epilog-lcssa ] ; 6 uses
  %.0142.i.lcssa = phi i8 [ 0, %.preheader1 ], [ %i.dl, %.preheader.loopexit.unr-lcssa ], [ %i.cw, %.preheader.loopexit.epilog-lcssa ] ; 2 uses
  %i.cx = icmp slt i32 %.4.i.lcssa, %i.s
  br i1 %i.cx, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.cy = sub i32 %i.cn, %.4.i.lcssa
  %.neg187 = add nuw i32 %.4.i.lcssa, 1
  %xtraiter185 = and i32 %i.cy, 1
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader
  %i.cz = and i32 %.4.i.lcssa, 3
  %.not188.i.prol = icmp eq i32 %i.cz, 0
  br i1 %.not188.i.prol, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph77.prol
  %i.da = getelementptr inbounds nuw i8, ptr %.11.i.lcssa, i64 1
  %i.db = load i8, ptr %.11.i.lcssa, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph77.prol
  %.14.i.prol = phi ptr [ %.11.i.lcssa, %.lr.ph77.prol ], [ %i.da, %bb.q ] ; 2 uses
  %.3145.i.prol = phi i8 [ %.0142.i.lcssa, %.lr.ph77.prol ], [ %i.db, %bb.q ] ; 2 uses
  %i.dc = and i8 %.3145.i.prol, 3                 ; 2 uses
  %i.dd = zext nneg i8 %i.dc to i32
  %.not189.i.prol = icmp eq i32 %i.n, %i.dd
  br i1 %.not189.i.prol, label %.lr.ph77.prol.loopexit.unr-lcssa, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 %i.dc, ptr %.4163.i83, align 1
  br label %.lr.ph77.prol.loopexit.unr-lcssa

.lr.ph77.prol.loopexit.unr-lcssa:                 ; preds = %bb.s, %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.4163.i83, i64 1 ; 2 uses
  %i.df = lshr i8 %.3145.i.prol, 2
  %i.dg = add nuw nsw i32 %.4.i.lcssa, 1
  br label %.lr.ph77.prol.loopexit

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.de, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.14.i.lcssa.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.2144.i76.unr = phi i8 [ %.0142.i.lcssa, %.lr.ph77.preheader ], [ %i.df, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5.i75.unr = phi i32 [ %.4.i.lcssa, %.lr.ph77.preheader ], [ %i.dg, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5164.i74.unr = phi ptr [ %.4163.i83, %.lr.ph77.preheader ], [ %i.de, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.13.i73.unr = phi ptr [ %.11.i.lcssa, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %i.dh = icmp eq i32 %i.co, %.neg187
  br i1 %i.dh, label %._crit_edge78, label %.lr.ph77

.lr.ph69:                                         ; preds = %.lr.ph69.1, %.lr.ph69.preheader.new
  %.0142.i68 = phi i8 [ 0, %.lr.ph69.preheader.new ], [ %i.dl, %.lr.ph69.1 ]
  %.4.i67 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %i.dm, %.lr.ph69.1 ] ; 2 uses
  %.11.i66 = phi ptr [ %.10.i82, %.lr.ph69.preheader.new ], [ %.12.i, %.lr.ph69.1 ] ; 3 uses
  %niter184 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %niter184.next.1, %.lr.ph69.1 ]
  %i.di = and i32 %.4.i67, 2
  %.not190.i = icmp eq i32 %i.di, 0
  br i1 %.not190.i, label %bb.t, label %.lr.ph69.1

bb.t:                                             ; preds = %.lr.ph69
  %i.dj = getelementptr inbounds nuw i8, ptr %.11.i66, i64 1
  %i.dk = load i8, ptr %.11.i66, align 1
  br label %.lr.ph69.1

.lr.ph69.1:                                       ; preds = %.lr.ph69, %bb.t
  %.12.i = phi ptr [ %.11.i66, %.lr.ph69 ], [ %i.dj, %bb.t ] ; 3 uses
  %.1143.i = phi i8 [ %.0142.i68, %.lr.ph69 ], [ %i.dk, %bb.t ]
  %i.dl = lshr i8 %.1143.i, 4                     ; 3 uses
  %i.dm = add nuw nsw i32 %.4.i67, 2              ; 2 uses
  %niter184.next.1 = add nuw nsw i32 %niter184, 2 ; 2 uses
  %niter184.ncmp.1 = icmp eq i32 %niter184.next.1, %unroll_iter183
  br i1 %niter184.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !36

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %bb.aa
  %.2144.i76 = phi i8 [ %i.ea, %bb.aa ], [ %.2144.i76.unr, %.lr.ph77.prol.loopexit ]
  %.5.i75 = phi i32 [ %i.eb, %bb.aa ], [ %.5.i75.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.5164.i74 = phi ptr [ %i.dz, %bb.aa ], [ %.5164.i74.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %.13.i73 = phi ptr [ %.14.i.1, %bb.aa ], [ %.13.i73.unr, %.lr.ph77.prol.loopexit ] ; 3 uses
  %i.dn = and i32 %.5.i75, 3
  %.not188.i = icmp eq i32 %i.dn, 0
  br i1 %.not188.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph77
  %i.do = getelementptr inbounds nuw i8, ptr %.13.i73, i64 1
  %i.dp = load i8, ptr %.13.i73, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph77
  %.14.i = phi ptr [ %.13.i73, %.lr.ph77 ], [ %i.do, %bb.u ] ; 3 uses
  %.3145.i = phi i8 [ %.2144.i76, %.lr.ph77 ], [ %i.dp, %bb.u ] ; 2 uses
  %i.dq = and i8 %.3145.i, 3                      ; 2 uses
  %i.dr = zext nneg i8 %i.dq to i32
  %.not189.i = icmp eq i32 %i.n, %i.dr
  br i1 %.not189.i, label %.lr.ph77.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 %i.dq, ptr %.5164.i74, align 1
  br label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %bb.w, %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %.5164.i74, i64 1
  %i.dt = lshr i8 %.3145.i, 2
  %i.du = and i32 %.5.i75, 3
  %.not188.i.1 = icmp eq i32 %i.du, 3
  br i1 %.not188.i.1, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph77.1
  %i.dv = getelementptr inbounds nuw i8, ptr %.14.i, i64 1
  %i.dw = load i8, ptr %.14.i, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph77.1
  %.14.i.1 = phi ptr [ %.14.i, %.lr.ph77.1 ], [ %i.dv, %bb.x ] ; 2 uses
  %.3145.i.1 = phi i8 [ %i.dt, %.lr.ph77.1 ], [ %i.dw, %bb.x ] ; 2 uses
  %i.dx = and i8 %.3145.i.1, 3                    ; 2 uses
  %i.dy = zext nneg i8 %i.dx to i32
  %.not189.i.1 = icmp eq i32 %i.n, %i.dy
  br i1 %.not189.i.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 %i.dx, ptr %i.ds, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %.5164.i74, i64 2 ; 2 uses
  %i.ea = lshr i8 %.3145.i.1, 2
  %i.eb = add nuw nsw i32 %.5.i75, 2              ; 2 uses
  %exitcond107.not.1 = icmp eq i32 %i.eb, %i.s
  br i1 %exitcond107.not.1, label %._crit_edge78, label %.lr.ph77, !llvm.loop !37

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %bb.aa, %.preheader
  %.13.i.lcssa = phi ptr [ %.11.i.lcssa, %.preheader ], [ %.14.i.lcssa.unr, %.lr.ph77.prol.loopexit ], [ %.14.i.1, %bb.aa ]
  %.5164.i.lcssa = phi ptr [ %.4163.i83, %.preheader ], [ %.lcssa149.unr, %.lr.ph77.prol.loopexit ], [ %i.dz, %bb.aa ]
  %i.ec = getelementptr inbounds i8, ptr %.13.i.lcssa, i64 %i.cl
  %i.ed = getelementptr inbounds i8, ptr %.5164.i.lcssa, i64 %i.cm
  %.not187.i = icmp eq i32 %i.cp, 0
  br i1 %.not187.i, label %BlitBto1Key.exit, label %.preheader1, !llvm.loop !38

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge60
  %.in85 = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.ee, %._crit_edge60 ]
  %.6165.i65 = phi ptr [ %i.h, %.preheader4.lr.ph ], [ %i.fs, %._crit_edge60 ] ; 4 uses
  %.15.i64 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.fr, %._crit_edge60 ] ; 3 uses
  %i.ee = add nsw i32 %.in85, -1                  ; 2 uses
  %i.ef = load i32, ptr %i.q, align 8             ; 7 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph51.preheader, label %.preheader3

.lr.ph51.preheader:                               ; preds = %.preheader4
  %xtraiter169 = and i32 %i.ef, 1
  %i.eh = icmp eq i32 %i.ef, 1
  br i1 %i.eh, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
end_hunk_5
begin_hunk_6_@Blit2bto4Key:bb.a
  br i1 %.not110.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph33
  %i.av = getelementptr inbounds nuw i8, ptr %.3100.i29, i64 1
  %i.aw = load i8, ptr %.3100.i29, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph33
  %.4.i = phi ptr [ %.3100.i29, %.lr.ph33 ], [ %i.av, %bb.d ] ; 2 uses
  %.387.i = phi i8 [ %.286.i32, %.lr.ph33 ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ax = and i8 %.387.i, 3                       ; 2 uses
  %i.ay = zext nneg i8 %i.ax to i32
  %.not111.i = icmp eq i32 %i.n, %i.ay
  br i1 %.not111.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = zext nneg i8 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  store i32 %i.bb, ptr %.194.i30, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bc = lshr i8 %.387.i, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.194.i30, i64 4 ; 2 uses
  %i.be = add nuw nsw i32 %.189.i31, 1            ; 2 uses
  %exitcond49.not = icmp eq i32 %i.be, %i.s
  br i1 %exitcond49.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !55

._crit_edge34:                                    ; preds = %bb.g, %.preheader
  %.3100.i.lcssa = phi ptr [ %.198.i.lcssa, %.preheader ], [ %.4.i, %bb.g ]
  %.194.i.lcssa = phi ptr [ %.093.i39, %.preheader ], [ %i.bd, %bb.g ]
  %i.bf = getelementptr inbounds i8, ptr %.3100.i.lcssa, i64 %i.ae
  %i.bg = getelementptr inbounds [4 x i8], ptr %.194.i.lcssa, i64 %i.af
  %.not109.i = icmp eq i32 %i.ag, 0
  br i1 %.not109.i, label %BlitBto4Key.exit, label %.preheader1, !llvm.loop !56

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.bh, %._crit_edge ]
  %.295.i21 = phi ptr [ %i.h, %.preheader4.lr.ph ], [ %i.ch, %._crit_edge ] ; 2 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.cg, %._crit_edge ] ; 3 uses
  %i.bh = add nsw i32 %.in, -1                    ; 2 uses
  %i.bi = load i32, ptr %i.q, align 8             ; 7 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.bi, 1
  %i.bk = icmp eq i32 %i.bi, 1
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bi, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0.i9.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %i.bt, %.preheader3.loopexit.unr-lcssa ]
  %.290.i8.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bu, %.preheader3.loopexit.unr-lcssa ]
  %.6.i7.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bl = and i32 %.290.i8.epil.init, 3
  %.not108.i.epil = icmp eq i32 %i.bl, 0
  br i1 %.not108.i.epil, label %bb.h, label %.preheader3.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %.6.i7.epil.init, i64 1
  %i.bn = load i8, ptr %.6.i7.epil.init, align 1
  br label %.preheader3.loopexit.epilog-lcssa

.preheader3.loopexit.epilog-lcssa:                ; preds = %bb.h, %.lr.ph.epil.preheader
  %.7.i.epil = phi ptr [ %.6.i7.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %bb.h ]
  %.1.i.epil = phi i8 [ %.0.i9.epil.init, %.lr.ph.epil.preheader ], [ %i.bn, %bb.h ]
  %i.bo = shl i8 %.1.i.epil, 2
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.epilog-lcssa, %.preheader3.loopexit.unr-lcssa, %.preheader4
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %.7.i, %.preheader3.loopexit.unr-lcssa ], [ %.7.i.epil, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.290.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.bi, %.preheader3.loopexit.unr-lcssa ], [ %i.bi, %.preheader3.loopexit.epilog-lcssa ] ; 2 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ %i.bt, %.preheader3.loopexit.unr-lcssa ], [ %i.bo, %.preheader3.loopexit.epilog-lcssa ]
  %i.bp = icmp slt i32 %.290.i.lcssa, %i.s
  br i1 %i.bp, label %.lr.ph16, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader.new
  %.0.i9 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %.lr.ph.1 ]
  %.290.i8 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bu, %.lr.ph.1 ] ; 2 uses
  %.6.i7 = phi ptr [ %.5.i20, %.lr.ph.preheader.new ], [ %.7.i, %.lr.ph.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph.1 ]
  %i.bq = and i32 %.290.i8, 2
  %.not108.i = icmp eq i32 %i.bq, 0
  br i1 %.not108.i, label %bb.i, label %.lr.ph.1

bb.i:                                             ; preds = %.lr.ph
  %i.br = getelementptr inbounds nuw i8, ptr %.6.i7, i64 1
  %i.bs = load i8, ptr %.6.i7, align 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.i, %.lr.ph
  %.7.i = phi ptr [ %.6.i7, %.lr.ph ], [ %i.br, %bb.i ] ; 3 uses
  %.1.i = phi i8 [ %.0.i9, %.lr.ph ], [ %i.bs, %bb.i ]
  %i.bt = shl i8 %.1.i, 4                         ; 3 uses
  %i.bu = add nuw nsw i32 %.290.i8, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !57

.lr.ph16:                                         ; preds = %.preheader3, %bb.m
  %.2.i15 = phi i8 [ %i.cd, %bb.m ], [ %.0.i.lcssa, %.preheader3 ]
  %.391.i14 = phi i32 [ %i.cf, %bb.m ], [ %.290.i.lcssa, %.preheader3 ] ; 2 uses
  %.396.i13 = phi ptr [ %i.ce, %bb.m ], [ %.295.i21, %.preheader3 ] ; 2 uses
  %.8.i12 = phi ptr [ %.9.i, %bb.m ], [ %.6.i.lcssa, %.preheader3 ] ; 3 uses
  %i.bv = and i32 %.391.i14, 3
  %.not106.i = icmp eq i32 %i.bv, 0
  br i1 %.not106.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph16
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.i12, i64 1
  %i.bx = load i8, ptr %.8.i12, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph16
  %.9.i = phi ptr [ %.8.i12, %.lr.ph16 ], [ %i.bw, %bb.j ] ; 2 uses
  %.3.i = phi i8 [ %.2.i15, %.lr.ph16 ], [ %i.bx, %bb.j ] ; 2 uses
  %i.by = lshr i8 %.3.i, 6                        ; 2 uses
  %i.bz = zext nneg i8 %i.by to i32
  %.not107.i = icmp eq i32 %i.n, %i.bz
  br i1 %.not107.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = zext nneg i8 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4
  store i32 %i.cc, ptr %.396.i13, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = shl i8 %.3.i, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.396.i13, i64 4 ; 2 uses
  %i.cf = add nuw nsw i32 %.391.i14, 1            ; 2 uses
  %exitcond47.not = icmp eq i32 %i.cf, %i.s
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.m, %.preheader3
  %.8.i.lcssa = phi ptr [ %.6.i.lcssa, %.preheader3 ], [ %.9.i, %bb.m ]
  %.396.i.lcssa = phi ptr [ %.295.i21, %.preheader3 ], [ %i.ce, %bb.m ]
  %i.cg = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.ac
  %i.ch = getelementptr inbounds [4 x i8], ptr %.396.i.lcssa, i64 %i.ad
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %BlitBto4Key.exit, label %.preheader4, !llvm.loop !59

BlitBto4Key.exit:                                 ; preds = %._crit_edge, %._crit_edge34, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit4bto1(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8              ; 9 uses
  %i.q = add i32 %i.p, %i.b                       ; 10 uses
  %i.r = add nsw i32 %i.q, 1
  %.neg173.i = sdiv i32 %i.r, -2
  %i.s = add i32 %i.q, %i.h
  %i.t = add i32 %i.s, %.neg173.i                 ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 15728640
  %i.y = icmp eq i32 %i.x, 1048576                ; 2 uses
  %.not177.i81 = icmp eq i32 %i.d, 0              ; 4 uses
  br i1 %.not.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.y, label %.preheader9, label %.preheader13

.preheader13:                                     ; preds = %bb.b
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader12.lr.ph

.preheader12.lr.ph:                               ; preds = %.preheader13
  %i.z = sext i32 %i.t to i64
  %i.aa = sext i32 %i.l to i64
  %i.ab = add i32 %i.p, %i.b
  %i.ac = add i32 %i.p, %i.b
  br label %.preheader12

.preheader9:                                      ; preds = %bb.b
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader8.lr.ph

.preheader8.lr.ph:                                ; preds = %.preheader9
  %i.ad = sext i32 %i.t to i64
  %i.ae = sext i32 %i.l to i64
  %i.af = add i32 %i.p, %i.b
  %i.ag = add i32 %i.p, %i.b
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.lr.ph, %._crit_edge42
  %.in84 = phi i32 [ %i.d, %.preheader8.lr.ph ], [ %i.ah, %._crit_edge42 ]
  %.0146.i47 = phi ptr [ %i.j, %.preheader8.lr.ph ], [ %i.by, %._crit_edge42 ] ; 4 uses
  %.0150.i46 = phi ptr [ %i.f, %.preheader8.lr.ph ], [ %i.bx, %._crit_edge42 ] ; 3 uses
  %i.ah = add nsw i32 %.in84, -1                  ; 2 uses
  %i.ai = load i32, ptr %i.o, align 8             ; 8 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph33.preheader, label %.preheader7

.lr.ph33.preheader:                               ; preds = %.preheader8
  %xtraiter164 = and i32 %i.ai, 1
  %i.ak = icmp eq i32 %i.ai, 1
  br i1 %i.ak, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter169 = and i32 %i.ai, 2147483646
  br label %.lr.ph33

.preheader7.loopexit.unr-lcssa:                   ; preds = %.lr.ph33
  %lcmp.mod165.not = icmp eq i32 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.preheader7, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %.preheader7.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.1151.i31.epil.init = phi ptr [ %.0150.i46, %.lr.ph33.preheader ], [ %i.be, %.preheader7.loopexit.unr-lcssa ] ; 3 uses
  %.0162.i30.epil.init = phi i32 [ 0, %.lr.ph33.preheader ], [ %i.bf, %.preheader7.loopexit.unr-lcssa ]
  %lcmp.mod168 = trunc i32 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.al = and i32 %.0162.i30.epil.init, 1
  %.not185.i.epil = icmp eq i32 %i.al, 0
  br i1 %.not185.i.epil, label %bb.c, label %.preheader7

bb.c:                                             ; preds = %.lr.ph33.epil.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.1151.i31.epil.init, i64 1
  %i.an = load i8, ptr %.1151.i31.epil.init, align 1
  %i.ao = lshr i8 %i.an, 4
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit.unr-lcssa, %bb.c, %.lr.ph33.epil.preheader, %.preheader8
  %.0162.i.lcssa = phi i32 [ 0, %.preheader8 ], [ %i.ai, %.lr.ph33.epil.preheader ], [ %i.ai, %bb.c ], [ %i.ai, %.preheader7.loopexit.unr-lcssa ] ; 6 uses
  %.1151.i.lcssa = phi ptr [ %.0150.i46, %.preheader8 ], [ %i.be, %.preheader7.loopexit.unr-lcssa ], [ %.1151.i31.epil.init, %.lr.ph33.epil.preheader ], [ %i.am, %bb.c ] ; 5 uses
  %.0141.i.lcssa = phi i8 [ 0, %.preheader8 ], [ 0, %.preheader7.loopexit.unr-lcssa ], [ 0, %.lr.ph33.epil.preheader ], [ %i.ao, %bb.c ] ; 2 uses
  %i.ap = icmp slt i32 %.0162.i.lcssa, %i.q
  br i1 %i.ap, label %.lr.ph41.preheader, label %._crit_edge42

.lr.ph41.preheader:                               ; preds = %.preheader7
  %i.aq = sub i32 %i.af, %.0162.i.lcssa
  %.neg191 = add nuw i32 %.0162.i.lcssa, 1
  %xtraiter171 = and i32 %i.aq, 1
  %lcmp.mod172.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader
  %i.ar = and i32 %.0162.i.lcssa, 1
  %.not184.i.prol = icmp eq i32 %i.ar, 0
  br i1 %.not184.i.prol, label %bb.d, label %.lr.ph41.prol.loopexit.unr-lcssa

bb.d:                                             ; preds = %.lr.ph41.prol
  %i.as = getelementptr inbounds nuw i8, ptr %.1151.i.lcssa, i64 1
  %i.at = load i8, ptr %.1151.i.lcssa, align 1
  br label %.lr.ph41.prol.loopexit.unr-lcssa

.lr.ph41.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph41.prol
  %.4154.i.prol = phi ptr [ %.1151.i.lcssa, %.lr.ph41.prol ], [ %i.as, %bb.d ] ; 2 uses
  %.3144.i.prol = phi i8 [ %.0141.i.lcssa, %.lr.ph41.prol ], [ %i.at, %bb.d ] ; 2 uses
  %i.au = and i8 %.3144.i.prol, 15
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  store i8 %i.ax, ptr %.0146.i47, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0146.i47, i64 1 ; 2 uses
  %i.az = lshr i8 %.3144.i.prol, 4
  %i.ba = add nuw nsw i32 %.0162.i.lcssa, 1
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol.loopexit.unr-lcssa, %.lr.ph41.preheader
  %.4154.i.lcssa.unr = phi ptr [ poison, %.lr.ph41.preheader ], [ %.4154.i.prol, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.lcssa155.unr = phi ptr [ poison, %.lr.ph41.preheader ], [ %i.ay, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.2143.i40.unr = phi i8 [ %.0141.i.lcssa, %.lr.ph41.preheader ], [ %i.az, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.1147.i39.unr = phi ptr [ %.0146.i47, %.lr.ph41.preheader ], [ %i.ay, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.3153.i38.unr = phi ptr [ %.1151.i.lcssa, %.lr.ph41.preheader ], [ %.4154.i.prol, %.lr.ph41.prol.loopexit.unr-lcssa ]
  %.1163.i37.unr = phi i32 [ %.0162.i.lcssa, %.lr.ph41.preheader ], [ %i.ba, %.lr.ph41.prol.loopexit.unr-lcssa ] ; 3 uses
  %i.bb = icmp eq i32 %i.ag, %.neg191
  br i1 %i.bb, label %._crit_edge42, label %.lr.ph41.preheader.new

.lr.ph41.preheader.new:                           ; preds = %.lr.ph41.prol.loopexit
  %i.bc = and i32 %.1163.i37.unr, 1
  %i.bd = and i32 %.1163.i37.unr, 1
  %.not184.i = icmp eq i32 %i.bd, 0
  %.not184.i.1.not = icmp eq i32 %i.bc, 0
  br label %.lr.ph41

.lr.ph33:                                         ; preds = %.lr.ph33, %.lr.ph33.preheader.new
  %.1151.i31 = phi ptr [ %.0150.i46, %.lr.ph33.preheader.new ], [ %i.be, %.lr.ph33 ]
  %.0162.i30 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %i.bf, %.lr.ph33 ]
  %niter170 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %niter170.next.1, %.lr.ph33 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.1151.i31, i64 1 ; 3 uses
  %i.bf = add nuw nsw i32 %.0162.i30, 2           ; 2 uses
  %niter170.next.1 = add nuw nsw i32 %niter170, 2 ; 2 uses
  %niter170.ncmp.1 = icmp eq i32 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !0

.lr.ph41:                                         ; preds = %bb.g, %.lr.ph41.preheader.new
  %.2143.i40 = phi i8 [ %.2143.i40.unr, %.lr.ph41.preheader.new ], [ %i.bv, %bb.g ]
  %.1147.i39 = phi ptr [ %.1147.i39.unr, %.lr.ph41.preheader.new ], [ %i.bu, %bb.g ] ; 3 uses
  %.3153.i38 = phi ptr [ %.3153.i38.unr, %.lr.ph41.preheader.new ], [ %.4154.i.1, %bb.g ] ; 3 uses
  %.1163.i37 = phi i32 [ %.1163.i37.unr, %.lr.ph41.preheader.new ], [ %i.bw, %bb.g ]
  br i1 %.not184.i, label %bb.e, label %.lr.ph41.1

bb.e:                                             ; preds = %.lr.ph41
  %i.bg = getelementptr inbounds nuw i8, ptr %.3153.i38, i64 1
  %i.bh = load i8, ptr %.3153.i38, align 1
  br label %.lr.ph41.1

.lr.ph41.1:                                       ; preds = %bb.e, %.lr.ph41
  %.4154.i = phi ptr [ %.3153.i38, %.lr.ph41 ], [ %i.bg, %bb.e ] ; 3 uses
  %.3144.i = phi i8 [ %.2143.i40, %.lr.ph41 ], [ %i.bh, %bb.e ] ; 2 uses
  %i.bi = and i8 %.3144.i, 15
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  store i8 %i.bl, ptr %.1147.i39, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.1147.i39, i64 1
  %i.bn = lshr i8 %.3144.i, 4
  br i1 %.not184.i.1.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph41.1
  %i.bo = getelementptr inbounds nuw i8, ptr %.4154.i, i64 1
  %i.bp = load i8, ptr %.4154.i, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph41.1
  %.4154.i.1 = phi ptr [ %.4154.i, %.lr.ph41.1 ], [ %i.bo, %bb.f ] ; 2 uses
  %.3144.i.1 = phi i8 [ %i.bn, %.lr.ph41.1 ], [ %i.bp, %bb.f ] ; 2 uses
  %i.bq = and i8 %.3144.i.1, 15
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %i.bm, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.1147.i39, i64 2 ; 2 uses
  %i.bv = lshr i8 %.3144.i.1, 4
  %i.bw = add nuw nsw i32 %.1163.i37, 2           ; 2 uses
  %exitcond103.not.1 = icmp eq i32 %i.bw, %i.q
  br i1 %exitcond103.not.1, label %._crit_edge42, label %.lr.ph41, !llvm.loop !1

._crit_edge42:                                    ; preds = %.lr.ph41.prol.loopexit, %bb.g, %.preheader7
  %.3153.i.lcssa = phi ptr [ %.1151.i.lcssa, %.preheader7 ], [ %.4154.i.lcssa.unr, %.lr.ph41.prol.loopexit ], [ %.4154.i.1, %bb.g ]
  %.1147.i.lcssa = phi ptr [ %.0146.i47, %.preheader7 ], [ %.lcssa155.unr, %.lr.ph41.prol.loopexit ], [ %i.bu, %bb.g ]
  %i.bx = getelementptr inbounds i8, ptr %.3153.i.lcssa, i64 %i.ad
  %i.by = getelementptr inbounds i8, ptr %.1147.i.lcssa, i64 %i.ae
  %.not183.i = icmp eq i32 %i.ah, 0
  br i1 %.not183.i, label %BlitBto1.exit, label %.preheader8, !llvm.loop !2

.preheader12:                                     ; preds = %.preheader12.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader12.lr.ph ], [ %i.bz, %._crit_edge ]
  %.2148.i29 = phi ptr [ %i.j, %.preheader12.lr.ph ], [ %i.dq, %._crit_edge ] ; 4 uses
  %.5155.i28 = phi ptr [ %i.f, %.preheader12.lr.ph ], [ %i.dp, %._crit_edge ] ; 3 uses
  %i.bz = add nsw i32 %.in, -1                    ; 2 uses
  %i.ca = load i32, ptr %i.o, align 8             ; 8 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.preheader, label %.preheader11

.lr.ph.preheader:                                 ; preds = %.preheader12
  %xtraiter = and i32 %i.ca, 1
  %i.cc = icmp eq i32 %i.ca, 1
  br i1 %i.cc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ca, 2147483646
  br label %.lr.ph

.preheader11.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader11, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader11.loopexit.unr-lcssa, %.lr.ph.preheader
  %.6156.i16.epil.init = phi ptr [ %.5155.i28, %.lr.ph.preheader ], [ %i.cw, %.preheader11.loopexit.unr-lcssa ] ; 3 uses
  %.2164.i15.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cx, %.preheader11.loopexit.unr-lcssa ]
  %lcmp.mod161 = trunc i32 %i.ca to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.cd = and i32 %.2164.i15.epil.init, 1
  %.not182.i.epil = icmp eq i32 %i.cd, 0
  br i1 %.not182.i.epil, label %bb.h, label %.preheader11

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %.6156.i16.epil.init, i64 1
  %i.cf = load i8, ptr %.6156.i16.epil.init, align 1
  %i.cg = shl i8 %i.cf, 4
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader12
  %.2164.i.lcssa = phi i32 [ 0, %.preheader12 ], [ %i.ca, %.lr.ph.epil.preheader ], [ %i.ca, %bb.h ], [ %i.ca, %.preheader11.loopexit.unr-lcssa ] ; 6 uses
  %.6156.i.lcssa = phi ptr [ %.5155.i28, %.preheader12 ], [ %i.cw, %.preheader11.loopexit.unr-lcssa ], [ %.6156.i16.epil.init, %.lr.ph.epil.preheader ], [ %i.ce, %bb.h ] ; 5 uses
  %.0137.i.lcssa = phi i8 [ 0, %.preheader12 ], [ 0, %.preheader11.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ], [ %i.cg, %bb.h ] ; 2 uses
  %i.ch = icmp slt i32 %.2164.i.lcssa, %i.q
  br i1 %i.ch, label %.lr.ph24.preheader, label %._crit_edge

.lr.ph24.preheader:                               ; preds = %.preheader11
  %i.ci = sub i32 %i.ab, %.2164.i.lcssa
  %.neg = add nuw i32 %.2164.i.lcssa, 1
  %xtraiter162 = and i32 %i.ci, 1
  %lcmp.mod163.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph24.prol.loopexit, label %.lr.ph24.prol

.lr.ph24.prol:                                    ; preds = %.lr.ph24.preheader
  %i.cj = and i32 %.2164.i.lcssa, 1
  %.not181.i.prol = icmp eq i32 %i.cj, 0
  br i1 %.not181.i.prol, label %bb.i, label %.lr.ph24.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.lr.ph24.prol
  %i.ck = getelementptr inbounds nuw i8, ptr %.6156.i.lcssa, i64 1
  %i.cl = load i8, ptr %.6156.i.lcssa, align 1
  br label %.lr.ph24.prol.loopexit.unr-lcssa

.lr.ph24.prol.loopexit.unr-lcssa:                 ; preds = %bb.i, %.lr.ph24.prol
  %.9.i.prol = phi ptr [ %.6156.i.lcssa, %.lr.ph24.prol ], [ %i.ck, %bb.i ] ; 2 uses
  %.3140.i.prol = phi i8 [ %.0137.i.lcssa, %.lr.ph24.prol ], [ %i.cl, %bb.i ] ; 2 uses
  %i.cm = lshr i8 %.3140.i.prol, 4
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  store i8 %i.cp, ptr %.2148.i29, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.2148.i29, i64 1 ; 2 uses
  %i.cr = shl i8 %.3140.i.prol, 4
  %i.cs = add nuw nsw i32 %.2164.i.lcssa, 1
  br label %.lr.ph24.prol.loopexit

.lr.ph24.prol.loopexit:                           ; preds = %.lr.ph24.prol.loopexit.unr-lcssa, %.lr.ph24.preheader
  %.9.i.lcssa.unr = phi ptr [ poison, %.lr.ph24.preheader ], [ %.9.i.prol, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.lcssa158.unr = phi ptr [ poison, %.lr.ph24.preheader ], [ %i.cq, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.2139.i23.unr = phi i8 [ %.0137.i.lcssa, %.lr.ph24.preheader ], [ %i.cr, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.3149.i22.unr = phi ptr [ %.2148.i29, %.lr.ph24.preheader ], [ %i.cq, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.8.i21.unr = phi ptr [ %.6156.i.lcssa, %.lr.ph24.preheader ], [ %.9.i.prol, %.lr.ph24.prol.loopexit.unr-lcssa ]
  %.3165.i20.unr = phi i32 [ %.2164.i.lcssa, %.lr.ph24.preheader ], [ %i.cs, %.lr.ph24.prol.loopexit.unr-lcssa ] ; 3 uses
  %i.ct = icmp eq i32 %i.ac, %.neg
  br i1 %i.ct, label %._crit_edge, label %.lr.ph24.preheader.new

.lr.ph24.preheader.new:                           ; preds = %.lr.ph24.prol.loopexit
  %i.cu = and i32 %.3165.i20.unr, 1
  %i.cv = and i32 %.3165.i20.unr, 1
  %.not181.i = icmp eq i32 %i.cv, 0
  %.not181.i.1.not = icmp eq i32 %i.cu, 0
  br label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.6156.i16 = phi ptr [ %.5155.i28, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ]
  %.2164.i15 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.cx, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.6156.i16, i64 1 ; 3 uses
  %i.cx = add nuw nsw i32 %.2164.i15, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader11.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

.lr.ph24:                                         ; preds = %bb.l, %.lr.ph24.preheader.new
  %.2139.i23 = phi i8 [ %.2139.i23.unr, %.lr.ph24.preheader.new ], [ %i.dn, %bb.l ]
  %.3149.i22 = phi ptr [ %.3149.i22.unr, %.lr.ph24.preheader.new ], [ %i.dm, %bb.l ] ; 3 uses
  %.8.i21 = phi ptr [ %.8.i21.unr, %.lr.ph24.preheader.new ], [ %.9.i.1, %bb.l ] ; 3 uses
  %.3165.i20 = phi i32 [ %.3165.i20.unr, %.lr.ph24.preheader.new ], [ %i.do, %bb.l ]
  br i1 %.not181.i, label %bb.j, label %.lr.ph24.1

bb.j:                                             ; preds = %.lr.ph24
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.i21, i64 1
  %i.cz = load i8, ptr %.8.i21, align 1
  br label %.lr.ph24.1

.lr.ph24.1:                                       ; preds = %bb.j, %.lr.ph24
  %.9.i = phi ptr [ %.8.i21, %.lr.ph24 ], [ %i.cy, %bb.j ] ; 3 uses
  %.3140.i = phi i8 [ %.2139.i23, %.lr.ph24 ], [ %i.cz, %bb.j ] ; 2 uses
  %i.da = lshr i8 %.3140.i, 4
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  store i8 %i.dd, ptr %.3149.i22, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.3149.i22, i64 1
  %i.df = shl i8 %.3140.i, 4
  br i1 %.not181.i.1.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph24.1
  %i.dg = getelementptr inbounds nuw i8, ptr %.9.i, i64 1
  %i.dh = load i8, ptr %.9.i, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph24.1
  %.9.i.1 = phi ptr [ %.9.i, %.lr.ph24.1 ], [ %i.dg, %bb.k ] ; 2 uses
  %.3140.i.1 = phi i8 [ %i.df, %.lr.ph24.1 ], [ %i.dh, %bb.k ] ; 2 uses
  %i.di = lshr i8 %.3140.i.1, 4
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1
  store i8 %i.dl, ptr %i.de, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.3149.i22, i64 2 ; 2 uses
  %i.dn = shl i8 %.3140.i.1, 4
  %i.do = add nuw nsw i32 %.3165.i20, 2           ; 2 uses
  %exitcond101.not.1 = icmp eq i32 %i.do, %i.q
  br i1 %exitcond101.not.1, label %._crit_edge, label %.lr.ph24, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph24.prol.loopexit, %bb.l, %.preheader11
  %.8.i.lcssa = phi ptr [ %.6156.i.lcssa, %.preheader11 ], [ %.9.i.lcssa.unr, %.lr.ph24.prol.loopexit ], [ %.9.i.1, %bb.l ]
  %.3149.i.lcssa = phi ptr [ %.2148.i29, %.preheader11 ], [ %.lcssa158.unr, %.lr.ph24.prol.loopexit ], [ %i.dm, %bb.l ]
  %i.dp = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.z
  %i.dq = getelementptr inbounds i8, ptr %.3149.i.lcssa, i64 %i.aa
  %.not180.i = icmp eq i32 %i.bz, 0
  br i1 %.not180.i, label %BlitBto1.exit, label %.preheader12, !llvm.loop !5

bb.m:                                             ; preds = %bb.a
  br i1 %i.y, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.m
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.dr = sext i32 %i.t to i64
  %i.ds = sext i32 %i.l to i64
  %i.dt = add i32 %i.p, %i.b
  %i.du = add i32 %i.p, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.m
  br i1 %.not177.i81, label %BlitBto1.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.dv = sext i32 %i.t to i64
  %i.dw = sext i32 %i.l to i64
  %i.dx = add i32 %i.p, %i.b
  %i.dy = add i32 %i.p, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge78
  %.in86 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.dz, %._crit_edge78 ]
  %.4.i83 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.fh, %._crit_edge78 ] ; 4 uses
  %.10.i82 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.fg, %._crit_edge78 ] ; 3 uses
  %i.dz = add nsw i32 %.in86, -1                  ; 2 uses
  %i.ea = load i32, ptr %i.o, align 8             ; 8 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %.preheader1
  %xtraiter182 = and i32 %i.ea, 1
  %i.ec = icmp eq i32 %i.ea, 1
  br i1 %i.ec, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter187 = and i32 %i.ea, 2147483646
  br label %.lr.ph69

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph69
  %lcmp.mod183.not = icmp eq i32 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.preheader, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.11.i67.epil.init = phi ptr [ %.10.i82, %.lr.ph69.preheader ], [ %i.et, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.4166.i66.epil.init = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.eu, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %i.ea to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.ed = and i32 %.4166.i66.epil.init, 1
  %.not179.i.epil = icmp eq i32 %i.ed, 0
  br i1 %.not179.i.epil, label %bb.n, label %.preheader

bb.n:                                             ; preds = %.lr.ph69.epil.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %.11.i67.epil.init, i64 1
  %i.ef = load i8, ptr %.11.i67.epil.init, align 1
  %i.eg = lshr i8 %i.ef, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.n, %.lr.ph69.epil.preheader, %.preheader1
  %.4166.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.ea, %.lr.ph69.epil.preheader ], [ %i.ea, %bb.n ], [ %i.ea, %.preheader.loopexit.unr-lcssa ] ; 6 uses
  %.11.i.lcssa = phi ptr [ %.10.i82, %.preheader1 ], [ %i.et, %.preheader.loopexit.unr-lcssa ], [ %.11.i67.epil.init, %.lr.ph69.epil.preheader ], [ %i.ee, %bb.n ] ; 5 uses
  %.0133.i.lcssa = phi i8 [ 0, %.preheader1 ], [ 0, %.preheader.loopexit.unr-lcssa ], [ 0, %.lr.ph69.epil.preheader ], [ %i.eg, %bb.n ] ; 2 uses
  %i.eh = icmp slt i32 %.4166.i.lcssa, %i.q
  br i1 %i.eh, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.ei = sub i32 %i.dx, %.4166.i.lcssa
  %.neg193 = add nuw i32 %.4166.i.lcssa, 1
  %xtraiter189 = and i32 %i.ei, 1
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader
  %i.ej = and i32 %.4166.i.lcssa, 1
  %.not178.i.prol = icmp eq i32 %i.ej, 0
  br i1 %.not178.i.prol, label %bb.o, label %.lr.ph77.prol.loopexit.unr-lcssa

bb.o:                                             ; preds = %.lr.ph77.prol
  %i.ek = getelementptr inbounds nuw i8, ptr %.11.i.lcssa, i64 1
  %i.el = load i8, ptr %.11.i.lcssa, align 1
  br label %.lr.ph77.prol.loopexit.unr-lcssa

.lr.ph77.prol.loopexit.unr-lcssa:                 ; preds = %bb.o, %.lr.ph77.prol
  %.14.i.prol = phi ptr [ %.11.i.lcssa, %.lr.ph77.prol ], [ %i.ek, %bb.o ] ; 2 uses
  %.3136.i.prol = phi i8 [ %.0133.i.lcssa, %.lr.ph77.prol ], [ %i.el, %bb.o ] ; 2 uses
  %i.em = and i8 %.3136.i.prol, 15
  store i8 %i.em, ptr %.4.i83, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %.4.i83, i64 1 ; 2 uses
  %i.eo = lshr i8 %.3136.i.prol, 4
  %i.ep = add nuw nsw i32 %.4166.i.lcssa, 1
  br label %.lr.ph77.prol.loopexit

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.14.i.lcssa.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.en, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.2135.i76.unr = phi i8 [ %.0133.i.lcssa, %.lr.ph77.preheader ], [ %i.eo, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5.i75.unr = phi ptr [ %.4.i83, %.lr.ph77.preheader ], [ %i.en, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.13.i74.unr = phi ptr [ %.11.i.lcssa, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5167.i73.unr = phi i32 [ %.4166.i.lcssa, %.lr.ph77.preheader ], [ %i.ep, %.lr.ph77.prol.loopexit.unr-lcssa ] ; 3 uses
  %i.eq = icmp eq i32 %i.dy, %.neg193
  br i1 %i.eq, label %._crit_edge78, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.prol.loopexit
  %i.er = and i32 %.5167.i73.unr, 1
  %i.es = and i32 %.5167.i73.unr, 1
  %.not178.i = icmp eq i32 %i.es, 0
  %.not178.i.1.not = icmp eq i32 %i.er, 0
  br label %.lr.ph77

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %.11.i67 = phi ptr [ %.10.i82, %.lr.ph69.preheader.new ], [ %i.et, %.lr.ph69 ]
  %.4166.i66 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %i.eu, %.lr.ph69 ]
  %niter188 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %niter188.next.1, %.lr.ph69 ]
  %i.et = getelementptr inbounds nuw i8, ptr %.11.i67, i64 1 ; 3 uses
  %i.eu = add nuw nsw i32 %.4166.i66, 2           ; 2 uses
  %niter188.next.1 = add nuw nsw i32 %niter188, 2 ; 2 uses
  %niter188.ncmp.1 = icmp eq i32 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !6

.lr.ph77:                                         ; preds = %bb.r, %.lr.ph77.preheader.new
  %.2135.i76 = phi i8 [ %.2135.i76.unr, %.lr.ph77.preheader.new ], [ %i.fe, %bb.r ]
  %.5.i75 = phi ptr [ %.5.i75.unr, %.lr.ph77.preheader.new ], [ %i.fd, %bb.r ] ; 3 uses
  %.13.i74 = phi ptr [ %.13.i74.unr, %.lr.ph77.preheader.new ], [ %.14.i.1, %bb.r ] ; 3 uses
  %.5167.i73 = phi i32 [ %.5167.i73.unr, %.lr.ph77.preheader.new ], [ %i.ff, %bb.r ]
  br i1 %.not178.i, label %bb.p, label %.lr.ph77.1

bb.p:                                             ; preds = %.lr.ph77
  %i.ev = getelementptr inbounds nuw i8, ptr %.13.i74, i64 1
  %i.ew = load i8, ptr %.13.i74, align 1
  br label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %bb.p, %.lr.ph77
  %.14.i = phi ptr [ %.13.i74, %.lr.ph77 ], [ %i.ev, %bb.p ] ; 3 uses
  %.3136.i = phi i8 [ %.2135.i76, %.lr.ph77 ], [ %i.ew, %bb.p ] ; 2 uses
  %i.ex = and i8 %.3136.i, 15
  store i8 %i.ex, ptr %.5.i75, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.5.i75, i64 1
  %i.ez = lshr i8 %.3136.i, 4
  br i1 %.not178.i.1.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph77.1
  %i.fa = getelementptr inbounds nuw i8, ptr %.14.i, i64 1
  %i.fb = load i8, ptr %.14.i, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph77.1
  %.14.i.1 = phi ptr [ %.14.i, %.lr.ph77.1 ], [ %i.fa, %bb.q ] ; 2 uses
  %.3136.i.1 = phi i8 [ %i.ez, %.lr.ph77.1 ], [ %i.fb, %bb.q ] ; 2 uses
  %i.fc = and i8 %.3136.i.1, 15
  store i8 %i.fc, ptr %i.ey, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.5.i75, i64 2 ; 2 uses
  %i.fe = lshr i8 %.3136.i.1, 4
  %i.ff = add nuw nsw i32 %.5167.i73, 2           ; 2 uses
  %exitcond107.not.1 = icmp eq i32 %i.ff, %i.q
  br i1 %exitcond107.not.1, label %._crit_edge78, label %.lr.ph77, !llvm.loop !7

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %bb.r, %.preheader
  %.13.i.lcssa = phi ptr [ %.11.i.lcssa, %.preheader ], [ %.14.i.lcssa.unr, %.lr.ph77.prol.loopexit ], [ %.14.i.1, %bb.r ]
  %.5.i.lcssa = phi ptr [ %.4.i83, %.preheader ], [ %.lcssa149.unr, %.lr.ph77.prol.loopexit ], [ %i.fd, %bb.r ]
  %i.fg = getelementptr inbounds i8, ptr %.13.i.lcssa, i64 %i.dv
  %i.fh = getelementptr inbounds i8, ptr %.5.i.lcssa, i64 %i.dw
  %.not177.i = icmp eq i32 %i.dz, 0
  br i1 %.not177.i, label %BlitBto1.exit, label %.preheader1, !llvm.loop !8

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge60
  %.in85 = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.fi, %._crit_edge60 ]
  %.6.i65 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.gq, %._crit_edge60 ] ; 4 uses
  %.15.i64 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.gp, %._crit_edge60 ] ; 3 uses
  %i.fi = add nsw i32 %.in85, -1                  ; 2 uses
  %i.fj = load i32, ptr %i.o, align 8             ; 8 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph51.preheader, label %.preheader3

.lr.ph51.preheader:                               ; preds = %.preheader4
  %xtraiter173 = and i32 %i.fj, 1
  %i.fl = icmp eq i32 %i.fj, 1
  br i1 %i.fl, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
  %unroll_iter178 = and i32 %i.fj, 2147483646
  br label %.lr.ph51

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph51
  %lcmp.mod174.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.preheader3, label %.lr.ph51.epil.preheader

.lr.ph51.epil.preheader:                          ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph51.preheader
  %.16.i49.epil.init = phi ptr [ %.15.i64, %.lr.ph51.preheader ], [ %i.gc, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.6168.i48.epil.init = phi i32 [ 0, %.lr.ph51.preheader ], [ %i.gd, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod177 = trunc i32 %i.fj to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.fm = and i32 %.6168.i48.epil.init, 1
  %.not176.i.epil = icmp eq i32 %i.fm, 0
  br i1 %.not176.i.epil, label %bb.s, label %.preheader3

bb.s:                                             ; preds = %.lr.ph51.epil.preheader
  %i.fn = getelementptr inbounds nuw i8, ptr %.16.i49.epil.init, i64 1
  %i.fo = load i8, ptr %.16.i49.epil.init, align 1
  %i.fp = shl i8 %i.fo, 4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.unr-lcssa, %bb.s, %.lr.ph51.epil.preheader, %.preheader4
  %.6168.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.fj, %.lr.ph51.epil.preheader ], [ %i.fj, %bb.s ], [ %i.fj, %.preheader3.loopexit.unr-lcssa ] ; 6 uses
  %.16.i.lcssa = phi ptr [ %.15.i64, %.preheader4 ], [ %i.gc, %.preheader3.loopexit.unr-lcssa ], [ %.16.i49.epil.init, %.lr.ph51.epil.preheader ], [ %i.fn, %bb.s ] ; 5 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ 0, %.preheader3.loopexit.unr-lcssa ], [ 0, %.lr.ph51.epil.preheader ], [ %i.fp, %bb.s ] ; 2 uses
  %i.fq = icmp slt i32 %.6168.i.lcssa, %i.q
  br i1 %i.fq, label %.lr.ph59.preheader, label %._crit_edge60

.lr.ph59.preheader:                               ; preds = %.preheader3
  %i.fr = sub i32 %i.dt, %.6168.i.lcssa
  %.neg192 = add nuw i32 %.6168.i.lcssa, 1
  %xtraiter180 = and i32 %i.fr, 1
  %lcmp.mod181.not = icmp eq i32 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph59.prol.loopexit, label %.lr.ph59.prol

.lr.ph59.prol:                                    ; preds = %.lr.ph59.preheader
  %i.fs = and i32 %.6168.i.lcssa, 1
  %.not175.i.prol = icmp eq i32 %i.fs, 0
  br i1 %.not175.i.prol, label %bb.t, label %.lr.ph59.prol.loopexit.unr-lcssa

bb.t:                                             ; preds = %.lr.ph59.prol
  %i.ft = getelementptr inbounds nuw i8, ptr %.16.i.lcssa, i64 1
  %i.fu = load i8, ptr %.16.i.lcssa, align 1
  br label %.lr.ph59.prol.loopexit.unr-lcssa

.lr.ph59.prol.loopexit.unr-lcssa:                 ; preds = %bb.t, %.lr.ph59.prol
  %.19.i.prol = phi ptr [ %.16.i.lcssa, %.lr.ph59.prol ], [ %i.ft, %bb.t ] ; 2 uses
  %.3.i.prol = phi i8 [ %.0.i.lcssa, %.lr.ph59.prol ], [ %i.fu, %bb.t ] ; 2 uses
  %i.fv = lshr i8 %.3.i.prol, 4
  store i8 %i.fv, ptr %.6.i65, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %.6.i65, i64 1 ; 2 uses
  %i.fx = shl i8 %.3.i.prol, 4
  %i.fy = add nuw nsw i32 %.6168.i.lcssa, 1
  br label %.lr.ph59.prol.loopexit

.lr.ph59.prol.loopexit:                           ; preds = %.lr.ph59.prol.loopexit.unr-lcssa, %.lr.ph59.preheader
  %.19.i.lcssa.unr = phi ptr [ poison, %.lr.ph59.preheader ], [ %.19.i.prol, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.lcssa152.unr = phi ptr [ poison, %.lr.ph59.preheader ], [ %i.fw, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.2.i58.unr = phi i8 [ %.0.i.lcssa, %.lr.ph59.preheader ], [ %i.fx, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.7.i57.unr = phi ptr [ %.6.i65, %.lr.ph59.preheader ], [ %i.fw, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.18.i56.unr = phi ptr [ %.16.i.lcssa, %.lr.ph59.preheader ], [ %.19.i.prol, %.lr.ph59.prol.loopexit.unr-lcssa ]
  %.7169.i55.unr = phi i32 [ %.6168.i.lcssa, %.lr.ph59.preheader ], [ %i.fy, %.lr.ph59.prol.loopexit.unr-lcssa ] ; 3 uses
  %i.fz = icmp eq i32 %i.du, %.neg192
  br i1 %i.fz, label %._crit_edge60, label %.lr.ph59.preheader.new

.lr.ph59.preheader.new:                           ; preds = %.lr.ph59.prol.loopexit
  %i.ga = and i32 %.7169.i55.unr, 1
  %i.gb = and i32 %.7169.i55.unr, 1
  %.not175.i = icmp eq i32 %i.gb, 0
  %.not175.i.1.not = icmp eq i32 %i.ga, 0
  br label %.lr.ph59

.lr.ph51:                                         ; preds = %.lr.ph51, %.lr.ph51.preheader.new
  %.16.i49 = phi ptr [ %.15.i64, %.lr.ph51.preheader.new ], [ %i.gc, %.lr.ph51 ]
  %.6168.i48 = phi i32 [ 0, %.lr.ph51.preheader.new ], [ %i.gd, %.lr.ph51 ]
  %niter179 = phi i32 [ 0, %.lr.ph51.preheader.new ], [ %niter179.next.1, %.lr.ph51 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.16.i49, i64 1 ; 3 uses
  %i.gd = add nuw nsw i32 %.6168.i48, 2           ; 2 uses
  %niter179.next.1 = add nuw nsw i32 %niter179, 2 ; 2 uses
  %niter179.ncmp.1 = icmp eq i32 %niter179.next.1, %unroll_iter178
  br i1 %niter179.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph51, !llvm.loop !9

.lr.ph59:                                         ; preds = %bb.w, %.lr.ph59.preheader.new
  %.2.i58 = phi i8 [ %.2.i58.unr, %.lr.ph59.preheader.new ], [ %i.gn, %bb.w ]
  %.7.i57 = phi ptr [ %.7.i57.unr, %.lr.ph59.preheader.new ], [ %i.gm, %bb.w ] ; 3 uses
  %.18.i56 = phi ptr [ %.18.i56.unr, %.lr.ph59.preheader.new ], [ %.19.i.1, %bb.w ] ; 3 uses
  %.7169.i55 = phi i32 [ %.7169.i55.unr, %.lr.ph59.preheader.new ], [ %i.go, %bb.w ]
  br i1 %.not175.i, label %bb.u, label %.lr.ph59.1

bb.u:                                             ; preds = %.lr.ph59
  %i.ge = getelementptr inbounds nuw i8, ptr %.18.i56, i64 1
  %i.gf = load i8, ptr %.18.i56, align 1
  br label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %bb.u, %.lr.ph59
  %.19.i = phi ptr [ %.18.i56, %.lr.ph59 ], [ %i.ge, %bb.u ] ; 3 uses
  %.3.i = phi i8 [ %.2.i58, %.lr.ph59 ], [ %i.gf, %bb.u ] ; 2 uses
  %i.gg = lshr i8 %.3.i, 4
  store i8 %i.gg, ptr %.7.i57, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.7.i57, i64 1
  %i.gi = shl i8 %.3.i, 4
  br i1 %.not175.i.1.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph59.1
  %i.gj = getelementptr inbounds nuw i8, ptr %.19.i, i64 1
  %i.gk = load i8, ptr %.19.i, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph59.1
  %.19.i.1 = phi ptr [ %.19.i, %.lr.ph59.1 ], [ %i.gj, %bb.v ] ; 2 uses
  %.3.i.1 = phi i8 [ %i.gi, %.lr.ph59.1 ], [ %i.gk, %bb.v ] ; 2 uses
  %i.gl = lshr i8 %.3.i.1, 4
  store i8 %i.gl, ptr %i.gh, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %.7.i57, i64 2 ; 2 uses
  %i.gn = shl i8 %.3.i.1, 4
  %i.go = add nuw nsw i32 %.7169.i55, 2           ; 2 uses
  %exitcond105.not.1 = icmp eq i32 %i.go, %i.q
  br i1 %exitcond105.not.1, label %._crit_edge60, label %.lr.ph59, !llvm.loop !10

._crit_edge60:                                    ; preds = %.lr.ph59.prol.loopexit, %bb.w, %.preheader3
  %.18.i.lcssa = phi ptr [ %.16.i.lcssa, %.preheader3 ], [ %.19.i.lcssa.unr, %.lr.ph59.prol.loopexit ], [ %.19.i.1, %bb.w ]
  %.7.i.lcssa = phi ptr [ %.6.i65, %.preheader3 ], [ %.lcssa152.unr, %.lr.ph59.prol.loopexit ], [ %i.gm, %bb.w ]
  %i.gp = getelementptr inbounds i8, ptr %.18.i.lcssa, i64 %i.dr
  %i.gq = getelementptr inbounds i8, ptr %.7.i.lcssa, i64 %i.ds
  %.not174.i = icmp eq i32 %i.fi, 0
  br i1 %.not174.i, label %BlitBto1.exit, label %.preheader4, !llvm.loop !11

BlitBto1.exit:                                    ; preds = %._crit_edge, %._crit_edge42, %._crit_edge60, %._crit_edge78, %.preheader13, %.preheader9, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit4bto2(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 2                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = add i32 %i.q, %i.b                       ; 6 uses
  %i.s = add nsw i32 %i.r, 1
  %.neg99.i = sdiv i32 %i.s, -2
  %i.t = add i32 %i.r, %i.h
  %i.u = add i32 %i.t, %.neg99.i                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 15728640
  %i.z = icmp eq i32 %i.y, 1048576
  %.not102.i37 = icmp eq i32 %i.d, 0              ; 2 uses
  br i1 %i.z, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto2.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %i.m to i64
  %i.ac = add i32 %i.q, %i.b
  %i.ad = add i32 %i.q, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto2.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.ae = sext i32 %i.u to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = add i32 %i.q, %i.b
  %i.ah = add i32 %i.q, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge34
  %.in40 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ai, %._crit_edge34 ]
  %.083.i39 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.bz, %._crit_edge34 ] ; 4 uses
  %.087.i38 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.by, %._crit_edge34 ] ; 3 uses
  %i.ai = add nsw i32 %.in40, -1                  ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8             ; 8 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader1
  %xtraiter77 = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter82 = and i32 %i.aj, 2147483646
  br label %.lr.ph25

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph25
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.188.i23.epil.init = phi ptr [ %.087.i38, %.lr.ph25.preheader ], [ %i.bf, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.093.i22.epil.init = phi i32 [ 0, %.lr.ph25.preheader ], [ %i.bg, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.am = and i32 %.093.i22.epil.init, 1
  %.not104.i.epil = icmp eq i32 %i.am, 0
  br i1 %.not104.i.epil, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph25.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.188.i23.epil.init, i64 1
  %i.ao = load i8, ptr %.188.i23.epil.init, align 1
  %i.ap = lshr i8 %i.ao, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.lr.ph25.epil.preheader, %.preheader1
  %.093.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.aj, %.lr.ph25.epil.preheader ], [ %i.aj, %bb.b ], [ %i.aj, %.preheader.loopexit.unr-lcssa ] ; 6 uses
  %.188.i.lcssa = phi ptr [ %.087.i38, %.preheader1 ], [ %i.bf, %.preheader.loopexit.unr-lcssa ], [ %.188.i23.epil.init, %.lr.ph25.epil.preheader ], [ %i.an, %bb.b ] ; 5 uses
  %.078.i.lcssa = phi i8 [ 0, %.preheader1 ], [ 0, %.preheader.loopexit.unr-lcssa ], [ 0, %.lr.ph25.epil.preheader ], [ %i.ap, %bb.b ] ; 2 uses
  %i.aq = icmp slt i32 %.093.i.lcssa, %i.r
  br i1 %i.aq, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.ar = sub i32 %i.ag, %.093.i.lcssa
  %.neg86 = add nuw i32 %.093.i.lcssa, 1
  %xtraiter84 = and i32 %i.ar, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %i.as = and i32 %.093.i.lcssa, 1
  %.not103.i.prol = icmp eq i32 %i.as, 0
  br i1 %.not103.i.prol, label %bb.c, label %.lr.ph33.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph33.prol
  %i.at = getelementptr inbounds nuw i8, ptr %.188.i.lcssa, i64 1
  %i.au = load i8, ptr %.188.i.lcssa, align 1
  br label %.lr.ph33.prol.loopexit.unr-lcssa

.lr.ph33.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph33.prol
  %.4.i.prol = phi ptr [ %.188.i.lcssa, %.lr.ph33.prol ], [ %i.at, %bb.c ] ; 2 uses
  %.381.i.prol = phi i8 [ %.078.i.lcssa, %.lr.ph33.prol ], [ %i.au, %bb.c ] ; 2 uses
  %i.av = and i8 %.381.i.prol, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  store i16 %i.ay, ptr %.083.i39, align 2
  %i.az = lshr i8 %.381.i.prol, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.083.i39, i64 2 ; 2 uses
  %i.bb = add nuw nsw i32 %.093.i.lcssa, 1
  br label %.lr.ph33.prol.loopexit

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.4.i.lcssa.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.280.i32.unr = phi i8 [ %.078.i.lcssa, %.lr.ph33.preheader ], [ %i.az, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.184.i31.unr = phi ptr [ %.083.i39, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.390.i30.unr = phi ptr [ %.188.i.lcssa, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.194.i29.unr = phi i32 [ %.093.i.lcssa, %.lr.ph33.preheader ], [ %i.bb, %.lr.ph33.prol.loopexit.unr-lcssa ] ; 3 uses
  %i.bc = icmp eq i32 %i.ah, %.neg86
  br i1 %i.bc, label %._crit_edge34, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.prol.loopexit
  %i.bd = and i32 %.194.i29.unr, 1
  %i.be = and i32 %.194.i29.unr, 1
  %.not103.i = icmp eq i32 %i.be, 0
  %.not103.i.1.not = icmp eq i32 %i.bd, 0
  br label %.lr.ph33

.lr.ph25:                                         ; preds = %.lr.ph25, %.lr.ph25.preheader.new
  %.188.i23 = phi ptr [ %.087.i38, %.lr.ph25.preheader.new ], [ %i.bf, %.lr.ph25 ]
  %.093.i22 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.bg, %.lr.ph25 ]
  %niter83 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter83.next.1, %.lr.ph25 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.188.i23, i64 1 ; 3 uses
  %i.bg = add nuw nsw i32 %.093.i22, 2            ; 2 uses
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !12

.lr.ph33:                                         ; preds = %bb.f, %.lr.ph33.preheader.new
  %.280.i32 = phi i8 [ %.280.i32.unr, %.lr.ph33.preheader.new ], [ %i.bv, %bb.f ]
  %.184.i31 = phi ptr [ %.184.i31.unr, %.lr.ph33.preheader.new ], [ %i.bw, %bb.f ] ; 3 uses
  %.390.i30 = phi ptr [ %.390.i30.unr, %.lr.ph33.preheader.new ], [ %.4.i.1, %bb.f ] ; 3 uses
  %.194.i29 = phi i32 [ %.194.i29.unr, %.lr.ph33.preheader.new ], [ %i.bx, %bb.f ]
  br i1 %.not103.i, label %bb.d, label %.lr.ph33.1

bb.d:                                             ; preds = %.lr.ph33
  %i.bh = getelementptr inbounds nuw i8, ptr %.390.i30, i64 1
  %i.bi = load i8, ptr %.390.i30, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %bb.d, %.lr.ph33
  %.4.i = phi ptr [ %.390.i30, %.lr.ph33 ], [ %i.bh, %bb.d ] ; 3 uses
  %.381.i = phi i8 [ %.280.i32, %.lr.ph33 ], [ %i.bi, %bb.d ] ; 2 uses
  %i.bj = and i8 %.381.i, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2
  store i16 %i.bm, ptr %.184.i31, align 2
  %i.bn = lshr i8 %.381.i, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.184.i31, i64 2
  br i1 %.not103.i.1.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph33.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bq = load i8, ptr %.4.i, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph33.1
  %.4.i.1 = phi ptr [ %.4.i, %.lr.ph33.1 ], [ %i.bp, %bb.e ] ; 2 uses
  %.381.i.1 = phi i8 [ %i.bn, %.lr.ph33.1 ], [ %i.bq, %bb.e ] ; 2 uses
  %i.br = and i8 %.381.i.1, 15
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2
  store i16 %i.bu, ptr %i.bo, align 2
  %i.bv = lshr i8 %.381.i.1, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.184.i31, i64 4 ; 2 uses
  %i.bx = add nuw nsw i32 %.194.i29, 2            ; 2 uses
  %exitcond49.not.1 = icmp eq i32 %i.bx, %i.r
  br i1 %exitcond49.not.1, label %._crit_edge34, label %.lr.ph33, !llvm.loop !13

._crit_edge34:                                    ; preds = %.lr.ph33.prol.loopexit, %bb.f, %.preheader
  %.390.i.lcssa = phi ptr [ %.188.i.lcssa, %.preheader ], [ %.4.i.lcssa.unr, %.lr.ph33.prol.loopexit ], [ %.4.i.1, %bb.f ]
  %.184.i.lcssa = phi ptr [ %.083.i39, %.preheader ], [ %.lcssa68.unr, %.lr.ph33.prol.loopexit ], [ %i.bw, %bb.f ]
  %i.by = getelementptr inbounds i8, ptr %.390.i.lcssa, i64 %i.ae
  %i.bz = getelementptr inbounds [2 x i8], ptr %.184.i.lcssa, i64 %i.af
  %.not102.i = icmp eq i32 %i.ai, 0
  br i1 %.not102.i, label %BlitBto2.exit, label %.preheader1, !llvm.loop !14

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.ca, %._crit_edge ]
  %.285.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.dr, %._crit_edge ] ; 4 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.dq, %._crit_edge ] ; 3 uses
  %i.ca = add nsw i32 %.in, -1                    ; 2 uses
  %i.cb = load i32, ptr %i.p, align 8             ; 8 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.cb, 1
  %i.cd = icmp eq i32 %i.cb, 1
  br i1 %i.cd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.cb, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.6.i8.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %i.cx, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.295.i7.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cy, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.ce = and i32 %.295.i7.epil.init, 1
  %.not101.i.epil = icmp eq i32 %i.ce, 0
  br i1 %.not101.i.epil, label %bb.g, label %.preheader3

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.6.i8.epil.init, i64 1
  %i.cg = load i8, ptr %.6.i8.epil.init, align 1
  %i.ch = shl i8 %i.cg, 4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.unr-lcssa, %bb.g, %.lr.ph.epil.preheader, %.preheader4
  %.295.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.cb, %.lr.ph.epil.preheader ], [ %i.cb, %bb.g ], [ %i.cb, %.preheader3.loopexit.unr-lcssa ] ; 6 uses
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %i.cx, %.preheader3.loopexit.unr-lcssa ], [ %.6.i8.epil.init, %.lr.ph.epil.preheader ], [ %i.cf, %bb.g ] ; 5 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ 0, %.preheader3.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ], [ %i.ch, %bb.g ] ; 2 uses
  %i.ci = icmp slt i32 %.295.i.lcssa, %i.r
  br i1 %i.ci, label %.lr.ph16.preheader, label %._crit_edge

.lr.ph16.preheader:                               ; preds = %.preheader3
  %i.cj = sub i32 %i.ac, %.295.i.lcssa
end_hunk_6
begin_hunk_7_@Blit4bto3:bb.a
  %i.al = icmp slt i32 %.0107.i.lcssa, %i.q
  br i1 %i.al, label %.lr.ph33, label %._crit_edge34

.lr.ph25:                                         ; preds = %.lr.ph25, %.lr.ph25.preheader.new
  %.1102.i23 = phi ptr [ %.0101.i38, %.lr.ph25.preheader.new ], [ %i.am, %.lr.ph25 ]
  %.0107.i22 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.an, %.lr.ph25 ]
  %niter81 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter81.next.1, %.lr.ph25 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.1102.i23, i64 1 ; 3 uses
  %i.an = add nuw nsw i32 %.0107.i22, 2           ; 2 uses
  %niter81.next.1 = add nuw nsw i32 %niter81, 2   ; 2 uses
  %niter81.ncmp.1 = icmp eq i32 %niter81.next.1, %unroll_iter80
  br i1 %niter81.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !18

.lr.ph33:                                         ; preds = %.preheader, %bb.d
  %.294.i32 = phi i8 [ %i.bc, %bb.d ], [ %.092.i.lcssa, %.preheader ]
  %.198.i31 = phi ptr [ %i.bd, %bb.d ], [ %.097.i39, %.preheader ] ; 4 uses
  %.3104.i30 = phi ptr [ %.4.i, %bb.d ], [ %.1102.i.lcssa, %.preheader ] ; 3 uses
  %.1108.i29 = phi i32 [ %i.be, %bb.d ], [ %.0107.i.lcssa, %.preheader ] ; 2 uses
  %i.ao = and i32 %.1108.i29, 1
  %.not117.i = icmp eq i32 %i.ao, 0
  br i1 %.not117.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph33
  %i.ap = getelementptr inbounds nuw i8, ptr %.3104.i30, i64 1
  %i.aq = load i8, ptr %.3104.i30, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph33
  %.4.i = phi ptr [ %.3104.i30, %.lr.ph33 ], [ %i.ap, %bb.c ] ; 2 uses
  %.395.i = phi i8 [ %.294.i32, %.lr.ph33 ], [ %i.aq, %bb.c ] ; 2 uses
  %i.ar = zext i8 %.395.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = and i64 %i.as, 60
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.at ; 3 uses
  %i.av = load i8, ptr %i.au, align 1
  store i8 %i.av, ptr %.198.i31, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.198.i31, i64 1
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.198.i31, i64 2
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = lshr i8 %.395.i, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.198.i31, i64 3 ; 2 uses
  %i.be = add nuw nsw i32 %.1108.i29, 1           ; 2 uses
  %exitcond49.not = icmp eq i32 %i.be, %i.q
  br i1 %exitcond49.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !19

._crit_edge34:                                    ; preds = %bb.d, %.preheader
  %.3104.i.lcssa = phi ptr [ %.1102.i.lcssa, %.preheader ], [ %.4.i, %bb.d ]
  %.198.i.lcssa = phi ptr [ %.097.i39, %.preheader ], [ %i.bd, %bb.d ]
  %i.bf = getelementptr inbounds i8, ptr %.3104.i.lcssa, i64 %i.ab
  %i.bg = getelementptr inbounds i8, ptr %.198.i.lcssa, i64 %i.ac
  %.not116.i = icmp eq i32 %i.ad, 0
  br i1 %.not116.i, label %BlitBto3.exit, label %.preheader1, !llvm.loop !20

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.bh, %._crit_edge ]
  %.299.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.ck, %._crit_edge ] ; 2 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.cj, %._crit_edge ] ; 3 uses
  %i.bh = add nsw i32 %.in, -1                    ; 2 uses
  %i.bi = load i32, ptr %i.o, align 8             ; 8 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.bi, 1
  %i.bk = icmp eq i32 %i.bi, 1
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.bi, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.6.i8.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %i.bq, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %.2109.i7.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.br, %.preheader3.loopexit.unr-lcssa ]
  %lcmp.mod74 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bl = and i32 %.2109.i7.epil.init, 1
  %.not115.i.epil = icmp eq i32 %i.bl, 0
  br i1 %.not115.i.epil, label %bb.e, label %.preheader3

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %.6.i8.epil.init, i64 1
  %i.bn = load i8, ptr %.6.i8.epil.init, align 1
  %i.bo = shl i8 %i.bn, 4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %.preheader4
  %.2109.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.bi, %.lr.ph.epil.preheader ], [ %i.bi, %bb.e ], [ %i.bi, %.preheader3.loopexit.unr-lcssa ] ; 2 uses
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %i.bq, %.preheader3.loopexit.unr-lcssa ], [ %.6.i8.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %bb.e ] ; 2 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ 0, %.preheader3.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ], [ %i.bo, %bb.e ]
  %i.bp = icmp slt i32 %.2109.i.lcssa, %i.q
  br i1 %i.bp, label %.lr.ph16, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.6.i8 = phi ptr [ %.5.i20, %.lr.ph.preheader.new ], [ %i.bq, %.lr.ph ]
  %.2109.i7 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.br, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.6.i8, i64 1 ; 3 uses
  %i.br = add nuw nsw i32 %.2109.i7, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader3.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !21

.lr.ph16:                                         ; preds = %.preheader3, %bb.g
  %.2.i15 = phi i8 [ %i.cg, %bb.g ], [ %.0.i.lcssa, %.preheader3 ]
  %.3100.i14 = phi ptr [ %i.ch, %bb.g ], [ %.299.i21, %.preheader3 ] ; 4 uses
  %.8.i13 = phi ptr [ %.9.i, %bb.g ], [ %.6.i.lcssa, %.preheader3 ] ; 3 uses
  %.3110.i12 = phi i32 [ %i.ci, %bb.g ], [ %.2109.i.lcssa, %.preheader3 ] ; 2 uses
  %i.bs = and i32 %.3110.i12, 1
  %.not114.i = icmp eq i32 %i.bs, 0
  br i1 %.not114.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.i13, i64 1
  %i.bu = load i8, ptr %.8.i13, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph16
  %.9.i = phi ptr [ %.8.i13, %.lr.ph16 ], [ %i.bt, %bb.f ] ; 2 uses
  %.3.i = phi i8 [ %.2.i15, %.lr.ph16 ], [ %i.bu, %bb.f ] ; 2 uses
  %i.bv = lshr i8 %.3.i, 2
  %i.bw = and i8 %i.bv, 60
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bx ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %.3100.i14, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 2
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = shl i8 %.3.i, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.3100.i14, i64 3 ; 2 uses
  %i.ci = add nuw nsw i32 %.3110.i12, 1           ; 2 uses
  %exitcond47.not = icmp eq i32 %i.ci, %i.q
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph16, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.g, %.preheader3
  %.8.i.lcssa = phi ptr [ %.6.i.lcssa, %.preheader3 ], [ %.9.i, %bb.g ]
  %.3100.i.lcssa = phi ptr [ %.299.i21, %.preheader3 ], [ %i.ch, %bb.g ]
  %i.cj = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.z
  %i.ck = getelementptr inbounds i8, ptr %.3100.i.lcssa, i64 %i.aa
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %BlitBto3.exit, label %.preheader4, !llvm.loop !23

BlitBto3.exit:                                    ; preds = %._crit_edge, %._crit_edge34, %.preheader5, %.preheader2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Blit4bto4(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = sdiv i32 %i.l, 4                         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = add i32 %i.q, %i.b                       ; 6 uses
  %i.s = add nsw i32 %i.r, 1
  %.neg99.i = sdiv i32 %i.s, -2
  %i.t = add i32 %i.r, %i.h
  %i.u = add i32 %i.t, %.neg99.i                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 15728640
  %i.z = icmp eq i32 %i.y, 1048576
  %.not102.i37 = icmp eq i32 %i.d, 0              ; 2 uses
  br i1 %i.z, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto4.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.aa = sext i32 %i.u to i64
  %i.ab = sext i32 %i.m to i64
  %i.ac = add i32 %i.q, %i.b
  %i.ad = add i32 %i.q, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.a
  br i1 %.not102.i37, label %BlitBto4.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.ae = sext i32 %i.u to i64
  %i.af = sext i32 %i.m to i64
  %i.ag = add i32 %i.q, %i.b
  %i.ah = add i32 %i.q, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge34
  %.in40 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.ai, %._crit_edge34 ]
  %.087.i39 = phi ptr [ %i.j, %.preheader1.lr.ph ], [ %i.bz, %._crit_edge34 ] ; 4 uses
  %.091.i38 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.by, %._crit_edge34 ] ; 3 uses
  %i.ai = add nsw i32 %.in40, -1                  ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8             ; 8 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph25.preheader, label %.preheader

.lr.ph25.preheader:                               ; preds = %.preheader1
  %xtraiter77 = and i32 %i.aj, 1
  %i.al = icmp eq i32 %i.aj, 1
  br i1 %i.al, label %.lr.ph25.epil.preheader, label %.lr.ph25.preheader.new

.lr.ph25.preheader.new:                           ; preds = %.lr.ph25.preheader
  %unroll_iter82 = and i32 %i.aj, 2147483646
  br label %.lr.ph25

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph25
  %lcmp.mod78.not = icmp eq i32 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.preheader, label %.lr.ph25.epil.preheader

.lr.ph25.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph25.preheader
  %.082.i23.epil.init = phi i32 [ 0, %.lr.ph25.preheader ], [ %i.bg, %.preheader.loopexit.unr-lcssa ]
  %.192.i22.epil.init = phi ptr [ %.091.i38, %.lr.ph25.preheader ], [ %i.bf, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod81 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.am = and i32 %.082.i23.epil.init, 1
  %.not104.i.epil = icmp eq i32 %i.am, 0
  br i1 %.not104.i.epil, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.lr.ph25.epil.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.192.i22.epil.init, i64 1
  %i.ao = load i8, ptr %.192.i22.epil.init, align 1
  %i.ap = lshr i8 %i.ao, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.lr.ph25.epil.preheader, %.preheader1
  %.192.i.lcssa = phi ptr [ %.091.i38, %.preheader1 ], [ %i.bf, %.preheader.loopexit.unr-lcssa ], [ %.192.i22.epil.init, %.lr.ph25.epil.preheader ], [ %i.an, %bb.b ] ; 5 uses
  %.082.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.aj, %.lr.ph25.epil.preheader ], [ %i.aj, %bb.b ], [ %i.aj, %.preheader.loopexit.unr-lcssa ] ; 6 uses
  %.078.i.lcssa = phi i8 [ 0, %.preheader1 ], [ 0, %.preheader.loopexit.unr-lcssa ], [ 0, %.lr.ph25.epil.preheader ], [ %i.ap, %bb.b ] ; 2 uses
  %i.aq = icmp slt i32 %.082.i.lcssa, %i.r
  br i1 %i.aq, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.ar = sub i32 %i.ag, %.082.i.lcssa
  %.neg86 = add nuw i32 %.082.i.lcssa, 1
  %xtraiter84 = and i32 %i.ar, 1
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader
  %i.as = and i32 %.082.i.lcssa, 1
  %.not103.i.prol = icmp eq i32 %i.as, 0
  br i1 %.not103.i.prol, label %bb.c, label %.lr.ph33.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph33.prol
  %i.at = getelementptr inbounds nuw i8, ptr %.192.i.lcssa, i64 1
  %i.au = load i8, ptr %.192.i.lcssa, align 1
  br label %.lr.ph33.prol.loopexit.unr-lcssa

.lr.ph33.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph33.prol
  %.4.i.prol = phi ptr [ %.192.i.lcssa, %.lr.ph33.prol ], [ %i.at, %bb.c ] ; 2 uses
  %.381.i.prol = phi i8 [ %.078.i.lcssa, %.lr.ph33.prol ], [ %i.au, %bb.c ] ; 2 uses
  %i.av = and i8 %.381.i.prol, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr %.087.i39, align 4
  %i.az = lshr i8 %.381.i.prol, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.087.i39, i64 4 ; 2 uses
  %i.bb = add nuw nsw i32 %.082.i.lcssa, 1
  br label %.lr.ph33.prol.loopexit

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.4.i.lcssa.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.280.i32.unr = phi i8 [ %.078.i.lcssa, %.lr.ph33.preheader ], [ %i.az, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.183.i31.unr = phi i32 [ %.082.i.lcssa, %.lr.ph33.preheader ], [ %i.bb, %.lr.ph33.prol.loopexit.unr-lcssa ] ; 3 uses
  %.188.i30.unr = phi ptr [ %.087.i39, %.lr.ph33.preheader ], [ %i.ba, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %.394.i29.unr = phi ptr [ %.192.i.lcssa, %.lr.ph33.preheader ], [ %.4.i.prol, %.lr.ph33.prol.loopexit.unr-lcssa ]
  %i.bc = icmp eq i32 %i.ah, %.neg86
  br i1 %i.bc, label %._crit_edge34, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.prol.loopexit
  %i.bd = and i32 %.183.i31.unr, 1
  %i.be = and i32 %.183.i31.unr, 1
  %.not103.i = icmp eq i32 %i.be, 0
  %.not103.i.1.not = icmp eq i32 %i.bd, 0
  br label %.lr.ph33

.lr.ph25:                                         ; preds = %.lr.ph25, %.lr.ph25.preheader.new
  %.082.i23 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %i.bg, %.lr.ph25 ]
  %.192.i22 = phi ptr [ %.091.i38, %.lr.ph25.preheader.new ], [ %i.bf, %.lr.ph25 ]
  %niter83 = phi i32 [ 0, %.lr.ph25.preheader.new ], [ %niter83.next.1, %.lr.ph25 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.192.i22, i64 1 ; 3 uses
  %i.bg = add nuw nsw i32 %.082.i23, 2            ; 2 uses
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph25, !llvm.loop !24

.lr.ph33:                                         ; preds = %bb.f, %.lr.ph33.preheader.new
  %.280.i32 = phi i8 [ %.280.i32.unr, %.lr.ph33.preheader.new ], [ %i.bv, %bb.f ]
  %.183.i31 = phi i32 [ %.183.i31.unr, %.lr.ph33.preheader.new ], [ %i.bx, %bb.f ]
  %.188.i30 = phi ptr [ %.188.i30.unr, %.lr.ph33.preheader.new ], [ %i.bw, %bb.f ] ; 3 uses
  %.394.i29 = phi ptr [ %.394.i29.unr, %.lr.ph33.preheader.new ], [ %.4.i.1, %bb.f ] ; 3 uses
  br i1 %.not103.i, label %bb.d, label %.lr.ph33.1

bb.d:                                             ; preds = %.lr.ph33
  %i.bh = getelementptr inbounds nuw i8, ptr %.394.i29, i64 1
  %i.bi = load i8, ptr %.394.i29, align 1
  br label %.lr.ph33.1

.lr.ph33.1:                                       ; preds = %bb.d, %.lr.ph33
  %.4.i = phi ptr [ %.394.i29, %.lr.ph33 ], [ %i.bh, %bb.d ] ; 3 uses
  %.381.i = phi i8 [ %.280.i32, %.lr.ph33 ], [ %i.bi, %bb.d ] ; 2 uses
  %i.bj = and i8 %.381.i, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4
  store i32 %i.bm, ptr %.188.i30, align 4
  %i.bn = lshr i8 %.381.i, 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.188.i30, i64 4
  br i1 %.not103.i.1.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph33.1
  %i.bp = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.bq = load i8, ptr %.4.i, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph33.1
  %.4.i.1 = phi ptr [ %.4.i, %.lr.ph33.1 ], [ %i.bp, %bb.e ] ; 2 uses
  %.381.i.1 = phi i8 [ %i.bn, %.lr.ph33.1 ], [ %i.bq, %bb.e ] ; 2 uses
  %i.br = and i8 %.381.i.1, 15
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bo, align 4
  %i.bv = lshr i8 %.381.i.1, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.188.i30, i64 8 ; 2 uses
  %i.bx = add nuw nsw i32 %.183.i31, 2            ; 2 uses
  %exitcond49.not.1 = icmp eq i32 %i.bx, %i.r
  br i1 %exitcond49.not.1, label %._crit_edge34, label %.lr.ph33, !llvm.loop !25

._crit_edge34:                                    ; preds = %.lr.ph33.prol.loopexit, %bb.f, %.preheader
  %.394.i.lcssa = phi ptr [ %.192.i.lcssa, %.preheader ], [ %.4.i.lcssa.unr, %.lr.ph33.prol.loopexit ], [ %.4.i.1, %bb.f ]
  %.188.i.lcssa = phi ptr [ %.087.i39, %.preheader ], [ %.lcssa68.unr, %.lr.ph33.prol.loopexit ], [ %i.bw, %bb.f ]
  %i.by = getelementptr inbounds i8, ptr %.394.i.lcssa, i64 %i.ae
  %i.bz = getelementptr inbounds [4 x i8], ptr %.188.i.lcssa, i64 %i.af
  %.not102.i = icmp eq i32 %i.ai, 0
  br i1 %.not102.i, label %BlitBto4.exit, label %.preheader1, !llvm.loop !26

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.ca, %._crit_edge ]
  %.289.i21 = phi ptr [ %i.j, %.preheader4.lr.ph ], [ %i.dr, %._crit_edge ] ; 4 uses
  %.5.i20 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.dq, %._crit_edge ] ; 3 uses
  %i.ca = add nsw i32 %.in, -1                    ; 2 uses
  %i.cb = load i32, ptr %i.p, align 8             ; 8 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader, label %.preheader3

.lr.ph.preheader:                                 ; preds = %.preheader4
  %xtraiter = and i32 %i.cb, 1
  %i.cd = icmp eq i32 %i.cb, 1
  br i1 %i.cd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.cb, 2147483646
  br label %.lr.ph

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader3, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph.preheader
  %.284.i8.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cy, %.preheader3.loopexit.unr-lcssa ]
  %.6.i7.epil.init = phi ptr [ %.5.i20, %.lr.ph.preheader ], [ %i.cx, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i32 %i.cb to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.ce = and i32 %.284.i8.epil.init, 1
  %.not101.i.epil = icmp eq i32 %i.ce, 0
  br i1 %.not101.i.epil, label %bb.g, label %.preheader3

bb.g:                                             ; preds = %.lr.ph.epil.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.6.i7.epil.init, i64 1
  %i.cg = load i8, ptr %.6.i7.epil.init, align 1
  %i.ch = shl i8 %i.cg, 4
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.loopexit.unr-lcssa, %bb.g, %.lr.ph.epil.preheader, %.preheader4
  %.6.i.lcssa = phi ptr [ %.5.i20, %.preheader4 ], [ %i.cx, %.preheader3.loopexit.unr-lcssa ], [ %.6.i7.epil.init, %.lr.ph.epil.preheader ], [ %i.cf, %bb.g ] ; 5 uses
  %.284.i.lcssa = phi i32 [ 0, %.preheader4 ], [ %i.cb, %.lr.ph.epil.preheader ], [ %i.cb, %bb.g ], [ %i.cb, %.preheader3.loopexit.unr-lcssa ] ; 6 uses
  %.0.i.lcssa = phi i8 [ 0, %.preheader4 ], [ 0, %.preheader3.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ], [ %i.ch, %bb.g ] ; 2 uses
  %i.ci = icmp slt i32 %.284.i.lcssa, %i.r
  br i1 %i.ci, label %.lr.ph16.preheader, label %._crit_edge

.lr.ph16.preheader:                               ; preds = %.preheader3
  %i.cj = sub i32 %i.ac, %.284.i.lcssa
end_hunk_7
begin_hunk_8_@Blit4bto1Key:bb.a
  %i.ag = load i32, ptr %i.q, align 8             ; 8 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph33.preheader, label %.preheader7

.lr.ph33.preheader:                               ; preds = %.preheader8
  %xtraiter162 = and i32 %i.ag, 1
  %i.ai = icmp eq i32 %i.ag, 1
  br i1 %i.ai, label %.lr.ph33.epil.preheader, label %.lr.ph33.preheader.new

.lr.ph33.preheader.new:                           ; preds = %.lr.ph33.preheader
  %unroll_iter167 = and i32 %i.ag, 2147483646
  br label %.lr.ph33

.preheader7.loopexit.unr-lcssa:                   ; preds = %.lr.ph33
  %lcmp.mod163.not = icmp eq i32 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.preheader7, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %.preheader7.loopexit.unr-lcssa, %.lr.ph33.preheader
  %.0154.i31.epil.init = phi i32 [ 0, %.lr.ph33.preheader ], [ %i.ap, %.preheader7.loopexit.unr-lcssa ]
  %.1168.i30.epil.init = phi ptr [ %.0167.i46, %.lr.ph33.preheader ], [ %i.ao, %.preheader7.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod166 = trunc i32 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.aj = and i32 %.0154.i31.epil.init, 1
  %.not198.i.epil = icmp eq i32 %i.aj, 0
  br i1 %.not198.i.epil, label %bb.c, label %.preheader7

bb.c:                                             ; preds = %.lr.ph33.epil.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.1168.i30.epil.init, i64 1
  %i.al = load i8, ptr %.1168.i30.epil.init, align 1
  %i.am = lshr i8 %i.al, 4
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.loopexit.unr-lcssa, %bb.c, %.lr.ph33.epil.preheader, %.preheader8
  %.1168.i.lcssa = phi ptr [ %.0167.i46, %.preheader8 ], [ %i.ao, %.preheader7.loopexit.unr-lcssa ], [ %.1168.i30.epil.init, %.lr.ph33.epil.preheader ], [ %i.ak, %bb.c ] ; 2 uses
  %.0154.i.lcssa = phi i32 [ 0, %.preheader8 ], [ %i.ag, %.lr.ph33.epil.preheader ], [ %i.ag, %bb.c ], [ %i.ag, %.preheader7.loopexit.unr-lcssa ] ; 2 uses
  %.0150.i.lcssa = phi i8 [ 0, %.preheader8 ], [ 0, %.preheader7.loopexit.unr-lcssa ], [ 0, %.lr.ph33.epil.preheader ], [ %i.am, %bb.c ]
  %i.an = icmp slt i32 %.0154.i.lcssa, %i.s
  br i1 %i.an, label %.lr.ph41, label %._crit_edge42

.lr.ph33:                                         ; preds = %.lr.ph33, %.lr.ph33.preheader.new
  %.0154.i31 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %i.ap, %.lr.ph33 ]
  %.1168.i30 = phi ptr [ %.0167.i46, %.lr.ph33.preheader.new ], [ %i.ao, %.lr.ph33 ]
  %niter168 = phi i32 [ 0, %.lr.ph33.preheader.new ], [ %niter168.next.1, %.lr.ph33 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.1168.i30, i64 1 ; 3 uses
  %i.ap = add nuw nsw i32 %.0154.i31, 2           ; 2 uses
  %niter168.next.1 = add nuw nsw i32 %niter168, 2 ; 2 uses
  %niter168.ncmp.1 = icmp eq i32 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %.preheader7.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !30

.lr.ph41:                                         ; preds = %.preheader7, %bb.g
  %.2152.i40 = phi i8 [ %i.az, %bb.g ], [ %.0150.i.lcssa, %.preheader7 ]
  %.1155.i39 = phi i32 [ %i.ba, %bb.g ], [ %.0154.i.lcssa, %.preheader7 ] ; 2 uses
  %.1160.i38 = phi ptr [ %i.ay, %bb.g ], [ %.0159.i47, %.preheader7 ] ; 2 uses
  %.3170.i37 = phi ptr [ %.4171.i, %bb.g ], [ %.1168.i.lcssa, %.preheader7 ] ; 3 uses
  %i.aq = and i32 %.1155.i39, 1
  %.not196.i = icmp eq i32 %i.aq, 0
  br i1 %.not196.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph41
  %i.ar = getelementptr inbounds nuw i8, ptr %.3170.i37, i64 1
  %i.as = load i8, ptr %.3170.i37, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph41
  %.4171.i = phi ptr [ %.3170.i37, %.lr.ph41 ], [ %i.ar, %bb.d ] ; 2 uses
  %.3153.i = phi i8 [ %.2152.i40, %.lr.ph41 ], [ %i.as, %bb.d ] ; 2 uses
  %i.at = and i8 %.3153.i, 15                     ; 2 uses
  %i.au = zext nneg i8 %i.at to i32
  %.not197.i = icmp eq i32 %i.n, %i.au
  br i1 %.not197.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = zext nneg i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  store i8 %i.ax, ptr %.1160.i38, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.1160.i38, i64 1 ; 2 uses
  %i.az = lshr i8 %.3153.i, 4
  %i.ba = add nuw nsw i32 %.1155.i39, 1           ; 2 uses
  %exitcond103.not = icmp eq i32 %i.ba, %i.s
  br i1 %exitcond103.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !31

._crit_edge42:                                    ; preds = %bb.g, %.preheader7
  %.3170.i.lcssa = phi ptr [ %.1168.i.lcssa, %.preheader7 ], [ %.4171.i, %bb.g ]
  %.1160.i.lcssa = phi ptr [ %.0159.i47, %.preheader7 ], [ %i.ay, %bb.g ]
  %i.bb = getelementptr inbounds i8, ptr %.3170.i.lcssa, i64 %i.ad
  %i.bc = getelementptr inbounds i8, ptr %.1160.i.lcssa, i64 %i.ae
  %.not195.i = icmp eq i32 %i.af, 0
  br i1 %.not195.i, label %BlitBto1Key.exit, label %.preheader8, !llvm.loop !32

.preheader12:                                     ; preds = %.preheader12.lr.ph, %._crit_edge
  %.in = phi i32 [ %i.d, %.preheader12.lr.ph ], [ %i.bd, %._crit_edge ]
  %.2161.i29 = phi ptr [ %i.h, %.preheader12.lr.ph ], [ %i.ca, %._crit_edge ] ; 2 uses
  %.5172.i28 = phi ptr [ %i.f, %.preheader12.lr.ph ], [ %i.bz, %._crit_edge ] ; 3 uses
  %i.bd = add nsw i32 %.in, -1                    ; 2 uses
  %i.be = load i32, ptr %i.q, align 8             ; 8 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader, label %.preheader11

.lr.ph.preheader:                                 ; preds = %.preheader12
  %xtraiter = and i32 %i.be, 1
  %i.bg = icmp eq i32 %i.be, 1
  br i1 %i.bg, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.be, 2147483646
  br label %.lr.ph

.preheader11.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader11, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader11.loopexit.unr-lcssa, %.lr.ph.preheader
  %.2156.i16.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bn, %.preheader11.loopexit.unr-lcssa ]
  %.6173.i15.epil.init = phi ptr [ %.5172.i28, %.lr.ph.preheader ], [ %i.bm, %.preheader11.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod161 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.bh = and i32 %.2156.i16.epil.init, 1
  %.not194.i.epil = icmp eq i32 %i.bh, 0
  br i1 %.not194.i.epil, label %bb.h, label %.preheader11

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %.6173.i15.epil.init, i64 1
  %i.bj = load i8, ptr %.6173.i15.epil.init, align 1
  %i.bk = shl i8 %i.bj, 4
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader12
  %.6173.i.lcssa = phi ptr [ %.5172.i28, %.preheader12 ], [ %i.bm, %.preheader11.loopexit.unr-lcssa ], [ %.6173.i15.epil.init, %.lr.ph.epil.preheader ], [ %i.bi, %bb.h ] ; 2 uses
  %.2156.i.lcssa = phi i32 [ 0, %.preheader12 ], [ %i.be, %.lr.ph.epil.preheader ], [ %i.be, %bb.h ], [ %i.be, %.preheader11.loopexit.unr-lcssa ] ; 2 uses
  %.0146.i.lcssa = phi i8 [ 0, %.preheader12 ], [ 0, %.preheader11.loopexit.unr-lcssa ], [ 0, %.lr.ph.epil.preheader ], [ %i.bk, %bb.h ]
  %i.bl = icmp slt i32 %.2156.i.lcssa, %i.s
  br i1 %i.bl, label %.lr.ph24, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.2156.i16 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ]
  %.6173.i15 = phi ptr [ %.5172.i28, %.lr.ph.preheader.new ], [ %i.bm, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.6173.i15, i64 1 ; 3 uses
  %i.bn = add nuw nsw i32 %.2156.i16, 2           ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader11.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !33

.lr.ph24:                                         ; preds = %.preheader11, %bb.l
  %.2148.i23 = phi i8 [ %i.bx, %bb.l ], [ %.0146.i.lcssa, %.preheader11 ]
  %.3157.i22 = phi i32 [ %i.by, %bb.l ], [ %.2156.i.lcssa, %.preheader11 ] ; 2 uses
  %.3162.i21 = phi ptr [ %i.bw, %bb.l ], [ %.2161.i29, %.preheader11 ] ; 2 uses
  %.8.i20 = phi ptr [ %.9.i, %bb.l ], [ %.6173.i.lcssa, %.preheader11 ] ; 3 uses
  %i.bo = and i32 %.3157.i22, 1
  %.not192.i = icmp eq i32 %i.bo, 0
  br i1 %.not192.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph24
  %i.bp = getelementptr inbounds nuw i8, ptr %.8.i20, i64 1
  %i.bq = load i8, ptr %.8.i20, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph24
  %.9.i = phi ptr [ %.8.i20, %.lr.ph24 ], [ %i.bp, %bb.i ] ; 2 uses
  %.3149.i = phi i8 [ %.2148.i23, %.lr.ph24 ], [ %i.bq, %bb.i ] ; 2 uses
  %i.br = lshr i8 %.3149.i, 4                     ; 2 uses
  %i.bs = zext nneg i8 %i.br to i32
  %.not193.i = icmp eq i32 %i.n, %i.bs
  br i1 %.not193.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = zext nneg i8 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  store i8 %i.bv, ptr %.3162.i21, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.3162.i21, i64 1 ; 2 uses
  %i.bx = shl i8 %.3149.i, 4
  %i.by = add nuw nsw i32 %.3157.i22, 1           ; 2 uses
  %exitcond101.not = icmp eq i32 %i.by, %i.s
  br i1 %exitcond101.not, label %._crit_edge, label %.lr.ph24, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.l, %.preheader11
  %.8.i.lcssa = phi ptr [ %.6173.i.lcssa, %.preheader11 ], [ %.9.i, %bb.l ]
  %.3162.i.lcssa = phi ptr [ %.2161.i29, %.preheader11 ], [ %i.bw, %bb.l ]
  %i.bz = getelementptr inbounds i8, ptr %.8.i.lcssa, i64 %i.ab
  %i.ca = getelementptr inbounds i8, ptr %.3162.i.lcssa, i64 %i.ac
  %.not191.i = icmp eq i32 %i.bd, 0
  br i1 %.not191.i, label %BlitBto1Key.exit, label %.preheader12, !llvm.loop !35

bb.m:                                             ; preds = %bb.a
  br i1 %i.aa, label %.preheader2, label %.preheader5

.preheader5:                                      ; preds = %bb.m
  br i1 %.not187.i81, label %BlitBto1Key.exit, label %.preheader4.lr.ph

.preheader4.lr.ph:                                ; preds = %.preheader5
  %i.cb = sext i32 %i.v to i64
  %i.cc = sext i32 %i.l to i64
  %i.cd = add i32 %i.r, %i.b
  %i.ce = add i32 %i.r, %i.b
  br label %.preheader4

.preheader2:                                      ; preds = %bb.m
  br i1 %.not187.i81, label %BlitBto1Key.exit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.preheader2
  %i.cf = sext i32 %i.v to i64
  %i.cg = sext i32 %i.l to i64
  %i.ch = add i32 %i.r, %i.b
  %i.ci = add i32 %i.r, %i.b
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge78
  %.in86 = phi i32 [ %i.d, %.preheader1.lr.ph ], [ %i.cj, %._crit_edge78 ]
  %.4163.i83 = phi ptr [ %i.h, %.preheader1.lr.ph ], [ %i.du, %._crit_edge78 ] ; 4 uses
  %.10.i82 = phi ptr [ %i.f, %.preheader1.lr.ph ], [ %i.dt, %._crit_edge78 ] ; 3 uses
  %i.cj = add nsw i32 %.in86, -1                  ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8             ; 8 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %.preheader1
  %xtraiter178 = and i32 %i.ck, 1
  %i.cm = icmp eq i32 %i.ck, 1
  br i1 %i.cm, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter183 = and i32 %i.ck, 2147483646
  br label %.lr.ph69

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph69
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.preheader, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.4.i67.epil.init = phi i32 [ 0, %.lr.ph69.preheader ], [ %i.df, %.preheader.loopexit.unr-lcssa ]
  %.11.i66.epil.init = phi ptr [ %.10.i82, %.lr.ph69.preheader ], [ %i.de, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod182 = trunc i32 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.cn = and i32 %.4.i67.epil.init, 1
  %.not190.i.epil = icmp eq i32 %i.cn, 0
  br i1 %.not190.i.epil, label %bb.n, label %.preheader

bb.n:                                             ; preds = %.lr.ph69.epil.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %.11.i66.epil.init, i64 1
  %i.cp = load i8, ptr %.11.i66.epil.init, align 1
  %i.cq = lshr i8 %i.cp, 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.n, %.lr.ph69.epil.preheader, %.preheader1
  %.11.i.lcssa = phi ptr [ %.10.i82, %.preheader1 ], [ %i.de, %.preheader.loopexit.unr-lcssa ], [ %.11.i66.epil.init, %.lr.ph69.epil.preheader ], [ %i.co, %bb.n ] ; 5 uses
  %.4.i.lcssa = phi i32 [ 0, %.preheader1 ], [ %i.ck, %.lr.ph69.epil.preheader ], [ %i.ck, %bb.n ], [ %i.ck, %.preheader.loopexit.unr-lcssa ] ; 6 uses
  %.0142.i.lcssa = phi i8 [ 0, %.preheader1 ], [ 0, %.preheader.loopexit.unr-lcssa ], [ 0, %.lr.ph69.epil.preheader ], [ %i.cq, %bb.n ] ; 2 uses
  %i.cr = icmp slt i32 %.4.i.lcssa, %i.s
  br i1 %i.cr, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %.preheader
  %i.cs = sub i32 %i.ch, %.4.i.lcssa
  %.neg187 = add nuw i32 %.4.i.lcssa, 1
  %xtraiter185 = and i32 %i.cs, 1
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader
  %i.ct = and i32 %.4.i.lcssa, 1
  %.not188.i.prol = icmp eq i32 %i.ct, 0
  br i1 %.not188.i.prol, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph77.prol
  %i.cu = getelementptr inbounds nuw i8, ptr %.11.i.lcssa, i64 1
  %i.cv = load i8, ptr %.11.i.lcssa, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph77.prol
  %.14.i.prol = phi ptr [ %.11.i.lcssa, %.lr.ph77.prol ], [ %i.cu, %bb.o ] ; 2 uses
  %.3145.i.prol = phi i8 [ %.0142.i.lcssa, %.lr.ph77.prol ], [ %i.cv, %bb.o ] ; 2 uses
  %i.cw = and i8 %.3145.i.prol, 15                ; 2 uses
  %i.cx = zext nneg i8 %i.cw to i32
  %.not189.i.prol = icmp eq i32 %i.n, %i.cx
  br i1 %.not189.i.prol, label %.lr.ph77.prol.loopexit.unr-lcssa, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 %i.cw, ptr %.4163.i83, align 1
  br label %.lr.ph77.prol.loopexit.unr-lcssa

.lr.ph77.prol.loopexit.unr-lcssa:                 ; preds = %bb.q, %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %.4163.i83, i64 1 ; 2 uses
  %i.cz = lshr i8 %.3145.i.prol, 4
  %i.da = add nuw nsw i32 %.4.i.lcssa, 1
  br label %.lr.ph77.prol.loopexit

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol.loopexit.unr-lcssa, %.lr.ph77.preheader
  %.lcssa149.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %i.cy, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.14.i.lcssa.unr = phi ptr [ poison, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.2144.i76.unr = phi i8 [ %.0142.i.lcssa, %.lr.ph77.preheader ], [ %i.cz, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.5.i75.unr = phi i32 [ %.4.i.lcssa, %.lr.ph77.preheader ], [ %i.da, %.lr.ph77.prol.loopexit.unr-lcssa ] ; 3 uses
  %.5164.i74.unr = phi ptr [ %.4163.i83, %.lr.ph77.preheader ], [ %i.cy, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %.13.i73.unr = phi ptr [ %.11.i.lcssa, %.lr.ph77.preheader ], [ %.14.i.prol, %.lr.ph77.prol.loopexit.unr-lcssa ]
  %i.db = icmp eq i32 %i.ci, %.neg187
  br i1 %i.db, label %._crit_edge78, label %.lr.ph77.preheader.new

.lr.ph77.preheader.new:                           ; preds = %.lr.ph77.prol.loopexit
  %i.dc = and i32 %.5.i75.unr, 1
  %i.dd = and i32 %.5.i75.unr, 1
  %.not188.i = icmp eq i32 %i.dd, 0
  %.not188.i.1.not = icmp eq i32 %i.dc, 0
  br label %.lr.ph77

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %.4.i67 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %i.df, %.lr.ph69 ]
  %.11.i66 = phi ptr [ %.10.i82, %.lr.ph69.preheader.new ], [ %i.de, %.lr.ph69 ]
  %niter184 = phi i32 [ 0, %.lr.ph69.preheader.new ], [ %niter184.next.1, %.lr.ph69 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.11.i66, i64 1 ; 3 uses
  %i.df = add nuw nsw i32 %.4.i67, 2              ; 2 uses
  %niter184.next.1 = add nuw nsw i32 %niter184, 2 ; 2 uses
  %niter184.ncmp.1 = icmp eq i32 %niter184.next.1, %unroll_iter183
  br i1 %niter184.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !36

.lr.ph77:                                         ; preds = %bb.x, %.lr.ph77.preheader.new
  %.2144.i76 = phi i8 [ %.2144.i76.unr, %.lr.ph77.preheader.new ], [ %i.dr, %bb.x ]
  %.5.i75 = phi i32 [ %.5.i75.unr, %.lr.ph77.preheader.new ], [ %i.ds, %bb.x ]
  %.5164.i74 = phi ptr [ %.5164.i74.unr, %.lr.ph77.preheader.new ], [ %i.dq, %bb.x ] ; 3 uses
  %.13.i73 = phi ptr [ %.13.i73.unr, %.lr.ph77.preheader.new ], [ %.14.i.1, %bb.x ] ; 3 uses
  br i1 %.not188.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph77
  %i.dg = getelementptr inbounds nuw i8, ptr %.13.i73, i64 1
  %i.dh = load i8, ptr %.13.i73, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph77
  %.14.i = phi ptr [ %.13.i73, %.lr.ph77 ], [ %i.dg, %bb.r ] ; 3 uses
  %.3145.i = phi i8 [ %.2144.i76, %.lr.ph77 ], [ %i.dh, %bb.r ] ; 2 uses
  %i.di = and i8 %.3145.i, 15                     ; 2 uses
  %i.dj = zext nneg i8 %i.di to i32
  %.not189.i = icmp eq i32 %i.n, %i.dj
  br i1 %.not189.i, label %.lr.ph77.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 %i.di, ptr %.5164.i74, align 1
  br label %.lr.ph77.1

.lr.ph77.1:                                       ; preds = %bb.t, %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %.5164.i74, i64 1
  %i.dl = lshr i8 %.3145.i, 4
  br i1 %.not188.i.1.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph77.1
  %i.dm = getelementptr inbounds nuw i8, ptr %.14.i, i64 1
  %i.dn = load i8, ptr %.14.i, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph77.1
  %.14.i.1 = phi ptr [ %.14.i, %.lr.ph77.1 ], [ %i.dm, %bb.u ] ; 2 uses
  %.3145.i.1 = phi i8 [ %i.dl, %.lr.ph77.1 ], [ %i.dn, %bb.u ] ; 2 uses
  %i.do = and i8 %.3145.i.1, 15                   ; 2 uses
  %i.dp = zext nneg i8 %i.do to i32
  %.not189.i.1 = icmp eq i32 %i.n, %i.dp
  br i1 %.not189.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 %i.do, ptr %i.dk, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %.5164.i74, i64 2 ; 2 uses
  %i.dr = lshr i8 %.3145.i.1, 4
  %i.ds = add nuw nsw i32 %.5.i75, 2              ; 2 uses
  %exitcond107.not.1 = icmp eq i32 %i.ds, %i.s
  br i1 %exitcond107.not.1, label %._crit_edge78, label %.lr.ph77, !llvm.loop !37

._crit_edge78:                                    ; preds = %.lr.ph77.prol.loopexit, %bb.x, %.preheader
  %.13.i.lcssa = phi ptr [ %.11.i.lcssa, %.preheader ], [ %.14.i.lcssa.unr, %.lr.ph77.prol.loopexit ], [ %.14.i.1, %bb.x ]
  %.5164.i.lcssa = phi ptr [ %.4163.i83, %.preheader ], [ %.lcssa149.unr, %.lr.ph77.prol.loopexit ], [ %i.dq, %bb.x ]
  %i.dt = getelementptr inbounds i8, ptr %.13.i.lcssa, i64 %i.cf
  %i.du = getelementptr inbounds i8, ptr %.5164.i.lcssa, i64 %i.cg
  %.not187.i = icmp eq i32 %i.cj, 0
  br i1 %.not187.i, label %BlitBto1Key.exit, label %.preheader1, !llvm.loop !38

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge60
  %.in85 = phi i32 [ %i.d, %.preheader4.lr.ph ], [ %i.dv, %._crit_edge60 ]
  %.6165.i65 = phi ptr [ %i.h, %.preheader4.lr.ph ], [ %i.fg, %._crit_edge60 ] ; 4 uses
  %.15.i64 = phi ptr [ %i.f, %.preheader4.lr.ph ], [ %i.ff, %._crit_edge60 ] ; 3 uses
  %i.dv = add nsw i32 %.in85, -1                  ; 2 uses
  %i.dw = load i32, ptr %i.q, align 8             ; 8 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph51.preheader, label %.preheader3

.lr.ph51.preheader:                               ; preds = %.preheader4
  %xtraiter169 = and i32 %i.dw, 1
  %i.dy = icmp eq i32 %i.dw, 1
  br i1 %i.dy, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
  %unroll_iter174 = and i32 %i.dw, 2147483646
  br label %.lr.ph51

.preheader3.loopexit.unr-lcssa:                   ; preds = %.lr.ph51
  %lcmp.mod170.not = icmp eq i32 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.preheader3, label %.lr.ph51.epil.preheader

.lr.ph51.epil.preheader:                          ; preds = %.preheader3.loopexit.unr-lcssa, %.lr.ph51.preheader
  %.6.i49.epil.init = phi i32 [ 0, %.lr.ph51.preheader ], [ %i.er, %.preheader3.loopexit.unr-lcssa ]
  %.16.i48.epil.init = phi ptr [ %.15.i64, %.lr.ph51.preheader ], [ %i.eq, %.preheader3.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod173 = trunc i32 %i.dw to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.dz = and i32 %.6.i49.epil.init, 1
  %.not186.i.epil = icmp eq i32 %i.dz, 0
  br i1 %.not186.i.epil, label %bb.y, label %.preheader3

end_hunk_8
