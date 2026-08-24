Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/aes?download=true
inline.NumInlined: 40
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@QEMU_AES_set_encrypt_key:bb.a
  %i.zz = xor i32 %i.zx, %i.yn                    ; 5 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 116
  store i32 %i.zz, ptr %i.aaa, align 4
  %i.aab = lshr i32 %i.zz, 16
  %i.aac = and i32 %i.aab, 255
  %i.aad = zext nneg i32 %i.aac to i64
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aad
  %i.aaf = load i32, ptr %i.aae, align 4
  %i.aag = and i32 %i.aaf, -16777216
  %i.aah = lshr i32 %i.zz, 8
  %i.aai = and i32 %i.aah, 255
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4
  %i.aam = and i32 %i.aal, 16711680
  %i.aan = or disjoint i32 %i.aag, %i.aam
  %i.aao = and i32 %i.zz, 255
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4
  %i.aas = and i32 %i.aar, 65280
  %i.aat = or disjoint i32 %i.aan, %i.aas
  %i.aau = lshr i32 %i.zz, 24
  %i.aav = zext nneg i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aav
  %i.aax = load i32, ptr %i.aaw, align 4
  %i.aay = and i32 %i.aax, 255
  %i.aaz = or disjoint i32 %i.aat, %i.aay
  %i.aba = xor i32 %i.aaz, %i.zp
  %i.abb = xor i32 %i.aba, 268435456              ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i32 %i.abb, ptr %i.abc, align 4
  %i.abd = xor i32 %i.zr, %i.abb                  ; 5 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %2, i64 124
  store i32 %i.abd, ptr %i.abe, align 4
  %i.abf = xor i32 %i.zt, %i.abd
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 128
  store i32 %i.abf, ptr %i.abg, align 4
  %i.abh = xor i32 %i.yj, %i.abd                  ; 4 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 132
  store i32 %i.abh, ptr %i.abi, align 4
  %i.abj = xor i32 %i.zx, %i.abh
  %i.abk = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i32 %i.abj, ptr %i.abk, align 4
  %i.abl = xor i32 %i.abd, %i.vp                  ; 7 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.abl, ptr %i.abm, align 4
  %i.abn = lshr i32 %i.abl, 16
  %i.abo = and i32 %i.abn, 255
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.abp
  %i.abr = load i32, ptr %i.abq, align 4
  %i.abs = and i32 %i.abr, -16777216
  %i.abt = lshr i32 %i.abl, 8
  %i.abu = and i32 %i.abt, 255
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.abv
  %i.abx = load i32, ptr %i.abw, align 4
  %i.aby = and i32 %i.abx, 16711680
  %i.abz = or disjoint i32 %i.abs, %i.aby
  %i.aca = and i32 %i.abl, 255
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.acb
  %i.acd = load i32, ptr %i.acc, align 4
  %i.ace = and i32 %i.acd, 65280
  %i.acf = or disjoint i32 %i.abz, %i.ace
  %i.acg = lshr i32 %i.abl, 24
  %i.ach = zext nneg i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.ach
  %i.acj = load i32, ptr %i.aci, align 4
  %i.ack = and i32 %i.acj, 255
  %i.acl = or disjoint i32 %i.acf, %i.ack
  %i.acm = xor i32 %i.acl, %i.abb
  %i.acn = xor i32 %i.acm, 536870912              ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 %i.acn, ptr %i.aco, align 4
  %i.acp = xor i32 %i.abd, %i.acn                 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %2, i64 148
  store i32 %i.acp, ptr %i.acq, align 4
  %i.acr = xor i32 %i.zt, %i.acn                  ; 5 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %2, i64 152
  store i32 %i.acr, ptr %i.acs, align 4
  %i.act = xor i32 %i.abh, %i.acr
  %i.acu = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 %i.act, ptr %i.acu, align 4
  %i.acv = xor i32 %i.zx, %i.acr                  ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %2, i64 160
  store i32 %i.acv, ptr %i.acw, align 4
  %i.acx = xor i32 %i.acv, %i.abl                 ; 5 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %2, i64 164
  store i32 %i.acx, ptr %i.acy, align 4
  %i.acz = lshr i32 %i.acx, 16
  %i.ada = and i32 %i.acz, 255
  %i.adb = zext nneg i32 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.adb
  %i.add = load i32, ptr %i.adc, align 4
  %i.ade = and i32 %i.add, -16777216
  %i.adf = lshr i32 %i.acx, 8
  %i.adg = and i32 %i.adf, 255
  %i.adh = zext nneg i32 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.adh
  %i.adj = load i32, ptr %i.adi, align 4
  %i.adk = and i32 %i.adj, 16711680
  %i.adl = or disjoint i32 %i.ade, %i.adk
  %i.adm = and i32 %i.acx, 255
  %i.adn = zext nneg i32 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.adn
  %i.adp = load i32, ptr %i.ado, align 4
  %i.adq = and i32 %i.adp, 65280
  %i.adr = or disjoint i32 %i.adl, %i.adq
  %i.ads = lshr i32 %i.acx, 24
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4
  %i.adw = and i32 %i.adv, 255
  %i.adx = or disjoint i32 %i.adr, %i.adw
  %i.ady = xor i32 %i.adx, %i.acn
  %i.adz = xor i32 %i.ady, 1073741824             ; 3 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 %i.adz, ptr %i.aea, align 4
  %i.aeb = xor i32 %i.acp, %i.adz                 ; 4 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 %i.aeb, ptr %i.aec, align 4
  %i.aed = xor i32 %i.acr, %i.aeb
  %i.aee = getelementptr inbounds nuw i8, ptr %2, i64 176
  store i32 %i.aed, ptr %i.aee, align 4
  %i.aef = xor i32 %i.abh, %i.aeb                 ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %2, i64 180
  store i32 %i.aef, ptr %i.aeg, align 4
  %i.aeh = xor i32 %i.acv, %i.aef
  %i.aei = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 %i.aeh, ptr %i.aei, align 4
  %i.aej = xor i32 %i.aef, %i.abl                 ; 5 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %2, i64 188
  store i32 %i.aej, ptr %i.aek, align 4
  %i.ael = lshr i32 %i.aej, 16
  %i.aem = and i32 %i.ael, 255
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aen
  %i.aep = load i32, ptr %i.aeo, align 4
  %i.aeq = and i32 %i.aep, -16777216
  %i.aer = lshr i32 %i.aej, 8
  %i.aes = and i32 %i.aer, 255
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aet
  %i.aev = load i32, ptr %i.aeu, align 4
  %i.aew = and i32 %i.aev, 16711680
  %i.aex = or disjoint i32 %i.aeq, %i.aew
  %i.aey = and i32 %i.aej, 255
  %i.aez = zext nneg i32 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4
  %i.afc = and i32 %i.afb, 65280
  %i.afd = or disjoint i32 %i.aex, %i.afc
  %i.afe = lshr i32 %i.aej, 24
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4
  %i.afi = and i32 %i.afh, 255
  %i.afj = or disjoint i32 %i.afd, %i.afi
  %i.afk = xor i32 %i.afj, %i.adz
  %i.afl = xor i32 %i.afk, -2147483648            ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i32 %i.afl, ptr %i.afm, align 4
  %i.afn = xor i32 %i.aeb, %i.afl
  %i.afo = getelementptr inbounds nuw i8, ptr %2, i64 196
  store i32 %i.afn, ptr %i.afo, align 4
  %i.afp = xor i32 %i.acr, %i.afl                 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i32 %i.afp, ptr %i.afq, align 4
  %i.afr = xor i32 %i.aef, %i.afp
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.loopexit.loopexit153
  %.sink171 = phi i64 [ 204, %.loopexit.loopexit153 ], [ 172, %.preheader.preheader ]
  %.sink = phi i32 [ %i.afr, %.loopexit.loopexit153 ], [ %i.ow, %.preheader.preheader ]
  %i.afs = getelementptr inbounds nuw i8, ptr %2, i64 %.sink171
  store i32 %.sink, ptr %i.afs, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader151, %.loopexit.sink.split, %bb.b, %bb.a
  %.0141 = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ 0, %.loopexit.sink.split ], [ 0, %.preheader151 ]
  ret i32 %.0141
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local range(i32 -2, 1) i32 @QEMU_AES_set_decrypt_key(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @QEMU_AES_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = shl i32 %i.d, 2                          ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %3 = zext nneg i32 %i.e to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i32, ptr %i.c, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.b
  %i.g = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.d, %bb.b ]
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph79, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv80 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next81, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv80 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.k = load <4 x i32>, ptr %i.i, align 4
  %i.l = load <4 x i32>, ptr %i.j, align 4
  store <4 x i32> %i.l, ptr %i.i, align 4
  store <4 x i32> %i.k, ptr %i.j, align 4
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 4 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.m = icmp slt i64 %indvars.iv.next81, %indvars.iv.next
  br i1 %i.m, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !7

