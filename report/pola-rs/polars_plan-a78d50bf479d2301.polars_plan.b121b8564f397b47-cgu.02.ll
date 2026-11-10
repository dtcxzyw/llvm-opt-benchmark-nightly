Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11832
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvXNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtB8_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1m_7Visitor11visit_bytesNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEBc_:bb.a
  %i.cio = getelementptr inbounds nuw i8, ptr %1, i64 11, !dbg !68410
  %i.cip = load i8, ptr %i.cio, align 1, !dbg !68410, !noundef !4700
  %i.ciq = icmp eq i8 %i.cip, 114, !dbg !68410
  br i1 %i.ciq, label %bb.afh, label %bb.c, !dbg !68410, !prof !4778

bb.afh:                                           ; preds = %bb.afg
  %i.cir = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !68410
  %i.cis = load i8, ptr %i.cir, align 1, !dbg !68410, !noundef !4700
  %i.cit = icmp eq i8 %i.cis, 105, !dbg !68410
  br i1 %i.cit, label %bb.afi, label %bb.c, !dbg !68410, !prof !4778

bb.afi:                                           ; preds = %bb.afh
  %i.ciu = getelementptr inbounds nuw i8, ptr %1, i64 13, !dbg !68410
  %i.civ = load i8, ptr %i.ciu, align 1, !dbg !68410, !noundef !4700
  %i.ciw = icmp eq i8 %i.civ, 122, !dbg !68410
  br i1 %i.ciw, label %bb.afj, label %bb.c, !dbg !68410, !prof !4778

bb.afj:                                           ; preds = %bb.afi
  %i.cix = getelementptr inbounds nuw i8, ptr %1, i64 14, !dbg !68410
  %i.ciy = load i8, ptr %i.cix, align 1, !dbg !68410, !noundef !4700
  %i.ciz = icmp eq i8 %i.ciy, 111, !dbg !68410
  br i1 %i.ciz, label %bb.afk, label %bb.c, !dbg !68410, !prof !4778

bb.afk:                                           ; preds = %bb.afj
  %i.cja = getelementptr inbounds nuw i8, ptr %1, i64 15, !dbg !68410
  %i.cjb = load i8, ptr %i.cja, align 1, !dbg !68410, !noundef !4700
  %i.cjc = icmp eq i8 %i.cjb, 110, !dbg !68410
  br i1 %i.cjc, label %bb.afl, label %bb.c, !dbg !68410, !prof !4778

bb.afl:                                           ; preds = %bb.afk
  %i.cjd = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !68410
  %i.cje = load i8, ptr %i.cjd, align 1, !dbg !68410, !noundef !4700
  %i.cjf = icmp eq i8 %i.cje, 116, !dbg !68410
  br i1 %i.cjf, label %bb.afm, label %bb.c, !dbg !68410, !prof !4778

bb.afm:                                           ; preds = %bb.afl
  %i.cjg = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !68410
  %i.cjh = load i8, ptr %i.cjg, align 1, !dbg !68410, !noundef !4700
  %i.cji = icmp eq i8 %i.cjh, 97, !dbg !68410
  br i1 %i.cji, label %bb.afn, label %bb.c, !dbg !68410, !prof !4778

bb.afn:                                           ; preds = %bb.afm
  %i.cjj = getelementptr inbounds nuw i8, ptr %1, i64 18, !dbg !68410
  %i.cjk = load i8, ptr %i.cjj, align 1, !dbg !68410, !noundef !4700
  %i.cjl = icmp eq i8 %i.cjk, 108, !dbg !68410
  br i1 %i.cjl, label %bb.afo, label %bb.c, !dbg !68410, !prof !4778

bb.afo:                                           ; preds = %bb.afn
  %i.cjm = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !68410
  store i8 94, ptr %i.cjm, align 1, !dbg !68410
  store i8 9, ptr %0, align 8, !dbg !68410
  br label %bb.t, !dbg !68412

bb.afp:                                           ; preds = %bb.a
  %i.cjn = load i8, ptr %1, align 1, !dbg !68410, !noundef !4700
  %i.cjo = icmp eq i8 %i.cjn, 67, !dbg !68410
  br i1 %i.cjo, label %bb.afq, label %bb.c, !dbg !68410, !prof !4778

bb.afq:                                           ; preds = %bb.afp
  %i.cjp = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !68410
  %i.cjq = load i8, ptr %i.cjp, align 1, !dbg !68410, !noundef !4700
  %i.cjr = icmp eq i8 %i.cjq, 117, !dbg !68410
  br i1 %i.cjr, label %bb.afr, label %bb.c, !dbg !68410, !prof !4778

bb.afr:                                           ; preds = %bb.afq
  %i.cjs = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !68410
  %i.cjt = load i8, ptr %i.cjs, align 1, !dbg !68410, !noundef !4700
  %i.cju = icmp eq i8 %i.cjt, 109, !dbg !68410
  br i1 %i.cju, label %bb.afs, label %bb.c, !dbg !68410, !prof !4778

bb.afs:                                           ; preds = %bb.afr
  %i.cjv = getelementptr inbounds nuw i8, ptr %1, i64 3, !dbg !68410
  %i.cjw = load i8, ptr %i.cjv, align 1, !dbg !68410, !noundef !4700
  %i.cjx = icmp eq i8 %i.cjw, 70, !dbg !68410
  br i1 %i.cjx, label %bb.aft, label %bb.c, !dbg !68410, !prof !4778

bb.aft:                                           ; preds = %bb.afs
  %i.cjy = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !68410
  %i.cjz = load i8, ptr %i.cjy, align 1, !dbg !68410, !noundef !4700
  %i.cka = icmp eq i8 %i.cjz, 111, !dbg !68410
  br i1 %i.cka, label %bb.afu, label %bb.c, !dbg !68410, !prof !4778

bb.afu:                                           ; preds = %bb.aft
  %i.ckb = getelementptr inbounds nuw i8, ptr %1, i64 5, !dbg !68410
  %i.ckc = load i8, ptr %i.ckb, align 1, !dbg !68410, !noundef !4700
  %i.ckd = icmp eq i8 %i.ckc, 108, !dbg !68410
  br i1 %i.ckd, label %bb.afv, label %bb.c, !dbg !68410, !prof !4778

bb.afv:                                           ; preds = %bb.afu
  %i.cke = getelementptr inbounds nuw i8, ptr %1, i64 6, !dbg !68410
  %i.ckf = load i8, ptr %i.cke, align 1, !dbg !68410, !noundef !4700
  %i.ckg = icmp eq i8 %i.ckf, 100, !dbg !68410
  br i1 %i.ckg, label %bb.afw, label %bb.c, !dbg !68410, !prof !4778

