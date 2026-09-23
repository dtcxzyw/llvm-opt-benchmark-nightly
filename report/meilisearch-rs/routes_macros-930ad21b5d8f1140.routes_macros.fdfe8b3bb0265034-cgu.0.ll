Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/routes_macros-930ad21b5d8f1140.routes_macros.fdfe8b3bb0265034-cgu.0?download=true
inline.NumInlined: 3318
inline.NumDeleted: 1160
begin_hunk_0_@_ZN13routes_macros4path8try_path17h6bf1e18361c3edf6E:bb.a

.lr.ph784:                                        ; preds = %"_ZN4core3ptr65drop_in_place$LT$core..option..Option$LT$syn..lit..LitStr$GT$$GT$17ha8274737f9ae9407E.exit143", %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i146"
  %.sroa.0.0.i.i.i147783 = phi i64 [ %i.rd, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i146" ], [ 0, %"_ZN4core3ptr65drop_in_place$LT$core..option..Option$LT$syn..lit..LitStr$GT$$GT$17ha8274737f9ae9407E.exit143" ] ; 2 uses
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %.val.i144, i64 %.sroa.0.0.i.i.i147783
  %i.rd = add i64 %.sroa.0.0.i.i.i147783, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.rc)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i146" unwind label %bb.mg, !noalias !850

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i148": ; preds = %.lr.ph786
  %i.re = add i64 %.sroa.0.1.i.i.i149785, 1       ; 2 uses
  %i.rf = icmp eq i64 %i.re, %.val1.i145
  br i1 %i.rf, label %.body.i150, label %.lr.ph786

bb.mg:                                            ; preds = %.lr.ph784
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rh = icmp eq i64 %i.rd, %.val1.i145
  br i1 %i.rh, label %.body.i150, label %.lr.ph786

.lr.ph786:                                        ; preds = %bb.mg, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i148"
  %.sroa.0.1.i.i.i149785 = phi i64 [ %i.re, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i148" ], [ %i.rd, %bb.mg ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [32 x i8], ptr %.val.i144, i64 %.sroa.0.1.i.i.i149785
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ri)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i148" unwind label %bb.mh, !noalias !850

bb.mh:                                            ; preds = %.lr.ph786
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !850
  unreachable

.body.i150:                                       ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit7.i.i.i148", %bb.mg
  %.val4.i151 = load i64, ptr %i.cx, align 8, !range !71, !alias.scope !850, !noundef !69 ; 2 uses
  %i.rk = icmp eq i64 %.val4.i151, 0
  br i1 %i.rk, label %.body120, label %bb.mi

bb.mi:                                            ; preds = %.body.i150
  %i.rl = shl nuw i64 %.val4.i151, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i144, i64 noundef %i.rl, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !850
  br label %.body120

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i153": ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit.i.i.i146", %"_ZN4core3ptr65drop_in_place$LT$core..option..Option$LT$syn..lit..LitStr$GT$$GT$17ha8274737f9ae9407E.exit143"
  %.val2.i154 = load i64, ptr %i.cx, align 8, !range !71, !alias.scope !850, !noundef !69 ; 2 uses
  %i.rm = icmp eq i64 %.val2.i154, 0
  br i1 %i.rm, label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit157", label %bb.mj

bb.mj:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i153"
  %i.rn = shl nuw i64 %.val2.i154, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i144, i64 noundef %i.rn, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !850
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit157"

"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit157": ; preds = %bb.mj, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h471cb028e85841f0E.exit.i153"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.ro = trunc nuw i8 %.sroa.018.6 to i1
  br i1 %i.ro, label %bb.mk, label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit159"

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit159": ; preds = %bb.mk, %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit157"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  %i.rp = trunc nuw i8 %.sroa.020.8 to i1
  %i.rq = load i32, ptr %i.cz, align 4
  %i.rr = icmp ne i32 %i.rq, 0
  %or.cond236.not = select i1 %i.rp, i1 %i.rr, i1 false
  br i1 %or.cond236.not, label %bb.ml, label %"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit"

bb.mk:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$proc_macro2..TokenStream$GT$$GT$17h1879c741e64e6fffE.exit157"
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit159" unwind label %bb.b

bb.ml:                                            ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit159"
  call void @"_ZN81_$LT$proc_macro..bridge..client..TokenStream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h144b9efbd9439ae7E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.cz)
  br label %"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit"

bb.mm:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr34drop_in_place$LT$syn..ty..Type$GT$17h580a89232a59ced6E"(ptr noalias noundef align 8 dereferenceable(224) %i.cv) #30
          to label %bb.mc unwind label %bb.jk

bb.mn:                                            ; preds = %.body120
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cy)
          to label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit161" unwind label %bb.jk