.lr.ph79:                                         ; preds = %.preheader, %.lr.ph79
  %.178 = phi i32 [ %i.fn, %.lr.ph79 ], [ 1, %.preheader ]
  %.07277 = phi ptr [ %i.n, %.lr.ph79 ], [ %2, %.preheader ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07277, i64 16 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4              ; 4 uses
  %i.p = lshr i32 %i.o, 24
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 255
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @AES_Td0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = lshr i32 %i.o, 16
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @AES_Td1, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = xor i32 %i.af, %i.w
  %i.ah = lshr i32 %i.o, 8
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @AES_Td2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = xor i32 %i.ag, %i.ap
  %i.ar = and i32 %i.o, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @AES_Td3, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = xor i32 %i.aq, %i.ay
  store i32 %i.az, ptr %i.n, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.07277, i64 20 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4            ; 4 uses
  %i.bc = lshr i32 %i.bb, 24
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @AES_Td0, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = lshr i32 %i.bb, 16
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = and i32 %i.bo, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @AES_Td1, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = xor i32 %i.bs, %i.bj
  %i.bu = lshr i32 %i.bb, 8
  %i.bv = and i32 %i.bu, 255
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, 255
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @AES_Td2, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = xor i32 %i.bt, %i.cc
  %i.ce = and i32 %i.bb, 255
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = and i32 %i.ch, 255
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @AES_Td3, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = xor i32 %i.cd, %i.cl
  store i32 %i.cm, ptr %i.ba, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.07277, i64 24 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 4 uses
  %i.cp = lshr i32 %i.co, 24
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = and i32 %i.cs, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @AES_Td0, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = lshr i32 %i.co, 16
  %i.cy = and i32 %i.cx, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @AES_Td1, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = xor i32 %i.df, %i.cw
  %i.dh = lshr i32 %i.co, 8
  %i.di = and i32 %i.dh, 255
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = and i32 %i.dl, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @AES_Td2, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = xor i32 %i.dg, %i.dp
  %i.dr = and i32 %i.co, 255
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 255
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @AES_Td3, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = xor i32 %i.dq, %i.dy
  store i32 %i.dz, ptr %i.cn, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.07277, i64 28 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4            ; 4 uses
  %i.ec = lshr i32 %i.eb, 24
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = and i32 %i.ef, 255
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @AES_Td0, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = lshr i32 %i.eb, 16
  %i.el = and i32 %i.ek, 255
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = and i32 %i.eo, 255
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @AES_Td1, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4
  %i.et = xor i32 %i.es, %i.ej
  %i.eu = lshr i32 %i.eb, 8
  %i.ev = and i32 %i.eu, 255
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @AES_Td2, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = xor i32 %i.et, %i.fc
  %i.fe = and i32 %i.eb, 255
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr @AES_Te4, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = and i32 %i.fh, 255
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @AES_Td3, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = xor i32 %i.fd, %i.fl
  store i32 %i.fm, ptr %i.ea, align 4
  %i.fn = add nuw nsw i32 %.178, 1                ; 2 uses
  %i.fo = load i32, ptr %i.c, align 4
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %.lr.ph79, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph79, %.preheader, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @QEMU_AES_encrypt(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1456, ptr noundef nonnull @__PRETTY_FUNCTION__.QEMU_AES_encrypt) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = load i32, ptr %2, align 4
  %i.g = xor i32 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 1
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = xor i32 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