bb.afw:                                           ; preds = %bb.afv
  %i.ckh = getelementptr inbounds nuw i8, ptr %1, i64 7, !dbg !68410
  %i.cki = load i8, ptr %i.ckh, align 1, !dbg !68410, !noundef !4700
  %i.ckj = icmp eq i8 %i.cki, 72, !dbg !68410
  br i1 %i.ckj, label %bb.afx, label %bb.c, !dbg !68410, !prof !4778

bb.afx:                                           ; preds = %bb.afw
  %i.ckk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !68410
  %i.ckl = load i8, ptr %i.ckk, align 1, !dbg !68410, !noundef !4700
  %i.ckm = icmp eq i8 %i.ckl, 111, !dbg !68410
  br i1 %i.ckm, label %bb.afy, label %bb.c, !dbg !68410, !prof !4778

bb.afy:                                           ; preds = %bb.afx
  %i.ckn = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !68410
  %i.cko = load i8, ptr %i.ckn, align 1, !dbg !68410, !noundef !4700
  %i.ckp = icmp eq i8 %i.cko, 114, !dbg !68410
  br i1 %i.ckp, label %bb.afz, label %bb.c, !dbg !68410, !prof !4778

bb.afz:                                           ; preds = %bb.afy
  %i.ckq = getelementptr inbounds nuw i8, ptr %1, i64 10, !dbg !68410
  %i.ckr = load i8, ptr %i.ckq, align 1, !dbg !68410, !noundef !4700
  %i.cks = icmp eq i8 %i.ckr, 105, !dbg !68410
  br i1 %i.cks, label %bb.aga, label %bb.c, !dbg !68410, !prof !4778

bb.aga:                                           ; preds = %bb.afz
  %i.ckt = getelementptr inbounds nuw i8, ptr %1, i64 11, !dbg !68410
  %i.cku = load i8, ptr %i.ckt, align 1, !dbg !68410, !noundef !4700
  %i.ckv = icmp eq i8 %i.cku, 122, !dbg !68410
  br i1 %i.ckv, label %bb.agb, label %bb.c, !dbg !68410, !prof !4778

bb.agb:                                           ; preds = %bb.aga
  %i.ckw = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !68410
  %i.ckx = load i8, ptr %i.ckw, align 1, !dbg !68410, !noundef !4700
  %i.cky = icmp eq i8 %i.ckx, 111, !dbg !68410
  br i1 %i.cky, label %bb.agc, label %bb.c, !dbg !68410, !prof !4778

bb.agc:                                           ; preds = %bb.agb
  %i.ckz = getelementptr inbounds nuw i8, ptr %1, i64 13, !dbg !68410
  %i.cla = load i8, ptr %i.ckz, align 1, !dbg !68410, !noundef !4700
  %i.clb = icmp eq i8 %i.cla, 110, !dbg !68410
  br i1 %i.clb, label %bb.agd, label %bb.c, !dbg !68410, !prof !4778

bb.agd:                                           ; preds = %bb.agc
  %i.clc = getelementptr inbounds nuw i8, ptr %1, i64 14, !dbg !68410
  %i.cld = load i8, ptr %i.clc, align 1, !dbg !68410, !noundef !4700
  %i.cle = icmp eq i8 %i.cld, 116, !dbg !68410
  br i1 %i.cle, label %bb.age, label %bb.c, !dbg !68410, !prof !4778

bb.age:                                           ; preds = %bb.agd
  %i.clf = getelementptr inbounds nuw i8, ptr %1, i64 15, !dbg !68410
  %i.clg = load i8, ptr %i.clf, align 1, !dbg !68410, !noundef !4700
  %i.clh = icmp eq i8 %i.clg, 97, !dbg !68410
  br i1 %i.clh, label %bb.agf, label %bb.c, !dbg !68410, !prof !4778

bb.agf:                                           ; preds = %bb.age
  %i.cli = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !68410
  %i.clj = load i8, ptr %i.cli, align 1, !dbg !68410, !noundef !4700
  %i.clk = icmp eq i8 %i.clj, 108, !dbg !68410
  br i1 %i.clk, label %bb.agg, label %bb.c, !dbg !68410, !prof !4778

bb.agg:                                           ; preds = %bb.agf
  %i.cll = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !68410
  store i8 95, ptr %i.cll, align 1, !dbg !68410
  store i8 9, ptr %0, align 8, !dbg !68410
  br label %bb.t, !dbg !68412

bb.agh:                                           ; preds = %bb.c
  %i.clm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.b) #45
          to label %bb.agk unwind label %bb.agj, !dbg !68412

bb.agi:                                           ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !68407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !68414
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.b), !dbg !68412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !68412
  br label %bb.t, !dbg !68412

bb.agj:                                           ; preds = %bb.agh
  %i.cln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !68410
  unreachable, !dbg !68410