"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit163": ; preds = %.body.i119, %bb.lp, %bb.mo, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit161"
  %.pn61232 = phi { ptr, i32 } [ %.pn61, %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit161" ], [ %i.qd, %.body.i119 ], [ %.pn61, %bb.mo ], [ %i.qd, %bb.lp ]
  resume { ptr, i32 } %.pn61232

bb.mo:                                            ; preds = %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit161"
  invoke void @"_ZN81_$LT$proc_macro..bridge..client..TokenStream$u20$as$u20$core..ops..drop..Drop$GT$4drop17h144b9efbd9439ae7E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.cz)
          to label %"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit163" unwind label %bb.jk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN13routes_macros6routes10try_routes17he4d42556f3619d4bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, i32 noundef range(i32 1, 0) %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 21 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 14 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 14 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 20 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 38 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 21 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 16 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [32 x i8], align 8               ; 41 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 16 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 4 uses
  %i.ax = alloca [32 x i8], align 8               ; 9 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 12 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [8 x i8], align 8                ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [48 x i8], align 8               ; 13 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 12 uses
  %i.bj = alloca [24 x i8], align 8               ; 8 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %i.bm = alloca [24 x i8], align 8               ; 12 uses
  %i.bn = alloca [40 x i8], align 8               ; 8 uses
  %i.bo = alloca [32 x i8], align 8               ; 12 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 5 uses
  %i.br = alloca [32 x i8], align 8               ; 4 uses
  %i.bs = alloca [32 x i8], align 8               ; 10 uses
  %i.bt = alloca [24 x i8], align 8               ; 5 uses
  %i.bu = alloca [32 x i8], align 8               ; 4 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [24 x i8], align 8               ; 9 uses
  %i.bx = alloca [24 x i8], align 8               ; 7 uses
  %i.by = alloca [80 x i8], align 8               ; 12 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [240 x i8], align 8              ; 9 uses
  %i.cc = alloca [240 x i8], align 8              ; 9 uses
  %i.cd = alloca [32 x i8], align 8               ; 14 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [32 x i8], align 8               ; 5 uses
  %i.cg = alloca [32 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 4 uses
  %i.cj = alloca [72 x i8], align 8               ; 5 uses
  %i.ck = alloca [72 x i8], align 8               ; 6 uses
  %i.cl = alloca [32 x i8], align 8               ; 8 uses
  %i.cm = alloca [24 x i8], align 8               ; 11 uses
  %i.cn = alloca [80 x i8], align 8               ; 6 uses
  %i.co = alloca [48 x i8], align 8               ; 8 uses
  %i.cp = alloca [24 x i8], align 8               ; 7 uses
  %i.cq = alloca [72 x i8], align 8               ; 9 uses
  %i.cr = alloca [72 x i8], align 8               ; 9 uses
  %i.cs = alloca [32 x i8], align 8               ; 12 uses
  %i.ct = alloca [24 x i8], align 8               ; 6 uses
  %i.cu = alloca [80 x i8], align 8               ; 11 uses
  %.sroa.13285.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.cv = alloca [24 x i8], align 8               ; 7 uses
  %i.cw = alloca [72 x i8], align 8               ; 8 uses
  %i.cx = alloca [32 x i8], align 8               ; 10 uses
  %i.cy = alloca [32 x i8], align 8               ; 11 uses
  %i.cz = alloca [56 x i8], align 8               ; 8 uses
  %i.da = alloca [32 x i8], align 8               ; 12 uses
  %i.db = alloca [24 x i8], align 8               ; 7 uses
  %i.dc = alloca [72 x i8], align 8               ; 10 uses
  %i.dd = alloca [72 x i8], align 8               ; 8 uses
  %i.de = alloca [296 x i8], align 8              ; 21 uses
  %i.df = alloca [24 x i8], align 8               ; 7 uses
  %i.dg = alloca [24 x i8], align 8               ; 7 uses
  %i.dh = alloca [296 x i8], align 8              ; 6 uses
  %i.di = alloca [32 x i8], align 8               ; 7 uses
  %i.dj = alloca [296 x i8], align 8              ; 6 uses
  %i.dk = alloca [24 x i8], align 8               ; 10 uses
  %i.dl = alloca [32 x i8], align 8               ; 9 uses
  %i.dm = alloca [296 x i8], align 8              ; 5 uses
  %i.dn = alloca [296 x i8], align 8              ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 8 uses
  %i.dp = alloca [24 x i8], align 8               ; 11 uses
  %i.dq = alloca [304 x i8], align 8              ; 6 uses
  %i.dr = alloca [48 x i8], align 8               ; 8 uses
  %i.ds = alloca [24 x i8], align 8               ; 8 uses
  %i.dt = alloca [296 x i8], align 8              ; 11 uses
  %.sroa.31.i.i.i.i = alloca [264 x i8], align 8  ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 13 uses
  %i.dv = alloca [24 x i8], align 8               ; 4 uses
  %i.dw = alloca [24 x i8], align 8               ; 4 uses
  %i.dx = alloca [32 x i8], align 8               ; 6 uses
  %i.dy = alloca [32 x i8], align 8               ; 6 uses
  %i.dz = alloca [32 x i8], align 8               ; 4 uses
  %i.ea = alloca [32 x i8], align 8               ; 4 uses
  %i.eb = alloca [32 x i8], align 8               ; 6 uses
  %i.ec = alloca [32 x i8], align 8               ; 4 uses
  %i.ed = alloca [32 x i8], align 8               ; 7 uses
  %i.ee = alloca [32 x i8], align 8               ; 5 uses
  %i.ef = alloca [32 x i8], align 8               ; 7 uses
  %i.eg = alloca [32 x i8], align 8               ; 10 uses
  %i.eh = alloca [56 x i8], align 8               ; 8 uses
  %i.ei = alloca [32 x i8], align 8               ; 9 uses
  %i.ej = alloca [80 x i8], align 8               ; 11 uses
  %i.ek = alloca [24 x i8], align 8               ; 6 uses
  %i.el = alloca [80 x i8], align 8               ; 11 uses
  %i.em = alloca [24 x i8], align 8               ; 6 uses
  %i.en = alloca [24 x i8], align 8               ; 7 uses
  %i.eo = alloca [24 x i8], align 8               ; 7 uses
  %i.ep = alloca [32 x i8], align 8               ; 10 uses
  %i.eq = alloca [56 x i8], align 8               ; 8 uses
  %i.er = alloca [32 x i8], align 8               ; 16 uses
  %i.es = alloca [24 x i8], align 8               ; 8 uses
  %i.et = alloca [56 x i8], align 8               ; 20 uses
  %i.eu = alloca [48 x i8], align 8               ; 10 uses
  %i.ev = alloca [24 x i8], align 8               ; 6 uses
  %i.ew = alloca [24 x i8], align 8               ; 6 uses
  %i.ex = alloca [32 x i8], align 8               ; 20 uses
  %i.ey = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.4393 = alloca [24 x i8], align 8         ; 4 uses
  %i.ez = alloca [40 x i8], align 8               ; 9 uses
  %i.fa = alloca [24 x i8], align 8               ; 6 uses
  %i.fb = alloca [80 x i8], align 8               ; 4 uses
  %i.fc = alloca [24 x i8], align 8               ; 5 uses
  %i.fd = alloca [80 x i8], align 8               ; 4 uses
  %i.fe = alloca [24 x i8], align 8               ; 6 uses
  %i.ff = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.744 = alloca [24 x i8], align 8          ; 5 uses
  %i.fg = alloca [32 x i8], align 8               ; 8 uses
  %i.fh = alloca [200 x i8], align 8              ; 20 uses
  %i.fi = alloca [32 x i8], align 8               ; 8 uses
  %i.fj = alloca [32 x i8], align 8               ; 7 uses
  %i.fk = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.029 = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.733 = alloca [7 x i8], align 1           ; 5 uses
  %i.fl = alloca [24 x i8], align 8               ; 10 uses
  %i.fm = alloca [32 x i8], align 8               ; 7 uses
  %i.fn = alloca [32 x i8], align 8               ; 4 uses
  %i.fo = alloca [32 x i8], align 8               ; 14 uses
  %i.fp = alloca [32 x i8], align 8               ; 4 uses
  %i.fq = alloca [32 x i8], align 8               ; 7 uses
  %i.fr = alloca [32 x i8], align 8               ; 4 uses
  %i.fs = alloca [32 x i8], align 8               ; 8 uses
  %i.ft = alloca [32 x i8], align 8               ; 4 uses
  %i.fu = alloca [32 x i8], align 8               ; 7 uses
  %i.fv = alloca [32 x i8], align 8               ; 4 uses
  %i.fw = alloca [32 x i8], align 8               ; 12 uses
  %i.fx = alloca [32 x i8], align 8               ; 2 uses
  %i.fy = alloca [32 x i8], align 8               ; 6 uses
  %i.fz = alloca [32 x i8], align 8               ; 4 uses
  %i.ga = alloca [32 x i8], align 8               ; 14 uses
  %i.gb = alloca [32 x i8], align 8               ; 4 uses
  %i.gc = alloca [32 x i8], align 8               ; 9 uses
  %i.gd = alloca [32 x i8], align 8               ; 4 uses
  %i.ge = alloca [32 x i8], align 8               ; 12 uses
  %i.gf = alloca [32 x i8], align 8               ; 6 uses
  %i.gg = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.8360 = alloca [48 x i8], align 8         ; 2 uses
  %i.gh = alloca [8 x i8], align 8                ; 8 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 9 uses
  %.sroa.13 = alloca [208 x i8], align 8          ; 5 uses
  %.sroa.710.sroa.7 = alloca [16 x i8], align 8   ; 7 uses
  %i.gi = alloca [240 x i8], align 8              ; 12 uses
  %i.gj = alloca [32 x i8], align 8               ; 4 uses
  %i.gk = alloca [24 x i8], align 8               ; 13 uses
  %i.gl = alloca [24 x i8], align 8               ; 10 uses
  %i.gm = alloca [32 x i8], align 8               ; 9 uses
  %i.gn = alloca [4 x i8], align 4                ; 6 uses
  store i32 %2, ptr %i.gn, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  invoke void @"_ZN95_$LT$proc_macro2..TokenStream$u20$as$u20$core..convert..From$LT$proc_macro..TokenStream$GT$$GT$4from17hb1763b2acb2d7528E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.gm, i32 noundef %1)
          to label %bb.c unwind label %bb.b

"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit322": ; preds = %.body252.thread548, %.body252, %bb.b
  %.sroa.052.0 = phi i8 [ %.sroa.052.1, %bb.b ], [ %.sroa.052.6, %.body252 ], [ %.sroa.052.6, %.body252.thread548 ]
  %.pn130 = phi { ptr, i32 } [ %i.gr, %bb.b ], [ %.pn128, %.body252 ], [ %.pn128, %.body252.thread548 ] ; 2 uses
  %i.go = trunc nuw i8 %.sroa.052.0 to i1
  %i.gp = load i32, ptr %i.gn, align 4
  %i.gq = icmp ne i32 %i.gp, 0
  %or.cond566.not = select i1 %i.go, i1 %i.gq, i1 false
  br i1 %or.cond566.not, label %bb.adg, label %"_ZN4core3ptr44drop_in_place$LT$proc_macro..TokenStream$GT$17hebda6fb383036884E.exit324"

bb.b:                                             ; preds = %bb.add, %bb.a
  %.sroa.052.1 = phi i8 [ %.sroa.052.8538, %bb.add ], [ 1, %bb.a ]
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr45drop_in_place$LT$proc_macro2..TokenStream$GT$17h0e47506e1e196136E.exit322"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl)
  store i64 0, ptr %i.gl, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 3 uses
  store i64 0, ptr %i.gt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gk)
  store i64 0, ptr %i.gk, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 6 uses
  store i64 0, ptr %i.gv, align 8
  %i.gw = invoke noundef zeroext i1 @_ZN11proc_macro211TokenStream8is_empty17h69fc3d676fa02444E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gm)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %.body.i.i, %common.resume.sink.split.i.i, %.body28.i, %common.resume.sink.split.i, %bb.d, %.body271
  %.sroa.0.0 = phi ptr [ %.sroa.0.19, %.body271 ], [ %.sroa.0.19, %common.resume.sink.split.i.i ], [ %.sroa.0.4, %.body28.i ], [ %.sroa.0.19, %.body.i.i ], [ %.sroa.0.1, %bb.d ], [ %.sroa.0.15, %common.resume.sink.split.i ] ; 2 uses
  %.sroa.050.0 = phi i8 [ 0, %.body271 ], [ 0, %common.resume.sink.split.i.i ], [ 0, %.body28.i ], [ 0, %.body.i.i ], [ %.sroa.050.1, %bb.d ], [ 0, %common.resume.sink.split.i ] ; 2 uses
  %.sroa.048.0 = phi i8 [ %.sroa.048.2, %.body271 ], [ 1, %common.resume.sink.split.i.i ], [ 1, %.body28.i ], [ 1, %.body.i.i ], [ %.sroa.048.1, %bb.d ], [ 1, %common.resume.sink.split.i ]
  %.sroa.052.2 = phi i8 [ 0, %.body271 ], [ 0, %common.resume.sink.split.i.i ], [ 1, %.body28.i ], [ 0, %.body.i.i ], [ %.sroa.052.3, %bb.d ], [ 1, %common.resume.sink.split.i ] ; 2 uses
  %.pn122 = phi { ptr, i32 } [ %.pn120, %.body271 ], [ %common.resume.op.ph.i.i, %common.resume.sink.split.i.i ], [ %.pn9.i, %.body28.i ], [ %.pn8.i.i, %.body.i.i ], [ %i.gz, %bb.d ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ] ; 2 uses
  %i.gx = icmp ne ptr %.sroa.0.0, null
  %i.gy = trunc nuw i8 %.sroa.048.0 to i1
  %or.cond3 = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %or.cond3, label %bb.adf, label %.body.thread

