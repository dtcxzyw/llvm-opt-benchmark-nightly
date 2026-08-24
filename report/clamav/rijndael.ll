Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rijndael?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rijndaelSetupEncrypt:bb.a
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.zq, ptr %i.zr, align 4, !tbaa !9
  %i.zs = xor i32 %i.pj, %i.zk                    ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.zs, ptr %i.zt, align 4, !tbaa !9
  %i.zu = xor i32 %i.zs, %i.yi                    ; 5 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.zu, ptr %i.zv, align 4, !tbaa !9
  %i.zw = lshr i32 %i.zu, 16
  %i.zx = and i32 %i.zw, 255
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.zy
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !9
  %i.aab = and i32 %i.aaa, -16777216
  %i.aac = lshr i32 %i.zu, 8
  %i.aad = and i32 %i.aac, 255
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.aae
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !9
  %i.aah = and i32 %i.aag, 16711680
  %i.aai = or disjoint i32 %i.aab, %i.aah
  %i.aaj = and i32 %i.zu, 255
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !9
  %i.aan = and i32 %i.aam, 65280
  %i.aao = or disjoint i32 %i.aai, %i.aan
  %i.aap = lshr i32 %i.zu, 24
  %i.aaq = zext nneg i32 %i.aap to i64
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.aaq
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !9
  %i.aat = and i32 %i.aas, 255
  %i.aau = or disjoint i32 %i.aao, %i.aat
  %i.aav = xor i32 %i.aau, %i.zk
  %i.aaw = xor i32 %i.aav, 268435456              ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.aaw, ptr %i.aax, align 4, !tbaa !9
  %i.aay = xor i32 %i.zm, %i.aaw                  ; 5 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.aay, ptr %i.aaz, align 4, !tbaa !9
  %i.aba = xor i32 %i.zo, %i.aay
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.aba, ptr %i.abb, align 4, !tbaa !9
  %i.abc = xor i32 %i.ye, %i.aay                  ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.abc, ptr %i.abd, align 4, !tbaa !9
  %i.abe = xor i32 %i.zs, %i.abc
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.abe, ptr %i.abf, align 4, !tbaa !9
  %i.abg = xor i32 %i.aay, %i.vk                  ; 7 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.abg, ptr %i.abh, align 4, !tbaa !9
  %i.abi = lshr i32 %i.abg, 16
  %i.abj = and i32 %i.abi, 255
  %i.abk = zext nneg i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.abk
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !9
  %i.abn = and i32 %i.abm, -16777216
  %i.abo = lshr i32 %i.abg, 8
  %i.abp = and i32 %i.abo, 255
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !9
  %i.abt = and i32 %i.abs, 16711680
  %i.abu = or disjoint i32 %i.abn, %i.abt
  %i.abv = and i32 %i.abg, 255
  %i.abw = zext nneg i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.abw
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !9
  %i.abz = and i32 %i.aby, 65280
  %i.aca = or disjoint i32 %i.abu, %i.abz
  %i.acb = lshr i32 %i.abg, 24
  %i.acc = zext nneg i32 %i.acb to i64
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.acc
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !9
  %i.acf = and i32 %i.ace, 255
  %i.acg = or disjoint i32 %i.aca, %i.acf
  %i.ach = xor i32 %i.acg, %i.aaw
  %i.aci = xor i32 %i.ach, 536870912              ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.aci, ptr %i.acj, align 4, !tbaa !9
  %i.ack = xor i32 %i.aay, %i.aci                 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.ack, ptr %i.acl, align 4, !tbaa !9
  %i.acm = xor i32 %i.zo, %i.aci                  ; 5 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %i.acm, ptr %i.acn, align 4, !tbaa !9
  %i.aco = xor i32 %i.abc, %i.acm
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.aco, ptr %i.acp, align 4, !tbaa !9
  %i.acq = xor i32 %i.zs, %i.acm                  ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.acq, ptr %i.acr, align 4, !tbaa !9
  %i.acs = xor i32 %i.acq, %i.abg                 ; 5 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.acs, ptr %i.act, align 4, !tbaa !9
  %i.acu = lshr i32 %i.acs, 16
  %i.acv = and i32 %i.acu, 255
  %i.acw = zext nneg i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !9
  %i.acz = and i32 %i.acy, -16777216
  %i.ada = lshr i32 %i.acs, 8
  %i.adb = and i32 %i.ada, 255
  %i.adc = zext nneg i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !9
  %i.adf = and i32 %i.ade, 16711680
  %i.adg = or disjoint i32 %i.acz, %i.adf
  %i.adh = and i32 %i.acs, 255
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !9
  %i.adl = and i32 %i.adk, 65280
  %i.adm = or disjoint i32 %i.adg, %i.adl
  %i.adn = lshr i32 %i.acs, 24
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !9
  %i.adr = and i32 %i.adq, 255
  %i.ads = or disjoint i32 %i.adm, %i.adr
  %i.adt = xor i32 %i.ads, %i.aci
  %i.adu = xor i32 %i.adt, 1073741824             ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.adu, ptr %i.adv, align 4, !tbaa !9
  %i.adw = xor i32 %i.ack, %i.adu                 ; 4 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.adw, ptr %i.adx, align 4, !tbaa !9
  %i.ady = xor i32 %i.acm, %i.adw
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.ady, ptr %i.adz, align 4, !tbaa !9
  %i.aea = xor i32 %i.abc, %i.adw                 ; 4 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.aea, ptr %i.aeb, align 4, !tbaa !9
  %i.aec = xor i32 %i.acq, %i.aea
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.aec, ptr %i.aed, align 4, !tbaa !9
  %i.aee = xor i32 %i.aea, %i.abg                 ; 5 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.aee, ptr %i.aef, align 4, !tbaa !9
  %i.aeg = lshr i32 %i.aee, 16
  %i.aeh = and i32 %i.aeg, 255
  %i.aei = zext nneg i32 %i.aeh to i64
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !9
  %i.ael = and i32 %i.aek, -16777216
  %i.aem = lshr i32 %i.aee, 8
  %i.aen = and i32 %i.aem, 255
  %i.aeo = zext nneg i32 %i.aen to i64
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.aeo
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !9
  %i.aer = and i32 %i.aeq, 16711680
  %i.aes = or disjoint i32 %i.ael, %i.aer
  %i.aet = and i32 %i.aee, 255
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.aeu
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !9
  %i.aex = and i32 %i.aew, 65280
  %i.aey = or disjoint i32 %i.aes, %i.aex
  %i.aez = lshr i32 %i.aee, 24
  %i.afa = zext nneg i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.afa
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !9
  %i.afd = and i32 %i.afc, 255
  %i.afe = or disjoint i32 %i.aey, %i.afd
  %i.aff = xor i32 %i.afe, %i.adu
  %i.afg = xor i32 %i.aff, -2147483648            ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.afg, ptr %i.afh, align 4, !tbaa !9
  %i.afi = xor i32 %i.adw, %i.afg
  %i.afj = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.afi, ptr %i.afj, align 4, !tbaa !9
  %i.afk = xor i32 %i.acm, %i.afg                 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.afk, ptr %i.afl, align 4, !tbaa !9
  %i.afm = xor i32 %i.aea, %i.afk
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.loopexit.loopexit134
  %.sink150 = phi i64 [ 204, %.loopexit.loopexit134 ], [ 172, %.preheader.preheader ]
  %.sink = phi i32 [ %i.afm, %.loopexit.loopexit134 ], [ %i.or, %.preheader.preheader ]
  %.0122.ph = phi i32 [ 12, %.loopexit.loopexit134 ], [ 10, %.preheader.preheader ]
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink150
  store i32 %.sink, ptr %i.afn, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader132, %.loopexit.sink.split, %bb.c
  %.0122 = phi i32 [ %.0122.ph, %.loopexit.sink.split ], [ 0, %bb.c ], [ 14, %.preheader132 ]
  ret i32 %.0122
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 15) i32 @rijndaelSetupDecrypt(ptr nofree noundef captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rijndaelSetupEncrypt(ptr noundef %0, ptr noundef %1, i32 noundef %2) ; 5 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = shl nuw nsw i32 %i.a, 2
  %3 = zext nneg i32 %i.b to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not81 = icmp eq i32 %i.a, 1
  br i1 %.not81, label %._crit_edge, label %.lr.ph75

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv76 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next77, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv76 ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.e = load <4 x i32>, ptr %i.c, align 4, !tbaa !9
  %i.f = load <4 x i32>, ptr %i.d, align 4, !tbaa !9
  store <4 x i32> %i.f, ptr %i.c, align 4, !tbaa !9
  store <4 x i32> %i.e, ptr %i.d, align 4, !tbaa !9
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.g = icmp slt i64 %indvars.iv.next77, %indvars.iv.next
  br i1 %i.g, label %.lr.ph, label %.preheader

.lr.ph75:                                         ; preds = %.preheader, %.lr.ph75
  %.174 = phi i32 [ %i.fh, %.lr.ph75 ], [ 1, %.preheader ]
  %.06973 = phi ptr [ %i.h, %.lr.ph75 ], [ %0, %.preheader ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06973, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 4 uses
  %i.j = lshr i32 %i.i, 24
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9
  %i.n = and i32 %i.m, 255
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @Td0, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %i.r = lshr i32 %i.i, 16
  %i.s = and i32 %i.r, 255
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = and i32 %i.v, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @Td1, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  %i.aa = xor i32 %i.z, %i.q
  %i.ab = lshr i32 %i.i, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !9
  %i.ag = and i32 %i.af, 255
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @Td2, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9
  %i.ak = xor i32 %i.aa, %i.aj
  %i.al = and i32 %i.i, 255
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ap = and i32 %i.ao, 255
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @Td3, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  %i.at = xor i32 %i.ak, %i.as
  store i32 %i.at, ptr %i.h, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.06973, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !9  ; 4 uses
  %i.aw = lshr i32 %i.av, 24
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !9
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @Td0, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = lshr i32 %i.av, 16
  %i.bf = and i32 %i.be, 255
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bj = and i32 %i.bi, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @Td1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !9
  %i.bn = xor i32 %i.bm, %i.bd
  %i.bo = lshr i32 %i.av, 8
  %i.bp = and i32 %i.bo, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9
  %i.bt = and i32 %i.bs, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @Td2, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = xor i32 %i.bn, %i.bw
  %i.by = and i32 %i.av, 255
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @Td3, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cg = xor i32 %i.bx, %i.cf
  store i32 %i.cg, ptr %i.au, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.06973, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !9  ; 4 uses
  %i.cj = lshr i32 %i.ci, 24
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9
  %i.cn = and i32 %i.cm, 255
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @Td0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !9
  %i.cr = lshr i32 %i.ci, 16
  %i.cs = and i32 %i.cr, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = and i32 %i.cv, 255
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @Td1, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !9
  %i.da = xor i32 %i.cz, %i.cq
  %i.db = lshr i32 %i.ci, 8
  %i.dc = and i32 %i.db, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9
  %i.dg = and i32 %i.df, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr @Td2, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !9
  %i.dk = xor i32 %i.da, %i.dj
  %i.dl = and i32 %i.ci, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !9
  %i.dp = and i32 %i.do, 255
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @Td3, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = xor i32 %i.dk, %i.ds
  store i32 %i.dt, ptr %i.ch, align 4, !tbaa !9
  %i.du = getelementptr inbounds nuw i8, ptr %.06973, i64 28 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !9  ; 4 uses
  %i.dw = lshr i32 %i.dv, 24
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !9
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @Td0, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !9
  %i.ee = lshr i32 %i.dv, 16
  %i.ef = and i32 %i.ee, 255
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !9
  %i.ej = and i32 %i.ei, 255
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @Td1, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = xor i32 %i.em, %i.ed
  %i.eo = lshr i32 %i.dv, 8
  %i.ep = and i32 %i.eo, 255
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !9
  %i.et = and i32 %i.es, 255
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr @Td2, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !9
  %i.ex = xor i32 %i.en, %i.ew
  %i.ey = and i32 %i.dv, 255
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @Te4, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !9
  %i.fc = and i32 %i.fb, 255
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @Td3, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !9
  %i.fg = xor i32 %i.ex, %i.ff
  store i32 %i.fg, ptr %i.du, align 4, !tbaa !9
  %i.fh = add nuw nsw i32 %.174, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fh, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph75

._crit_edge:                                      ; preds = %.lr.ph75, %bb.a, %.preheader
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @rijndaelEncrypt(ptr nofree noundef readonly %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !8
  %i.b = zext i8 %i.a to i32
  %i.c = shl nuw i32 %i.b, 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = or disjoint i32 %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  %i.r = load i32, ptr %0, align 4, !tbaa !9
  %i.s = xor i32 %i.q, %i.r                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i8, ptr %i.t, align 1, !tbaa !8
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw i32 %i.v, 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 5
end_hunk_0