bb.agk:                                           ; preds = %bb.agh
  resume { ptr, i32 } %i.clm, !dbg !68410
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtB8_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1m_7Visitor9visit_strNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !dbg !68415 !guid !68646 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  switch i64 %2, label %bb.hs [
    i64 9, label %bb.b
    i64 10, label %bb.d
    i64 11, label %bb.f
    i64 8, label %bb.j
    i64 12, label %bb.p
    i64 7, label %bb.r
    i64 3, label %bb.x
    i64 6, label %bb.z
    i64 4, label %bb.ab
    i64 5, label %bb.ap
    i64 20, label %bb.az
    i64 13, label %bb.bd
    i64 14, label %bb.gd
    i64 16, label %bb.gf
    i64 19, label %bb.gh
    i64 17, label %bb.gj
  ], !dbg !69436, !prof !68647

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 1, !dbg !69437
  %i.c = xor i64 %i.b, 8104303917081457217, !dbg !69437
  %i.d = getelementptr i8, ptr %1, i64 8, !dbg !69437
  %i.e = load i8, ptr %i.d, align 1, !dbg !69437
  %i.f = zext i8 %i.e to i64, !dbg !69437
  %i.g = xor i64 %i.f, 114, !dbg !69437
  %i.h = or i64 %i.c, %i.g, !dbg !69437
  %i.i = icmp ne i64 %i.h, 0, !dbg !69437
  %i.j = zext i1 %i.i to i32, !dbg !69437
  %i.k = icmp eq i32 %i.j, 0, !dbg !69437
  br i1 %i.k, label %bb.c, label %bb.h, !dbg !68648

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 0, ptr %i.l, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.d:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 1, !dbg !69440
  %i.n = xor i64 %i.m, 8666466590112246082, !dbg !69440
  %i.o = getelementptr i8, ptr %1, i64 8, !dbg !69440
  %i.p = load i16, ptr %i.o, align 1, !dbg !69440
  %i.q = zext i16 %i.p to i64, !dbg !69440
  %i.r = xor i64 %i.q, 29296, !dbg !69440
  %i.s = or i64 %i.n, %i.r, !dbg !69440
  %i.t = icmp ne i64 %i.s, 0, !dbg !69440
  %i.u = zext i1 %i.t to i32, !dbg !69440
  %i.v = icmp eq i32 %i.u, 0, !dbg !69440
  br i1 %i.v, label %bb.e, label %bb.l, !dbg !68655

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 1, ptr %i.w, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.f:                                             ; preds = %bb.a
  %i.x = load i64, ptr %1, align 1, !dbg !69441
  %i.y = xor i64 %i.x, 7598258011201888579, !dbg !69441
  %i.z = getelementptr i8, ptr %1, i64 3, !dbg !69441
  %i.aa = load i64, ptr %i.z, align 1, !dbg !69441
  %i.ab = xor i64 %i.aa, 7809632533379770213, !dbg !69441
  %i.ac = or i64 %i.y, %i.ab, !dbg !69441
  %i.ad = icmp ne i64 %i.ac, 0, !dbg !69441
  %i.ae = zext i1 %i.ad to i32, !dbg !69441
  %i.af = icmp eq i32 %i.ae, 0, !dbg !69441
  br i1 %i.af, label %bb.g, label %bb.bb, !dbg !68662

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 2, ptr %i.ag, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.h:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %1, align 1, !dbg !69442
  %i.ai = xor i64 %i.ah, 8028074728750348357, !dbg !69442
  %i.aj = getelementptr i8, ptr %1, i64 8, !dbg !69442
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !69442
  %i.al = zext i8 %i.ak to i64, !dbg !69442
  %i.am = xor i64 %i.al, 110, !dbg !69442
  %i.an = or i64 %i.ai, %i.am, !dbg !69442
  %i.ao = icmp ne i64 %i.an, 0, !dbg !69442
  %i.ap = zext i1 %i.ao to i32, !dbg !69442
  %i.aq = icmp eq i32 %i.ap, 0, !dbg !69442
  br i1 %i.aq, label %bb.i, label %bb.ad, !dbg !68669

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 3, ptr %i.ar, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.j:                                             ; preds = %bb.a
  %i.as = load i64, ptr %1, align 1, !dbg !69443
  %i.at = icmp ne i64 %i.as, 8246223157417175372, !dbg !69443
  %i.au = zext i1 %i.at to i32, !dbg !69443
  %i.av = icmp eq i32 %i.au, 0, !dbg !69443
  br i1 %i.av, label %bb.k, label %bb.v, !dbg !68676

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 4, ptr %i.aw, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.l:                                             ; preds = %bb.d
  %i.ax = load i64, ptr %1, align 1, !dbg !69444
  %i.ay = xor i64 %i.ax, 8666446781857559635, !dbg !69444
  %i.az = getelementptr i8, ptr %1, i64 8, !dbg !69444
  %i.ba = load i16, ptr %i.az, align 1, !dbg !69444
  %i.bb = zext i16 %i.ba to i64, !dbg !69444
  %i.bc = xor i64 %i.bb, 29296, !dbg !69444
  %i.bd = or i64 %i.ay, %i.bc, !dbg !69444
  %i.be = icmp ne i64 %i.bd, 0, !dbg !69444
  %i.bf = zext i1 %i.be to i32, !dbg !69444
  %i.bg = icmp eq i32 %i.bf, 0, !dbg !69444
  br i1 %i.bg, label %bb.m, label %bb.n, !dbg !68683

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 5, ptr %i.bh, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.n:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %1, align 1, !dbg !69445
  %i.bj = xor i64 %i.bi, 8666461028465407059, !dbg !69445
  %i.bk = getelementptr i8, ptr %1, i64 8, !dbg !69445
  %i.bl = load i16, ptr %i.bk, align 1, !dbg !69445
  %i.bm = zext i16 %i.bl to i64, !dbg !69445
  %i.bn = xor i64 %i.bm, 29296, !dbg !69445
  %i.bo = or i64 %i.bj, %i.bn, !dbg !69445
  %i.bp = icmp ne i64 %i.bo, 0, !dbg !69445
  %i.bq = zext i1 %i.bp to i32, !dbg !69445
  %i.br = icmp eq i32 %i.bq, 0, !dbg !69445
  br i1 %i.br, label %bb.o, label %bb.fb, !dbg !68690

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 6, ptr %i.bs, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.p:                                             ; preds = %bb.a
  %i.bt = load i64, ptr %1, align 1, !dbg !69446
  %i.bu = xor i64 %i.bt, 7809649051790304596, !dbg !69446
  %i.bv = getelementptr i8, ptr %1, i64 8, !dbg !69446
  %i.bw = load i32, ptr %i.bv, align 1, !dbg !69446
  %i.bx = zext i32 %i.bw to i64, !dbg !69446
  %i.by = xor i64 %i.bx, 1919973445, !dbg !69446
  %i.bz = or i64 %i.bu, %i.by, !dbg !69446
  %i.ca = icmp ne i64 %i.bz, 0, !dbg !69446
  %i.cb = zext i1 %i.ca to i32, !dbg !69446
  %i.cc = icmp eq i32 %i.cb, 0, !dbg !69446
  br i1 %i.cc, label %bb.q, label %bb.an, !dbg !68697

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 7, ptr %i.cd, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.r:                                             ; preds = %bb.a
  %i.ce = load i32, ptr %1, align 1, !dbg !69447
  %i.cf = xor i32 %i.ce, 2004117826, !dbg !69447
  %i.cg = getelementptr i8, ptr %1, i64 3, !dbg !69447
  %i.ch = load i32, ptr %i.cg, align 1, !dbg !69447
  %i.ci = xor i32 %i.ch, 1702062455, !dbg !69447
  %i.cj = or i32 %i.cf, %i.ci, !dbg !69447
  %i.ck = icmp ne i32 %i.cj, 0, !dbg !69447
  %i.cl = zext i1 %i.ck to i32, !dbg !69447
  %i.cm = icmp eq i32 %i.cl, 0, !dbg !69447
  br i1 %i.cm, label %bb.s, label %bb.t, !dbg !68704

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 8, ptr %i.cn, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.t:                                             ; preds = %bb.r
  %i.co = load i32, ptr %1, align 1, !dbg !69448
  %i.cp = xor i32 %i.co, 1819242306, !dbg !69448
  %i.cq = getelementptr i8, ptr %1, i64 3, !dbg !69448
  %i.cr = load i32, ptr %i.cq, align 1, !dbg !69448
  %i.cs = xor i32 %i.cr, 1851876716, !dbg !69448
  %i.ct = or i32 %i.cp, %i.cs, !dbg !69448
  %i.cu = icmp ne i32 %i.ct, 0, !dbg !69448
  %i.cv = zext i1 %i.cu to i32, !dbg !69448
  %i.cw = icmp eq i32 %i.cv, 0, !dbg !69448
  br i1 %i.cw, label %bb.u, label %bb.al, !dbg !68711