bb.d:                                             ; preds = %bb.acp, %.noexc142, %bb.ke, %bb.jz, %bb.f, %bb.acn, %bb.ace, %bb.abd, %bb.lt, %bb.kd, %bb.c
  %.sroa.0.1 = phi ptr [ null, %bb.acp ], [ null, %bb.acn ], [ null, %bb.jz ], [ %.sroa.0.19, %bb.lt ], [ %.sroa.0.19, %bb.ace ], [ %.sroa.0.19, %bb.abd ], [ %.sroa.0.19, %.noexc142 ], [ %.sroa.0.19, %bb.ke ], [ %.sroa.0.19, %bb.kd ], [ null, %bb.f ], [ null, %bb.c ]
  %.sroa.050.1 = phi i8 [ 1, %bb.acp ], [ 1, %bb.acn ], [ 1, %bb.jz ], [ 0, %bb.lt ], [ 0, %bb.ace ], [ 0, %bb.abd ], [ 0, %.noexc142 ], [ 0, %bb.ke ], [ 0, %bb.kd ], [ 0, %bb.f ], [ 1, %bb.c ]
  %.sroa.048.1 = phi i8 [ 1, %bb.acp ], [ 1, %bb.acn ], [ 1, %bb.jz ], [ 1, %bb.lt ], [ %.sroa.048.4, %bb.ace ], [ 0, %bb.abd ], [ 1, %.noexc142 ], [ 1, %bb.ke ], [ 1, %bb.kd ], [ 1, %bb.f ], [ 1, %bb.c ]
  %.sroa.052.3 = phi i8 [ 1, %bb.acp ], [ 1, %bb.acn ], [ 1, %bb.jz ], [ 0, %bb.lt ], [ 0, %bb.ace ], [ 0, %bb.abd ], [ 0, %.noexc142 ], [ 0, %bb.ke ], [ 1, %bb.kd ], [ 1, %bb.f ], [ 1, %bb.c ]
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  br i1 %i.gw, label %bb.jz, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.ha = invoke { ptr, i64 } @_ZN3syn6buffer11TokenBuffer4new217h69885eb8f418b88fE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.gj)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.hb = extractvalue { ptr, i64 } %i.ha, 0      ; 10 uses
  %i.hc = extractvalue { ptr, i64 } %i.ha, 1      ; 12 uses
  store ptr %i.hb, ptr %i.ey, align 8, !noalias !1597
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !noalias !1597
  invoke void @_ZN3syn5parse22tokens_to_parse_buffer17h9d25b1f5b0fc1066E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey)
          to label %bb.h unwind label %bb.g, !noalias !1597

.body28.i:                                        ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jd, %bb.jc, %bb.jb, %.body.i, %bb.g
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %bb.g ], [ %.sroa.0.17, %bb.jb ], [ %.sroa.0.17, %bb.jd ], [ %.sroa.0.17, %bb.jc ], [ %.sroa.0.7, %.body.i ], [ %.sroa.0.14, %bb.jn ], [ %.sroa.0.14, %bb.jp ], [ %.sroa.0.14, %bb.jo ]
  %.pn9.i = phi { ptr, i32 } [ %i.he, %bb.g ], [ %i.ww, %bb.jb ], [ %i.ww, %bb.jd ], [ %i.ww, %bb.jc ], [ %.pn.i, %.body.i ], [ %i.yb, %bb.jn ], [ %i.yb, %bb.jp ], [ %i.yb, %bb.jo ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$syn..buffer..TokenBuffer$GT$17h908ec7d04596892fE"(ptr %i.hb, i64 %i.hc) #30
          to label %.body unwind label %bb.jy, !noalias !1597

bb.g:                                             ; preds = %bb.js, %bb.jg, %.noexc
  %.sroa.0.3 = phi ptr [ %.sroa.0.17, %bb.jg ], [ %.sroa.0.14, %bb.js ], [ null, %.noexc ]
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

bb.h:                                             ; preds = %.noexc
  %i.hf = invoke noundef zeroext i1 @_ZN3syn5parse11ParseBuffer8is_empty17hb7c71bb822fae34cE(ptr noundef nonnull align 8 %i.ex)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1597

.noexc.i:                                         ; preds = %bb.h
  br i1 %i.hf, label %"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0d742bdb0bb3b772E.exit.i", label %bb.i

bb.i:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !1598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !1598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !1598
  %.sroa.4.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx22.i.i.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.37.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dq, i64 296
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.de, i64 288 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.de, i64 96 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.de, i64 144 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.de, i64 240 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.37.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %.sroa.627.0..sroa_idx28.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.627.sroa.7.0..sroa.627.0..sroa_idx28.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %.sroa.627.sroa.8.0..sroa.627.0..sroa_idx28.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %.sroa.627.sroa.8.i.sroa.7.0..sroa.627.sroa.8.0..sroa.627.0..sroa_idx28.sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i139.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i140.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.426.0..sroa_idx27.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.5.0..sroa_idx.i143.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %.sroa.29.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %.sroa.31.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.sroa.621.i.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.665.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %.sroa.823.0..sroa_idx24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %.sroa.621.0..sroa_idx22.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.621.i.sroa.8.0..sroa.621.0..sroa_idx22.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %.sroa.23.8..sroa.26.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %.sroa.29.8..sroa.26.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.hx = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 8 uses
  %.sroa.638.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.547.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.648.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.613.0..sroa_idx14.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %.sroa.10.8..sroa.4.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %.sroa.11.8..sroa.4.0..sroa_idx2.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %.sroa.23.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.29.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.11.0..sroa_idx284.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.sroa.13285.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %.sroa.17.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %.sroa.19.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %.sroa.23.8..sroa_idx211.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.29.8..sroa_idx222.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.23.8..sroa_idx213.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.29.8..sroa_idx224.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.23.8..sroa_idx215.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.29.8..sroa_idx226.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.613.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %.sroa.11.sroa.8.0..sroa.613.0..sroa_idx14.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %.sroa.6.sroa.8.sroa.7.0..sroa.6.sroa.8.0..sroa.6.0..sroa_idx2.sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i110.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i111.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.sroa.426.0..sroa_idx27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.5176.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %.sroa.6177.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.7178.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.ib = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 8 uses
  %.sroa.13.0..sroa_idx42.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %.sroa.18.0..sroa_idx49.i.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %.sroa.3.0..sroa_idx.i96.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.5.0..sroa_idx.i97.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ih = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %.sroa.2.0..sroa_idx.i98.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %.sroa.36.0..sroa_idx.i99.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %.sroa.13.0..sroa_idx40.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.18.0..sroa_idx47.i.i.i = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ej, i64 72
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %.sroa.36.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %.sroa.13.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.18.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.sroa.624.i.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.sroa.624.i.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.624.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %.sroa.624.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.in = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 8 uses
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.noexc24.i, %bb.i
  %.sroa.0.8 = phi ptr [ null, %bb.i ], [ %.sroa.0.11, %.noexc24.i ] ; 17 uses
  %i.io = phi i64 [ 0, %bb.i ], [ %i.wb, %.noexc24.i ] ; 8 uses
  %i.ip = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.wc, %.noexc24.i ] ; 8 uses
  %i.iq = phi i64 [ 0, %bb.i ], [ %i.wd, %.noexc24.i ] ; 8 uses
  invoke void @_ZN3syn4meta15parse_meta_path17h9ac70269c8c75d15E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.eu, ptr noundef nonnull align 8 %i.ex)
          to label %.noexc18.i unwind label %.loopexit.i, !noalias !1597

.noexc18.i:                                       ; preds = %bb.j
  %i.ir = load i64, ptr %i.eu, align 8, !range !72, !alias.scope !1599, !noalias !1600, !noundef !69 ; 2 uses
  %i.is = icmp eq i64 %i.ir, -9223372036854775808
  br i1 %i.is, label %"_ZN3syn4meta6parser28_$u7b$$u7b$closure$u7d$$u7d$17hf6c84c4f670797d1E.exit.i", label %bb.k

bb.k:                                             ; preds = %.noexc18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx22.i.i.i, i64 16, i1 false), !noalias !1601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.2.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx21.i.i.i, i64 24, i1 false), !noalias !1601
  store i64 %i.ir, ptr %i.et, align 8, !noalias !1601
  store ptr %i.ex, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !1601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !1601
  %i.it = invoke noundef align 8 dereferenceable_or_null(24) ptr @_ZN3syn4path4Path9get_ident17h065765bfde55475fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.k
  %.not.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.thread.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i.i
  %i.iu = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.it, ptr nonnull readonly align 1 @10, i64 6)
          to label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602

.body.i.i.i.i:                                    ; preds = %.thread301.i.i.i.i, %bb.ij, %bb.ii, %bb.ih, %bb.gw, %bb.gv, %bb.gu, %bb.bx, %bb.bm, %bb.bh, %.thread.i.i.i.i, %bb.az, %bb.ay, %bb.ax, %bb.af, %bb.ae, %bb.ad, %bb.x, %bb.v, %bb.s, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.pn60.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i.i, %bb.x ], [ %.pn58300.i.i.i.i, %.thread301.i.i.i.i ], [ %i.ll, %bb.bx ], [ %i.vm, %bb.ih ], [ %.pn55293.i.i.i.i, %.thread.i.i.i.i ], [ %i.sj, %bb.gu ], [ %i.jb, %bb.s ], [ %i.kw, %bb.bh ], [ %i.lb, %bb.bm ], [ %i.jd, %bb.v ], [ %i.vm, %bb.ii ], [ %i.sj, %bb.gw ], [ %i.sj, %bb.gv ], [ %i.vm, %bb.ij ], [ %i.jj, %bb.ad ], [ %i.kg, %bb.ax ], [ %i.jj, %bb.af ], [ %i.jj, %bb.ae ], [ %i.kg, %bb.az ], [ %i.kg, %bb.ay ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr36drop_in_place$LT$syn..path..Path$GT$17h1ec004aa5b68f134E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.et)
          to label %.body.i unwind label %bb.be, !noalias !1602

.loopexit.i.i.i:                                  ; preds = %bb.im, %bb.gz, %bb.br, %bb.bn, %bb.bk, %bb.bi, %bb.bf, %bb.bc, %bb.ai, %bb.u, %bb.r, %bb.q, %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.thread.i.i.i.i, %bb.p, %bb.o, %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.thread.i.i.i.i, %bb.m, %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.thread.i.i.i.i, %bb.l, %bb.k
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.invoke.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.i.i.i.i: ; preds = %bb.l
  br i1 %i.iu, label %bb.n, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.thread.i.i.i.i

_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.thread.i.i.i.i: ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.i.i.i.i, %.noexc.i.i.i.i
  %i.iv = invoke noundef align 8 dereferenceable_or_null(24) ptr @_ZN3syn4path4Path9get_ident17h065765bfde55475fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et)
          to label %.noexc66.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602 ; 2 uses

.noexc66.i.i.i.i:                                 ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.thread.i.i.i.i
  %.not.i64.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i64.i.i.i.i, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.thread.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc66.i.i.i.i
  %i.iw = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iv, ptr nonnull readonly align 1 @24, i64 3)
          to label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602

bb.n:                                             ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !1603
  invoke void @_ZN3syn5group12parse_parens17hb8682afe7d63064dE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.eq, ptr noundef nonnull align 8 %i.ex)
          to label %bb.by unwind label %bb.bx, !noalias !1602

_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.i.i.i.i: ; preds = %bb.m
  br i1 %i.iw, label %bb.p, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.thread.i.i.i.i

_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.thread.i.i.i.i: ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.i.i.i.i, %.noexc66.i.i.i.i
  %i.ix = invoke noundef align 8 dereferenceable_or_null(24) ptr @_ZN3syn4path4Path9get_ident17h065765bfde55475fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et)
          to label %.noexc71.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602 ; 2 uses

.noexc71.i.i.i.i:                                 ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.thread.i.i.i.i
  %.not.i69.i.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i69.i.i.i.i, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.thread.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc71.i.i.i.i
  %i.iy = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ix, ptr nonnull readonly align 1 @52, i64 5)
          to label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602

bb.p:                                             ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit68.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !1603
  invoke void @_ZN3syn4meta15ParseNestedMeta5value17h9e86138bd0290f6dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et)
          to label %bb.bp unwind label %.loopexit.i.i.i, !noalias !1602

_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.i.i.i.i: ; preds = %bb.o
  br i1 %i.iy, label %bb.r, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.thread.i.i.i.i

_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.thread.i.i.i.i: ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.i.i.i.i, %.noexc71.i.i.i.i
  %i.iz = invoke noundef align 8 dereferenceable_or_null(24) ptr @_ZN3syn4path4Path9get_ident17h065765bfde55475fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et)
          to label %.noexc76.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602 ; 2 uses

.noexc76.i.i.i.i:                                 ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.thread.i.i.i.i
  %.not.i74.i.i.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i74.i.i.i.i, label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit78.thread.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.noexc76.i.i.i.i
  %i.ja = invoke fastcc noundef zeroext i1 @"_ZN73_$LT$proc_macro2..imp..Ident$u20$as$u20$core..cmp..PartialEq$LT$T$GT$$GT$2eq17h95d29691888da16aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iz, ptr nonnull readonly align 1 @53, i64 4)
          to label %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit78.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602