bb.u:                                             ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 9, ptr %i.cx, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.v:                                             ; preds = %bb.j
  %i.cy = load i64, ptr %1, align 1, !dbg !69449
  %i.cz = icmp ne i64 %i.cy, 8319104461573420354, !dbg !69449
  %i.da = zext i1 %i.cz to i32, !dbg !69449
  %i.db = icmp eq i32 %i.da, 0, !dbg !69449
  br i1 %i.db, label %bb.w, label %bb.aj, !dbg !68718

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 10, ptr %i.dc, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.x:                                             ; preds = %bb.a
  %i.dd = load i16, ptr %1, align 1, !dbg !69450
  %i.de = xor i16 %i.dd, 25153, !dbg !69450
  %i.df = getelementptr i8, ptr %1, i64 2, !dbg !69450
end_hunk_0
begin_hunk_1_@_RINvXNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtB8_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1m_7Visitor9visit_strNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEBc_:bb.a
  br i1 %i.ajm, label %bb.gw, label %bb.hp, !dbg !69355

bb.gw:                                            ; preds = %bb.gv
  %i.ajn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 101, ptr %i.ajn, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.gx:                                            ; preds = %bb.fx
  %i.ajo = load i32, ptr %1, align 1, !dbg !69541
  %i.ajp = xor i32 %i.ajo, 1399682885, !dbg !69541
  %i.ajq = getelementptr i8, ptr %1, i64 4, !dbg !69541
  %i.ajr = load i16, ptr %i.ajq, align 1, !dbg !69541
  %i.ajs = zext i16 %i.ajr to i32, !dbg !69541
  %i.ajt = xor i32 %i.ajs, 28021, !dbg !69541
  %i.aju = or i32 %i.ajp, %i.ajt, !dbg !69541
  %i.ajv = icmp ne i32 %i.aju, 0, !dbg !69541
  %i.ajw = zext i1 %i.ajv to i32, !dbg !69541
  %i.ajx = icmp eq i32 %i.ajw, 0, !dbg !69541
  br i1 %i.ajx, label %bb.gy, label %bb.hb, !dbg !69362

bb.gy:                                            ; preds = %bb.gx
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 102, ptr %i.ajy, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.gz:                                            ; preds = %bb.ev
  %i.ajz = load i64, ptr %1, align 1, !dbg !69542
  %i.aka = icmp ne i64 %i.ajz, 8737666577730467653, !dbg !69542
  %i.akb = zext i1 %i.aka to i32, !dbg !69542
  %i.akc = icmp eq i32 %i.akb, 0, !dbg !69542
  br i1 %i.akc, label %bb.ha, label %bb.hs, !dbg !69369

bb.ha:                                            ; preds = %bb.gz
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 103, ptr %i.akd, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hb:                                            ; preds = %bb.gx
  %i.ake = load i32, ptr %1, align 1, !dbg !69543
  %i.akf = xor i32 %i.ake, 1399682885, !dbg !69543
  %i.akg = getelementptr i8, ptr %1, i64 4, !dbg !69543
  %i.akh = load i16, ptr %i.akg, align 1, !dbg !69543
  %i.aki = zext i16 %i.akh to i32, !dbg !69543
  %i.akj = xor i32 %i.aki, 25716, !dbg !69543
  %i.akk = or i32 %i.akf, %i.akj, !dbg !69543
  %i.akl = icmp ne i32 %i.akk, 0, !dbg !69543
  %i.akm = zext i1 %i.akl to i32, !dbg !69543
  %i.akn = icmp eq i32 %i.akm, 0, !dbg !69543
  br i1 %i.akn, label %bb.hc, label %bb.hd, !dbg !69376

bb.hc:                                            ; preds = %bb.hb
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 104, ptr %i.ako, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hd:                                            ; preds = %bb.hb
  %i.akp = load i32, ptr %1, align 1, !dbg !69544
  %i.akq = xor i32 %i.akp, 1450014533, !dbg !69544
  %i.akr = getelementptr i8, ptr %1, i64 4, !dbg !69544
  %i.aks = load i16, ptr %i.akr, align 1, !dbg !69544
  %i.akt = zext i16 %i.aks to i32, !dbg !69544
  %i.aku = xor i32 %i.akt, 29281, !dbg !69544
  %i.akv = or i32 %i.akq, %i.aku, !dbg !69544
  %i.akw = icmp ne i32 %i.akv, 0, !dbg !69544
  %i.akx = zext i1 %i.akw to i32, !dbg !69544
  %i.aky = icmp eq i32 %i.akx, 0, !dbg !69544
  br i1 %i.aky, label %bb.he, label %bb.hs, !dbg !69383

bb.he:                                            ; preds = %bb.hd
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 105, ptr %i.akz, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hf:                                            ; preds = %bb.gt
  %i.ala = load i32, ptr %1, align 1, !dbg !69545
  %i.alb = xor i32 %i.ala, 1819305298, !dbg !69545
  %i.alc = getelementptr i8, ptr %1, i64 3, !dbg !69545
  %i.ald = load i32, ptr %i.alc, align 1, !dbg !69545
  %i.ale = xor i32 %i.ald, 1701011820, !dbg !69545
  %i.alf = or i32 %i.alb, %i.ale, !dbg !69545
  %i.alg = icmp ne i32 %i.alf, 0, !dbg !69545
  %i.alh = zext i1 %i.alg to i32, !dbg !69545
  %i.ali = icmp eq i32 %i.alh, 0, !dbg !69545
  br i1 %i.ali, label %bb.hg, label %bb.hs, !dbg !69390

bb.hg:                                            ; preds = %bb.hf
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 106, ptr %i.alj, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hh:                                            ; preds = %bb.gp
  %i.alk = load i64, ptr %1, align 1, !dbg !69546
  %i.all = xor i64 %i.alk, 6009318547878077778, !dbg !69546
  %i.alm = getelementptr i8, ptr %1, i64 5, !dbg !69546
  %i.aln = load i64, ptr %i.alm, align 1, !dbg !69546
  %i.alo = xor i64 %i.aln, 8386662871392806243, !dbg !69546
  %i.alp = or i64 %i.all, %i.alo, !dbg !69546
  %i.alq = icmp ne i64 %i.alp, 0, !dbg !69546
  %i.alr = zext i1 %i.alq to i32, !dbg !69546
  %i.als = icmp eq i32 %i.alr, 0, !dbg !69546
  br i1 %i.als, label %bb.hi, label %bb.hs, !dbg !69397