bb.r:                                             ; preds = %_ZN3syn4path4Path8is_ident17ha917d214012bfb69E.exit73.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !1603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !1604
  invoke void @_ZN11proc_macro211TokenStream3new17h519b395672087979E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dy)
          to label %.noexc79.i.i.i.i unwind label %.loopexit.i.i.i, !noalias !1602

.noexc79.i.i.i.i:                                 ; preds = %bb.r
  invoke void @"_ZN3syn4path8printing72_$LT$impl$u20$quote..to_tokens..ToTokens$u20$for$u20$syn..path..Path$GT$9to_tokens17h017bfc140fc0e33dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %bb.bk unwind label %bb.s, !noalias !1605

bb.s:                                             ; preds = %.noexc79.i.i.i.i
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$proc_macro2..imp..TokenStream$GT$17hb0e40aff324c4c1bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %.body.i.i.i.i unwind label %bb.t, !noalias !1605

end_hunk_0
begin_hunk_1_@_ZN13routes_macros6routes10try_routes17he4d42556f3619d4bE:bb.a
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pj, i64 noundef 89, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1723
  br label %.thread138.i.i.i.i.i

_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit19.i.i.i.i.i: ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h16338ab50a3248f5E.exit.i14.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13285.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false), !noalias !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !1714
  br label %_ZN13routes_macros6routes5Route5check17ha69948bf71b7f280E.exit.i.i.i.i

_ZN13routes_macros6routes5Route5check17ha69948bf71b7f280E.exit.i.i.i.i: ; preds = %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit19.i.i.i.i.i, %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit.i.i.i.i.i
  %.sroa.0283.0.i.i.i.i = phi i64 [ 131, %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit.i.i.i.i.i ], [ 89, %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit19.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.i.i.i.i = phi ptr [ %i.pe, %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit.i.i.i.i.i ], [ %i.pj, %_ZN23proc_macro2_diagnostics10diagnostic10Diagnostic7spanned17h788daa098e69ebfaE.exit19.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !1654
  store i64 %.sroa.0283.0.i.i.i.i, ptr %i.cu, align 8, !noalias !1654
  store ptr %.sroa.9.0.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i64 %.sroa.0283.0.i.i.i.i, ptr %.sroa.11.0..sroa_idx284.i.i.i.i, align 8, !noalias !1654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13285.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13285.i.i.i.i, i64 24, i1 false), !noalias !1654
  store i64 0, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i64 0, ptr %.sroa.19.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i8 0, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13285.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !1654
  invoke void @"_ZN23proc_macro2_diagnostics10diagnostic122_$LT$impl$u20$core..convert..From$LT$proc_macro2_diagnostics..diagnostic..Diagnostic$GT$$u20$for$u20$syn..error..Error$GT$4from17h9d5924316e79d4e2E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cu)
          to label %bb.ey unwind label %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1655

bb.eq:                                            ; preds = %bb.el, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13285.i.i.i.i)
  %.sroa.13.0.copyload.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !1652
  %.sroa.23.0.copyload.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !noalias !1652 ; 2 uses
  %.sroa.29.0.copyload.i.i.i.i = load i64, ptr %.sroa.29.0..sroa_idx.i.i.i.i, align 8, !noalias !1652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.31.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.31.0..sroa_idx.i.i.i.i, i64 264, i1 false), !noalias !1652
  invoke void @"_ZN65_$LT$syn..parse..ParseBuffer$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha22d930e1cfc7039E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.da)
          to label %bb.eu unwind label %bb.er, !noalias !1602

bb.er:                                            ; preds = %bb.eq
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1724), !noalias !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1725), !noalias !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1726), !noalias !1610
  %i.pn = load ptr, ptr %i.hx, align 8, !alias.scope !1727, !noalias !1602, !noundef !69 ; 3 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %.body.i.i.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.pp = load i64, ptr %i.pn, align 8, !noalias !1728, !noundef !69
  %i.pq = add i64 %i.pp, -1                       ; 2 uses
  store i64 %i.pq, ptr %i.pn, align 8, !noalias !1728
  %i.pr = icmp eq i64 %i.pq, 0
  br i1 %i.pr, label %bb.et, label %.body.i.i.i.i.i

bb.et:                                            ; preds = %bb.es
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0e87cd2b32804ed3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %.body.i.i.i.i.i unwind label %bb.ex, !noalias !1602

bb.eu:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1729), !noalias !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1730), !noalias !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1731), !noalias !1610
  %i.ps = load ptr, ptr %i.hx, align 8, !alias.scope !1732, !noalias !1602, !noundef !69 ; 3 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %.thread327.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.pu = load i64, ptr %i.ps, align 8, !noalias !1733, !noundef !69
  %i.pv = add i64 %i.pu, -1                       ; 2 uses
  store i64 %i.pv, ptr %i.ps, align 8, !noalias !1733
  %i.pw = icmp eq i64 %i.pv, 0
  br i1 %i.pw, label %bb.ew, label %.thread327.i.i.i.i

bb.ew:                                            ; preds = %bb.ev
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0e87cd2b32804ed3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %.thread327.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1601

bb.ex:                                            ; preds = %bb.et
  %i.px = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1602
  unreachable

.thread327.i.i.i.i:                               ; preds = %bb.ew, %bb.ev, %bb.eu
  %.sroa.23.sroa.14.0.extract.shift.i.i.i.i = lshr i64 %.sroa.23.0.copyload.i.i.i.i, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1603
  br label %bb.ft

bb.ey:                                            ; preds = %_ZN13routes_macros6routes5Route5check17ha69948bf71b7f280E.exit.i.i.i.i
  %.sroa.13.8.copyload204.i.i.i.i = load i64, ptr %i.ct, align 8, !noalias !1652
  %.sroa.23.8.copyload212.i.i.i.i = load i64, ptr %.sroa.23.8..sroa_idx211.i.i.i.i, align 8, !noalias !1652 ; 2 uses
  %.sroa.23.sroa.0.0.extract.trunc233.i.i.i.i = trunc i64 %.sroa.23.8.copyload212.i.i.i.i to i32
  %.sroa.23.sroa.14.0.extract.shift243.i.i.i.i = lshr i64 %.sroa.23.8.copyload212.i.i.i.i, 32
  %.sroa.23.sroa.14.0.extract.trunc244.i.i.i.i = trunc nuw i64 %.sroa.23.sroa.14.0.extract.shift243.i.i.i.i to i32
  %.sroa.29.8.copyload223.i.i.i.i = load i64, ptr %.sroa.29.8..sroa_idx222.i.i.i.i, align 8, !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !1654
  br label %.loopexit363.i.i.i.i

bb.ez:                                            ; preds = %bb.ei
  %i.py = load i64, ptr %i.cv, align 8, !range !72, !noalias !1654, !noundef !69 ; 2 uses
  %.not73.i.i.i.i.i = icmp eq i64 %i.py, -9223372036854775808
  br i1 %.not73.i.i.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  store ptr %i.ow, ptr %.sroa.5.0..sroa_idx.i143.i.i.i.i, align 8, !alias.scope !1709, !noalias !1710
  %.sroa.23.8.copyload210.i.i.i.i = load i64, ptr %.sroa.23.8..sroa_idx.i.i.i.i, align 8, !noalias !1652 ; 2 uses
  %.sroa.29.8.copyload221.i.i.i.i = load i64, ptr %.sroa.29.8..sroa_idx.i.i.i.i, align 8, !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !1654
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$syn..punctuated..IntoIter$LT$routes_macros..routes..RouteComponent$GT$$GT$17haf8289fbf5d2869dE"(ptr noalias noundef align 8 dereferenceable(32) %i.cx)
          to label %bb.fc unwind label %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1655

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !1654
  %i.pz = icmp eq ptr %i.ow, %i.os
  br i1 %i.pz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.thread.sink.split.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17had5694dfbdce17a0E.exit.i.i.i.i.i"

bb.fc:                                            ; preds = %bb.fa
  %.sroa.23.sroa.14.0.extract.shift241.i.i.i.i = lshr i64 %.sroa.23.8.copyload210.i.i.i.i, 32
  %.sroa.23.sroa.14.0.extract.trunc242.i.i.i.i = trunc nuw i64 %.sroa.23.sroa.14.0.extract.shift241.i.i.i.i to i32
  %.sroa.23.sroa.0.0.extract.trunc232.i.i.i.i = trunc i64 %.sroa.23.8.copyload210.i.i.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !1654
  br label %.loopexit363.i.i.i.i

bb.fd:                                            ; preds = %.thread126.i.i.i.i.i, %.thread138.i.i.i.i.i, %bb.eh
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1655
  unreachable

"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i": ; preds = %bb.fj, %bb.fi, %bb.fh, %.thread159.i.i.i.i.i
  %.sroa.23.sroa.14.2.i.i.i.i = phi i32 [ %.sroa.23.sroa.14.0.extract.trunc246.i.i.i.i, %.thread159.i.i.i.i.i ], [ %.sroa.23.sroa.14.1.i.i.i.i, %bb.fh ], [ %.sroa.23.sroa.14.1.i.i.i.i, %bb.fj ], [ %.sroa.23.sroa.14.1.i.i.i.i, %bb.fi ]
  %.sroa.23.sroa.0.2.i.i.i.i = phi i32 [ %.sroa.23.sroa.0.0.extract.trunc234.i.i.i.i, %.thread159.i.i.i.i.i ], [ %.sroa.23.sroa.0.1.i.i.i.i, %bb.fh ], [ %.sroa.23.sroa.0.1.i.i.i.i, %bb.fj ], [ %.sroa.23.sroa.0.1.i.i.i.i, %bb.fi ]
  %.sroa.29.2.i.i.i.i = phi i64 [ %.sroa.29.8.copyload225.i.i.i.i, %.thread159.i.i.i.i.i ], [ %.sroa.29.1.i.i.i.i, %bb.fh ], [ %.sroa.29.1.i.i.i.i, %bb.fj ], [ %.sroa.29.1.i.i.i.i, %bb.fi ]
  %.sroa.13.2.i.i.i.i = phi i64 [ %.sroa.13.8.copyload205.i.i.i.i, %.thread159.i.i.i.i.i ], [ %.sroa.13.1.i.i.i.i, %bb.fh ], [ %.sroa.13.1.i.i.i.i, %bb.fj ], [ %.sroa.13.1.i.i.i.i, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !1654
  br label %bb.fq

.loopexit363.i.i.i.i:                             ; preds = %split.i.i.i.i, %bb.fc, %bb.ey, %.thread151.i.i.i.i.i
  %.sroa.23.sroa.14.1.i.i.i.i = phi i32 [ %.sroa.23.sroa.14.0.extract.trunc244.i.i.i.i, %bb.ey ], [ %.sroa.23.sroa.14.0.extract.trunc242.i.i.i.i, %bb.fc ], [ %.sroa.11.i.sroa.0.0.copyload.i.i.i.i, %.thread151.i.i.i.i.i ], [ %.sroa.11.i.sroa.0.0.copyload280.i.i.i.i, %split.i.i.i.i ] ; 3 uses
  %.sroa.23.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.23.sroa.0.0.extract.trunc233.i.i.i.i, %bb.ey ], [ %.sroa.23.sroa.0.0.extract.trunc232.i.i.i.i, %bb.fc ], [ %.sroa.10.0.i.i.i.i.i, %.thread151.i.i.i.i.i ], [ %indvars10021074.i.i.i.i, %split.i.i.i.i ] ; 3 uses
  %.sroa.29.1.i.i.i.i = phi i64 [ %.sroa.29.8.copyload223.i.i.i.i, %bb.ey ], [ %.sroa.29.8.copyload221.i.i.i.i, %bb.fc ], [ %.sroa.11.i.sroa.7.0.copyload.i.i.i.i, %.thread151.i.i.i.i.i ], [ %.sroa.11.i.sroa.7.0.copyload281.i.i.i.i, %split.i.i.i.i ] ; 3 uses
  %.sroa.13.1.i.i.i.i = phi i64 [ %.sroa.13.8.copyload204.i.i.i.i, %bb.ey ], [ %i.py, %bb.fc ], [ %.sroa.692.0.i.i.i.i.i, %.thread151.i.i.i.i.i ], [ %.sroa.692.0.copyload.i.i.i.i.i, %split.i.i.i.i ] ; 3 uses
  invoke void @"_ZN65_$LT$syn..parse..ParseBuffer$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha22d930e1cfc7039E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.da)
          to label %bb.fh unwind label %bb.fe, !noalias !1655

bb.fe:                                            ; preds = %.loopexit363.i.i.i.i
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1734), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1735), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1736), !noalias !1657
  %i.qc = load ptr, ptr %i.hx, align 8, !alias.scope !1737, !noalias !1654, !noundef !69 ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %.thread126.i.i.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qe = load i64, ptr %i.qc, align 8, !noalias !1738, !noundef !69
  %i.qf = add i64 %i.qe, -1                       ; 2 uses
  store i64 %i.qf, ptr %i.qc, align 8, !noalias !1738
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %bb.fg, label %.thread126.i.i.i.i.i

bb.fg:                                            ; preds = %bb.ff
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0e87cd2b32804ed3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %.thread126.i.i.i.i.i unwind label %bb.fk, !noalias !1655

bb.fh:                                            ; preds = %.loopexit363.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1739), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1740), !noalias !1657
  call void @llvm.experimental.noalias.scope.decl(metadata !1741), !noalias !1657
  %i.qh = load ptr, ptr %i.hx, align 8, !alias.scope !1742, !noalias !1654, !noundef !69 ; 3 uses
  %i.qi = icmp eq ptr %i.qh, null
  br i1 %i.qi, label %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i", label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.qj = load i64, ptr %i.qh, align 8, !noalias !1743, !noundef !69
  %i.qk = add i64 %i.qj, -1                       ; 2 uses
  store i64 %i.qk, ptr %i.qh, align 8, !noalias !1743
  %i.ql = icmp eq i64 %i.qk, 0
  br i1 %i.ql, label %bb.fj, label %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i"

bb.fj:                                            ; preds = %bb.fi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0e87cd2b32804ed3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i" unwind label %.thread130.i.loopexit.split-lp.i.i.i.i, !noalias !1655

bb.fk:                                            ; preds = %bb.fg
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1655
  unreachable

.thread138.i.i.i.i.i:                             ; preds = %bb.ep, %bb.en, %bb.eh, %bb.ef, %.thread.i.i.i.i.i.i, %.body.i.i138.i.i.i.i, %.thread148.i.loopexit.split-lp.i.loopexit.split-lp.i.i.i, %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i, %.thread148.i.loopexit.i.i.i.i
  %.pn137.i.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn39.i.i.i.i.i.i, %bb.ef ], [ %i.ou, %bb.eh ], [ %.pn9.i.i.i.i.i.i, %.body.i.i138.i.i.i.i ], [ %.pn.pn.pn39.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %i.pl, %bb.ep ], [ %i.ph, %bb.en ], [ %lpad.loopexit364.i.i.i.i, %.thread148.i.loopexit.i.i.i.i ], [ %lpad.loopexit109.i.i.i, %.thread148.i.loopexit.split-lp.i.loopexit.i.i.i ], [ %lpad.loopexit.split-lp110.i.i.i, %.thread148.i.loopexit.split-lp.i.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E"(ptr noalias noundef align 8 dereferenceable(32) %i.da) #30
          to label %.thread126.i.i.i.i.i unwind label %bb.fd, !noalias !1655

bb.fl:                                            ; preds = %bb.cn
  %4 = load i64, ptr %i.dd, align 8, !range !72, !noalias !1654, !noundef !69 ; 2 uses
  %5 = icmp eq i64 %4, -9223372036854775808
  %6 = load <2 x i64>, ptr %3, align 8, !noalias !1654 ; 4 uses
  %.sroa.621.i.sroa.8.0.copyload274.i.i.i.i = load i64, ptr %.sroa.621.i.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !1654 ; 2 uses
  br i1 %5, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !1654
  %7 = bitcast <2 x i64> %6 to <4 x i32>
  %.sroa.23.sroa.0.0.extract.trunc236.i.i.i.i = extractelement <4 x i32> %7, i64 2
  %8 = bitcast <2 x i64> %6 to <4 x i32>
  %.sroa.23.sroa.14.0.extract.trunc250.i.i.i.i = extractelement <4 x i32> %8, i64 3
  %i.qn = extractelement <2 x i64> %6, i64 0
  br label %bb.fq

bb.fn:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.823.0..sroa_idx24.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.665.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !1654
  store i64 %4, ptr %i.dc, align 8, !noalias !1654
  store <2 x i64> %6, ptr %.sroa.621.0..sroa_idx22.i.i.i.i.i, align 8, !noalias !1654
  store i64 %.sroa.621.i.sroa.8.0.copyload274.i.i.i.i, ptr %.sroa.621.i.sroa.8.0..sroa.621.0..sroa_idx22.i.sroa_idx.i.i.i.i, align 8, !noalias !1654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1654
  invoke fastcc void @_ZN13routes_macros6routes5Route15apply_component17h559506c84a5d4f41E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.db, ptr noalias noundef align 8 dereferenceable(296) %i.de, ptr noalias noundef readonly align 8 captures(address) dereferenceable(72) %i.dc)
          to label %bb.fo unwind label %.thread130.i.loopexit.i.i.i.i, !noalias !1655