bb.hi:                                            ; preds = %bb.hh
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 107, ptr %i.alt, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hj:                                            ; preds = %bb.fh
  %i.alu = load i64, ptr %1, align 1, !dbg !69547
  %i.alv = xor i64 %i.alu, 8522343649738252615, !dbg !69547
  %i.alw = getelementptr i8, ptr %1, i64 3, !dbg !69547
  %i.alx = load i64, ptr %i.alw, align 1, !dbg !69547
  %i.aly = xor i64 %i.alx, 8751168584579966312, !dbg !69547
  %i.alz = or i64 %i.alv, %i.aly, !dbg !69547
  %i.ama = icmp ne i64 %i.alz, 0, !dbg !69547
  %i.amb = zext i1 %i.ama to i32, !dbg !69547
  %i.amc = icmp eq i32 %i.amb, 0, !dbg !69547
  br i1 %i.amc, label %bb.hk, label %bb.hl, !dbg !69404

bb.hk:                                            ; preds = %bb.hj
  %i.amd = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 108, ptr %i.amd, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hl:                                            ; preds = %bb.hj
  %i.ame = load i64, ptr %1, align 1, !dbg !69548
  %i.amf = xor i64 %i.ame, 8102650230335956306, !dbg !69548
  %i.amg = getelementptr i8, ptr %1, i64 3, !dbg !69548
  %i.amh = load i64, ptr %i.amg, align 1, !dbg !69548
  %i.ami = xor i64 %i.amh, 8387235708328572014, !dbg !69548
  %i.amj = or i64 %i.amf, %i.ami, !dbg !69548
  %i.amk = icmp ne i64 %i.amj, 0, !dbg !69548
  %i.aml = zext i1 %i.amk to i32, !dbg !69548
  %i.amm = icmp eq i32 %i.aml, 0, !dbg !69548
  br i1 %i.amm, label %bb.hm, label %bb.hs, !dbg !69411

bb.hm:                                            ; preds = %bb.hl
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 109, ptr %i.amn, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hn:                                            ; preds = %bb.gr
  %i.amo = load i64, ptr %1, align 1, !dbg !69549
  %i.amp = xor i64 %i.amo, 8017362186960926789, !dbg !69549
  %i.amq = getelementptr i8, ptr %1, i64 6, !dbg !69549
  %i.amr = load i64, ptr %i.amq, align 1, !dbg !69549
  %i.ams = xor i64 %i.amr, 8389750308618530627, !dbg !69549
  %i.amt = or i64 %i.amp, %i.ams, !dbg !69549
  %i.amu = icmp ne i64 %i.amt, 0, !dbg !69549
  %i.amv = zext i1 %i.amu to i32, !dbg !69549
  %i.amw = icmp eq i32 %i.amv, 0, !dbg !69549
  br i1 %i.amw, label %bb.ho, label %bb.hs, !dbg !69418

bb.ho:                                            ; preds = %bb.hn
  %i.amx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 110, ptr %i.amx, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hp:                                            ; preds = %bb.gv
  %i.amy = load i64, ptr %1, align 1, !dbg !69550
  %i.amz = xor i64 %i.amy, 7237112451470683986, !dbg !69550
  %i.ana = getelementptr i8, ptr %1, i64 8, !dbg !69550
  %i.anb = load i8, ptr %i.ana, align 1, !dbg !69550
  %i.anc = zext i8 %i.anb to i64, !dbg !69550
  %i.and = xor i64 %i.anc, 101, !dbg !69550
  %i.ane = or i64 %i.amz, %i.and, !dbg !69550
  %i.anf = icmp ne i64 %i.ane, 0, !dbg !69550
  %i.ang = zext i1 %i.anf to i32, !dbg !69550
  %i.anh = icmp eq i32 %i.ang, 0, !dbg !69550
  br i1 %i.anh, label %bb.hq, label %bb.hr, !dbg !69425

bb.hq:                                            ; preds = %bb.hp
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 111, ptr %i.ani, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hr:                                            ; preds = %bb.hp
  %i.anj = load i64, ptr %1, align 1, !dbg !69551
  %i.ank = xor i64 %i.anj, 7237112412799201106, !dbg !69551
  %i.anl = getelementptr i8, ptr %1, i64 8, !dbg !69551
  %i.anm = load i8, ptr %i.anl, align 1, !dbg !69551
  %i.ann = zext i8 %i.anm to i64, !dbg !69551
  %i.ano = xor i64 %i.ann, 101, !dbg !69551
  %i.anp = or i64 %i.ank, %i.ano, !dbg !69551
  %i.anq = icmp ne i64 %i.anp, 0, !dbg !69551
  %i.anr = zext i1 %i.anq to i32, !dbg !69551
  %i.ans = icmp eq i32 %i.anr, 0, !dbg !69551
  br i1 %i.ans, label %bb.ht, label %bb.hs, !dbg !69432, !prof !4778

bb.hs:                                            ; preds = %bb.hn, %bb.hh, %bb.hf, %bb.gz, %bb.gj, %bb.gh, %bb.gf, %bb.fv, %bb.ft, %bb.fr, %bb.fp, %bb.dt, %bb.az, %bb.hl, %bb.hd, %bb.a, %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !69438
  call void @_RNvYNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorNtNtCs40veMcpUDl8_10serde_core2de5Error15unknown_variantCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @266, i64 noundef 113), !dbg !69438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !69438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !69439
  br label %bb.hu, !dbg !69439