bb.fo:                                            ; preds = %bb.fn
  %i.qo = load i64, ptr %i.db, align 8, !range !72, !noalias !1654, !noundef !69 ; 2 uses
  %.not77.i.i.i.i.i = icmp eq i64 %i.qo, -9223372036854775808
  br i1 %.not77.i.i.i.i.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.sroa.23.8.copyload216.i.i.i.i = load i64, ptr %.sroa.23.8..sroa_idx215.i.i.i.i, align 8, !noalias !1652 ; 2 uses
  %.sroa.23.sroa.0.0.extract.trunc235.i.i.i.i = trunc i64 %.sroa.23.8.copyload216.i.i.i.i to i32
  %.sroa.23.sroa.14.0.extract.shift247.i.i.i.i = lshr i64 %.sroa.23.8.copyload216.i.i.i.i, 32
  %.sroa.23.sroa.14.0.extract.trunc248.i.i.i.i = trunc nuw i64 %.sroa.23.sroa.14.0.extract.shift247.i.i.i.i to i32
  %.sroa.29.8.copyload227.i.i.i.i = load i64, ptr %.sroa.29.8..sroa_idx226.i.i.i.i, align 8, !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1654
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fm, %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i"
  %.sroa.23.sroa.14.3.i.i.i.i = phi i32 [ %.sroa.23.sroa.14.0.extract.trunc250.i.i.i.i, %bb.fm ], [ %.sroa.23.sroa.14.0.extract.trunc248.i.i.i.i, %bb.fp ], [ %.sroa.23.sroa.14.2.i.i.i.i, %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i" ]
  %.sroa.23.sroa.0.3.i.i.i.i = phi i32 [ %.sroa.23.sroa.0.0.extract.trunc236.i.i.i.i, %bb.fm ], [ %.sroa.23.sroa.0.0.extract.trunc235.i.i.i.i, %bb.fp ], [ %.sroa.23.sroa.0.2.i.i.i.i, %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i" ]
  %.sroa.29.3.i.i.i.i = phi i64 [ %.sroa.621.i.sroa.8.0.copyload274.i.i.i.i, %bb.fm ], [ %.sroa.29.8.copyload227.i.i.i.i, %bb.fp ], [ %.sroa.29.2.i.i.i.i, %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i" ]
  %.sroa.13.3.i.i.i.i = phi i64 [ %i.qn, %bb.fm ], [ %i.qo, %bb.fp ], [ %.sroa.13.2.i.i.i.i, %"_ZN4core3ptr44drop_in_place$LT$syn..parse..ParseBuffer$GT$17h8e25d1bb16af3c56E.exit.i.i.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef align 8 dereferenceable(296) %i.de)
          to label %.thread338.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !1602

.thread338.i.i.i.i:                               ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1603
  br label %bb.gk

.thread126.i.i.i.i.i:                             ; preds = %.thread138.i.i.i.i.i, %bb.fg, %bb.ff, %bb.fe, %bb.co, %.thread130.i.loopexit.split-lp.i.i.i.i, %.thread130.i.loopexit.i.i.i.i
  %.pn75125.i.i.i.i.i = phi { ptr, i32 } [ %i.qb, %bb.fg ], [ %.pn137.i.i.i.i.i, %.thread138.i.i.i.i.i ], [ %i.qb, %bb.fe ], [ %i.qb, %bb.ff ], [ %lpad.thr_comm.split-lp147.i.i.i.i.i, %bb.co ], [ %lpad.loopexit360.i.i.i.i, %.thread130.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp361.i.i.i.i, %.thread130.i.loopexit.split-lp.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef align 8 dereferenceable(296) %i.de) #30
          to label %.body.i.i.i.i.i unwind label %bb.fd, !noalias !1655

bb.fr:                                            ; preds = %bb.cf
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h04cb355827adfe52E"(ptr nonnull %i.lq) #30, !noalias !1655
  br label %.body.i.i.i.i.i

.thread317.i.i.i.i:                               ; preds = %"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h04cb355827adfe52E.exit.i136.i.i.i.i", %bb.ce
  %.sroa.23.sroa.14.5.ph.in.in.i.i.i.i = phi i64 [ %i.lr, %bb.ce ], [ %.sroa.547.0.copyload.i.i.i.i.i, %"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h04cb355827adfe52E.exit.i136.i.i.i.i" ] ; 2 uses
  %.sroa.29.5.ph.i.i.i.i = phi i64 [ %.sroa.638.0.copyload.i.i.i.i.i, %bb.ce ], [ %.sroa.648.0.copyload.i.i.i.i.i, %"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h04cb355827adfe52E.exit.i136.i.i.i.i" ]
  %.sroa.13.5.ph.i.i.i.i = phi i64 [ %i.lp, %bb.ce ], [ %i.ls, %"_ZN4core3ptr37drop_in_place$LT$syn..lit..LitStr$GT$17h04cb355827adfe52E.exit.i136.i.i.i.i" ]
  %.sroa.23.sroa.0.5.ph.i.i.i.i = trunc i64 %.sroa.23.sroa.14.5.ph.in.in.i.i.i.i to i32
  %.sroa.23.sroa.14.5.ph.in.i.i.i.i = lshr i64 %.sroa.23.sroa.14.5.ph.in.in.i.i.i.i, 32
  %.sroa.23.sroa.14.5.ph.i.i.i.i = trunc nuw i64 %.sroa.23.sroa.14.5.ph.in.i.i.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1603
  br label %bb.gk

bb.fs:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1654
  %.sroa.0199.0.copyload200.i.i.i.i = load i64, ptr %i.de, align 8, !noalias !1652 ; 2 uses
  %.sroa.13.0.copyload202.i.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !1652 ; 2 uses
  %.sroa.23.0.copyload209.i.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !noalias !1652 ; 3 uses
  %.sroa.23.sroa.14.0.extract.shift239.i.i.i.i = lshr i64 %.sroa.23.0.copyload209.i.i.i.i, 32 ; 2 uses
  %.sroa.29.0.copyload220.i.i.i.i = load i64, ptr %.sroa.29.0..sroa_idx.i.i.i.i, align 8, !noalias !1652 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.31.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.31.0..sroa_idx.i.i.i.i, i64 264, i1 false), !noalias !1652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1603
  %i.qq = icmp eq i64 %.sroa.0199.0.copyload200.i.i.i.i, -9223372036854775807
  br i1 %i.qq, label %.loopexit367.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.thread327.i.i.i.i
  %.sroa.0199.5337.i.i.i.i = phi i64 [ %i.ox, %.thread327.i.i.i.i ], [ %.sroa.0199.0.copyload200.i.i.i.i, %bb.fs ]
  %.sroa.13.5336.i.i.i.i = phi i64 [ %.sroa.13.0.copyload.i.i.i.i, %.thread327.i.i.i.i ], [ %.sroa.13.0.copyload202.i.i.i.i, %bb.fs ]
  %.sroa.29.5335.i.i.i.i = phi i64 [ %.sroa.29.0.copyload.i.i.i.i, %.thread327.i.i.i.i ], [ %.sroa.29.0.copyload220.i.i.i.i, %bb.fs ]
  %.sroa.23.sroa.0.5334.i.i.i.i = phi i64 [ %.sroa.23.0.copyload.i.i.i.i, %.thread327.i.i.i.i ], [ %.sroa.23.0.copyload209.i.i.i.i, %bb.fs ]
  %.sroa.23.sroa.14.5333.i.i.i.i = phi i64 [ %.sroa.23.sroa.14.0.extract.shift.i.i.i.i, %.thread327.i.i.i.i ], [ %.sroa.23.sroa.14.0.extract.shift239.i.i.i.i, %bb.fs ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.37.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.31.i.i.i.i, i64 264, i1 false), !noalias !1652
  store i64 %.sroa.13.5336.i.i.i.i, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1652
  %.sroa.23.sroa.14.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.23.sroa.14.5333.i.i.i.i, 32
  %.sroa.23.sroa.0.0.insert.ext.i.i.i.i = and i64 %.sroa.23.sroa.0.5334.i.i.i.i, 4294967295
  %.sroa.23.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.23.sroa.14.0.insert.shift.i.i.i.i, %.sroa.23.sroa.0.0.insert.ext.i.i.i.i
  store i64 %.sroa.23.sroa.0.0.insert.insert.i.i.i.i, ptr %.sroa.23.8..sroa.26.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1652
  store i64 %.sroa.29.5335.i.i.i.i, ptr %.sroa.29.8..sroa.26.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !1652
  store i64 %.sroa.0199.5337.i.i.i.i, ptr %i.dt, align 8, !noalias !1652
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !1652
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !alias.scope !1744, !noalias !1745, !align !70, !noundef !69
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val3.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1746
  %i.qr = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef 8) #28, !noalias !1746 ; 7 uses
  %i.qs = icmp eq ptr %i.qr, null
  br i1 %i.qs, label %bb.fv, label %bb.gd, !prof !81

bb.fv:                                            ; preds = %bb.fu
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #29
          to label %.noexc.i.i.i.i.i.i unwind label %bb.fw, !noalias !1747

.noexc.i.i.i.i.i.i:                               ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %bb.fv
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(296) %i.dt) #30
          to label %.body.i.i.i.i.i unwind label %bb.fx, !noalias !1748

bb.fx:                                            ; preds = %bb.fw
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1747
  unreachable

bb.fy:                                            ; preds = %bb.ft
  store ptr @242, ptr %i.dr, align 8, !alias.scope !1749, !noalias !1750
  %i.qv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 1, ptr %i.qv, align 8, !alias.scope !1749, !noalias !1750
  %i.qw = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr null, ptr %i.qw, align 8, !alias.scope !1749, !noalias !1750
  %i.qx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.qx, align 8, !alias.scope !1749, !noalias !1750
  %i.qy = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i64 0, ptr %i.qy, align 8, !alias.scope !1749, !noalias !1750
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #29
          to label %bb.fz unwind label %bb.ga, !noalias !1747

bb.fz:                                            ; preds = %bb.fy
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(296) %i.dt) #30
          to label %.body.i.i.i.i.i unwind label %bb.gb, !noalias !1748