bb.ht:                                            ; preds = %bb.hr
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69438
  store i8 112, ptr %i.ant, align 1, !dbg !69438
  store i8 9, ptr %0, align 8, !dbg !69438
  br label %bb.hu, !dbg !69439

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hq, %bb.ho, %bb.hm, %bb.hk, %bb.hi, %bb.hg, %bb.he, %bb.hc, %bb.ha, %bb.gy, %bb.gw, %bb.gu, %bb.gs, %bb.gq, %bb.go, %bb.gm, %bb.gk, %bb.gi, %bb.gg, %bb.ge, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fk, %bb.fi, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void, !dbg !69552
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtB8_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1m_7Visitor9visit_u64NtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 2)) %0, i64 noundef %1) unnamed_addr #1 !dbg !69553 !guid !69554 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  switch i64 %1, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
    i64 41, label %bb.ar
    i64 42, label %bb.as
    i64 43, label %bb.at
    i64 44, label %bb.au
    i64 45, label %bb.av
    i64 46, label %bb.aw
    i64 47, label %bb.ax
    i64 48, label %bb.ay
    i64 49, label %bb.az
    i64 50, label %bb.ba
    i64 51, label %bb.bb
    i64 52, label %bb.bc
    i64 53, label %bb.bd
    i64 54, label %bb.be
    i64 55, label %bb.bf
    i64 56, label %bb.bg
    i64 57, label %bb.bh
    i64 58, label %bb.bi
    i64 59, label %bb.bj
    i64 60, label %bb.bk
    i64 61, label %bb.bl
    i64 62, label %bb.bm
    i64 63, label %bb.bn
    i64 64, label %bb.bo
    i64 65, label %bb.bp
    i64 66, label %bb.bq
    i64 67, label %bb.br
    i64 68, label %bb.bs
    i64 69, label %bb.bt
    i64 70, label %bb.bu
    i64 71, label %bb.bv
    i64 72, label %bb.bw
    i64 73, label %bb.bx
    i64 74, label %bb.by
    i64 75, label %bb.bz
    i64 76, label %bb.ca
    i64 77, label %bb.cb
    i64 78, label %bb.cc
    i64 79, label %bb.cd
    i64 80, label %bb.ce
    i64 81, label %bb.cf
    i64 82, label %bb.cg
    i64 83, label %bb.ch
    i64 84, label %bb.ci
    i64 85, label %bb.cj
    i64 86, label %bb.ck
    i64 87, label %bb.cl
    i64 88, label %bb.cm
    i64 89, label %bb.cn
    i64 90, label %bb.co
    i64 91, label %bb.cp
    i64 92, label %bb.cq
    i64 93, label %bb.cr
    i64 94, label %bb.cs
    i64 95, label %bb.ct
    i64 96, label %bb.cu
    i64 97, label %bb.cv
    i64 98, label %bb.cw
    i64 99, label %bb.cx
    i64 100, label %bb.cy
    i64 101, label %bb.cz
    i64 102, label %bb.da
    i64 103, label %bb.db
    i64 104, label %bb.dc
    i64 105, label %bb.dd
    i64 106, label %bb.de
    i64 107, label %bb.df
    i64 108, label %bb.dg
    i64 109, label %bb.dh
    i64 110, label %bb.di
    i64 111, label %bb.dj
    i64 112, label %bb.dk
  ], !dbg !69556, !prof !69555

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !69556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !69556
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !69556
  store i64 %1, ptr %i.c, align 8, !dbg !69556
  store i8 1, ptr %i.a, align 8, !dbg !69556
  call void @_RNvYNtNtCs721FSB8TeJg_9rmp_serde6decode5ErrorNtNtCs40veMcpUDl8_10serde_core2de5Error13invalid_valueCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull @310, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @308), !dbg !69556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !69557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !69556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !69557
  br label %bb.dl, !dbg !69557

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 0, ptr %i.d, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 1, ptr %i.e, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 2, ptr %i.f, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 3, ptr %i.g, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 4, ptr %i.h, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 5, ptr %i.i, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.i:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 6, ptr %i.j, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.j:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 7, ptr %i.k, align 1, !dbg !69556
  store i8 9, ptr %0, align 8, !dbg !69556
  br label %bb.dl, !dbg !69557

bb.k:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !69556
  store i8 8, ptr %i.l, align 1, !dbg !69556
end_hunk_1
begin_hunk_2_@llvm.umin.i16
!68447 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68448 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68449 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68450 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68451 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68452 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68453 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68454 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68455 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68456 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68457 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68458 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68459 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68460 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68461 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68462 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68463 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68464 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68465 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68466 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68467 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68468 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68469 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68470 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68471 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68472 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68473 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68474 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68475 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68476 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68477 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68478 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68479 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68480 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68481 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68482 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68483 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68484 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68485 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68486 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68487 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68488 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68489 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68490 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68491 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68492 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68493 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68494 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68495 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68496 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68497 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68498 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68499 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68500 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68501 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68502 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68503 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68504 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68505 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68506 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68507 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68508 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68509 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68510 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68511 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68512 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68513 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68514 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68515 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68516 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68517 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68518 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68519 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68520 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68521 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68522 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68523 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68524 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68525 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68526 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68527 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68528 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68529 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68530 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68531 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68532 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68533 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68534 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68535 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68536 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68537 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68538 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68539 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68540 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68541 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68542 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68543 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68544 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68545 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68546 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68547 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68548 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68549 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68550 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68551 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68552 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68553 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68554 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68555 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68556 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68557 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68558 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68559 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68560 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68561 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68562 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68563 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68564 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68565 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68566 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68567 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68568 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68569 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68570 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68571 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68572 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68573 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68574 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68575 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68576 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68577 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68578 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68579 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68580 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68581 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68582 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68583 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68584 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68585 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68586 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68587 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68588 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68589 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68590 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68591 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68592 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68593 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68594 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68595 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68596 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68597 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68598 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68599 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68600 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68601 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68602 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68603 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68604 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68605 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68606 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68607 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68608 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68609 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68610 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68611 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68612 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68613 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68614 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68615 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68616 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68617 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68618 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68619 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68620 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68621 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68622 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68623 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68624 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68625 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68626 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68627 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68628 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68629 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68630 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68631 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68632 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68633 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68634 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68635 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68636 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68637 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68638 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68639 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68640 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68641 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68642 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68643 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68644 = distinct !DILexicalBlock(scope: !68420, file: !4854, line: 157, column: 13)
!68645 = distinct !DILexicalBlock(scope: !68416, file: !4854, line: 21, column: 9)
!68646 = !{i64 -8142811869148950243}
!68647 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!68648 = !DILocation(line: 82, column: 5, scope: !68415)
!68649 = !DILocation(line: 30, column: 9, scope: !68418, inlinedAt: !68648)
!68650 = !DILocation(line: 2124, column: 13, scope: !68419, inlinedAt: !68649)
!68651 = !DILocation(line: 25, column: 22, scope: !68417, inlinedAt: !68650)
!68652 = !DILexicalBlockFile(scope: !68423, file: !4854, discriminator: 2)
!68653 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 2)
!68654 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 2)
!68655 = !DILocation(line: 83, column: 5, scope: !68415)
!68656 = !DILocation(line: 30, column: 9, scope: !68654, inlinedAt: !68655)
!68657 = !DILocation(line: 2124, column: 13, scope: !68653, inlinedAt: !68656)
!68658 = !DILocation(line: 25, column: 22, scope: !68652, inlinedAt: !68657)
!68659 = !DILexicalBlockFile(scope: !68425, file: !4854, discriminator: 4)
!68660 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 4)
!68661 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 4)
!68662 = !DILocation(line: 85, column: 5, scope: !68415)
!68663 = !DILocation(line: 30, column: 9, scope: !68661, inlinedAt: !68662)
!68664 = !DILocation(line: 2124, column: 13, scope: !68660, inlinedAt: !68663)
!68665 = !DILocation(line: 25, column: 22, scope: !68659, inlinedAt: !68664)
!68666 = !DILexicalBlockFile(scope: !68427, file: !4854, discriminator: 6)
!68667 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 6)
!68668 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 6)
!68669 = !DILocation(line: 87, column: 5, scope: !68415)
!68670 = !DILocation(line: 30, column: 9, scope: !68668, inlinedAt: !68669)
!68671 = !DILocation(line: 2124, column: 13, scope: !68667, inlinedAt: !68670)
!68672 = !DILocation(line: 25, column: 22, scope: !68666, inlinedAt: !68671)
!68673 = !DILexicalBlockFile(scope: !68429, file: !4854, discriminator: 8)
!68674 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 8)
!68675 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 8)
!68676 = !DILocation(line: 88, column: 5, scope: !68415)
!68677 = !DILocation(line: 30, column: 9, scope: !68675, inlinedAt: !68676)
!68678 = !DILocation(line: 2124, column: 13, scope: !68674, inlinedAt: !68677)
!68679 = !DILocation(line: 25, column: 22, scope: !68673, inlinedAt: !68678)
!68680 = !DILexicalBlockFile(scope: !68431, file: !4854, discriminator: 10)
!68681 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 10)
!68682 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 10)
!68683 = !DILocation(line: 90, column: 5, scope: !68415)
!68684 = !DILocation(line: 30, column: 9, scope: !68682, inlinedAt: !68683)
!68685 = !DILocation(line: 2124, column: 13, scope: !68681, inlinedAt: !68684)
!68686 = !DILocation(line: 25, column: 22, scope: !68680, inlinedAt: !68685)
!68687 = !DILexicalBlockFile(scope: !68433, file: !4854, discriminator: 12)
!68688 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 12)
!68689 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 12)
!68690 = !DILocation(line: 92, column: 5, scope: !68415)
!68691 = !DILocation(line: 30, column: 9, scope: !68689, inlinedAt: !68690)
!68692 = !DILocation(line: 2124, column: 13, scope: !68688, inlinedAt: !68691)
!68693 = !DILocation(line: 25, column: 22, scope: !68687, inlinedAt: !68692)
!68694 = !DILexicalBlockFile(scope: !68435, file: !4854, discriminator: 14)
!68695 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 14)
!68696 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 14)
!68697 = !DILocation(line: 94, column: 5, scope: !68415)
!68698 = !DILocation(line: 30, column: 9, scope: !68696, inlinedAt: !68697)
!68699 = !DILocation(line: 2124, column: 13, scope: !68695, inlinedAt: !68698)
!68700 = !DILocation(line: 25, column: 22, scope: !68694, inlinedAt: !68699)
!68701 = !DILexicalBlockFile(scope: !68437, file: !4854, discriminator: 16)
!68702 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 16)
!68703 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 16)
!68704 = !DILocation(line: 96, column: 5, scope: !68415)
!68705 = !DILocation(line: 30, column: 9, scope: !68703, inlinedAt: !68704)
!68706 = !DILocation(line: 2124, column: 13, scope: !68702, inlinedAt: !68705)
!68707 = !DILocation(line: 25, column: 22, scope: !68701, inlinedAt: !68706)
!68708 = !DILexicalBlockFile(scope: !68439, file: !4854, discriminator: 18)
!68709 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 18)
!68710 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 18)
!68711 = !DILocation(line: 99, column: 5, scope: !68415)
!68712 = !DILocation(line: 30, column: 9, scope: !68710, inlinedAt: !68711)
!68713 = !DILocation(line: 2124, column: 13, scope: !68709, inlinedAt: !68712)
!68714 = !DILocation(line: 25, column: 22, scope: !68708, inlinedAt: !68713)
!68715 = !DILexicalBlockFile(scope: !68441, file: !4854, discriminator: 20)
!68716 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 20)
!68717 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 20)
!68718 = !DILocation(line: 101, column: 5, scope: !68415)
!68719 = !DILocation(line: 30, column: 9, scope: !68717, inlinedAt: !68718)
!68720 = !DILocation(line: 2124, column: 13, scope: !68716, inlinedAt: !68719)
!68721 = !DILocation(line: 25, column: 22, scope: !68715, inlinedAt: !68720)
!68722 = !DILexicalBlockFile(scope: !68443, file: !4854, discriminator: 22)
!68723 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 22)
!68724 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 22)
!68725 = !DILocation(line: 103, column: 5, scope: !68415)
!68726 = !DILocation(line: 30, column: 9, scope: !68724, inlinedAt: !68725)
!68727 = !DILocation(line: 2124, column: 13, scope: !68723, inlinedAt: !68726)
!68728 = !DILocation(line: 25, column: 22, scope: !68722, inlinedAt: !68727)
!68729 = !DILexicalBlockFile(scope: !68445, file: !4854, discriminator: 24)
!68730 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 24)
!68731 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 24)
!68732 = !DILocation(line: 104, column: 5, scope: !68415)
!68733 = !DILocation(line: 30, column: 9, scope: !68731, inlinedAt: !68732)
!68734 = !DILocation(line: 2124, column: 13, scope: !68730, inlinedAt: !68733)
!68735 = !DILocation(line: 25, column: 22, scope: !68729, inlinedAt: !68734)
!68736 = !DILexicalBlockFile(scope: !68447, file: !4854, discriminator: 26)
!68737 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 26)
!68738 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 26)
!68739 = !DILocation(line: 106, column: 5, scope: !68415)
!68740 = !DILocation(line: 30, column: 9, scope: !68738, inlinedAt: !68739)
!68741 = !DILocation(line: 2124, column: 13, scope: !68737, inlinedAt: !68740)
!68742 = !DILocation(line: 25, column: 22, scope: !68736, inlinedAt: !68741)
!68743 = !DILexicalBlockFile(scope: !68449, file: !4854, discriminator: 28)
!68744 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 28)
!68745 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 28)
!68746 = !DILocation(line: 111, column: 5, scope: !68415)
!68747 = !DILocation(line: 30, column: 9, scope: !68745, inlinedAt: !68746)
!68748 = !DILocation(line: 2124, column: 13, scope: !68744, inlinedAt: !68747)
!68749 = !DILocation(line: 25, column: 22, scope: !68743, inlinedAt: !68748)
!68750 = !DILexicalBlockFile(scope: !68451, file: !4854, discriminator: 30)
!68751 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 30)
!68752 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 30)
!68753 = !DILocation(line: 112, column: 5, scope: !68415)
!68754 = !DILocation(line: 30, column: 9, scope: !68752, inlinedAt: !68753)
!68755 = !DILocation(line: 2124, column: 13, scope: !68751, inlinedAt: !68754)
!68756 = !DILocation(line: 25, column: 22, scope: !68750, inlinedAt: !68755)
!68757 = !DILexicalBlockFile(scope: !68453, file: !4854, discriminator: 32)
!68758 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 32)
!68759 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 32)
!68760 = !DILocation(line: 114, column: 5, scope: !68415)
!68761 = !DILocation(line: 30, column: 9, scope: !68759, inlinedAt: !68760)
!68762 = !DILocation(line: 2124, column: 13, scope: !68758, inlinedAt: !68761)
!68763 = !DILocation(line: 25, column: 22, scope: !68757, inlinedAt: !68762)
!68764 = !DILexicalBlockFile(scope: !68455, file: !4854, discriminator: 34)
!68765 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 34)
!68766 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 34)
!68767 = !DILocation(line: 116, column: 5, scope: !68415)
!68768 = !DILocation(line: 30, column: 9, scope: !68766, inlinedAt: !68767)
!68769 = !DILocation(line: 2124, column: 13, scope: !68765, inlinedAt: !68768)
!68770 = !DILocation(line: 25, column: 22, scope: !68764, inlinedAt: !68769)
!68771 = !DILexicalBlockFile(scope: !68457, file: !4854, discriminator: 36)
!68772 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 36)
!68773 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 36)
!68774 = !DILocation(line: 118, column: 5, scope: !68415)
!68775 = !DILocation(line: 30, column: 9, scope: !68773, inlinedAt: !68774)
!68776 = !DILocation(line: 2124, column: 13, scope: !68772, inlinedAt: !68775)
!68777 = !DILocation(line: 25, column: 22, scope: !68771, inlinedAt: !68776)
!68778 = !DILexicalBlockFile(scope: !68459, file: !4854, discriminator: 38)
!68779 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 38)
!68780 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 38)
!68781 = !DILocation(line: 120, column: 5, scope: !68415)
!68782 = !DILocation(line: 30, column: 9, scope: !68780, inlinedAt: !68781)
!68783 = !DILocation(line: 2124, column: 13, scope: !68779, inlinedAt: !68782)
!68784 = !DILocation(line: 25, column: 22, scope: !68778, inlinedAt: !68783)
!68785 = !DILexicalBlockFile(scope: !68461, file: !4854, discriminator: 40)
!68786 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 40)
!68787 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 40)
!68788 = !DILocation(line: 125, column: 5, scope: !68415)
!68789 = !DILocation(line: 30, column: 9, scope: !68787, inlinedAt: !68788)
!68790 = !DILocation(line: 2124, column: 13, scope: !68786, inlinedAt: !68789)
!68791 = !DILocation(line: 25, column: 22, scope: !68785, inlinedAt: !68790)
!68792 = !DILexicalBlockFile(scope: !68463, file: !4854, discriminator: 42)
!68793 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 42)
!68794 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 42)
!68795 = !DILocation(line: 127, column: 5, scope: !68415)
!68796 = !DILocation(line: 30, column: 9, scope: !68794, inlinedAt: !68795)
!68797 = !DILocation(line: 2124, column: 13, scope: !68793, inlinedAt: !68796)
!68798 = !DILocation(line: 25, column: 22, scope: !68792, inlinedAt: !68797)
!68799 = !DILexicalBlockFile(scope: !68465, file: !4854, discriminator: 44)
!68800 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 44)
!68801 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 44)
!68802 = !DILocation(line: 129, column: 5, scope: !68415)
!68803 = !DILocation(line: 30, column: 9, scope: !68801, inlinedAt: !68802)
!68804 = !DILocation(line: 2124, column: 13, scope: !68800, inlinedAt: !68803)
!68805 = !DILocation(line: 25, column: 22, scope: !68799, inlinedAt: !68804)
!68806 = !DILexicalBlockFile(scope: !68467, file: !4854, discriminator: 46)
!68807 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 46)
!68808 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 46)
!68809 = !DILocation(line: 131, column: 5, scope: !68415)
!68810 = !DILocation(line: 30, column: 9, scope: !68808, inlinedAt: !68809)
!68811 = !DILocation(line: 2124, column: 13, scope: !68807, inlinedAt: !68810)
!68812 = !DILocation(line: 25, column: 22, scope: !68806, inlinedAt: !68811)
!68813 = !DILexicalBlockFile(scope: !68469, file: !4854, discriminator: 48)
!68814 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 48)
!68815 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 48)
!68816 = !DILocation(line: 132, column: 5, scope: !68415)
!68817 = !DILocation(line: 30, column: 9, scope: !68815, inlinedAt: !68816)
!68818 = !DILocation(line: 2124, column: 13, scope: !68814, inlinedAt: !68817)
!68819 = !DILocation(line: 25, column: 22, scope: !68813, inlinedAt: !68818)
!68820 = !DILexicalBlockFile(scope: !68471, file: !4854, discriminator: 50)
!68821 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 50)
!68822 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 50)
!68823 = !DILocation(line: 133, column: 5, scope: !68415)
!68824 = !DILocation(line: 30, column: 9, scope: !68822, inlinedAt: !68823)
!68825 = !DILocation(line: 2124, column: 13, scope: !68821, inlinedAt: !68824)
!68826 = !DILocation(line: 25, column: 22, scope: !68820, inlinedAt: !68825)
!68827 = !DILexicalBlockFile(scope: !68473, file: !4854, discriminator: 52)
!68828 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 52)
!68829 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 52)
!68830 = !DILocation(line: 135, column: 5, scope: !68415)
!68831 = !DILocation(line: 30, column: 9, scope: !68829, inlinedAt: !68830)
!68832 = !DILocation(line: 2124, column: 13, scope: !68828, inlinedAt: !68831)
!68833 = !DILocation(line: 25, column: 22, scope: !68827, inlinedAt: !68832)
!68834 = !DILexicalBlockFile(scope: !68475, file: !4854, discriminator: 54)
!68835 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 54)
!68836 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 54)
!68837 = !DILocation(line: 140, column: 5, scope: !68415)
!68838 = !DILocation(line: 30, column: 9, scope: !68836, inlinedAt: !68837)
!68839 = !DILocation(line: 2124, column: 13, scope: !68835, inlinedAt: !68838)
!68840 = !DILocation(line: 25, column: 22, scope: !68834, inlinedAt: !68839)
!68841 = !DILexicalBlockFile(scope: !68477, file: !4854, discriminator: 56)
!68842 = !DILexicalBlockFile(scope: !68419, file: !4850, discriminator: 56)
!68843 = !DILexicalBlockFile(scope: !68418, file: !5048, discriminator: 56)
!68844 = !DILocation(line: 144, column: 5, scope: !68415)
!68845 = !DILocation(line: 30, column: 9, scope: !68843, inlinedAt: !68844)
!68846 = !DILocation(line: 2124, column: 13, scope: !68842, inlinedAt: !68845)
!68847 = !DILocation(line: 25, column: 22, scope: !68841, inlinedAt: !68846)
end_hunk_2