bb.gb:                                            ; preds = %bb.ga
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1747
  unreachable

bb.gc:                                            ; preds = %bb.gf, %bb.gd
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

bb.gd:                                            ; preds = %bb.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.qr, ptr noundef nonnull readonly align 8 dereferenceable(296) %i.dt, i64 296, i1 false), !noalias !1748
  store ptr %i.qr, ptr %i.hh, align 8, !alias.scope !1744, !noalias !1745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !1652
  %i.rc = invoke noundef zeroext i1 @_ZN3syn5parse11ParseBuffer8is_empty17hb7c71bb822fae34cE(ptr noundef nonnull align 8 %i.er)
          to label %bb.ge unwind label %bb.gc, !noalias !1653

bb.ge:                                            ; preds = %bb.gd
  br i1 %i.rc, label %split1010.loopexit.i.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  invoke void @"_ZN55_$LT$syn..token..Comma$u20$as$u20$syn..parse..Parse$GT$5parse17hc2b68072bf80f418E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ds, ptr noundef nonnull align 8 %i.er)
          to label %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i unwind label %bb.gc, !noalias !1653

_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i: ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.rd = load i64, ptr %i.ds, align 8, !range !72, !alias.scope !1752, !noalias !1753, !noundef !69 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.rd, -9223372036854775808
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.hi, align 8, !alias.scope !1754, !noalias !1652 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i", label %bb.gg

bb.gg:                                            ; preds = %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i
  %.sroa.11.sroa.0.0.copyload256.i.i.i.i = load i32, ptr %.sroa.613.0..sroa_idx14.i.i.i.i.i, align 4, !noalias !1603
  %.sroa.11.sroa.8.0.copyload259.i.i.i.i = load i64, ptr %.sroa.11.sroa.8.0..sroa.613.0..sroa_idx14.i.sroa_idx.i.i.i.i, align 8, !noalias !1603
  br label %bb.gk

"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i": ; preds = %_ZN3syn5parse11ParseBuffer5parse17h823f7e0d4da2345bE.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !1652
  store ptr null, ptr %i.hh, align 8, !alias.scope !1756, !noalias !1652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.qr, i64 296, i1 false), !noalias !1757
  store i32 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.hj, align 8, !noalias !1758
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  call void @llvm.experimental.noalias.scope.decl(metadata !1760)
  %i.re = load i64, ptr %i.du, align 8, !range !71, !alias.scope !1761, !noalias !1762, !noundef !69
  %i.rf = icmp eq i64 %.val1.i15.i.i.i.i.i, %i.re
  br i1 %i.rf, label %bb.gh, label %"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit.i.i.i.i.i"

bb.gh:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h12d13fbf7ca2e73fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i" unwind label %bb.gi, !noalias !1763

"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i": ; preds = %bb.gh
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1761, !noalias !1762 ; 2 uses
  %i.rg = ptrtoint ptr %.pre.i.i.i.i.i to i64
  br label %"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit.i.i.i.i.i"

bb.gi:                                            ; preds = %bb.gh
  %i.rh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$routes_macros..routes..Route$GT$17h734985d79fbce868E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.dq)
          to label %.body12.i.i.i.i.i unwind label %bb.gj, !noalias !1764

bb.gj:                                            ; preds = %bb.gi
  %i.ri = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #31, !noalias !1765
  unreachable

"_ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit.i.i.i.i.i": ; preds = %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i", %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i"
  %.sroa.6180.0.copyload1005.i.i.i.i = phi i64 [ %i.rg, %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i" ], [ %.sroa.6180.0.copyload.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i" ]
  %i.rj = phi ptr [ %.pre.i.i.i.i.i, %"._ZN3syn10punctuated23Punctuated$LT$T$C$P$GT$10push_punct17h5b5925f31a3adc6aE.exit_crit_edge.i.i.i.i.i" ], [ %.val.i14.i.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6unwrap17haa4bf8020ef6bc22E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [304 x i8], ptr %i.rj, i64 %.val1.i15.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.rk, ptr noundef nonnull readonly align 8 dereferenceable(304) %i.dq, i64 304, i1 false), !noalias !1764
  %i.rl = add i64 %.val1.i15.i.i.i.i.i, 1         ; 3 uses
  store i64 %i.rl, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1761, !noalias !1762
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qr, i64 noundef 296, i64 noundef 8) #28, !noalias !1757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !1652
  %i.rm = lshr i64 %i.rl, 32
  %i.rn = trunc nuw i64 %i.rm to i32
  br label %bb.cb

.body12.i.i.i.i.i:                                ; preds = %bb.gi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qr, i64 noundef 296, i64 noundef 8) #28, !noalias !1757
end_hunk_1
